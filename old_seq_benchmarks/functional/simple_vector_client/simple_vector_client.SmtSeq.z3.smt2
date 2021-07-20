(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestVector_none$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 65097) true)
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| () Int)
(declare-fun $abort_code@6 () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t6@1| () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@0| () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1| () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t3@2| () (Seq Int))
(declare-fun |inline$$1_Vector_pop_back'u64'$1$m'| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$e@2| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$e@0| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$e@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_pop_back'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_is_empty'u64'$1$b@1| () Bool)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1| () (Seq Int))
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t7@0| () T@$Mutation_25431)
(declare-fun |inline$$42_TestVector_some'u64'$0$$ret0@1| () |T@$42_TestVector_T'u64'|)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t6@1| () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@0| () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1| () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t3@2| () (Seq Int))
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$e@2| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$e@0| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$e@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_is_empty'u64'$0$b@1| () Bool)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1| () (Seq Int))
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t7@0| () T@$Mutation_25431)
(declare-fun |inline$$42_TestVector_none'u64'$0$$ret0@1| () |T@$42_TestVector_T'u64'|)
(declare-fun |inline$$42_TestVector_some'u64'$0$$ret0@0| () |T@$42_TestVector_T'u64'|)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$42_TestVector_some'u64'$0$$t1@1| () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun |inline$$42_TestVector_some'u64'$0$$t5@1| () |T@$42_TestVector_T'u64'|)
(declare-fun |inline$$42_TestVector_some'u64'$0$$t3@1| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun |inline$$42_TestVector_some'u64'$0$$t3@0| () T@$Mutation_25431)
(declare-fun |inline$$42_TestVector_none'u64'$0$$t2@1| () |T@$42_TestVector_T'u64'|)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestVector_option_type$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 65210) (let ((anon13_Else_correct  (=> (not $abort_flag@7) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1|) (= |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1|)) (and (=> (= (ControlFlow 0 45802) (- 0 66573)) (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| 0)) (=> (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| 0) (=> (= (ControlFlow 0 45802) (- 0 66581)) (= |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| 42))))))))
(let ((anon13_Then_correct true))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$L5_correct|  (=> (= $abort_flag@7 true) (=> (and (= $abort_code@6 |inline$$42_TestVector_unwrap_or'u64'$1$$t6@1|) (= |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@0|)) (and (=> (= (ControlFlow 0 45726) 45816) anon13_Then_correct) (=> (= (ControlFlow 0 45726) 45802) anon13_Else_correct))))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon11_Then_correct|  (=> (and (and $abort_flag@5 (= $abort_code@4 $abort_code@4)) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t6@1| $abort_code@4) (= (ControlFlow 0 45720) 45726))) |inline$$42_TestVector_unwrap_or'u64'$1$L5_correct|)))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon9_Then_correct|  (=> (and (and $abort_flag@4 (= $abort_code@3 $abort_code@3)) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t6@1| $abort_code@3) (= (ControlFlow 0 45754) 45726))) |inline$$42_TestVector_unwrap_or'u64'$1$L5_correct|)))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$L3_correct|  (=> (and (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1| |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1|) (= $abort_flag@7 $abort_flag@6)) (and (= $abort_code@6 $abort_code@5) (= |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1|))) (and (=> (= (ControlFlow 0 45706) 45816) anon13_Then_correct) (=> (= (ControlFlow 0 45706) 45802) anon13_Else_correct)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon11_Else_correct|  (=> (not $abort_flag@5) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t3@2| (|v#$Mutation_25431| |inline$$1_Vector_pop_back'u64'$1$m'|)) (= |inline$$1_Vector_pop_back'u64'$1$e@2| |inline$$1_Vector_pop_back'u64'$1$e@2|)) (=> (and (and (= $abort_code@5 $abort_code@4) (= $abort_flag@6 $abort_flag@5)) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1| |inline$$1_Vector_pop_back'u64'$1$e@2|) (= (ControlFlow 0 45694) 45706))) |inline$$42_TestVector_unwrap_or'u64'$1$L3_correct|)))))
(let ((|inline$$1_Vector_pop_back'u64'$1$anon3_Then$1_correct|  (=> (= $abort_code@4 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@5 true) (= |inline$$1_Vector_pop_back'u64'$1$e@2| |inline$$1_Vector_pop_back'u64'$1$e@0|)) (and (=> (= (ControlFlow 0 45664) 45720) |inline$$42_TestVector_unwrap_or'u64'$1$anon11_Then_correct|) (=> (= (ControlFlow 0 45664) 45694) |inline$$42_TestVector_unwrap_or'u64'$1$anon11_Else_correct|))))))
(let ((|inline$$1_Vector_pop_back'u64'$1$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$1$len@1| 0) (= (ControlFlow 0 45662) 45664)) |inline$$1_Vector_pop_back'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'u64'$1$anon3_Else_correct|  (=> (and (not (= |inline$$1_Vector_pop_back'u64'$1$len@1| 0)) (= |inline$$1_Vector_pop_back'u64'$1$e@1| (seq.nth |inline$$1_Vector_pop_back'u64'$1$v@1| (- |inline$$1_Vector_pop_back'u64'$1$len@1| 1)))) (=> (and (and (= |inline$$1_Vector_pop_back'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1|) (|p#$Mutation_25431| |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1|) (seq.extract |inline$$1_Vector_pop_back'u64'$1$v@1| 0 (- (- (seq.len |inline$$1_Vector_pop_back'u64'$1$v@1|) 1) 0)))) (= $abort_code@4 $abort_code@3)) (and (= $abort_flag@5 $abort_flag@4) (= |inline$$1_Vector_pop_back'u64'$1$e@2| |inline$$1_Vector_pop_back'u64'$1$e@1|))) (and (=> (= (ControlFlow 0 45614) 45720) |inline$$42_TestVector_unwrap_or'u64'$1$anon11_Then_correct|) (=> (= (ControlFlow 0 45614) 45694) |inline$$42_TestVector_unwrap_or'u64'$1$anon11_Else_correct|))))))
(let ((|inline$$1_Vector_pop_back'u64'$1$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$1$v@1| (|v#$Mutation_25431| |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1|)) (= |inline$$1_Vector_pop_back'u64'$1$len@1| (seq.len |inline$$1_Vector_pop_back'u64'$1$v@1|))) (and (=> (= (ControlFlow 0 45588) 45662) |inline$$1_Vector_pop_back'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 45588) 45614) |inline$$1_Vector_pop_back'u64'$1$anon3_Else_correct|)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon10_Else_correct|  (=> (not |inline$$1_Vector_is_empty'u64'$1$b@1|) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1| ($Mutation_25431 ($Local 3) (as seq.empty (Seq Int)) |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1|)) (= (ControlFlow 0 45672) 45588)) |inline$$1_Vector_pop_back'u64'$1$anon0_correct|))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon10_Then_correct|  (=> (and |inline$$1_Vector_is_empty'u64'$1$b@1| (= 0 0)) (=> (and (and (= $abort_code@5 $abort_code@3) (= $abort_flag@6 $abort_flag@4)) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1| 0) (= (ControlFlow 0 45740) 45706))) |inline$$42_TestVector_unwrap_or'u64'$1$L3_correct|))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon9_Else_correct|  (=> (not $abort_flag@4) (and (=> (= (ControlFlow 0 45469) 45740) |inline$$42_TestVector_unwrap_or'u64'$1$anon10_Then_correct|) (=> (= (ControlFlow 0 45469) 45672) |inline$$42_TestVector_unwrap_or'u64'$1$anon10_Else_correct|)))))
(let ((|inline$$1_Vector_is_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u64'$1$b@1| (= (seq.len |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1|) 0)) (and (=> (= (ControlFlow 0 45455) 45754) |inline$$42_TestVector_unwrap_or'u64'$1$anon9_Then_correct|) (=> (= (ControlFlow 0 45455) 45469) |inline$$42_TestVector_unwrap_or'u64'$1$anon9_Else_correct|)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon0_correct|  (=> (and (= (seq.len (|p#$Mutation_25431| |inline$$42_TestVector_unwrap_or'u64'$1$$t7@0|)) 0) (= |inline$$42_TestVector_some'u64'$0$$ret0@1| |inline$$42_TestVector_some'u64'$0$$ret0@1|)) (=> (and (and (= 0 0) (= |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1| (|$v#$42_TestVector_T'u64'| |inline$$42_TestVector_some'u64'$0$$ret0@1|))) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1| |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1|) (= (ControlFlow 0 45461) 45455))) |inline$$1_Vector_is_empty'u64'$1$anon0_correct|))))
(let ((anon12_Else_correct  (=> (not $abort_flag@4) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 45760) 45461)) |inline$$42_TestVector_unwrap_or'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$L5_correct|  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@3 |inline$$42_TestVector_unwrap_or'u64'$0$$t6@1|) (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@0|)) (and (=> (= (ControlFlow 0 45056) 45836) anon12_Then_correct) (=> (= (ControlFlow 0 45056) 45760) anon12_Else_correct))))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon11_Then_correct|  (=> (and (and $abort_flag@2 (= $abort_code@1 $abort_code@1)) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t6@1| $abort_code@1) (= (ControlFlow 0 45050) 45056))) |inline$$42_TestVector_unwrap_or'u64'$0$L5_correct|)))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon9_Then_correct|  (=> (and (and $abort_flag@1 (= $abort_code@0 $abort_code@0)) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t6@1| $abort_code@0) (= (ControlFlow 0 45084) 45056))) |inline$$42_TestVector_unwrap_or'u64'$0$L5_correct|)))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$L3_correct|  (=> (and (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1| |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1|) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@3 $abort_code@2) (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1|))) (and (=> (= (ControlFlow 0 45036) 45836) anon12_Then_correct) (=> (= (ControlFlow 0 45036) 45760) anon12_Else_correct)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon11_Else_correct|  (=> (not $abort_flag@2) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t3@2| (|v#$Mutation_25431| |inline$$1_Vector_pop_back'u64'$0$m'|)) (= |inline$$1_Vector_pop_back'u64'$0$e@2| |inline$$1_Vector_pop_back'u64'$0$e@2|)) (=> (and (and (= $abort_code@2 $abort_code@1) (= $abort_flag@3 $abort_flag@2)) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1| |inline$$1_Vector_pop_back'u64'$0$e@2|) (= (ControlFlow 0 45024) 45036))) |inline$$42_TestVector_unwrap_or'u64'$0$L3_correct|)))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Then$1_correct|  (=> (= $abort_code@1 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2 true) (= |inline$$1_Vector_pop_back'u64'$0$e@2| |inline$$1_Vector_pop_back'u64'$0$e@0|)) (and (=> (= (ControlFlow 0 44994) 45050) |inline$$42_TestVector_unwrap_or'u64'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 44994) 45024) |inline$$42_TestVector_unwrap_or'u64'$0$anon11_Else_correct|))))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$0$len@1| 0) (= (ControlFlow 0 44992) 44994)) |inline$$1_Vector_pop_back'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Else_correct|  (=> (and (not (= |inline$$1_Vector_pop_back'u64'$0$len@1| 0)) (= |inline$$1_Vector_pop_back'u64'$0$e@1| (seq.nth |inline$$1_Vector_pop_back'u64'$0$v@1| (- |inline$$1_Vector_pop_back'u64'$0$len@1| 1)))) (=> (and (and (= |inline$$1_Vector_pop_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1|) (|p#$Mutation_25431| |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1|) (seq.extract |inline$$1_Vector_pop_back'u64'$0$v@1| 0 (- (- (seq.len |inline$$1_Vector_pop_back'u64'$0$v@1|) 1) 0)))) (= $abort_code@1 $abort_code@0)) (and (= $abort_flag@2 $abort_flag@1) (= |inline$$1_Vector_pop_back'u64'$0$e@2| |inline$$1_Vector_pop_back'u64'$0$e@1|))) (and (=> (= (ControlFlow 0 44944) 45050) |inline$$42_TestVector_unwrap_or'u64'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 44944) 45024) |inline$$42_TestVector_unwrap_or'u64'$0$anon11_Else_correct|))))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$0$v@1| (|v#$Mutation_25431| |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1|)) (= |inline$$1_Vector_pop_back'u64'$0$len@1| (seq.len |inline$$1_Vector_pop_back'u64'$0$v@1|))) (and (=> (= (ControlFlow 0 44918) 44992) |inline$$1_Vector_pop_back'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 44918) 44944) |inline$$1_Vector_pop_back'u64'$0$anon3_Else_correct|)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon10_Else_correct|  (=> (not |inline$$1_Vector_is_empty'u64'$0$b@1|) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1| ($Mutation_25431 ($Local 3) (as seq.empty (Seq Int)) |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1|)) (= (ControlFlow 0 45002) 44918)) |inline$$1_Vector_pop_back'u64'$0$anon0_correct|))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon10_Then_correct|  (=> (and |inline$$1_Vector_is_empty'u64'$0$b@1| (= 0 0)) (=> (and (and (= $abort_code@2 $abort_code@0) (= $abort_flag@3 $abort_flag@1)) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1| 0) (= (ControlFlow 0 45070) 45036))) |inline$$42_TestVector_unwrap_or'u64'$0$L3_correct|))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon9_Else_correct|  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 44799) 45070) |inline$$42_TestVector_unwrap_or'u64'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 44799) 45002) |inline$$42_TestVector_unwrap_or'u64'$0$anon10_Else_correct|)))))
(let ((|inline$$1_Vector_is_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u64'$0$b@1| (= (seq.len |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1|) 0)) (and (=> (= (ControlFlow 0 44785) 45084) |inline$$42_TestVector_unwrap_or'u64'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 44785) 44799) |inline$$42_TestVector_unwrap_or'u64'$0$anon9_Else_correct|)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon0_correct|  (=> (and (= (seq.len (|p#$Mutation_25431| |inline$$42_TestVector_unwrap_or'u64'$0$$t7@0|)) 0) (= |inline$$42_TestVector_none'u64'$0$$ret0@1| |inline$$42_TestVector_none'u64'$0$$ret0@1|)) (=> (and (and (= 0 0) (= |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1| (|$v#$42_TestVector_T'u64'| |inline$$42_TestVector_none'u64'$0$$ret0@1|))) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1| |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1|) (= (ControlFlow 0 44791) 44785))) |inline$$1_Vector_is_empty'u64'$0$anon0_correct|))))
(let ((anon11_Else_correct  (=> (and (and (not $abort_flag@1) (= |inline$$42_TestVector_some'u64'$0$$ret0@1| |inline$$42_TestVector_some'u64'$0$$ret0@1|)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 45090) 44791))) |inline$$42_TestVector_unwrap_or'u64'$0$anon0_correct|)))
(let ((anon11_Then_correct true))
(let ((|inline$$42_TestVector_some'u64'$0$L2_correct|  (=> (and (= $abort_flag@1 true) (= |inline$$42_TestVector_some'u64'$0$$ret0@1| |inline$$42_TestVector_some'u64'$0$$ret0@0|)) (and (=> (= (ControlFlow 0 44392) 45850) anon11_Then_correct) (=> (= (ControlFlow 0 44392) 45090) anon11_Else_correct)))))
(let ((|inline$$42_TestVector_some'u64'$0$anon6_Then_correct|  (=> $abort_flag@0 (=> (and (= $abort_code@0 $abort_code@0) (= (ControlFlow 0 44386) 44392)) |inline$$42_TestVector_some'u64'$0$L2_correct|))))
(let ((|inline$$42_TestVector_some'u64'$0$anon5_Then_correct|  (=> $abort_flag@0 (=> (and (= $abort_code@0 $abort_code@0) (= (ControlFlow 0 44406) 44392)) |inline$$42_TestVector_some'u64'$0$L2_correct|))))
(let ((|inline$$42_TestVector_some'u64'$0$anon6_Else_correct|  (=> (and (not $abort_flag@0) (= |inline$$42_TestVector_some'u64'$0$$t1@1| (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (=> (and (and (= |inline$$42_TestVector_some'u64'$0$$t5@1| (|$42_TestVector_T'u64'| |inline$$42_TestVector_some'u64'$0$$t1@1|)) (= |inline$$42_TestVector_some'u64'$0$$t5@1| |inline$$42_TestVector_some'u64'$0$$t5@1|)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$42_TestVector_some'u64'$0$$ret0@1| |inline$$42_TestVector_some'u64'$0$$t5@1|))) (and (=> (= (ControlFlow 0 44372) 45850) anon11_Then_correct) (=> (= (ControlFlow 0 44372) 45090) anon11_Else_correct))))))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| |inline$$42_TestVector_some'u64'$0$$t3@1|) (|p#$Mutation_25431| |inline$$42_TestVector_some'u64'$0$$t3@1|) (seq.++ (|v#$Mutation_25431| |inline$$42_TestVector_some'u64'$0$$t3@1|) (seq.unit 42)))) (and (=> (= (ControlFlow 0 44336) 44386) |inline$$42_TestVector_some'u64'$0$anon6_Then_correct|) (=> (= (ControlFlow 0 44336) 44372) |inline$$42_TestVector_some'u64'$0$anon6_Else_correct|)))))
(let ((|inline$$42_TestVector_some'u64'$0$anon5_Else_correct|  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|)) (and (= |inline$$42_TestVector_some'u64'$0$$t3@1| ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|)) (= (ControlFlow 0 44342) 44336))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|)))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 44253) 44406) |inline$$42_TestVector_some'u64'$0$anon5_Then_correct|) (=> (= (ControlFlow 0 44253) 44342) |inline$$42_TestVector_some'u64'$0$anon5_Else_correct|)))))
(let ((|inline$$42_TestVector_some'u64'$0$anon0_correct|  (=> (= (seq.len (|p#$Mutation_25431| |inline$$42_TestVector_some'u64'$0$$t3@0|)) 0) (=> (and (= 42 42) (= (ControlFlow 0 44259) 44253)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon10_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$42_TestVector_none'u64'$0$$ret0@1| |inline$$42_TestVector_none'u64'$0$$ret0@1|)) (and (|$IsValid'u64'| 42) (= (ControlFlow 0 44412) 44259))) |inline$$42_TestVector_some'u64'$0$anon0_correct|)))
(let ((anon10_Then_correct true))
(let ((|inline$$42_TestVector_none'u64'$0$anon3_Else_correct|  (=> (not false) (=> (and (and (= |inline$$42_TestVector_none'u64'$0$$t2@1| (|$42_TestVector_T'u64'| |inline$$1_Vector_empty'u64'$0$v@1|)) (= |inline$$42_TestVector_none'u64'$0$$t2@1| |inline$$42_TestVector_none'u64'$0$$t2@1|)) (and (= $abort_flag@0 false) (= |inline$$42_TestVector_none'u64'$0$$ret0@1| |inline$$42_TestVector_none'u64'$0$$t2@1|))) (and (=> (= (ControlFlow 0 43955) 45864) anon10_Then_correct) (=> (= (ControlFlow 0 43955) 44412) anon10_Else_correct))))))
(let ((|inline$$42_TestVector_none'u64'$0$anon3_Then_correct| true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 43927) 43973) |inline$$42_TestVector_none'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 43927) 43955) |inline$$42_TestVector_none'u64'$0$anon3_Else_correct|)))))
(let ((|inline$$42_TestVector_none'u64'$0$anon0_correct|  (=> (= (ControlFlow 0 43933) 43927) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 43979) 43933) |inline$$42_TestVector_none'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 65210) 43979) anon0$1_correct)))
anon0_correct)))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestVector_some$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 66606) true)
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t2@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_borrow1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 66816) (let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (= (ControlFlow 0 46711) (- 0 67107))) (= |inline$$1_Vector_borrow'u64'$0$dst@2| 7)))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 46679) 46725) anon10_Then_correct) (=> (= (ControlFlow 0 46679) 46711) anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len $t0@0)))) (= (ControlFlow 0 46677) 46679)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (and (>= 0 0) (< 0 (seq.len $t0@0))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (seq.nth $t0@0 0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 46627) 46725) anon10_Then_correct) (=> (= (ControlFlow 0 46627) 46711) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (|$IsValid'u64'| 0)) (and (=> (= (ControlFlow 0 46685) 46677) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 46685) 46627) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t2@0) (|p#$Mutation_25431| $t2@0) (seq.++ (|v#$Mutation_25431| $t2@0) (seq.unit 7)))) (and (=> (= (ControlFlow 0 46516) 46745) anon9_Then_correct) (=> (= (ControlFlow 0 46516) 46685) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 7) (= (ControlFlow 0 46522) 46516))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 46427) 46759) anon8_Then_correct) (=> (= (ControlFlow 0 46427) 46522) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 46433) 46427) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25431| $t2)) 0) (= (ControlFlow 0 46403) 46433)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 66816) 46403) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t2@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_borrow2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 67130) (let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (= (ControlFlow 0 47161) (- 0 67421))) (not (= |inline$$1_Vector_borrow'u64'$0$dst@2| 7))))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 47127) 47175) anon10_Then_correct) (=> (= (ControlFlow 0 47127) 47161) anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len $t0@0)))) (= (ControlFlow 0 47125) 47127)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (and (>= 0 0) (< 0 (seq.len $t0@0))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (seq.nth $t0@0 0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 47075) 47175) anon10_Then_correct) (=> (= (ControlFlow 0 47075) 47161) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (|$IsValid'u64'| 0)) (and (=> (= (ControlFlow 0 47133) 47125) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 47133) 47075) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t2@0) (|p#$Mutation_25431| $t2@0) (seq.++ (|v#$Mutation_25431| $t2@0) (seq.unit 0)))) (and (=> (= (ControlFlow 0 46964) 47195) anon9_Then_correct) (=> (= (ControlFlow 0 46964) 47133) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 46970) 46964))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 46875) 47209) anon8_Then_correct) (=> (= (ControlFlow 0 46875) 46970) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 46881) 46875) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25431| $t2)) 0) (= (ControlFlow 0 46851) 46881)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 67130) 46851) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t2@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_borrow3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 67446) (let ((L2_correct  (=> (= (ControlFlow 0 47631) (- 0 67746)) true)))
(let ((anon10_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 47621) 47631)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (= (ControlFlow 0 47607) (- 0 67737))) (not true)))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 47577) 47621) anon10_Then_correct) (=> (= (ControlFlow 0 47577) 47607) anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 1 0) (< 1 (seq.len $t0@0)))) (= (ControlFlow 0 47575) 47577)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (and (>= 1 0) (< 1 (seq.len $t0@0))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (seq.nth $t0@0 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 47525) 47621) anon10_Then_correct) (=> (= (ControlFlow 0 47525) 47607) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 47583) 47575) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 47583) 47525) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t2@0) (|p#$Mutation_25431| $t2@0) (seq.++ (|v#$Mutation_25431| $t2@0) (seq.unit 7)))) (and (=> (= (ControlFlow 0 47414) 47645) anon9_Then_correct) (=> (= (ControlFlow 0 47414) 47583) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 7) (= (ControlFlow 0 47420) 47414))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 47325) 47659) anon8_Then_correct) (=> (= (ControlFlow 0 47325) 47420) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 47331) 47325) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25431| $t2)) 0) (= (ControlFlow 0 47301) 47331)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 67446) 47301) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t4@0 () (Seq Int))
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t11@0 () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4535)
(declare-fun $t0@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun |$temp_0'vec'u64''@2| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@0| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4535)
(declare-fun _$t0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun $t5@0 () (Seq Int))
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(declare-fun $t1 () T@$Mutation_25431)
(declare-fun $t11 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_borrow_mut$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 67766) (let ((L2_correct  (=> (= (ControlFlow 0 48280) (- 0 68260)) (= (seq.len $t4@0) 0))))
(let ((anon7_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 48264) 48280)) L2_correct))))
(let ((anon6_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 48294) 48280)) L2_correct))))
(let ((anon7_Else_correct  (=> (not $abort_flag@1) (=> (and (= $t11@0 ($Mutation_4535 (|l#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (|p#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) 7)) (= $t0@0 ($Mutation_25431 (|l#$Mutation_25431| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (|p#$Mutation_25431| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (seq.++ (seq.extract (|v#$Mutation_25431| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) 0 (- (seq.nth (|p#$Mutation_4535| $t11@0) (seq.len (|p#$Mutation_25431| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 0)) (seq.unit (|v#$Mutation_4535| $t11@0)) (seq.extract (|v#$Mutation_25431| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (+ (seq.nth (|p#$Mutation_4535| $t11@0) (seq.len (|p#$Mutation_25431| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 1) (- (seq.len (|v#$Mutation_25431| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)) (+ (seq.nth (|p#$Mutation_4535| $t11@0) (seq.len (|p#$Mutation_25431| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 1))))))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (= |$temp_0'vec'u64''@2| (|v#$Mutation_25431| $t0@0))) (and (= |$temp_0'vec'u64''@2| |$temp_0'vec'u64''@2|) (= (ControlFlow 0 48250) (- 0 68244)))) (not (= (seq.len $t4@0) 0)))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| |inline$$1_Vector_borrow_mut'u64'$0$m'@0|))) (and (=> (= (ControlFlow 0 48166) 48264) anon7_Then_correct) (=> (= (ControlFlow 0 48166) 48250) anon7_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|)))) (= (ControlFlow 0 48164) 48166)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (and (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|))) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4535 (|l#$Mutation_25431| _$t0) (seq.++ (|p#$Mutation_25431| _$t0) (seq.unit 0)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0)))) (and (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| _$t0)))) (and (=> (= (ControlFlow 0 48114) 48264) anon7_Then_correct) (=> (= (ControlFlow 0 48114) 48250) anon7_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_25431| _$t0)) (and (=> (= (ControlFlow 0 48084) 48164) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 48084) 48114) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (|$IsValid'u64'| 7)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 48174) 48084))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 47950) 48294) anon6_Then_correct) (=> (= (ControlFlow 0 47950) 48174) anon6_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len $t5@0)))) (= (ControlFlow 0 47948) 47950)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (and (>= 0 0) (< 0 (seq.len $t5@0))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (seq.nth $t5@0 0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 47898) 48294) anon6_Then_correct) (=> (= (ControlFlow 0 47898) 48174) anon6_Else_correct))))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_25431| _$t0) ($Param 0)) (=> (and (and (and (|$IsValid'vec'u64''| (|v#$Mutation_25431| _$t0)) (= $t4@0 (|v#$Mutation_25431| _$t0))) (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_25431| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|))) (and (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_25431| _$t0)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)) (and (= $t5@0 (|v#$Mutation_25431| _$t0)) (|$IsValid'u64'| 0)))) (and (=> (= (ControlFlow 0 47956) 47948) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 47956) 47898) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25431| $t1)) 0) (=> (and (= (seq.len (|p#$Mutation_4535| $t11)) 0) (= (ControlFlow 0 47759) 47956)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 67766) 47759) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_contains'u64'$1$res@1| () Bool)
(declare-fun $t2@3 () (Seq Int))
(declare-fun |inline$$1_Vector_contains'u64'$0$res@1| () Bool)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_25431)
(declare-fun $t14@0 () T@$Mutation_25431)
(declare-fun $t2@2 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25431)
(declare-fun $t12@0 () T@$Mutation_25431)
(declare-fun $t2@1 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun $t10@0 () T@$Mutation_25431)
(declare-fun $t2@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t8@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t8 () T@$Mutation_25431)
(declare-fun $t10 () T@$Mutation_25431)
(declare-fun $t12 () T@$Mutation_25431)
(declare-fun $t14 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_contains$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 68283) (let ((anon22_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_contains'u64'$1$res@1| |inline$$1_Vector_contains'u64'$1$res@1|) (= $t2@3 $t2@3)) (and (= |inline$$1_Vector_contains'u64'$0$res@1| |inline$$1_Vector_contains'u64'$0$res@1|) (= |inline$$1_Vector_contains'u64'$1$res@1| |inline$$1_Vector_contains'u64'$1$res@1|))) (and (=> (= (ControlFlow 0 49267) (- 0 68899)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 49267) (- 0 68906)) (= |inline$$1_Vector_contains'u64'$0$res@1| true)) (=> (= |inline$$1_Vector_contains'u64'$0$res@1| true) (and (=> (= (ControlFlow 0 49267) (- 0 68914)) (= |inline$$1_Vector_contains'u64'$1$res@1| false)) (=> (= |inline$$1_Vector_contains'u64'$1$res@1| false) (and (=> (= (ControlFlow 0 49267) (- 0 68922)) (= (seq.len $t2@3) 4)) (=> (= (seq.len $t2@3) 4) (and (=> (= (ControlFlow 0 49267) (- 0 68932)) (= (seq.nth $t2@3 0) 1)) (=> (= (seq.nth $t2@3 0) 1) (and (=> (= (ControlFlow 0 49267) (- 0 68944)) (= (seq.nth $t2@3 1) 2)) (=> (= (seq.nth $t2@3 1) 2) (and (=> (= (ControlFlow 0 49267) (- 0 68956)) (= (seq.nth $t2@3 2) 3)) (=> (= (seq.nth $t2@3 2) 3) (and (=> (= (ControlFlow 0 49267) (- 0 68968)) (= (seq.nth $t2@3 3) 5)) (=> (= (seq.nth $t2@3 3) 5) (and (=> (= (ControlFlow 0 49267) (- 0 68980)) (let (($range_0 $t2@3))
(exists (($i_1 Int) ) (!  (and (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let ((x (seq.nth $range_0 $i_1)))
(= x 1)))
 :qid |simplevectorclientSmtSeqz3bpl.2312:38|
 :skolemid |36|
)))) (=> (let (($range_0 $t2@3))
(exists (($i_1@@0 Int) ) (!  (and (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0))) (let ((x (seq.nth $range_0 $i_1@@0)))
(= x 1)))
 :qid |simplevectorclientSmtSeqz3bpl.2312:38|
 :skolemid |36|
))) (and (=> (= (ControlFlow 0 49267) (- 0 69011)) (let (($range_0@@0 $t2@3))
(exists (($i_1@@1 Int) ) (!  (and (and (>= $i_1@@1 0) (< $i_1@@1 (seq.len $range_0@@0))) (let ((x@@0 (seq.nth $range_0@@0 $i_1@@1)))
(= x@@0 2)))
 :qid |simplevectorclientSmtSeqz3bpl.2318:38|
 :skolemid |37|
)))) (=> (let (($range_0@@0 $t2@3))
(exists (($i_1@@2 Int) ) (!  (and (and (>= $i_1@@2 0) (< $i_1@@2 (seq.len $range_0@@0))) (let ((x@@0 (seq.nth $range_0@@0 $i_1@@2)))
(= x@@0 2)))
 :qid |simplevectorclientSmtSeqz3bpl.2318:38|
 :skolemid |37|
))) (and (=> (= (ControlFlow 0 49267) (- 0 69042)) (let (($range_0@@1 $t2@3))
(exists (($i_1@@3 Int) ) (!  (and (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@1))) (let ((x@@1 (seq.nth $range_0@@1 $i_1@@3)))
(= x@@1 3)))
 :qid |simplevectorclientSmtSeqz3bpl.2324:38|
 :skolemid |38|
)))) (=> (let (($range_0@@1 $t2@3))
(exists (($i_1@@4 Int) ) (!  (and (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@1))) (let ((x@@1 (seq.nth $range_0@@1 $i_1@@4)))
(= x@@1 3)))
 :qid |simplevectorclientSmtSeqz3bpl.2324:38|
 :skolemid |38|
))) (and (=> (= (ControlFlow 0 49267) (- 0 69073)) (not (let (($range_0@@2 $t2@3))
(exists (($i_1@@5 Int) ) (!  (and (and (>= $i_1@@5 0) (< $i_1@@5 (seq.len $range_0@@2))) (let ((x@@2 (seq.nth $range_0@@2 $i_1@@5)))
(= x@@2 4)))
 :qid |simplevectorclientSmtSeqz3bpl.2330:39|
 :skolemid |39|
))))) (=> (not (let (($range_0@@2 $t2@3))
(exists (($i_1@@6 Int) ) (!  (and (and (>= $i_1@@6 0) (< $i_1@@6 (seq.len $range_0@@2))) (let ((x@@2 (seq.nth $range_0@@2 $i_1@@6)))
(= x@@2 4)))
 :qid |simplevectorclientSmtSeqz3bpl.2330:39|
 :skolemid |39|
)))) (=> (= (ControlFlow 0 49267) (- 0 69106)) (let (($range_0@@3 $t2@3))
(exists (($i_1@@7 Int) ) (!  (and (and (>= $i_1@@7 0) (< $i_1@@7 (seq.len $range_0@@3))) (let ((x@@3 (seq.nth $range_0@@3 $i_1@@7)))
(= x@@3 5)))
 :qid |simplevectorclientSmtSeqz3bpl.2336:38|
 :skolemid |40|
))))))))))))))))))))))))))))))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_contains'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_contains'u64'$1$res@1| (exists ((i@@12 Int) ) (!  (and (and (|$IsValid'u64'| i@@12) (and (>= i@@12 0) (< i@@12 (seq.len $t2@3)))) (= (seq.nth $t2@3 i@@12) 4))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (and (=> (= (ControlFlow 0 48980) 49281) anon22_Then_correct) (=> (= (ControlFlow 0 48980) 49267) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (not false) (= |inline$$1_Vector_contains'u64'$0$res@1| |inline$$1_Vector_contains'u64'$0$res@1|)) (=> (and (and (= $t2@3 $t2@3) (|$IsValid'u64'| 4)) (and (= 4 4) (= (ControlFlow 0 48986) 48980))) |inline$$1_Vector_contains'u64'$1$anon0_correct|))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_contains'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'u64'$0$res@1| (exists ((i@@13 Int) ) (!  (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len $t2@3)))) (= (seq.nth $t2@3 i@@13) 3))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (and (=> (= (ControlFlow 0 48898) 49305) anon21_Then_correct) (=> (= (ControlFlow 0 48898) 48986) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (and (not false) (= $t2@3 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (=> (and (and (= $t2@3 $t2@3) (|$IsValid'u64'| 3)) (and (= 3 3) (= (ControlFlow 0 48904) 48898))) |inline$$1_Vector_contains'u64'$0$anon0_correct|))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t14@0) (|p#$Mutation_25431| $t14@0) (seq.++ (|v#$Mutation_25431| $t14@0) (seq.unit 5)))) (and (=> (= (ControlFlow 0 48818) 49319) anon20_Then_correct) (=> (= (ControlFlow 0 48818) 48904) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not false) (=> (and (and (= $t2@2 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t14@0 ($Mutation_25431 ($Local 2) (as seq.empty (Seq Int)) $t2@2))) (and (|$IsValid'u64'| 5) (= (ControlFlow 0 48824) 48818))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t12@0) (|p#$Mutation_25431| $t12@0) (seq.++ (|v#$Mutation_25431| $t12@0) (seq.unit 3)))) (and (=> (= (ControlFlow 0 48731) 49333) anon19_Then_correct) (=> (= (ControlFlow 0 48731) 48824) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not false) (=> (and (and (= $t2@1 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t12@0 ($Mutation_25431 ($Local 2) (as seq.empty (Seq Int)) $t2@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 48737) 48731))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t10@0) (|p#$Mutation_25431| $t10@0) (seq.++ (|v#$Mutation_25431| $t10@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 48644) 49347) anon18_Then_correct) (=> (= (ControlFlow 0 48644) 48737) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not false) (=> (and (and (= $t2@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t10@0 ($Mutation_25431 ($Local 2) (as seq.empty (Seq Int)) $t2@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 48650) 48644))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t8@0) (|p#$Mutation_25431| $t8@0) (seq.++ (|v#$Mutation_25431| $t8@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 48557) 49361) anon17_Then_correct) (=> (= (ControlFlow 0 48557) 48650) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t8@0 ($Mutation_25431 ($Local 2) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 48563) 48557))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 48468) 49375) anon16_Then_correct) (=> (= (ControlFlow 0 48468) 48563) anon16_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 48474) 48468) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25431| $t8)) 0) (=> (and (and (= (seq.len (|p#$Mutation_25431| $t10)) 0) (= (seq.len (|p#$Mutation_25431| $t12)) 0)) (and (= (seq.len (|p#$Mutation_25431| $t14)) 0) (= (ControlFlow 0 48444) 48474))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 68283) 48444) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () (Seq Int))
(declare-fun _$t0 () (Seq Int))
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_is_empty'u64'$0$b@1| () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_destroy_empty1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 69166) (let ((anon15_Then_correct true))
(let ((anon14_Then_correct true))
(let ((L3_correct  (=> (and (= $t1@0 $t1@0) (= (ControlFlow 0 49654) (- 0 69407))) (= $t1@0 _$t0))))
(let ((anon15_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|)) (and (= $t1@0 |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 49820) 49654))) L3_correct)))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 49796) 49834) anon15_Then_correct) (=> (= (ControlFlow 0 49796) 49820) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 49802) 49796)) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 49762) 49854) anon14_Then_correct) (=> (= (ControlFlow 0 49762) 49802) anon14_Else_correct)))))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Then_correct|  (=> (and (not (= (seq.len _$t0) 0)) (= (ControlFlow 0 49760) 49762)) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Then$1_correct|)))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Else_correct|  (=> (= (seq.len _$t0) 0) (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 49712) 49854) anon14_Then_correct) (=> (= (ControlFlow 0 49712) 49802) anon14_Else_correct))))))
(let ((anon13_Then_correct  (=> |inline$$1_Vector_is_empty'u64'$0$b@1| (and (=> (= (ControlFlow 0 49766) 49760) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Then_correct|) (=> (= (ControlFlow 0 49766) 49712) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Else_correct|)))))
(let ((anon13_Else_correct  (=> (and (and (not |inline$$1_Vector_is_empty'u64'$0$b@1|) (= _$t0 _$t0)) (and (= $t1@0 _$t0) (= (ControlFlow 0 49634) 49654))) L3_correct)))
(let ((anon12_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 49618) 49766) anon13_Then_correct) (=> (= (ControlFlow 0 49618) 49634) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_is_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u64'$0$b@1| (= (seq.len _$t0) 0)) (and (=> (= (ControlFlow 0 49604) 49868) anon12_Then_correct) (=> (= (ControlFlow 0 49604) 49618) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 49610) 49604)) |inline$$1_Vector_is_empty'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 69166) 49610) anon0$1_correct)))
anon0_correct)))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t4@0 () T@$Mutation_25431)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_is_empty'u64'$0$b@1| () Bool)
(declare-fun _$t0 () (Seq Int))
(declare-fun $t4 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_destroy_empty2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 69428) (let ((L5_correct  (=> (= (ControlFlow 0 50192) (- 0 69776)) true)))
(let ((anon14_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 50460) 50192)) L5_correct))))
(let ((anon15_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 50182) 50192)) L5_correct))))
(let ((L3_correct  (=> (= (ControlFlow 0 50168) (- 0 69805)) (not true))))
(let ((anon14_Else_correct  (=> (not $abort_flag@1) (=> (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_swap'u64'$0$m'|)) (= (ControlFlow 0 50446) 50168)) L3_correct))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 50426) 50460) anon14_Then_correct) (=> (= (ControlFlow 0 50426) 50446) anon14_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|))))) (= (ControlFlow 0 50424) 50426)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (and (and (not (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))))) (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t4@0) (|p#$Mutation_25431| $t4@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1)))) 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1)))) (+ 0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1))))) (+ 0 1))))))) (and (= $abort_flag@1 false) (= $abort_code@2 $abort_code@0))) (and (=> (= (ControlFlow 0 50364) 50460) anon14_Then_correct) (=> (= (ControlFlow 0 50364) 50446) anon14_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_25431| $t4@0)) (and (=> (= (ControlFlow 0 50330) 50424) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 50330) 50364) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon13_Then_correct  (=> |inline$$1_Vector_is_empty'u64'$0$b@1| (=> (and (and (= $t4@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) _$t0)) (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 50432) 50330))) |inline$$1_Vector_swap'u64'$0$anon0_correct|))))
(let ((anon15_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 50158) 50168)) L3_correct)))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 50144) 50182) anon15_Then_correct) (=> (= (ControlFlow 0 50144) 50158) anon15_Else_correct)))))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Then_correct|  (=> (and (not (= (seq.len _$t0) 0)) (= (ControlFlow 0 50142) 50144)) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Then$1_correct|)))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Else_correct|  (=> (= (seq.len _$t0) 0) (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 50094) 50182) anon15_Then_correct) (=> (= (ControlFlow 0 50094) 50158) anon15_Else_correct))))))
(let ((anon13_Else_correct  (=> (not |inline$$1_Vector_is_empty'u64'$0$b@1|) (and (=> (= (ControlFlow 0 50148) 50142) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Then_correct|) (=> (= (ControlFlow 0 50148) 50094) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Else_correct|)))))
(let ((anon12_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 50032) 50432) anon13_Then_correct) (=> (= (ControlFlow 0 50032) 50148) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_is_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u64'$0$b@1| (= (seq.len _$t0) 0)) (and (=> (= (ControlFlow 0 50018) 50474) anon12_Then_correct) (=> (= (ControlFlow 0 50018) 50032) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 50024) 50018)) |inline$$1_Vector_is_empty'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25431| $t4)) 0) (= (ControlFlow 0 49970) 50024)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 69428) 49970) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_empty$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 69819) (let ((anon7_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|)) (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|))) (and (=> (= (ControlFlow 0 50707) (- 0 69947)) (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$1$v@1|)) (=> (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (and (=> (= (ControlFlow 0 50707) (- 0 69954)) (= (seq.len |inline$$1_Vector_empty'u64'$0$v@1|) 0)) (=> (= (seq.len |inline$$1_Vector_empty'u64'$0$v@1|) 0) (=> (= (ControlFlow 0 50707) (- 0 69964)) (= (seq.len |inline$$1_Vector_empty'u64'$1$v@1|) 0)))))))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 50639) 50721) anon7_Then_correct) (=> (= (ControlFlow 0 50639) 50707) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 50645) 50639)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon6_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 50597) 50741) anon6_Then_correct) (=> (= (ControlFlow 0 50597) 50645) anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 50603) 50597) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 69819) 50603) anon0$1_correct)))
anon0_correct)))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_id1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 69987) (let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'u64''| _$t0) (= _$t0 _$t0)) (and (= _$t0 _$t0) (= (ControlFlow 0 50865) (- 0 70041)))) (= _$t0 _$t0))))
(let ((anon0_correct  (=> (= (ControlFlow 0 69987) 50865) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun _$t0 () (Seq Int))
(declare-fun $t4@0 () T@$Mutation_25431)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t2@0 () T@$Mutation_25431)
(declare-fun $t2 () T@$Mutation_25431)
(declare-fun $t4 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_id2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 70056) (let ((anon7_Else_correct  (=> (and (and (not false) (= $t0@1 (|v#$Mutation_25431| |inline$$1_Vector_reverse'u64'$1$m'@1|))) (and (= $t0@1 $t0@1) (= (ControlFlow 0 51129) (- 0 70282)))) (= $t0@1 _$t0))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t4@0) (|p#$Mutation_25431| $t4@0) (ReverseVec_4388 (|v#$Mutation_25431| $t4@0)))) (and (=> (= (ControlFlow 0 51089) 51143) anon7_Then_correct) (=> (= (ControlFlow 0 51089) 51129) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_reverse'u64'$0$m'@1|))) (and (= $t4@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@0)) (= (ControlFlow 0 51095) 51089))) |inline$$1_Vector_reverse'u64'$1$anon0_correct|)))
(let ((anon6_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t2@0) (|p#$Mutation_25431| $t2@0) (ReverseVec_4388 (|v#$Mutation_25431| $t2@0)))) (and (=> (= (ControlFlow 0 51018) 51163) anon6_Then_correct) (=> (= (ControlFlow 0 51018) 51095) anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'u64''| _$t0) (= _$t0 _$t0)) (and (= $t2@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) _$t0)) (= (ControlFlow 0 51024) 51018))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25431| $t2)) 0) (=> (and (= (seq.len (|p#$Mutation_25431| $t4)) 0) (= (ControlFlow 0 50947) 51024)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 70056) 50947) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t0@3 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun _$t0 () (Seq Int))
(declare-fun $t15@0 () T@$Mutation_25431)
(declare-fun $t0@2 () (Seq Int))
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@2| () T@$Mutation_25431)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@0| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () (Seq Int))
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t10@0 () T@$Mutation_25431)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Le$1$dst@1 () Bool)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $t14@0 () T@$Mutation_25431)
(declare-fun $t10 () T@$Mutation_25431)
(declare-fun $t14 () T@$Mutation_25431)
(declare-fun $t15 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_id3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 70304) (let ((anon23_Then_correct true))
(let ((anon22_Then_correct true))
(let ((anon25_Else_correct  (=> (and (and (not $abort_flag@2) (= $t0@3 (|v#$Mutation_25431| |inline$$1_Vector_reverse'u64'$1$m'@1|))) (and (= $t0@3 $t0@3) (= (ControlFlow 0 51647) (- 0 70999)))) (= $t0@3 _$t0))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t15@0) (|p#$Mutation_25431| $t15@0) (ReverseVec_4388 (|v#$Mutation_25431| $t15@0)))) (and (=> (= (ControlFlow 0 51607) 51661) anon25_Then_correct) (=> (= (ControlFlow 0 51607) 51647) anon25_Else_correct)))))
(let ((L3_correct  (=> (and (= $t15@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@2)) (= (ControlFlow 0 51613) 51607)) |inline$$1_Vector_reverse'u64'$1$anon0_correct|)))
(let ((anon23_Else_correct  (=> (and (not $abort_flag@1) (= $t0@1 (|v#$Mutation_25431| |inline$$1_Vector_swap'u64'$0$m'@2|))) (=> (and (and (= $t0@2 $t0@1) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= (ControlFlow 0 52080) 51613))) L3_correct))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@0|)) (and (=> (= (ControlFlow 0 52060) 52094) anon23_Then_correct) (=> (= (ControlFlow 0 52060) 52080) anon23_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= inline$$Sub$0$dst@2 0) (< inline$$Sub$0$dst@2 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|))))) (= (ControlFlow 0 52058) 52060)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (not (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= inline$$Sub$0$dst@2 0) (< inline$$Sub$0$dst@2 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t10@0) (|p#$Mutation_25431| $t10@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- inline$$Sub$0$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ inline$$Sub$0$dst@2 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ inline$$Sub$0$dst@2 1)))) 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| inline$$Sub$0$dst@2)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- inline$$Sub$0$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ inline$$Sub$0$dst@2 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ inline$$Sub$0$dst@2 1)))) (+ 0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- inline$$Sub$0$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ inline$$Sub$0$dst@2 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ inline$$Sub$0$dst@2 1))))) (+ 0 1)))))) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@1|))) (and (=> (= (ControlFlow 0 51998) 52094) anon23_Then_correct) (=> (= (ControlFlow 0 51998) 52080) anon23_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_25431| $t10@0)) (and (=> (= (ControlFlow 0 51964) 52058) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 51964) 51998) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon22_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 52066) 51964)) |inline$$1_Vector_swap'u64'$0$anon0_correct|)))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 51838) 52108) anon22_Then_correct) (=> (= (ControlFlow 0 51838) 52066) anon22_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< |inline$$1_Vector_length'u64'$0$l@1| 1) (= (ControlFlow 0 51836) 51838)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= 1 |inline$$1_Vector_length'u64'$0$l@1|) (=> (and (and (= inline$$Sub$0$dst@1 (- |inline$$1_Vector_length'u64'$0$l@1| 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 51788) 52108) anon22_Then_correct) (=> (= (ControlFlow 0 51788) 52066) anon22_Else_correct))))))
(let ((anon21_Then_correct  (=> (and (and inline$$Le$1$dst@1 (= $t10@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) _$t0))) (and (|$IsValid'u64'| 0) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 51844) 51836) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 51844) 51788) inline$$Sub$0$anon3_Else_correct)))))
(let ((anon24_Else_correct  (=> (and (not false) (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_reverse'u64'$0$m'@1|))) (=> (and (and (= $t0@2 $t0@0) (= $abort_flag@2 false)) (and (= $abort_code@3 $abort_code@0) (= (ControlFlow 0 51554) 51613))) L3_correct))))
(let ((anon20_Then_correct  (=> inline$$Le$0$dst@1 (=> (and (and (= $t0@2 _$t0) (= $abort_flag@2 false)) (and (= $abort_code@3 $abort_code@0) (= (ControlFlow 0 52112) 51613))) L3_correct))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t14@0) (|p#$Mutation_25431| $t14@0) (ReverseVec_4388 (|v#$Mutation_25431| $t14@0)))) (and (=> (= (ControlFlow 0 51534) 51681) anon24_Then_correct) (=> (= (ControlFlow 0 51534) 51554) anon24_Else_correct)))))
(let ((anon21_Else_correct  (=> (not inline$$Le$1$dst@1) (=> (and (= $t14@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) _$t0)) (= (ControlFlow 0 51540) 51534)) |inline$$1_Vector_reverse'u64'$0$anon0_correct|))))
(let ((inline$$Le$1$anon0_correct  (=> (= inline$$Le$1$dst@1 (<= |inline$$1_Vector_length'u64'$0$l@1| 3)) (and (=> (= (ControlFlow 0 51469) 51844) anon21_Then_correct) (=> (= (ControlFlow 0 51469) 51540) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not inline$$Le$0$dst@1) (=> (and (|$IsValid'u64'| 3) (= (ControlFlow 0 51475) 51469)) inline$$Le$1$anon0_correct))))
(let ((inline$$Le$0$anon0_correct  (=> (= inline$$Le$0$dst@1 (<= |inline$$1_Vector_length'u64'$0$l@1| 1)) (and (=> (= (ControlFlow 0 51409) 52112) anon20_Then_correct) (=> (= (ControlFlow 0 51409) 51475) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 51415) 51409))) inline$$Le$0$anon0_correct)))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len _$t0)) (and (=> (= (ControlFlow 0 51341) 52126) anon19_Then_correct) (=> (= (ControlFlow 0 51341) 51415) anon19_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 51347) 51341)) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_25431| $t10)) 0) (= (seq.len (|p#$Mutation_25431| $t14)) 0)) (and (= (seq.len (|p#$Mutation_25431| $t15)) 0) (= (ControlFlow 0 51289) 51347))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 70304) 51289) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_index_of'u64'$1$res2@2| () Int)
(declare-fun |inline$$1_Vector_index_of'u64'$1$res1@1| () Bool)
(declare-fun $t2@6 () (Seq Int))
(declare-fun |inline$$1_Vector_index_of'u64'$0$res1@1| () Bool)
(declare-fun |inline$$1_Vector_index_of'u64'$0$res2@2| () Int)
(declare-fun |inline$$1_Vector_index_of'u64'$1$res2@1| () Int)
(declare-fun |inline$$1_Vector_index_of'u64'$0$res2@1| () Int)
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t22@0 () T@$Mutation_25431)
(declare-fun $t2@5 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$5$m'@1| () T@$Mutation_25431)
(declare-fun $t20@0 () T@$Mutation_25431)
(declare-fun $t2@4 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$4$m'@1| () T@$Mutation_25431)
(declare-fun $t18@0 () T@$Mutation_25431)
(declare-fun $t2@3 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_25431)
(declare-fun $t16@0 () T@$Mutation_25431)
(declare-fun $t2@2 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25431)
(declare-fun $t14@0 () T@$Mutation_25431)
(declare-fun $t2@1 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun $t12@0 () T@$Mutation_25431)
(declare-fun $t2@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t10@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t10 () T@$Mutation_25431)
(declare-fun $t12 () T@$Mutation_25431)
(declare-fun $t14 () T@$Mutation_25431)
(declare-fun $t16 () T@$Mutation_25431)
(declare-fun $t18 () T@$Mutation_25431)
(declare-fun $t20 () T@$Mutation_25431)
(declare-fun $t22 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_index_of$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 71025) (let ((anon31_Else_correct  (=> (and (and (and (not false) (= |inline$$1_Vector_index_of'u64'$1$res2@2| |inline$$1_Vector_index_of'u64'$1$res2@2|)) (and (= |inline$$1_Vector_index_of'u64'$1$res1@1| |inline$$1_Vector_index_of'u64'$1$res1@1|) (= $t2@6 $t2@6))) (and (and (= |inline$$1_Vector_index_of'u64'$0$res1@1| |inline$$1_Vector_index_of'u64'$0$res1@1|) (= |inline$$1_Vector_index_of'u64'$0$res2@2| |inline$$1_Vector_index_of'u64'$0$res2@2|)) (and (= |inline$$1_Vector_index_of'u64'$1$res1@1| |inline$$1_Vector_index_of'u64'$1$res1@1|) (= |inline$$1_Vector_index_of'u64'$1$res2@2| |inline$$1_Vector_index_of'u64'$1$res2@2|)))) (and (=> (= (ControlFlow 0 53348) (- 0 72031)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 53348) (- 0 72038)) (= |inline$$1_Vector_index_of'u64'$0$res1@1| false)) (=> (= |inline$$1_Vector_index_of'u64'$0$res1@1| false) (and (=> (= (ControlFlow 0 53348) (- 0 72046)) (= |inline$$1_Vector_index_of'u64'$0$res2@2| 0)) (=> (= |inline$$1_Vector_index_of'u64'$0$res2@2| 0) (and (=> (= (ControlFlow 0 53348) (- 0 72054)) (= |inline$$1_Vector_index_of'u64'$1$res1@1| true)) (=> (= |inline$$1_Vector_index_of'u64'$1$res1@1| true) (and (=> (= (ControlFlow 0 53348) (- 0 72062)) (= (seq.nth $t2@6 1) 7)) (=> (= (seq.nth $t2@6 1) 7) (and (=> (= (ControlFlow 0 53348) (- 0 72074)) (= (seq.nth $t2@6 2) 7)) (=> (= (seq.nth $t2@6 2) 7) (=> (= (ControlFlow 0 53348) (- 0 72086)) (= |inline$$1_Vector_index_of'u64'$1$res2@2| 1)))))))))))))))))
(let ((anon31_Then_correct true))
(let ((|inline$$1_Vector_index_of'u64'$1$anon3_Else_correct|  (=> (> 0 |inline$$1_Vector_index_of'u64'$1$res2@1|) (=> (and (= |inline$$1_Vector_index_of'u64'$1$res1@1| false) (= |inline$$1_Vector_index_of'u64'$1$res2@2| 0)) (and (=> (= (ControlFlow 0 53202) 53362) anon31_Then_correct) (=> (= (ControlFlow 0 53202) 53348) anon31_Else_correct))))))
(let ((|inline$$1_Vector_index_of'u64'$1$anon3_Then_correct|  (=> (>= |inline$$1_Vector_index_of'u64'$1$res2@1| 0) (=> (and (= |inline$$1_Vector_index_of'u64'$1$res1@1| true) (= |inline$$1_Vector_index_of'u64'$1$res2@2| |inline$$1_Vector_index_of'u64'$1$res2@1|)) (and (=> (= (ControlFlow 0 53212) 53362) anon31_Then_correct) (=> (= (ControlFlow 0 53212) 53348) anon31_Else_correct))))))
(let ((|inline$$1_Vector_index_of'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_index_of'u64'$1$res2@1| (|$IndexOfVec'u64'| $t2@6 7)) (and (=> (= (ControlFlow 0 53190) 53212) |inline$$1_Vector_index_of'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 53190) 53202) |inline$$1_Vector_index_of'u64'$1$anon3_Else_correct|)))))
(let ((anon30_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_index_of'u64'$0$res2@2| |inline$$1_Vector_index_of'u64'$0$res2@2|) (= |inline$$1_Vector_index_of'u64'$0$res1@1| |inline$$1_Vector_index_of'u64'$0$res1@1|)) (=> (and (and (= $t2@6 $t2@6) (|$IsValid'u64'| 7)) (and (= 7 7) (= (ControlFlow 0 53220) 53190))) |inline$$1_Vector_index_of'u64'$1$anon0_correct|)))))
(let ((anon30_Then_correct true))
(let ((|inline$$1_Vector_index_of'u64'$0$anon3_Else_correct|  (=> (> 0 |inline$$1_Vector_index_of'u64'$0$res2@1|) (=> (and (= |inline$$1_Vector_index_of'u64'$0$res1@1| false) (= |inline$$1_Vector_index_of'u64'$0$res2@2| 0)) (and (=> (= (ControlFlow 0 53053) 53386) anon30_Then_correct) (=> (= (ControlFlow 0 53053) 53220) anon30_Else_correct))))))
(let ((|inline$$1_Vector_index_of'u64'$0$anon3_Then_correct|  (=> (>= |inline$$1_Vector_index_of'u64'$0$res2@1| 0) (=> (and (= |inline$$1_Vector_index_of'u64'$0$res1@1| true) (= |inline$$1_Vector_index_of'u64'$0$res2@2| |inline$$1_Vector_index_of'u64'$0$res2@1|)) (and (=> (= (ControlFlow 0 53063) 53386) anon30_Then_correct) (=> (= (ControlFlow 0 53063) 53220) anon30_Else_correct))))))
(let ((|inline$$1_Vector_index_of'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_index_of'u64'$0$res2@1| (|$IndexOfVec'u64'| $t2@6 4)) (and (=> (= (ControlFlow 0 53041) 53063) |inline$$1_Vector_index_of'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 53041) 53053) |inline$$1_Vector_index_of'u64'$0$anon3_Else_correct|)))))
(let ((anon29_Else_correct  (=> (and (not false) (= $t2@6 (|v#$Mutation_25431| |inline$$1_Vector_reverse'u64'$0$m'@1|))) (=> (and (and (= $t2@6 $t2@6) (|$IsValid'u64'| 4)) (and (= 4 4) (= (ControlFlow 0 53071) 53041))) |inline$$1_Vector_index_of'u64'$0$anon0_correct|))))
(let ((anon29_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t22@0) (|p#$Mutation_25431| $t22@0) (ReverseVec_4388 (|v#$Mutation_25431| $t22@0)))) (and (=> (= (ControlFlow 0 52924) 53400) anon29_Then_correct) (=> (= (ControlFlow 0 52924) 53071) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (and (not false) (= $t2@5 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$5$m'@1|))) (and (= $t22@0 ($Mutation_25431 ($Local 2) (as seq.empty (Seq Int)) $t2@5)) (= (ControlFlow 0 52930) 52924))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon28_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$5$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$5$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t20@0) (|p#$Mutation_25431| $t20@0) (seq.++ (|v#$Mutation_25431| $t20@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 52853) 53414) anon28_Then_correct) (=> (= (ControlFlow 0 52853) 52930) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (not false) (=> (and (and (= $t2@4 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$4$m'@1|)) (= $t20@0 ($Mutation_25431 ($Local 2) (as seq.empty (Seq Int)) $t2@4))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 52859) 52853))) |inline$$1_Vector_push_back'u64'$5$anon0_correct|))))
(let ((anon27_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$4$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$4$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t18@0) (|p#$Mutation_25431| $t18@0) (seq.++ (|v#$Mutation_25431| $t18@0) (seq.unit 7)))) (and (=> (= (ControlFlow 0 52766) 53428) anon27_Then_correct) (=> (= (ControlFlow 0 52766) 52859) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (not false) (=> (and (and (= $t2@3 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$3$m'@1|)) (= $t18@0 ($Mutation_25431 ($Local 2) (as seq.empty (Seq Int)) $t2@3))) (and (|$IsValid'u64'| 7) (= (ControlFlow 0 52772) 52766))) |inline$$1_Vector_push_back'u64'$4$anon0_correct|))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t16@0) (|p#$Mutation_25431| $t16@0) (seq.++ (|v#$Mutation_25431| $t16@0) (seq.unit 7)))) (and (=> (= (ControlFlow 0 52679) 53442) anon26_Then_correct) (=> (= (ControlFlow 0 52679) 52772) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not false) (=> (and (and (= $t2@2 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t16@0 ($Mutation_25431 ($Local 2) (as seq.empty (Seq Int)) $t2@2))) (and (|$IsValid'u64'| 7) (= (ControlFlow 0 52685) 52679))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t14@0) (|p#$Mutation_25431| $t14@0) (seq.++ (|v#$Mutation_25431| $t14@0) (seq.unit 3)))) (and (=> (= (ControlFlow 0 52592) 53456) anon25_Then_correct) (=> (= (ControlFlow 0 52592) 52685) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (not false) (=> (and (and (= $t2@1 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t14@0 ($Mutation_25431 ($Local 2) (as seq.empty (Seq Int)) $t2@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 52598) 52592))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t12@0) (|p#$Mutation_25431| $t12@0) (seq.++ (|v#$Mutation_25431| $t12@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 52505) 53470) anon24_Then_correct) (=> (= (ControlFlow 0 52505) 52598) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not false) (=> (and (and (= $t2@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t12@0 ($Mutation_25431 ($Local 2) (as seq.empty (Seq Int)) $t2@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 52511) 52505))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t10@0) (|p#$Mutation_25431| $t10@0) (seq.++ (|v#$Mutation_25431| $t10@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 52418) 53484) anon23_Then_correct) (=> (= (ControlFlow 0 52418) 52511) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t10@0 ($Mutation_25431 ($Local 2) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 52424) 52418))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 52329) 53498) anon22_Then_correct) (=> (= (ControlFlow 0 52329) 52424) anon22_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 52335) 52329) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (and (= (seq.len (|p#$Mutation_25431| $t10)) 0) (= (seq.len (|p#$Mutation_25431| $t12)) 0)) (and (= (seq.len (|p#$Mutation_25431| $t14)) 0) (= (seq.len (|p#$Mutation_25431| $t16)) 0))) (and (and (= (seq.len (|p#$Mutation_25431| $t18)) 0) (= (seq.len (|p#$Mutation_25431| $t20)) 0)) (and (= (seq.len (|p#$Mutation_25431| $t22)) 0) (= (ControlFlow 0 52305) 52335)))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 71025) 52305) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun |inline$$1_Vector_length'u64'$1$l@1| () Int)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t4@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t4 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_length1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 72130) (let ((anon16_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|) (= (ControlFlow 0 54003) (- 0 72431)))) (= |inline$$1_Vector_length'u64'$0$l@1| (+ |inline$$1_Vector_length'u64'$1$l@1| 1)))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$1$l@1| (seq.len |inline$$1_Vector_empty'u64'$1$v@1|)) (and (=> (= (ControlFlow 0 53959) 54017) anon16_Then_correct) (=> (= (ControlFlow 0 53959) 54003) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not false) (= (ControlFlow 0 53965) 53959)) |inline$$1_Vector_length'u64'$1$anon0_correct|)))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len $t0@0)) (and (=> (= (ControlFlow 0 53915) 54037) anon15_Then_correct) (=> (= (ControlFlow 0 53915) 53965) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= (ControlFlow 0 53921) 53915)) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t4@0) (|p#$Mutation_25431| $t4@0) (seq.++ (|v#$Mutation_25431| $t4@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 53863) 54051) anon14_Then_correct) (=> (= (ControlFlow 0 53863) 53921) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t4@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 53869) 53863))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 53774) 54065) anon13_Then_correct) (=> (= (ControlFlow 0 53774) 53869) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 53780) 53774)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 53732) 54079) anon12_Then_correct) (=> (= (ControlFlow 0 53732) 53780) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 53738) 53732) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25431| $t4)) 0) (= (ControlFlow 0 53708) 53738)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 72130) 53708) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'u64'$1$l@1| () Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun $t0@2 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25431)
(declare-fun $t10@0 () T@$Mutation_25431)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun $t8@0 () T@$Mutation_25431)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t6@0 () T@$Mutation_25431)
(declare-fun _$t0 () (Seq Int))
(declare-fun $t6 () T@$Mutation_25431)
(declare-fun $t8 () T@$Mutation_25431)
(declare-fun $t10 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_length2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 72463) (let ((anon16_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|) (= (ControlFlow 0 54613) (- 0 72907)))) (= (+ |inline$$1_Vector_length'u64'$0$l@1| 3) |inline$$1_Vector_length'u64'$1$l@1|)))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$1$l@1| (seq.len $t0@2)) (and (=> (= (ControlFlow 0 54561) 54627) anon16_Then_correct) (=> (= (ControlFlow 0 54561) 54613) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (not false) (=> (and (= $t0@2 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= (ControlFlow 0 54567) 54561)) |inline$$1_Vector_length'u64'$1$anon0_correct|))))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t10@0) (|p#$Mutation_25431| $t10@0) (seq.++ (|v#$Mutation_25431| $t10@0) (seq.unit 3)))) (and (=> (= (ControlFlow 0 54509) 54647) anon15_Then_correct) (=> (= (ControlFlow 0 54509) 54567) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t10@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 54515) 54509))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t8@0) (|p#$Mutation_25431| $t8@0) (seq.++ (|v#$Mutation_25431| $t8@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 54422) 54661) anon14_Then_correct) (=> (= (ControlFlow 0 54422) 54515) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t8@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 54428) 54422))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t6@0) (|p#$Mutation_25431| $t6@0) (seq.++ (|v#$Mutation_25431| $t6@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 54335) 54675) anon13_Then_correct) (=> (= (ControlFlow 0 54335) 54428) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (= $t6@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) _$t0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 54341) 54335))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len _$t0)) (and (=> (= (ControlFlow 0 54246) 54689) anon12_Then_correct) (=> (= (ControlFlow 0 54246) 54341) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 54252) 54246)) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_25431| $t6)) 0) (= (seq.len (|p#$Mutation_25431| $t8)) 0)) (and (= (seq.len (|p#$Mutation_25431| $t10)) 0) (= (ControlFlow 0 54196) 54252))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 72463) 54196) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun |inline$$1_Vector_length'u64'$1$l@1| () Int)
(declare-fun _$t0 () (Seq Int))
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t6@0 () T@$Mutation_25431)
(declare-fun $t6 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_length3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 72939) (let ((anon10_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|)) (and (=> (= (ControlFlow 0 55066) (- 0 73193)) (= (seq.len _$t0) |inline$$1_Vector_length'u64'$0$l@1|)) (=> (= (seq.len _$t0) |inline$$1_Vector_length'u64'$0$l@1|) (=> (= (ControlFlow 0 55066) (- 0 73202)) (= (+ |inline$$1_Vector_length'u64'$0$l@1| 1) |inline$$1_Vector_length'u64'$1$l@1|))))))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$1$l@1| (seq.len $t0@0)) (and (=> (= (ControlFlow 0 55012) 55080) anon10_Then_correct) (=> (= (ControlFlow 0 55012) 55066) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= (ControlFlow 0 55018) 55012)) |inline$$1_Vector_length'u64'$1$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t6@0) (|p#$Mutation_25431| $t6@0) (seq.++ (|v#$Mutation_25431| $t6@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 54960) 55100) anon9_Then_correct) (=> (= (ControlFlow 0 54960) 55018) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (= $t6@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) _$t0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 54966) 54960))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len _$t0)) (and (=> (= (ControlFlow 0 54871) 55114) anon8_Then_correct) (=> (= (ControlFlow 0 54871) 54966) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 54877) 54871)) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25431| $t6)) 0) (= (ControlFlow 0 54819) 54877)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 72939) 54819) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun |inline$$1_Vector_length'u64'$1$l@1| () Int)
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t2@0 () (Seq Int))
(declare-fun $t7@0 () (Seq Int))
(declare-fun _$t0 () T@$Mutation_25431)
(declare-fun $t3@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_length4$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 73233) (let ((anon10_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|)) (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|))) (and (=> (= (ControlFlow 0 55501) (- 0 73514)) (= (seq.len $t2@0) |inline$$1_Vector_length'u64'$0$l@1|)) (=> (= (seq.len $t2@0) |inline$$1_Vector_length'u64'$0$l@1|) (and (=> (= (ControlFlow 0 55501) (- 0 73523)) (= (+ |inline$$1_Vector_length'u64'$0$l@1| 1) |inline$$1_Vector_length'u64'$1$l@1|)) (=> (= (+ |inline$$1_Vector_length'u64'$0$l@1| 1) |inline$$1_Vector_length'u64'$1$l@1|) (and (=> (= (ControlFlow 0 55501) (- 0 73534)) (not (= (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|) $t2@0))) (=> (not (= (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|) $t2@0)) (=> (= (ControlFlow 0 55501) (- 0 73545)) (= (seq.len (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) |inline$$1_Vector_length'u64'$1$l@1|))))))))))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$1$l@1| (seq.len $t7@0)) (and (=> (= (ControlFlow 0 55411) 55515) anon10_Then_correct) (=> (= (ControlFlow 0 55411) 55501) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t7@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= (ControlFlow 0 55417) 55411)) |inline$$1_Vector_length'u64'$1$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| _$t0) (|p#$Mutation_25431| _$t0) (seq.++ (|v#$Mutation_25431| _$t0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 55361) 55535) anon9_Then_correct) (=> (= (ControlFlow 0 55361) 55417) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 55367) 55361))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|)))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len $t3@0)) (and (=> (= (ControlFlow 0 55282) 55549) anon8_Then_correct) (=> (= (ControlFlow 0 55282) 55367) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_25431| _$t0) ($Param 0)) (=> (and (|$IsValid'vec'u64''| (|v#$Mutation_25431| _$t0)) (= $t2@0 (|v#$Mutation_25431| _$t0))) (=> (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_25431| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (= $t3@0 (|v#$Mutation_25431| _$t0)) (= (ControlFlow 0 55288) 55282))) |inline$$1_Vector_length'u64'$0$anon0_correct|)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 73233) 55288) anon0$1_correct)))
anon0_correct))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25431)
(declare-fun $t0@1 () (Seq Int))
(declare-fun $t7@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25431)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t3@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25431)
(declare-fun $t5 () T@$Mutation_25431)
(declare-fun $t7 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_neq1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 73576) (let ((anon16_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t0@1 $t0@1)) (and (= $t1@0 $t1@0) (= (ControlFlow 0 56051) (- 0 73991)))) (not (= $t0@1 $t1@0))))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t7@0) (|p#$Mutation_25431| $t7@0) (seq.++ (|v#$Mutation_25431| $t7@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 55999) 56065) anon16_Then_correct) (=> (= (ControlFlow 0 55999) 56051) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 56005) 55999))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t5@0) (|p#$Mutation_25431| $t5@0) (seq.++ (|v#$Mutation_25431| $t5@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 55912) 56085) anon15_Then_correct) (=> (= (ControlFlow 0 55912) 56005) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 55918) 55912))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t3@0) (|p#$Mutation_25431| $t3@0) (seq.++ (|v#$Mutation_25431| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 55825) 56099) anon14_Then_correct) (=> (= (ControlFlow 0 55825) 55918) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 55831) 55825))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 55736) 56113) anon13_Then_correct) (=> (= (ControlFlow 0 55736) 55831) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 55742) 55736)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 55694) 56127) anon12_Then_correct) (=> (= (ControlFlow 0 55694) 55742) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 55700) 55694) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_25431| $t3)) 0) (= (seq.len (|p#$Mutation_25431| $t5)) 0)) (and (= (seq.len (|p#$Mutation_25431| $t7)) 0) (= (ControlFlow 0 55670) 55700))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 73576) 55670) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun $t0@0 () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t3@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25431)
(declare-fun $t5 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_neq2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 74020) (let ((anon13_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t0@0 $t0@0)) (and (= $t1@0 $t1@0) (= (ControlFlow 0 56571) (- 0 74342)))) (not (= $t0@0 $t1@0))))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t5@0) (|p#$Mutation_25431| $t5@0) (seq.++ (|v#$Mutation_25431| $t5@0) (seq.unit 0)))) (and (=> (= (ControlFlow 0 56519) 56585) anon13_Then_correct) (=> (= (ControlFlow 0 56519) 56571) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 56525) 56519))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t3@0) (|p#$Mutation_25431| $t3@0) (seq.++ (|v#$Mutation_25431| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 56432) 56605) anon12_Then_correct) (=> (= (ControlFlow 0 56432) 56525) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 56438) 56432))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 56343) 56619) anon11_Then_correct) (=> (= (ControlFlow 0 56343) 56438) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 56349) 56343)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 56301) 56633) anon10_Then_correct) (=> (= (ControlFlow 0 56301) 56349) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 56307) 56301) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25431| $t3)) 0) (=> (and (= (seq.len (|p#$Mutation_25431| $t5)) 0) (= (ControlFlow 0 56277) 56307)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 74020) 56277) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun $t0@0 () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t3@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25431)
(declare-fun $t5 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_push$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 74370) (let ((anon13_Else_correct  (=> (and (and (not false) (= $t1@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$1$m'@1|))) (and (= $t0@0 $t0@0) (= $t1@0 $t1@0))) (and (=> (= (ControlFlow 0 57079) (- 0 74692)) (= $t0@0 $t1@0)) (=> (= $t0@0 $t1@0) (and (=> (= (ControlFlow 0 57079) (- 0 74699)) (= (seq.len $t0@0) 1)) (=> (= (seq.len $t0@0) 1) (=> (= (ControlFlow 0 57079) (- 0 74709)) (= (seq.len $t1@0) 1)))))))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t5@0) (|p#$Mutation_25431| $t5@0) (seq.++ (|v#$Mutation_25431| $t5@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 57009) 57093) anon13_Then_correct) (=> (= (ControlFlow 0 57009) 57079) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 57015) 57009))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t3@0) (|p#$Mutation_25431| $t3@0) (seq.++ (|v#$Mutation_25431| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 56922) 57113) anon12_Then_correct) (=> (= (ControlFlow 0 56922) 57015) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 56928) 56922))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 56833) 57127) anon11_Then_correct) (=> (= (ControlFlow 0 56833) 56928) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 56839) 56833)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 56791) 57141) anon10_Then_correct) (=> (= (ControlFlow 0 56791) 56839) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 56797) 56791) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25431| $t3)) 0) (=> (and (= (seq.len (|p#$Mutation_25431| $t5)) 0) (= (ControlFlow 0 56767) 56797)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 74370) 56767) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'@2| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'@0| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$e@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t6@0 () T@$Mutation_25431)
(declare-fun $abort_code@0 () Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t4@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t4 () T@$Mutation_25431)
(declare-fun $t6 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_push_pop$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 74738) (let ((anon13_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= $t0@1 (|v#$Mutation_25431| |inline$$1_Vector_pop_back'u64'$0$m'@2|)) (= $t0@1 $t0@1)) (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= (ControlFlow 0 57691) (- 0 75156)))) (= $t0@1 |inline$$1_Vector_empty'u64'$1$v@1|)))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_pop_back'u64'$0$m'@2| |inline$$1_Vector_pop_back'u64'$0$m'@0|)) (and (=> (= (ControlFlow 0 57641) 57705) anon13_Then_correct) (=> (= (ControlFlow 0 57641) 57691) anon13_Else_correct))))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$0$len@1| 0) (= (ControlFlow 0 57639) 57641)) |inline$$1_Vector_pop_back'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Else_correct|  (=> (and (not (= |inline$$1_Vector_pop_back'u64'$0$len@1| 0)) (= |inline$$1_Vector_pop_back'u64'$0$e@1| (seq.nth |inline$$1_Vector_pop_back'u64'$0$v@1| (- |inline$$1_Vector_pop_back'u64'$0$len@1| 1)))) (=> (and (and (= |inline$$1_Vector_pop_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t6@0) (|p#$Mutation_25431| $t6@0) (seq.extract |inline$$1_Vector_pop_back'u64'$0$v@1| 0 (- (- (seq.len |inline$$1_Vector_pop_back'u64'$0$v@1|) 1) 0)))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_pop_back'u64'$0$m'@2| |inline$$1_Vector_pop_back'u64'$0$m'@1|))) (and (=> (= (ControlFlow 0 57591) 57705) anon13_Then_correct) (=> (= (ControlFlow 0 57591) 57691) anon13_Else_correct))))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$0$v@1| (|v#$Mutation_25431| $t6@0)) (= |inline$$1_Vector_pop_back'u64'$0$len@1| (seq.len |inline$$1_Vector_pop_back'u64'$0$v@1|))) (and (=> (= (ControlFlow 0 57565) 57639) |inline$$1_Vector_pop_back'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 57565) 57591) |inline$$1_Vector_pop_back'u64'$0$anon3_Else_correct|)))))
(let ((anon12_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (and (= $t6@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@0)) (= (ControlFlow 0 57649) 57565))) |inline$$1_Vector_pop_back'u64'$0$anon0_correct|)))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t4@0) (|p#$Mutation_25431| $t4@0) (seq.++ (|v#$Mutation_25431| $t4@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 57432) 57725) anon12_Then_correct) (=> (= (ControlFlow 0 57432) 57649) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t4@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 57438) 57432))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 57343) 57739) anon11_Then_correct) (=> (= (ControlFlow 0 57343) 57438) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 57349) 57343)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 57301) 57753) anon10_Then_correct) (=> (= (ControlFlow 0 57301) 57349) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 57307) 57301) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25431| $t4)) 0) (=> (and (= (seq.len (|p#$Mutation_25431| $t6)) 0) (= (ControlFlow 0 57277) 57307)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 74738) 57277) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t4@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t4 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_reverse1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 75182) (let ((anon10_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_reverse'u64'$0$m'@1|)) (= $t0@0 $t0@0)) (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= (ControlFlow 0 58071) (- 0 75394)))) (= $t0@0 |inline$$1_Vector_empty'u64'$1$v@1|)))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t4@0) (|p#$Mutation_25431| $t4@0) (ReverseVec_4388 (|v#$Mutation_25431| $t4@0)))) (and (=> (= (ControlFlow 0 58023) 58085) anon10_Then_correct) (=> (= (ControlFlow 0 58023) 58071) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|)) (and (= $t4@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|)) (= (ControlFlow 0 58029) 58023))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 57950) 58105) anon9_Then_correct) (=> (= (ControlFlow 0 57950) 58029) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 57956) 57950)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 57908) 58119) anon8_Then_correct) (=> (= (ControlFlow 0 57908) 57956) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 57914) 57908) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25431| $t4)) 0) (= (ControlFlow 0 57884) 57914)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 75182) 57884) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@2 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t1@1 () (Seq Int))
(declare-fun $t11@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_25431)
(declare-fun $t0@1 () (Seq Int))
(declare-fun $t9@0 () T@$Mutation_25431)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25431)
(declare-fun $t7@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25431)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t3@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25431)
(declare-fun $t5 () T@$Mutation_25431)
(declare-fun $t7 () T@$Mutation_25431)
(declare-fun $t9 () T@$Mutation_25431)
(declare-fun $t11 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_reverse2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 75419) (let ((anon22_Else_correct  (=> (not false) (=> (and (and (= $t0@2 (|v#$Mutation_25431| |inline$$1_Vector_reverse'u64'$0$m'@1|)) (= $t0@2 $t0@2)) (and (= $t1@1 $t1@1) (= (ControlFlow 0 58789) (- 0 76007)))) (= $t0@2 $t1@1)))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t11@0) (|p#$Mutation_25431| $t11@0) (ReverseVec_4388 (|v#$Mutation_25431| $t11@0)))) (and (=> (= (ControlFlow 0 58739) 58803) anon22_Then_correct) (=> (= (ControlFlow 0 58739) 58789) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (and (not false) (= $t1@1 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (and (= $t11@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@1)) (= (ControlFlow 0 58745) 58739))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t9@0) (|p#$Mutation_25431| $t9@0) (seq.++ (|v#$Mutation_25431| $t9@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 58668) 58823) anon21_Then_correct) (=> (= (ControlFlow 0 58668) 58745) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t9@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 58674) 58668))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t7@0) (|p#$Mutation_25431| $t7@0) (seq.++ (|v#$Mutation_25431| $t7@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 58581) 58837) anon20_Then_correct) (=> (= (ControlFlow 0 58581) 58674) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 58587) 58581))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t5@0) (|p#$Mutation_25431| $t5@0) (seq.++ (|v#$Mutation_25431| $t5@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 58494) 58851) anon19_Then_correct) (=> (= (ControlFlow 0 58494) 58587) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 58500) 58494))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t3@0) (|p#$Mutation_25431| $t3@0) (seq.++ (|v#$Mutation_25431| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 58407) 58865) anon18_Then_correct) (=> (= (ControlFlow 0 58407) 58500) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 58413) 58407))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 58318) 58879) anon17_Then_correct) (=> (= (ControlFlow 0 58318) 58413) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 58324) 58318)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 58276) 58893) anon16_Then_correct) (=> (= (ControlFlow 0 58276) 58324) anon16_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 58282) 58276) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25431| $t3)) 0) (= (seq.len (|p#$Mutation_25431| $t5)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_25431| $t7)) 0) (= (seq.len (|p#$Mutation_25431| $t9)) 0)) (and (= (seq.len (|p#$Mutation_25431| $t11)) 0) (= (ControlFlow 0 58252) 58282))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 75419) 58252) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@2 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t1@1 () (Seq Int))
(declare-fun $t11@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_25431)
(declare-fun $t0@1 () (Seq Int))
(declare-fun $t9@0 () T@$Mutation_25431)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25431)
(declare-fun $t7@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25431)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t3@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25431)
(declare-fun $t5 () T@$Mutation_25431)
(declare-fun $t7 () T@$Mutation_25431)
(declare-fun $t9 () T@$Mutation_25431)
(declare-fun $t11 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_reverse3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 76036) (let ((anon22_Else_correct  (=> (not false) (=> (and (and (= $t0@2 (|v#$Mutation_25431| |inline$$1_Vector_reverse'u64'$0$m'@1|)) (= $t0@2 $t0@2)) (and (= $t1@1 $t1@1) (= (ControlFlow 0 59632) (- 0 76624)))) (not (= $t0@2 $t1@1))))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t11@0) (|p#$Mutation_25431| $t11@0) (ReverseVec_4388 (|v#$Mutation_25431| $t11@0)))) (and (=> (= (ControlFlow 0 59580) 59646) anon22_Then_correct) (=> (= (ControlFlow 0 59580) 59632) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (and (not false) (= $t1@1 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (and (= $t11@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@1)) (= (ControlFlow 0 59586) 59580))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t9@0) (|p#$Mutation_25431| $t9@0) (seq.++ (|v#$Mutation_25431| $t9@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 59509) 59666) anon21_Then_correct) (=> (= (ControlFlow 0 59509) 59586) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t9@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 59515) 59509))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t7@0) (|p#$Mutation_25431| $t7@0) (seq.++ (|v#$Mutation_25431| $t7@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 59422) 59680) anon20_Then_correct) (=> (= (ControlFlow 0 59422) 59515) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 59428) 59422))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t5@0) (|p#$Mutation_25431| $t5@0) (seq.++ (|v#$Mutation_25431| $t5@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 59335) 59694) anon19_Then_correct) (=> (= (ControlFlow 0 59335) 59428) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 59341) 59335))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t3@0) (|p#$Mutation_25431| $t3@0) (seq.++ (|v#$Mutation_25431| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 59248) 59708) anon18_Then_correct) (=> (= (ControlFlow 0 59248) 59341) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 59254) 59248))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 59159) 59722) anon17_Then_correct) (=> (= (ControlFlow 0 59159) 59254) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 59165) 59159)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 59117) 59736) anon16_Then_correct) (=> (= (ControlFlow 0 59117) 59165) anon16_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 59123) 59117) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25431| $t3)) 0) (= (seq.len (|p#$Mutation_25431| $t5)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_25431| $t7)) 0) (= (seq.len (|p#$Mutation_25431| $t9)) 0)) (and (= (seq.len (|p#$Mutation_25431| $t11)) 0) (= (ControlFlow 0 59093) 59123))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 76036) 59093) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@5 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$7$m'@1| () T@$Mutation_25431)
(declare-fun $t0@1 () (Seq Int))
(declare-fun $t17@0 () T@$Mutation_25431)
(declare-fun $t1@4 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$6$m'@1| () T@$Mutation_25431)
(declare-fun $t15@0 () T@$Mutation_25431)
(declare-fun $t1@3 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$5$m'@1| () T@$Mutation_25431)
(declare-fun $t13@0 () T@$Mutation_25431)
(declare-fun $t1@2 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$4$m'@1| () T@$Mutation_25431)
(declare-fun $t11@0 () T@$Mutation_25431)
(declare-fun $t1@1 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_25431)
(declare-fun $t9@0 () T@$Mutation_25431)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25431)
(declare-fun $t7@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25431)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t3@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25431)
(declare-fun $t5 () T@$Mutation_25431)
(declare-fun $t7 () T@$Mutation_25431)
(declare-fun $t9 () T@$Mutation_25431)
(declare-fun $t11 () T@$Mutation_25431)
(declare-fun $t13 () T@$Mutation_25431)
(declare-fun $t15 () T@$Mutation_25431)
(declare-fun $t17 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_slice$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 76655) (let ((anon31_Else_correct  (=> (and (and (not false) (= $t1@5 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$7$m'@1|))) (and (= $t0@1 $t0@1) (= $t1@5 $t1@5))) (and (=> (= (ControlFlow 0 60882) (- 0 77535)) (= $t0@1 (seq.extract $t1@5 (|lb#$Range| ($Range 1 3)) (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3)))))) (=> (= $t0@1 (seq.extract $t1@5 (|lb#$Range| ($Range 1 3)) (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3))))) (and (=> (= (ControlFlow 0 60882) (- 0 77550)) (not (= $t0@1 (seq.extract $t1@5 (|lb#$Range| ($Range 0 2)) (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2))))))) (=> (not (= $t0@1 (seq.extract $t1@5 (|lb#$Range| ($Range 0 2)) (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2)))))) (and (=> (= (ControlFlow 0 60882) (- 0 77567)) (= $t0@1 (seq.extract $t1@5 (|lb#$Range| ($Range 4 6)) (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6)))))) (=> (= $t0@1 (seq.extract $t1@5 (|lb#$Range| ($Range 4 6)) (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))))) (and (=> (= (ControlFlow 0 60882) (- 0 77582)) (= (seq.extract $t0@1 (|lb#$Range| ($Range 0 2)) (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2)))) (seq.extract $t1@5 (|lb#$Range| ($Range 4 6)) (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6)))))) (=> (= (seq.extract $t0@1 (|lb#$Range| ($Range 0 2)) (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2)))) (seq.extract $t1@5 (|lb#$Range| ($Range 4 6)) (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))))) (and (=> (= (ControlFlow 0 60882) (- 0 77605)) (= (seq.extract $t0@1 (|lb#$Range| ($Range 1 2)) (- (|ub#$Range| ($Range 1 2)) (|lb#$Range| ($Range 1 2)))) (seq.extract $t1@5 (|lb#$Range| ($Range 2 3)) (- (|ub#$Range| ($Range 2 3)) (|lb#$Range| ($Range 2 3)))))) (=> (= (seq.extract $t0@1 (|lb#$Range| ($Range 1 2)) (- (|ub#$Range| ($Range 1 2)) (|lb#$Range| ($Range 1 2)))) (seq.extract $t1@5 (|lb#$Range| ($Range 2 3)) (- (|ub#$Range| ($Range 2 3)) (|lb#$Range| ($Range 2 3))))) (=> (= (ControlFlow 0 60882) (- 0 77628)) (= (seq.extract $t1@5 (|lb#$Range| ($Range 1 3)) (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3)))) (seq.extract $t1@5 (|lb#$Range| ($Range 4 6)) (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6)))))))))))))))))))
(let ((anon31_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$7$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$7$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t17@0) (|p#$Mutation_25431| $t17@0) (seq.++ (|v#$Mutation_25431| $t17@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 60718) 60896) anon31_Then_correct) (=> (= (ControlFlow 0 60718) 60882) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (not false) (=> (and (and (= $t1@4 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$6$m'@1|)) (= $t17@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) $t1@4))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 60724) 60718))) |inline$$1_Vector_push_back'u64'$7$anon0_correct|))))
(let ((anon30_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$6$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$6$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t15@0) (|p#$Mutation_25431| $t15@0) (seq.++ (|v#$Mutation_25431| $t15@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 60631) 60916) anon30_Then_correct) (=> (= (ControlFlow 0 60631) 60724) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (not false) (=> (and (and (= $t1@3 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$5$m'@1|)) (= $t15@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) $t1@3))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 60637) 60631))) |inline$$1_Vector_push_back'u64'$6$anon0_correct|))))
(let ((anon29_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$5$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$5$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t13@0) (|p#$Mutation_25431| $t13@0) (seq.++ (|v#$Mutation_25431| $t13@0) (seq.unit 3)))) (and (=> (= (ControlFlow 0 60544) 60930) anon29_Then_correct) (=> (= (ControlFlow 0 60544) 60637) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (not false) (=> (and (and (= $t1@2 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$4$m'@1|)) (= $t13@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) $t1@2))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 60550) 60544))) |inline$$1_Vector_push_back'u64'$5$anon0_correct|))))
(let ((anon28_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$4$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$4$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t11@0) (|p#$Mutation_25431| $t11@0) (seq.++ (|v#$Mutation_25431| $t11@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 60457) 60944) anon28_Then_correct) (=> (= (ControlFlow 0 60457) 60550) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (not false) (=> (and (and (= $t1@1 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$3$m'@1|)) (= $t11@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) $t1@1))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 60463) 60457))) |inline$$1_Vector_push_back'u64'$4$anon0_correct|))))
(let ((anon27_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t9@0) (|p#$Mutation_25431| $t9@0) (seq.++ (|v#$Mutation_25431| $t9@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 60370) 60958) anon27_Then_correct) (=> (= (ControlFlow 0 60370) 60463) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t9@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 60376) 60370))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t7@0) (|p#$Mutation_25431| $t7@0) (seq.++ (|v#$Mutation_25431| $t7@0) (seq.unit 0)))) (and (=> (= (ControlFlow 0 60283) 60972) anon26_Then_correct) (=> (= (ControlFlow 0 60283) 60376) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 60289) 60283))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t5@0) (|p#$Mutation_25431| $t5@0) (seq.++ (|v#$Mutation_25431| $t5@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 60196) 60986) anon25_Then_correct) (=> (= (ControlFlow 0 60196) 60289) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 60202) 60196))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t3@0) (|p#$Mutation_25431| $t3@0) (seq.++ (|v#$Mutation_25431| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 60109) 61000) anon24_Then_correct) (=> (= (ControlFlow 0 60109) 60202) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 60115) 60109))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 60020) 61014) anon23_Then_correct) (=> (= (ControlFlow 0 60020) 60115) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 60026) 60020)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 59978) 61028) anon22_Then_correct) (=> (= (ControlFlow 0 59978) 60026) anon22_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 59984) 59978) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25431| $t3)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_25431| $t5)) 0) (= (seq.len (|p#$Mutation_25431| $t7)) 0)) (and (= (seq.len (|p#$Mutation_25431| $t9)) 0) (= (seq.len (|p#$Mutation_25431| $t11)) 0))) (and (and (= (seq.len (|p#$Mutation_25431| $t13)) 0) (= (seq.len (|p#$Mutation_25431| $t15)) 0)) (and (= (seq.len (|p#$Mutation_25431| $t17)) 0) (= (ControlFlow 0 59954) 59984)))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 76655) 59954) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t0@3 () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@2| () T@$Mutation_25431)
(declare-fun $t1@1 () (Seq Int))
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@0| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_swap'u64'$1$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun $t14@0 () T@$Mutation_25431)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t0@2 () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@2| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@0| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t11@0 () T@$Mutation_25431)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_25431)
(declare-fun $t0@1 () (Seq Int))
(declare-fun $t9@0 () T@$Mutation_25431)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25431)
(declare-fun $t7@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25431)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t3@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25431)
(declare-fun $t5 () T@$Mutation_25431)
(declare-fun $t7 () T@$Mutation_25431)
(declare-fun $t9 () T@$Mutation_25431)
(declare-fun $t11 () T@$Mutation_25431)
(declare-fun $t14 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_swap$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 77676) (let ((anon25_Else_correct  (=> (not $abort_flag@1) (=> (and (and (= $t0@3 (|v#$Mutation_25431| |inline$$1_Vector_swap'u64'$1$m'@2|)) (= $t0@3 $t0@3)) (and (= $t1@1 $t1@1) (= (ControlFlow 0 62258) (- 0 78586)))) (= $t0@3 $t1@1)))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Vector_swap'u64'$1$m'@2| |inline$$1_Vector_swap'u64'$1$m'@0|)) (and (=> (= (ControlFlow 0 62208) 62272) anon25_Then_correct) (=> (= (ControlFlow 0 62208) 62258) anon25_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Then_correct|  (=> (and (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|)))) (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|))))) (= (ControlFlow 0 62206) 62208)) |inline$$1_Vector_swap'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Else_correct|  (=> (not (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|)))) (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t14@0) (|p#$Mutation_25431| $t14@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| (+ 1 1) (- (seq.len |inline$$1_Vector_swap'u64'$1$v@1|) (+ 1 1)))) 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| 1)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| (+ 1 1) (- (seq.len |inline$$1_Vector_swap'u64'$1$v@1|) (+ 1 1)))) (+ 0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| (+ 1 1) (- (seq.len |inline$$1_Vector_swap'u64'$1$v@1|) (+ 1 1))))) (+ 0 1)))))) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$1_Vector_swap'u64'$1$m'@2| |inline$$1_Vector_swap'u64'$1$m'@1|))) (and (=> (= (ControlFlow 0 62146) 62272) anon25_Then_correct) (=> (= (ControlFlow 0 62146) 62258) anon25_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$1$v@1| (|v#$Mutation_25431| $t14@0)) (and (=> (= (ControlFlow 0 62112) 62206) |inline$$1_Vector_swap'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 62112) 62146) |inline$$1_Vector_swap'u64'$1$anon3_Else_correct|)))))
(let ((anon24_Else_correct  (=> (and (not $abort_flag@0) (= $t0@2 (|v#$Mutation_25431| |inline$$1_Vector_swap'u64'$0$m'@2|))) (=> (and (and (= $t14@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@2)) (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 62214) 62112))) |inline$$1_Vector_swap'u64'$1$anon0_correct|))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@0|)) (and (=> (= (ControlFlow 0 61958) 62292) anon24_Then_correct) (=> (= (ControlFlow 0 61958) 62214) anon24_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|))))) (= (ControlFlow 0 61956) 61958)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (not (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t11@0) (|p#$Mutation_25431| $t11@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1)))) 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1)))) (+ 0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1))))) (+ 0 1)))))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@1|))) (and (=> (= (ControlFlow 0 61896) 62292) anon24_Then_correct) (=> (= (ControlFlow 0 61896) 62214) anon24_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_25431| $t11@0)) (and (=> (= (ControlFlow 0 61862) 61956) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 61862) 61896) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon23_Else_correct  (=> (and (not false) (= $t1@1 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (=> (and (and (= $t11@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@1)) (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 61964) 61862))) |inline$$1_Vector_swap'u64'$0$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t9@0) (|p#$Mutation_25431| $t9@0) (seq.++ (|v#$Mutation_25431| $t9@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 61708) 62306) anon23_Then_correct) (=> (= (ControlFlow 0 61708) 61964) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t9@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 61714) 61708))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t7@0) (|p#$Mutation_25431| $t7@0) (seq.++ (|v#$Mutation_25431| $t7@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 61621) 62320) anon22_Then_correct) (=> (= (ControlFlow 0 61621) 61714) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_25431 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 61627) 61621))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t5@0) (|p#$Mutation_25431| $t5@0) (seq.++ (|v#$Mutation_25431| $t5@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 61534) 62334) anon21_Then_correct) (=> (= (ControlFlow 0 61534) 61627) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 61540) 61534))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t3@0) (|p#$Mutation_25431| $t3@0) (seq.++ (|v#$Mutation_25431| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 61447) 62348) anon20_Then_correct) (=> (= (ControlFlow 0 61447) 61540) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 61453) 61447))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 61358) 62362) anon19_Then_correct) (=> (= (ControlFlow 0 61358) 61453) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 61364) 61358)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 61316) 62376) anon18_Then_correct) (=> (= (ControlFlow 0 61316) 61364) anon18_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 61322) 61316) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25431| $t3)) 0) (=> (and (= (seq.len (|p#$Mutation_25431| $t5)) 0) (= (seq.len (|p#$Mutation_25431| $t7)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_25431| $t9)) 0) (= (seq.len (|p#$Mutation_25431| $t11)) 0)) (and (= (seq.len (|p#$Mutation_25431| $t14)) 0) (= (ControlFlow 0 61292) 61322))) anon0$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 77676) 61292) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t4@0 () T@$Mutation_25431)
(declare-fun $abort_code@0 () Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t2@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_25431)
(declare-fun $t4 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_swap_abort1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 78613) (let ((L2_correct  (=> (= (ControlFlow 0 63003) (- 0 78976)) true)))
(let ((anon10_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 62993) 63003)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t0@1 (|v#$Mutation_25431| |inline$$1_Vector_swap'u64'$0$m'|)) (= (ControlFlow 0 62979) (- 0 78969))) (not true)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 62953) 62993) anon10_Then_correct) (=> (= (ControlFlow 0 62953) 62979) anon10_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|))))) (= (ControlFlow 0 62951) 62953)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (and (and (not (or (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))))) (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t4@0) (|p#$Mutation_25431| $t4@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 1)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1)))) 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 1)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1)))) (+ 1 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 1)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1))))) (+ 1 1))))))) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 62891) 62993) anon10_Then_correct) (=> (= (ControlFlow 0 62891) 62979) anon10_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_25431| $t4@0)) (and (=> (= (ControlFlow 0 62857) 62951) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 62857) 62891) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon9_Else_correct  (=> (and (not false) (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (=> (and (and (= $t4@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@0)) (|$IsValid'u64'| 1)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 62959) 62857))) |inline$$1_Vector_swap'u64'$0$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t2@0) (|p#$Mutation_25431| $t2@0) (seq.++ (|v#$Mutation_25431| $t2@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 62703) 63017) anon9_Then_correct) (=> (= (ControlFlow 0 62703) 62959) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 62709) 62703))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 62614) 63031) anon8_Then_correct) (=> (= (ControlFlow 0 62614) 62709) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 62620) 62614) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25431| $t2)) 0) (=> (and (= (seq.len (|p#$Mutation_25431| $t4)) 0) (= (ControlFlow 0 62590) 62620)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 78613) 62590) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'| () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t4@0 () T@$Mutation_25431)
(declare-fun $abort_code@0 () Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t2@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_25431)
(declare-fun $t4 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_swap_abort2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 78993) (let ((L2_correct  (=> (= (ControlFlow 0 63557) (- 0 79356)) true)))
(let ((anon10_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 63547) 63557)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t0@1 (|v#$Mutation_25431| |inline$$1_Vector_swap'u64'$0$m'|)) (= (ControlFlow 0 63533) (- 0 79349))) (not true)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 63507) 63547) anon10_Then_correct) (=> (= (ControlFlow 0 63507) 63533) anon10_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|))))) (= (ControlFlow 0 63505) 63507)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (and (and (not (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))))) (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t4@0) (|p#$Mutation_25431| $t4@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 1 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 1 1)))) 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 1)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 1 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 1 1)))) (+ 0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 1 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 1 1))))) (+ 0 1))))))) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 63445) 63547) anon10_Then_correct) (=> (= (ControlFlow 0 63445) 63533) anon10_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_25431| $t4@0)) (and (=> (= (ControlFlow 0 63411) 63505) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 63411) 63445) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon9_Else_correct  (=> (and (not false) (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (=> (and (and (= $t4@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@0)) (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 63513) 63411))) |inline$$1_Vector_swap'u64'$0$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t2@0) (|p#$Mutation_25431| $t2@0) (seq.++ (|v#$Mutation_25431| $t2@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 63257) 63571) anon9_Then_correct) (=> (= (ControlFlow 0 63257) 63513) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 63263) 63257))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 63168) 63585) anon8_Then_correct) (=> (= (ControlFlow 0 63168) 63263) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 63174) 63168) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25431| $t2)) 0) (=> (and (= (seq.len (|p#$Mutation_25431| $t4)) 0) (= (ControlFlow 0 63144) 63174)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 78993) 63144) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t1 () T@$Mutation_25431)
(declare-fun _$t0 () (Seq Int))
(declare-fun $t2@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_vector_equal$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 79372) (let ((anon0$1_correct  (=> (= (|l#$Mutation_25431| _$t1) ($Param 1)) (=> (and (and (and (|$IsValid'vec'u64''| _$t0) (|$IsValid'vec'u64''| (|v#$Mutation_25431| _$t1))) (and (= $t2@0 (|v#$Mutation_25431| _$t1)) (= _$t0 _$t0))) (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_25431| _$t1)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_25431| _$t1)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)))) (and (=> (= (ControlFlow 0 63842) (- 0 79477)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 63842) (- 0 79484)) (= _$t0 _$t0)) (=> (= _$t0 _$t0) (and (=> (= (ControlFlow 0 63842) (- 0 79491)) (= _$t0 (seq.extract _$t0 (|lb#$Range| ($Range 0 (seq.len _$t0))) (- (|ub#$Range| ($Range 0 (seq.len _$t0))) (|lb#$Range| ($Range 0 (seq.len _$t0))))))) (=> (= _$t0 (seq.extract _$t0 (|lb#$Range| ($Range 0 (seq.len _$t0))) (- (|ub#$Range| ($Range 0 (seq.len _$t0))) (|lb#$Range| ($Range 0 (seq.len _$t0)))))) (and (=> (= (ControlFlow 0 63842) (- 0 79507)) (= (|v#$Mutation_25431| _$t1) (|v#$Mutation_25431| _$t1))) (=> (= (|v#$Mutation_25431| _$t1) (|v#$Mutation_25431| _$t1)) (and (=> (= (ControlFlow 0 63842) (- 0 79518)) (= $t2@0 $t2@0)) (=> (= $t2@0 $t2@0) (and (=> (= (ControlFlow 0 63842) (- 0 79525)) (= (|v#$Mutation_25431| _$t1) (seq.extract (|v#$Mutation_25431| _$t1) (|lb#$Range| ($Range 0 (seq.len (|v#$Mutation_25431| _$t1)))) (- (|ub#$Range| ($Range 0 (seq.len (|v#$Mutation_25431| _$t1)))) (|lb#$Range| ($Range 0 (seq.len (|v#$Mutation_25431| _$t1)))))))) (=> (= (|v#$Mutation_25431| _$t1) (seq.extract (|v#$Mutation_25431| _$t1) (|lb#$Range| ($Range 0 (seq.len (|v#$Mutation_25431| _$t1)))) (- (|ub#$Range| ($Range 0 (seq.len (|v#$Mutation_25431| _$t1)))) (|lb#$Range| ($Range 0 (seq.len (|v#$Mutation_25431| _$t1))))))) (=> (= (ControlFlow 0 63842) (- 0 79547)) (= $t2@0 (seq.extract $t2@0 (|lb#$Range| ($Range 0 (seq.len $t2@0))) (- (|ub#$Range| ($Range 0 (seq.len $t2@0))) (|lb#$Range| ($Range 0 (seq.len $t2@0)))))))))))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 79372) 63842) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestVector_unwrap_or$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 79572) true)
))
(check-sat)
(pop 1)
; Undetermined
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
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_19250 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientSmtSeqz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientSmtSeqz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientSmtSeqz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@2 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25431)
(declare-fun $t6@0 () T@$Mutation_25431)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25431)
(declare-fun $t4@0 () T@$Mutation_25431)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25431)
(declare-fun $t2@0 () T@$Mutation_25431)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_25431)
(declare-fun $t4 () T@$Mutation_25431)
(declare-fun $t6 () T@$Mutation_25431)
(push 1)
(set-info :boogie-vc-id $42_TestVector_vector_of_proper_positives$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 79942) (let ((anon13_Else_correct  (=> (not false) (=> (and (= $t0@2 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t0@2 $t0@2)) (and (=> (= (ControlFlow 0 64904) (- 0 80305)) (let (($range_0 $t0@2))
(forall (($i_1 Int) ) (!  (=> (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let ((n (seq.nth $range_0 $i_1)))
(> n 0)))
 :qid |simplevectorclientSmtSeqz3bpl.6065:37|
 :skolemid |41|
)))) (=> (let (($range_0 $t0@2))
(forall (($i_1@@0 Int) ) (!  (=> (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0))) (let ((n (seq.nth $range_0 $i_1@@0)))
(> n 0)))
 :qid |simplevectorclientSmtSeqz3bpl.6065:37|
 :skolemid |41|
))) (=> (= (ControlFlow 0 64904) (- 0 80336)) (let (($range_0@@0 ($Range 0 (seq.len $t0@2))))
(let (($range_1 ($Range 0 (seq.len $t0@2))))
(forall (($i_2 Int) ($i_3 Int) ) (!  (=> ($InRange $range_0@@0 $i_2) (=> ($InRange $range_1 $i_3) (let ((i@@12 $i_2))
(let ((j@@2 $i_3))
 (=> (= (seq.nth $t0@2 i@@12) (seq.nth $t0@2 j@@2)) (= i@@12 j@@2))))))
 :qid |simplevectorclientSmtSeqz3bpl.6071:97|
 :skolemid |42|
)))))))))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t6@0) (|p#$Mutation_25431| $t6@0) (seq.++ (|v#$Mutation_25431| $t6@0) (seq.unit 3)))) (and (=> (= (ControlFlow 0 64770) 64918) anon13_Then_correct) (=> (= (ControlFlow 0 64770) 64904) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t6@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 64776) 64770))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t4@0) (|p#$Mutation_25431| $t4@0) (seq.++ (|v#$Mutation_25431| $t4@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 64683) 64938) anon12_Then_correct) (=> (= (ControlFlow 0 64683) 64776) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25431| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t4@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 64689) 64683))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25431 (|l#$Mutation_25431| $t2@0) (|p#$Mutation_25431| $t2@0) (seq.++ (|v#$Mutation_25431| $t2@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 64596) 64952) anon11_Then_correct) (=> (= (ControlFlow 0 64596) 64689) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_25431 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 64602) 64596))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 64507) 64966) anon10_Then_correct) (=> (= (ControlFlow 0 64507) 64602) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 64513) 64507) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_25431| $t2)) 0) (= (seq.len (|p#$Mutation_25431| $t4)) 0)) (and (= (seq.len (|p#$Mutation_25431| $t6)) 0) (= (ControlFlow 0 64483) 64513))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 79942) 64483) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
