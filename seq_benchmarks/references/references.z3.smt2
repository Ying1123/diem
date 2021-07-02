(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_16685 0)) ((($Memory_16685 (|domain#$Memory_16685| |T@[Int]Bool|) (|contents#$Memory_16685| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13863 0)) ((($Mutation_13863 (|l#$Mutation_13863| T@$Location) (|p#$Mutation_13863| (Seq Int)) (|v#$Mutation_13863| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_12499 0)) ((($Mutation_12499 (|l#$Mutation_12499| T@$Location) (|p#$Mutation_12499| (Seq Int)) (|v#$Mutation_12499| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_11753 0)) ((($Mutation_11753 (|l#$Mutation_11753| T@$Location) (|p#$Mutation_11753| (Seq Int)) (|v#$Mutation_11753| (Seq T@$42_TestReferences_T)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestReferences_T''| ((Seq T@$42_TestReferences_T)) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| ((Seq T@$42_TestReferences_T) T@$42_TestReferences_T) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun ReverseVec_8966 ((Seq T@$42_TestReferences_T)) (Seq T@$42_TestReferences_T))
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$42_TestReferences_T)) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestReferences_T'| (seq.nth v@@4 i@@0)))
 :qid |referencesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |referencesz3bpl.588:46|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$42_TestReferences_T)) (e T@$42_TestReferences_T) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |referencesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |referencesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |referencesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |referencesz3bpl.770:13|
 :skolemid |20|
))))
 :qid |referencesz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |referencesz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |referencesz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |referencesz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |referencesz3bpl.950:13|
 :skolemid |25|
))))
 :qid |referencesz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |referencesz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |referencesz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |referencesz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |referencesz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |referencesz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesz3bpl.1261:41|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesz3bpl.1274:60|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 (Seq T@$42_TestReferences_T)) ) (! (let ((r@@0 (ReverseVec_8966 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_8966 v@@10))
)))
(assert (forall ((v@@11 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |referencesz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t0@0 () T@$Mutation_4535)
(declare-fun _$t0 () T@$Mutation_4535)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(declare-fun $t1@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t2@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_increment$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22613) (let ((anon4_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= $t0@0 ($Mutation_4535 (|l#$Mutation_4535| _$t0) (|p#$Mutation_4535| _$t0) inline$$AddU64$0$dst@2)) (= |$temp_0'u64'@1| (|v#$Mutation_4535| $t0@0))) (and (= |$temp_0'u64'@1| |$temp_0'u64'@1|) (= (ControlFlow 0 19664) (- 0 22860)))) (= (|v#$Mutation_4535| $t0@0) (+ $t1@0 1))))))
(let ((anon4_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 19616) 19682) anon4_Then_correct) (=> (= (ControlFlow 0 19616) 19664) anon4_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t2@0 1) $MAX_U64) (= (ControlFlow 0 19614) 19616)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t2@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t2@0 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 19562) 19682) anon4_Then_correct) (=> (= (ControlFlow 0 19562) 19664) anon4_Else_correct))))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_4535| _$t0) ($Param 0)) (=> (and (|$IsValid'u64'| (|v#$Mutation_4535| _$t0)) (= $t1@0 (|v#$Mutation_4535| _$t0))) (=> (and (and (= |$temp_0'u64'@0| (|v#$Mutation_4535| _$t0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|)) (and (= $t2@0 (|v#$Mutation_4535| _$t0)) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 19622) 19614) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 19622) 19562) inline$$AddU64$0$anon3_Else_correct)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 22613) 19622) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_16685 0)) ((($Memory_16685 (|domain#$Memory_16685| |T@[Int]Bool|) (|contents#$Memory_16685| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13863 0)) ((($Mutation_13863 (|l#$Mutation_13863| T@$Location) (|p#$Mutation_13863| (Seq Int)) (|v#$Mutation_13863| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_12499 0)) ((($Mutation_12499 (|l#$Mutation_12499| T@$Location) (|p#$Mutation_12499| (Seq Int)) (|v#$Mutation_12499| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_11753 0)) ((($Mutation_11753 (|l#$Mutation_11753| T@$Location) (|p#$Mutation_11753| (Seq Int)) (|v#$Mutation_11753| (Seq T@$42_TestReferences_T)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestReferences_T''| ((Seq T@$42_TestReferences_T)) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| ((Seq T@$42_TestReferences_T) T@$42_TestReferences_T) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun ReverseVec_8966 ((Seq T@$42_TestReferences_T)) (Seq T@$42_TestReferences_T))
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$42_TestReferences_T)) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestReferences_T'| (seq.nth v@@4 i@@0)))
 :qid |referencesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |referencesz3bpl.588:46|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$42_TestReferences_T)) (e T@$42_TestReferences_T) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |referencesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |referencesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |referencesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |referencesz3bpl.770:13|
 :skolemid |20|
))))
 :qid |referencesz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |referencesz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |referencesz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |referencesz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |referencesz3bpl.950:13|
 :skolemid |25|
))))
 :qid |referencesz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |referencesz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |referencesz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |referencesz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |referencesz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |referencesz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesz3bpl.1261:41|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesz3bpl.1274:60|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 (Seq T@$42_TestReferences_T)) ) (! (let ((r@@0 (ReverseVec_8966 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_8966 v@@10))
)))
(assert (forall ((v@@11 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |referencesz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () T@$Mutation_4535)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t0@0 () T@$Mutation_4535)
(declare-fun |$temp_0'u64'@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_mut_b$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22894) (let ((anon0$1_correct  (=> (= (|l#$Mutation_4535| _$t0) ($Param 0)) (=> (and (and (and (|$IsValid'u64'| (|v#$Mutation_4535| _$t0)) (= |$temp_0'u64'@0| (|v#$Mutation_4535| _$t0))) (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 10))) (and (and (= $t0@0 ($Mutation_4535 (|l#$Mutation_4535| _$t0) (|p#$Mutation_4535| _$t0) 10)) (= |$temp_0'u64'@1| (|v#$Mutation_4535| $t0@0))) (and (= |$temp_0'u64'@1| |$temp_0'u64'@1|) (= (ControlFlow 0 19820) (- 0 22998))))) (= (|v#$Mutation_4535| $t0@0) 10)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 22894) 19820) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_16685 0)) ((($Memory_16685 (|domain#$Memory_16685| |T@[Int]Bool|) (|contents#$Memory_16685| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13863 0)) ((($Mutation_13863 (|l#$Mutation_13863| T@$Location) (|p#$Mutation_13863| (Seq Int)) (|v#$Mutation_13863| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_12499 0)) ((($Mutation_12499 (|l#$Mutation_12499| T@$Location) (|p#$Mutation_12499| (Seq Int)) (|v#$Mutation_12499| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_11753 0)) ((($Mutation_11753 (|l#$Mutation_11753| T@$Location) (|p#$Mutation_11753| (Seq Int)) (|v#$Mutation_11753| (Seq T@$42_TestReferences_T)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestReferences_T''| ((Seq T@$42_TestReferences_T)) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| ((Seq T@$42_TestReferences_T) T@$42_TestReferences_T) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun ReverseVec_8966 ((Seq T@$42_TestReferences_T)) (Seq T@$42_TestReferences_T))
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$42_TestReferences_T)) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestReferences_T'| (seq.nth v@@4 i@@0)))
 :qid |referencesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |referencesz3bpl.588:46|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$42_TestReferences_T)) (e T@$42_TestReferences_T) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |referencesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |referencesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |referencesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |referencesz3bpl.770:13|
 :skolemid |20|
))))
 :qid |referencesz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |referencesz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |referencesz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |referencesz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |referencesz3bpl.950:13|
 :skolemid |25|
))))
 :qid |referencesz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |referencesz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |referencesz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |referencesz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |referencesz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |referencesz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesz3bpl.1261:41|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesz3bpl.1274:60|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 (Seq T@$42_TestReferences_T)) ) (! (let ((r@@0 (ReverseVec_8966 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_8966 v@@10))
)))
(assert (forall ((v@@11 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |referencesz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t0@0 () Int)
(declare-fun inline$$42_TestReferences_mut_b$0$$t0@1 () T@$Mutation_4535)
(declare-fun $t0@1 () Int)
(declare-fun |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1| () Int)
(declare-fun $t3@0 () T@$Mutation_4535)
(declare-fun |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2| () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t1 () T@$Mutation_4535)
(declare-fun $t3 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_mut_ref$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23014) (let ((L4_correct  (=> (= (ControlFlow 0 20163) (- 0 23309)) false)))
(let ((anon7_Then_correct  (=> (and (and $t7@0 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 20153) 20163))) L4_correct)))
(let ((anon7_Else_correct  (=> (and (not $t7@0) (= (ControlFlow 0 20133) (- 0 23302))) (not false))))
(let ((anon6_Else_correct  (=> (and (not false) (= $t0@0 (|v#$Mutation_4535| inline$$42_TestReferences_mut_b$0$$t0@1))) (=> (and (and (= $t0@1 (|v#$Mutation_4535| inline$$42_TestReferences_mut_b$0$$t0@1)) (= $t0@1 $t0@1)) (and (|$IsValid'u64'| 10) (= $t7@0  (not (= $t0@1 10))))) (and (=> (= (ControlFlow 0 20119) 20153) anon7_Then_correct) (=> (= (ControlFlow 0 20119) 20133) anon7_Else_correct))))))
(let ((anon6_Then_correct true))
(let ((inline$$42_TestReferences_mut_b$0$anon0_correct  (=> (and (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1| (|v#$Mutation_4535| $t3@0)) (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1| |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1|)) (=> (and (and (|$IsValid'u64'| 10) (= inline$$42_TestReferences_mut_b$0$$t0@1 ($Mutation_4535 (|l#$Mutation_4535| $t3@0) (|p#$Mutation_4535| $t3@0) 10))) (and (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2| (|v#$Mutation_4535| inline$$42_TestReferences_mut_b$0$$t0@1)) (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2| |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2|))) (and (=> (= (ControlFlow 0 20071) 20177) anon6_Then_correct) (=> (= (ControlFlow 0 20071) 20119) anon6_Else_correct))))))
(let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 20) (= 20 20)) (=> (and (and (= $t3@0 ($Mutation_4535 ($Local 0) (as seq.empty (Seq Int)) 20)) (= |$temp_0'u64'@0| (|v#$Mutation_4535| $t3@0))) (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= (ControlFlow 0 20077) 20071))) inline$$42_TestReferences_mut_b$0$anon0_correct))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_4535| $t1)) 0) (=> (and (= (seq.len (|p#$Mutation_4535| $t3)) 0) (= (ControlFlow 0 19898) 20077)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23014) 19898) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
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
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_16685 0)) ((($Memory_16685 (|domain#$Memory_16685| |T@[Int]Bool|) (|contents#$Memory_16685| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13863 0)) ((($Mutation_13863 (|l#$Mutation_13863| T@$Location) (|p#$Mutation_13863| (Seq Int)) (|v#$Mutation_13863| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_12499 0)) ((($Mutation_12499 (|l#$Mutation_12499| T@$Location) (|p#$Mutation_12499| (Seq Int)) (|v#$Mutation_12499| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_11753 0)) ((($Mutation_11753 (|l#$Mutation_11753| T@$Location) (|p#$Mutation_11753| (Seq Int)) (|v#$Mutation_11753| (Seq T@$42_TestReferences_T)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestReferences_T''| ((Seq T@$42_TestReferences_T)) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| ((Seq T@$42_TestReferences_T) T@$42_TestReferences_T) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun ReverseVec_8966 ((Seq T@$42_TestReferences_T)) (Seq T@$42_TestReferences_T))
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$42_TestReferences_T)) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestReferences_T'| (seq.nth v@@4 i@@0)))
 :qid |referencesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |referencesz3bpl.588:46|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$42_TestReferences_T)) (e T@$42_TestReferences_T) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |referencesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |referencesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |referencesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |referencesz3bpl.770:13|
 :skolemid |20|
))))
 :qid |referencesz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |referencesz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |referencesz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |referencesz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |referencesz3bpl.950:13|
 :skolemid |25|
))))
 :qid |referencesz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |referencesz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |referencesz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |referencesz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |referencesz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |referencesz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesz3bpl.1261:41|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesz3bpl.1274:60|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 (Seq T@$42_TestReferences_T)) ) (! (let ((r@@0 (ReverseVec_8966 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_8966 v@@10))
)))
(assert (forall ((v@@11 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |referencesz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t0@0 () Int)
(declare-fun inline$$42_TestReferences_mut_b$0$$t0@1 () T@$Mutation_4535)
(declare-fun $t0@1 () Int)
(declare-fun |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1| () Int)
(declare-fun $t3@0 () T@$Mutation_4535)
(declare-fun |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2| () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t1 () T@$Mutation_4535)
(declare-fun $t3 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_mut_ref_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23326) (let ((L4_correct  (=> (= (ControlFlow 0 20531) (- 0 23621)) true)))
(let ((anon7_Then_correct  (=> (and (and $t7@0 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 20521) 20531))) L4_correct)))
(let ((anon7_Else_correct  (=> (and (not $t7@0) (= (ControlFlow 0 20501) (- 0 23614))) (not true))))
(let ((anon6_Else_correct  (=> (and (not false) (= $t0@0 (|v#$Mutation_4535| inline$$42_TestReferences_mut_b$0$$t0@1))) (=> (and (and (= $t0@1 (|v#$Mutation_4535| inline$$42_TestReferences_mut_b$0$$t0@1)) (= $t0@1 $t0@1)) (and (|$IsValid'u64'| 10) (= $t7@0  (not (= $t0@1 10))))) (and (=> (= (ControlFlow 0 20487) 20521) anon7_Then_correct) (=> (= (ControlFlow 0 20487) 20501) anon7_Else_correct))))))
(let ((anon6_Then_correct true))
(let ((inline$$42_TestReferences_mut_b$0$anon0_correct  (=> (and (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1| (|v#$Mutation_4535| $t3@0)) (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1| |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1|)) (=> (and (and (|$IsValid'u64'| 10) (= inline$$42_TestReferences_mut_b$0$$t0@1 ($Mutation_4535 (|l#$Mutation_4535| $t3@0) (|p#$Mutation_4535| $t3@0) 10))) (and (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2| (|v#$Mutation_4535| inline$$42_TestReferences_mut_b$0$$t0@1)) (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2| |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2|))) (and (=> (= (ControlFlow 0 20439) 20545) anon6_Then_correct) (=> (= (ControlFlow 0 20439) 20487) anon6_Else_correct))))))
(let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 20) (= 20 20)) (=> (and (and (= $t3@0 ($Mutation_4535 ($Local 0) (as seq.empty (Seq Int)) 20)) (= |$temp_0'u64'@0| (|v#$Mutation_4535| $t3@0))) (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= (ControlFlow 0 20445) 20439))) inline$$42_TestReferences_mut_b$0$anon0_correct))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_4535| $t1)) 0) (=> (and (= (seq.len (|p#$Mutation_4535| $t3)) 0) (= (ControlFlow 0 20266) 20445)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23326) 20266) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 23326)))
(get-value ((ControlFlow 0 20266)))
(get-value ((ControlFlow 0 20445)))
(get-value ((ControlFlow 0 20439)))
(get-value ((ControlFlow 0 20487)))
(get-value ((ControlFlow 0 20501)))
(assert (not (= (ControlFlow 0 20501) (- 23614))))
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
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_16685 0)) ((($Memory_16685 (|domain#$Memory_16685| |T@[Int]Bool|) (|contents#$Memory_16685| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13863 0)) ((($Mutation_13863 (|l#$Mutation_13863| T@$Location) (|p#$Mutation_13863| (Seq Int)) (|v#$Mutation_13863| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_12499 0)) ((($Mutation_12499 (|l#$Mutation_12499| T@$Location) (|p#$Mutation_12499| (Seq Int)) (|v#$Mutation_12499| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_11753 0)) ((($Mutation_11753 (|l#$Mutation_11753| T@$Location) (|p#$Mutation_11753| (Seq Int)) (|v#$Mutation_11753| (Seq T@$42_TestReferences_T)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestReferences_T''| ((Seq T@$42_TestReferences_T)) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| ((Seq T@$42_TestReferences_T) T@$42_TestReferences_T) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun ReverseVec_8966 ((Seq T@$42_TestReferences_T)) (Seq T@$42_TestReferences_T))
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$42_TestReferences_T)) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestReferences_T'| (seq.nth v@@4 i@@0)))
 :qid |referencesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |referencesz3bpl.588:46|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$42_TestReferences_T)) (e T@$42_TestReferences_T) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |referencesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |referencesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |referencesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |referencesz3bpl.770:13|
 :skolemid |20|
))))
 :qid |referencesz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |referencesz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |referencesz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |referencesz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |referencesz3bpl.950:13|
 :skolemid |25|
))))
 :qid |referencesz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |referencesz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |referencesz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |referencesz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |referencesz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |referencesz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesz3bpl.1261:41|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesz3bpl.1274:60|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 (Seq T@$42_TestReferences_T)) ) (! (let ((r@@0 (ReverseVec_8966 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_8966 v@@10))
)))
(assert (forall ((v@@11 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |referencesz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4535)
(declare-fun $t7@0 () T@$Mutation_4535)
(declare-fun $t5@1 () T@$Mutation_13863)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@1| () T@$Mutation_13863)
(declare-fun $t1@1 () (Seq Int))
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@0| () T@$Mutation_13863)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4535)
(declare-fun $t5@0 () T@$Mutation_13863)
(declare-fun $abort_code@0 () Int)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_13863)
(declare-fun $t3@0 () T@$Mutation_13863)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t0 () T@$Mutation_4535)
(declare-fun $t3 () T@$Mutation_13863)
(declare-fun $t5 () T@$Mutation_13863)
(declare-fun $t7 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_mutate_vector$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23638) (let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (and (and (= |$temp_0'u64'@0| (|v#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|)) (and (|$IsValid'u64'| 0) (= $t7@0 ($Mutation_4535 (|l#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (|p#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) 0)))) (and (and (= $t5@1 ($Mutation_13863 (|l#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (|p#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (seq.++ (seq.extract (|v#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) 0 (- (seq.nth (|p#$Mutation_4535| $t7@0) (seq.len (|p#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 0)) (seq.unit (|v#$Mutation_4535| $t7@0)) (seq.extract (|v#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (+ (seq.nth (|p#$Mutation_4535| $t7@0) (seq.len (|p#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 1) (- (seq.len (|v#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)) (+ (seq.nth (|p#$Mutation_4535| $t7@0) (seq.len (|p#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 1)))))) (= $t1@1 (|v#$Mutation_13863| $t5@1))) (and (= $t1@1 $t1@1) (= (ControlFlow 0 21073) (- 0 24091))))) (= (seq.nth $t1@1 0) 0)))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| |inline$$1_Vector_borrow_mut'u64'$0$m'@0|))) (and (=> (= (ControlFlow 0 20977) 21087) anon10_Then_correct) (=> (= (ControlFlow 0 20977) 21073) anon10_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|)))) (= (ControlFlow 0 20975) 20977)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (and (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|))) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4535 (|l#$Mutation_13863| $t5@0) (seq.++ (|p#$Mutation_13863| $t5@0) (seq.unit 0)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0)))) (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| $t5@0)))) (and (=> (= (ControlFlow 0 20925) 21087) anon10_Then_correct) (=> (= (ControlFlow 0 20925) 21073) anon10_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_13863| $t5@0)) (and (=> (= (ControlFlow 0 20895) 20975) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 20895) 20925) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_13863| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_13863 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 20985) 20895))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_13863 (|l#$Mutation_13863| $t3@0) (|p#$Mutation_13863| $t3@0) (seq.++ (|v#$Mutation_13863| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 20759) 21107) anon9_Then_correct) (=> (= (ControlFlow 0 20759) 20985) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t3@0 ($Mutation_13863 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 20765) 20759))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 20670) 21121) anon8_Then_correct) (=> (= (ControlFlow 0 20670) 20765) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 20676) 20670) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_4535| $t0)) 0) (=> (and (and (= (seq.len (|p#$Mutation_13863| $t3)) 0) (= (seq.len (|p#$Mutation_13863| $t5)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t7)) 0) (= (ControlFlow 0 20646) 20676))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23638) 20646) anon0_correct)))
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
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_16685 0)) ((($Memory_16685 (|domain#$Memory_16685| |T@[Int]Bool|) (|contents#$Memory_16685| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13863 0)) ((($Mutation_13863 (|l#$Mutation_13863| T@$Location) (|p#$Mutation_13863| (Seq Int)) (|v#$Mutation_13863| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_12499 0)) ((($Mutation_12499 (|l#$Mutation_12499| T@$Location) (|p#$Mutation_12499| (Seq Int)) (|v#$Mutation_12499| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_11753 0)) ((($Mutation_11753 (|l#$Mutation_11753| T@$Location) (|p#$Mutation_11753| (Seq Int)) (|v#$Mutation_11753| (Seq T@$42_TestReferences_T)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestReferences_T''| ((Seq T@$42_TestReferences_T)) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| ((Seq T@$42_TestReferences_T) T@$42_TestReferences_T) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun ReverseVec_8966 ((Seq T@$42_TestReferences_T)) (Seq T@$42_TestReferences_T))
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$42_TestReferences_T)) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestReferences_T'| (seq.nth v@@4 i@@0)))
 :qid |referencesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |referencesz3bpl.588:46|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$42_TestReferences_T)) (e T@$42_TestReferences_T) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |referencesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |referencesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |referencesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |referencesz3bpl.770:13|
 :skolemid |20|
))))
 :qid |referencesz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |referencesz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |referencesz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |referencesz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |referencesz3bpl.950:13|
 :skolemid |25|
))))
 :qid |referencesz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |referencesz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |referencesz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |referencesz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |referencesz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |referencesz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesz3bpl.1261:41|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesz3bpl.1274:60|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 (Seq T@$42_TestReferences_T)) ) (! (let ((r@@0 (ReverseVec_8966 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_8966 v@@10))
)))
(assert (forall ((v@@11 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |referencesz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t4@0 () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4535)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t0@0 () T@$Mutation_13863)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@1| () T@$Mutation_13863)
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(declare-fun $t2@0 () (Seq Int))
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t6@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@0| () T@$Mutation_13863)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4535)
(declare-fun _$t0 () T@$Mutation_13863)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(declare-fun $t1 () T@$Mutation_4535)
(declare-fun $t4 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_mutate_vector_param$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 24119) (let ((anon7_Else_correct  (=> (and (not $abort_flag@1) (= $t4@0 ($Mutation_4535 (|l#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (|p#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) inline$$AddU64$0$dst@2))) (=> (and (and (= $t0@0 ($Mutation_13863 (|l#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (|p#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (seq.++ (seq.extract (|v#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) 0 (- (seq.nth (|p#$Mutation_4535| $t4@0) (seq.len (|p#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 0)) (seq.unit (|v#$Mutation_4535| $t4@0)) (seq.extract (|v#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (+ (seq.nth (|p#$Mutation_4535| $t4@0) (seq.len (|p#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 1) (- (seq.len (|v#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)) (+ (seq.nth (|p#$Mutation_4535| $t4@0) (seq.len (|p#$Mutation_13863| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 1)))))) (= |$temp_0'vec'u64''@1| (|v#$Mutation_13863| $t0@0))) (and (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|) (= (ControlFlow 0 21755) (- 0 24580)))) (= (seq.nth (|v#$Mutation_13863| $t0@0) 0) (+ (seq.nth $t2@0 0) 1))))))
(let ((anon7_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 21673) 21769) anon7_Then_correct) (=> (= (ControlFlow 0 21673) 21755) anon7_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t6@0 1) $MAX_U64) (= (ControlFlow 0 21671) 21673)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t6@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t6@0 1)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 21619) 21769) anon7_Then_correct) (=> (= (ControlFlow 0 21619) 21755) anon7_Else_correct))))))
(let ((anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= |$temp_0'u64'@0| (|v#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|)) (and (= $t6@0 (|v#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 21679) 21671) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 21679) 21619) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon6_Then_correct true))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| |inline$$1_Vector_borrow_mut'u64'$0$m'@0|))) (and (=> (= (ControlFlow 0 21488) 21789) anon6_Then_correct) (=> (= (ControlFlow 0 21488) 21679) anon6_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|)))) (= (ControlFlow 0 21486) 21488)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (and (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|))) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4535 (|l#$Mutation_13863| _$t0) (seq.++ (|p#$Mutation_13863| _$t0) (seq.unit 0)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0)))) (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| _$t0)))) (and (=> (= (ControlFlow 0 21436) 21789) anon6_Then_correct) (=> (= (ControlFlow 0 21436) 21679) anon6_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_13863| _$t0)) (and (=> (= (ControlFlow 0 21406) 21486) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 21406) 21436) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_13863| _$t0) ($Param 0)) (=> (and (|$IsValid'vec'u64''| (|v#$Mutation_13863| _$t0)) (= $t2@0 (|v#$Mutation_13863| _$t0))) (=> (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_13863| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 21496) 21406))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_4535| $t1)) 0) (=> (and (= (seq.len (|p#$Mutation_4535| $t4)) 0) (= (ControlFlow 0 21264) 21496)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 24119) 21264) anon0_correct)))
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
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_16685 0)) ((($Memory_16685 (|domain#$Memory_16685| |T@[Int]Bool|) (|contents#$Memory_16685| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13863 0)) ((($Mutation_13863 (|l#$Mutation_13863| T@$Location) (|p#$Mutation_13863| (Seq Int)) (|v#$Mutation_13863| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_12499 0)) ((($Mutation_12499 (|l#$Mutation_12499| T@$Location) (|p#$Mutation_12499| (Seq Int)) (|v#$Mutation_12499| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_11753 0)) ((($Mutation_11753 (|l#$Mutation_11753| T@$Location) (|p#$Mutation_11753| (Seq Int)) (|v#$Mutation_11753| (Seq T@$42_TestReferences_T)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestReferences_T''| ((Seq T@$42_TestReferences_T)) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| ((Seq T@$42_TestReferences_T) T@$42_TestReferences_T) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun ReverseVec_8966 ((Seq T@$42_TestReferences_T)) (Seq T@$42_TestReferences_T))
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$42_TestReferences_T)) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestReferences_T'| (seq.nth v@@4 i@@0)))
 :qid |referencesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |referencesz3bpl.588:46|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$42_TestReferences_T)) (e T@$42_TestReferences_T) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |referencesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |referencesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |referencesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |referencesz3bpl.770:13|
 :skolemid |20|
))))
 :qid |referencesz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |referencesz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |referencesz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |referencesz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |referencesz3bpl.950:13|
 :skolemid |25|
))))
 :qid |referencesz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |referencesz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |referencesz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |referencesz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |referencesz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |referencesz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesz3bpl.1261:41|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesz3bpl.1274:60|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 (Seq T@$42_TestReferences_T)) ) (! (let ((r@@0 (ReverseVec_8966 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_8966 v@@10))
)))
(assert (forall ((v@@11 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |referencesz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () T@$42_TestReferences_T)
(declare-fun $t1@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_ref_param$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 24611) (let ((anon0$1_correct  (=> (|$IsValid'$42_TestReferences_T'| _$t0) (=> (and (and (= _$t0 _$t0) (= $t1@0 (|$a#$42_TestReferences_T| _$t0))) (and (= $t1@0 $t1@0) (= (ControlFlow 0 21947) (- 0 24676)))) (= $t1@0 (|$a#$42_TestReferences_T| _$t0))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 24611) 21947) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_16685 0)) ((($Memory_16685 (|domain#$Memory_16685| |T@[Int]Bool|) (|contents#$Memory_16685| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13863 0)) ((($Mutation_13863 (|l#$Mutation_13863| T@$Location) (|p#$Mutation_13863| (Seq Int)) (|v#$Mutation_13863| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_12499 0)) ((($Mutation_12499 (|l#$Mutation_12499| T@$Location) (|p#$Mutation_12499| (Seq Int)) (|v#$Mutation_12499| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_11753 0)) ((($Mutation_11753 (|l#$Mutation_11753| T@$Location) (|p#$Mutation_11753| (Seq Int)) (|v#$Mutation_11753| (Seq T@$42_TestReferences_T)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestReferences_T''| ((Seq T@$42_TestReferences_T)) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| ((Seq T@$42_TestReferences_T) T@$42_TestReferences_T) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun ReverseVec_8966 ((Seq T@$42_TestReferences_T)) (Seq T@$42_TestReferences_T))
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$42_TestReferences_T)) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestReferences_T'| (seq.nth v@@4 i@@0)))
 :qid |referencesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |referencesz3bpl.588:46|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$42_TestReferences_T)) (e T@$42_TestReferences_T) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |referencesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |referencesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |referencesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |referencesz3bpl.770:13|
 :skolemid |20|
))))
 :qid |referencesz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |referencesz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |referencesz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |referencesz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |referencesz3bpl.950:13|
 :skolemid |25|
))))
 :qid |referencesz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |referencesz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |referencesz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |referencesz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |referencesz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |referencesz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesz3bpl.1261:41|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesz3bpl.1274:60|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 (Seq T@$42_TestReferences_T)) ) (! (let ((r@@0 (ReverseVec_8966 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_8966 v@@10))
)))
(assert (forall ((v@@11 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |referencesz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'$42_TestReferences_T'$0$l@1| () Int)
(declare-fun _$t0 () (Seq T@$42_TestReferences_T))
(push 1)
(set-info :boogie-vc-id $42_TestReferences_ref_param_vec$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 24693) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_length'$42_TestReferences_T'$0$l@1| |inline$$1_Vector_length'$42_TestReferences_T'$0$l@1|) (= (ControlFlow 0 22093) (- 0 24794))) (= |inline$$1_Vector_length'$42_TestReferences_T'$0$l@1| (seq.len _$t0))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_length'$42_TestReferences_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'$42_TestReferences_T'$0$l@1| (seq.len _$t0)) (and (=> (= (ControlFlow 0 22059) 22111) anon4_Then_correct) (=> (= (ControlFlow 0 22059) 22093) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'$42_TestReferences_T''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 22065) 22059)) |inline$$1_Vector_length'$42_TestReferences_T'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 24693) 22065) anon0$1_correct)))
anon0_correct))))))
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
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_16685 0)) ((($Memory_16685 (|domain#$Memory_16685| |T@[Int]Bool|) (|contents#$Memory_16685| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13863 0)) ((($Mutation_13863 (|l#$Mutation_13863| T@$Location) (|p#$Mutation_13863| (Seq Int)) (|v#$Mutation_13863| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_12499 0)) ((($Mutation_12499 (|l#$Mutation_12499| T@$Location) (|p#$Mutation_12499| (Seq Int)) (|v#$Mutation_12499| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_11753 0)) ((($Mutation_11753 (|l#$Mutation_11753| T@$Location) (|p#$Mutation_11753| (Seq Int)) (|v#$Mutation_11753| (Seq T@$42_TestReferences_T)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestReferences_T''| ((Seq T@$42_TestReferences_T)) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| ((Seq T@$42_TestReferences_T) T@$42_TestReferences_T) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun ReverseVec_8966 ((Seq T@$42_TestReferences_T)) (Seq T@$42_TestReferences_T))
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$42_TestReferences_T)) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestReferences_T'| (seq.nth v@@4 i@@0)))
 :qid |referencesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |referencesz3bpl.588:46|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$42_TestReferences_T)) (e T@$42_TestReferences_T) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |referencesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |referencesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |referencesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |referencesz3bpl.770:13|
 :skolemid |20|
))))
 :qid |referencesz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |referencesz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |referencesz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |referencesz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |referencesz3bpl.950:13|
 :skolemid |25|
))))
 :qid |referencesz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |referencesz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |referencesz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |referencesz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |referencesz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |referencesz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesz3bpl.1261:41|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesz3bpl.1274:60|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 (Seq T@$42_TestReferences_T)) ) (! (let ((r@@0 (ReverseVec_8966 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_8966 v@@10))
)))
(assert (forall ((v@@11 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |referencesz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@2| () T@$42_TestReferences_T)
(declare-fun _$t0 () (Seq T@$42_TestReferences_T))
(declare-fun _$t1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@0| () T@$42_TestReferences_T)
(declare-fun |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@1| () T@$42_TestReferences_T)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_ref_return$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 24813) (let ((anon4_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@2| |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@2|) (= (ControlFlow 0 22392) (- 0 24995))) (= |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@2| (seq.nth _$t0 _$t1))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_borrow'$42_TestReferences_T'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@2| |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@0|)) (and (=> (= (ControlFlow 0 22356) 22410) anon4_Then_correct) (=> (= (ControlFlow 0 22356) 22392) anon4_Else_correct))))))
(let ((|inline$$1_Vector_borrow'$42_TestReferences_T'$0$anon3_Then_correct|  (=> (and (not (and (>= _$t1 0) (< _$t1 (seq.len _$t0)))) (= (ControlFlow 0 22354) 22356)) |inline$$1_Vector_borrow'$42_TestReferences_T'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'$42_TestReferences_T'$0$anon3_Else_correct|  (=> (and (>= _$t1 0) (< _$t1 (seq.len _$t0))) (=> (and (and (= |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@1| (seq.nth _$t0 _$t1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@2| |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@1|))) (and (=> (= (ControlFlow 0 22304) 22410) anon4_Then_correct) (=> (= (ControlFlow 0 22304) 22392) anon4_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'$42_TestReferences_T''| _$t0) (|$IsValid'u64'| _$t1)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (=> (= (ControlFlow 0 22362) 22354) |inline$$1_Vector_borrow'$42_TestReferences_T'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 22362) 22304) |inline$$1_Vector_borrow'$42_TestReferences_T'$0$anon3_Else_correct|)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 24813) 22362) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_16685 0)) ((($Memory_16685 (|domain#$Memory_16685| |T@[Int]Bool|) (|contents#$Memory_16685| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13863 0)) ((($Mutation_13863 (|l#$Mutation_13863| T@$Location) (|p#$Mutation_13863| (Seq Int)) (|v#$Mutation_13863| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_12499 0)) ((($Mutation_12499 (|l#$Mutation_12499| T@$Location) (|p#$Mutation_12499| (Seq Int)) (|v#$Mutation_12499| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_11753 0)) ((($Mutation_11753 (|l#$Mutation_11753| T@$Location) (|p#$Mutation_11753| (Seq Int)) (|v#$Mutation_11753| (Seq T@$42_TestReferences_T)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestReferences_T''| ((Seq T@$42_TestReferences_T)) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| ((Seq T@$42_TestReferences_T) T@$42_TestReferences_T) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun ReverseVec_8966 ((Seq T@$42_TestReferences_T)) (Seq T@$42_TestReferences_T))
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$42_TestReferences_T)) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestReferences_T'| (seq.nth v@@4 i@@0)))
 :qid |referencesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |referencesz3bpl.588:46|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$42_TestReferences_T)) (e T@$42_TestReferences_T) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |referencesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |referencesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |referencesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |referencesz3bpl.770:13|
 :skolemid |20|
))))
 :qid |referencesz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |referencesz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |referencesz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |referencesz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |referencesz3bpl.950:13|
 :skolemid |25|
))))
 :qid |referencesz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |referencesz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |referencesz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |referencesz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |referencesz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |referencesz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesz3bpl.1261:41|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesz3bpl.1274:60|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 (Seq T@$42_TestReferences_T)) ) (! (let ((r@@0 (ReverseVec_8966 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_8966 v@@10))
)))
(assert (forall ((v@@11 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |referencesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |referencesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |referencesz3bpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () T@$42_TestReferences_WithdrawalCapability)
(declare-fun $t1@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_withdrawal_capability_address$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 25009) (let ((anon0$1_correct  (=> (|$IsValid'$42_TestReferences_WithdrawalCapability'| _$t0) (=> (and (and (= _$t0 _$t0) (= $t1@0 (|$account_address#$42_TestReferences_WithdrawalCapability| _$t0))) (and (= $t1@0 $t1@0) (= (ControlFlow 0 22549) (- 0 25074)))) (= $t1@0 (|$account_address#$42_TestReferences_WithdrawalCapability| _$t0))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 25009) 22549) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
