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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestVector_none$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 63835) true)
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
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
(declare-fun |inline$$1_Vector_pop_back'u64'$1$m'| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$e@2| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$e@0| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$e@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_pop_back'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_is_empty'u64'$1$b@1| () Bool)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1| () (Seq Int))
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t7@0| () T@$Mutation_25326)
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
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$e@2| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$e@0| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$e@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_is_empty'u64'$0$b@1| () Bool)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1| () (Seq Int))
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t7@0| () T@$Mutation_25326)
(declare-fun |inline$$42_TestVector_none'u64'$0$$ret0@1| () |T@$42_TestVector_T'u64'|)
(declare-fun |inline$$42_TestVector_some'u64'$0$$ret0@0| () |T@$42_TestVector_T'u64'|)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$42_TestVector_some'u64'$0$$t1@1| () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun |inline$$42_TestVector_some'u64'$0$$t5@1| () |T@$42_TestVector_T'u64'|)
(declare-fun |inline$$42_TestVector_some'u64'$0$$t3@1| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun |inline$$42_TestVector_some'u64'$0$$t3@0| () T@$Mutation_25326)
(declare-fun |inline$$42_TestVector_none'u64'$0$$t2@1| () |T@$42_TestVector_T'u64'|)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestVector_option_type$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 63948) (let ((anon13_Else_correct  (=> (not $abort_flag@7) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1|) (= |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1|)) (and (=> (= (ControlFlow 0 44540) (- 0 65311)) (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| 0)) (=> (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| 0) (=> (= (ControlFlow 0 44540) (- 0 65319)) (= |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| 42))))))))
(let ((anon13_Then_correct true))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$L5_correct|  (=> (= $abort_flag@7 true) (=> (and (= $abort_code@6 |inline$$42_TestVector_unwrap_or'u64'$1$$t6@1|) (= |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@0|)) (and (=> (= (ControlFlow 0 44464) 44554) anon13_Then_correct) (=> (= (ControlFlow 0 44464) 44540) anon13_Else_correct))))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon11_Then_correct|  (=> (and (and $abort_flag@5 (= $abort_code@4 $abort_code@4)) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t6@1| $abort_code@4) (= (ControlFlow 0 44458) 44464))) |inline$$42_TestVector_unwrap_or'u64'$1$L5_correct|)))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon9_Then_correct|  (=> (and (and $abort_flag@4 (= $abort_code@3 $abort_code@3)) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t6@1| $abort_code@3) (= (ControlFlow 0 44492) 44464))) |inline$$42_TestVector_unwrap_or'u64'$1$L5_correct|)))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$L3_correct|  (=> (and (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1| |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1|) (= $abort_flag@7 $abort_flag@6)) (and (= $abort_code@6 $abort_code@5) (= |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1|))) (and (=> (= (ControlFlow 0 44444) 44554) anon13_Then_correct) (=> (= (ControlFlow 0 44444) 44540) anon13_Else_correct)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon11_Else_correct|  (=> (not $abort_flag@5) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t3@2| (|v#$Mutation_25326| |inline$$1_Vector_pop_back'u64'$1$m'|)) (= |inline$$1_Vector_pop_back'u64'$1$e@2| |inline$$1_Vector_pop_back'u64'$1$e@2|)) (=> (and (and (= $abort_code@5 $abort_code@4) (= $abort_flag@6 $abort_flag@5)) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1| |inline$$1_Vector_pop_back'u64'$1$e@2|) (= (ControlFlow 0 44432) 44444))) |inline$$42_TestVector_unwrap_or'u64'$1$L3_correct|)))))
(let ((|inline$$1_Vector_pop_back'u64'$1$anon3_Then$1_correct|  (=> (= $abort_code@4 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@5 true) (= |inline$$1_Vector_pop_back'u64'$1$e@2| |inline$$1_Vector_pop_back'u64'$1$e@0|)) (and (=> (= (ControlFlow 0 44402) 44458) |inline$$42_TestVector_unwrap_or'u64'$1$anon11_Then_correct|) (=> (= (ControlFlow 0 44402) 44432) |inline$$42_TestVector_unwrap_or'u64'$1$anon11_Else_correct|))))))
(let ((|inline$$1_Vector_pop_back'u64'$1$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$1$len@1| 0) (= (ControlFlow 0 44400) 44402)) |inline$$1_Vector_pop_back'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'u64'$1$anon3_Else_correct|  (=> (and (not (= |inline$$1_Vector_pop_back'u64'$1$len@1| 0)) (= |inline$$1_Vector_pop_back'u64'$1$e@1| (seq.nth |inline$$1_Vector_pop_back'u64'$1$v@1| (- |inline$$1_Vector_pop_back'u64'$1$len@1| 1)))) (=> (and (and (= |inline$$1_Vector_pop_back'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1|) (|p#$Mutation_25326| |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1|) (seq.extract |inline$$1_Vector_pop_back'u64'$1$v@1| 0 (- (- (seq.len |inline$$1_Vector_pop_back'u64'$1$v@1|) 1) 0)))) (= $abort_code@4 $abort_code@3)) (and (= $abort_flag@5 $abort_flag@4) (= |inline$$1_Vector_pop_back'u64'$1$e@2| |inline$$1_Vector_pop_back'u64'$1$e@1|))) (and (=> (= (ControlFlow 0 44352) 44458) |inline$$42_TestVector_unwrap_or'u64'$1$anon11_Then_correct|) (=> (= (ControlFlow 0 44352) 44432) |inline$$42_TestVector_unwrap_or'u64'$1$anon11_Else_correct|))))))
(let ((|inline$$1_Vector_pop_back'u64'$1$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$1$v@1| (|v#$Mutation_25326| |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1|)) (= |inline$$1_Vector_pop_back'u64'$1$len@1| (seq.len |inline$$1_Vector_pop_back'u64'$1$v@1|))) (and (=> (= (ControlFlow 0 44326) 44400) |inline$$1_Vector_pop_back'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 44326) 44352) |inline$$1_Vector_pop_back'u64'$1$anon3_Else_correct|)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon10_Else_correct|  (=> (not |inline$$1_Vector_is_empty'u64'$1$b@1|) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1| ($Mutation_25326 ($Local 3) (as seq.empty (Seq Int)) |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1|)) (= (ControlFlow 0 44410) 44326)) |inline$$1_Vector_pop_back'u64'$1$anon0_correct|))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon10_Then_correct|  (=> (and |inline$$1_Vector_is_empty'u64'$1$b@1| (= 0 0)) (=> (and (and (= $abort_code@5 $abort_code@3) (= $abort_flag@6 $abort_flag@4)) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1| 0) (= (ControlFlow 0 44478) 44444))) |inline$$42_TestVector_unwrap_or'u64'$1$L3_correct|))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon9_Else_correct|  (=> (not $abort_flag@4) (and (=> (= (ControlFlow 0 44207) 44478) |inline$$42_TestVector_unwrap_or'u64'$1$anon10_Then_correct|) (=> (= (ControlFlow 0 44207) 44410) |inline$$42_TestVector_unwrap_or'u64'$1$anon10_Else_correct|)))))
(let ((|inline$$1_Vector_is_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u64'$1$b@1| (= (seq.len |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1|) 0)) (and (=> (= (ControlFlow 0 44193) 44492) |inline$$42_TestVector_unwrap_or'u64'$1$anon9_Then_correct|) (=> (= (ControlFlow 0 44193) 44207) |inline$$42_TestVector_unwrap_or'u64'$1$anon9_Else_correct|)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon0_correct|  (=> (and (= (seq.len (|p#$Mutation_25326| |inline$$42_TestVector_unwrap_or'u64'$1$$t7@0|)) 0) (= |inline$$42_TestVector_some'u64'$0$$ret0@1| |inline$$42_TestVector_some'u64'$0$$ret0@1|)) (=> (and (and (= 0 0) (= |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1| (|$v#$42_TestVector_T'u64'| |inline$$42_TestVector_some'u64'$0$$ret0@1|))) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1| |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1|) (= (ControlFlow 0 44199) 44193))) |inline$$1_Vector_is_empty'u64'$1$anon0_correct|))))
(let ((anon12_Else_correct  (=> (not $abort_flag@4) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 44498) 44199)) |inline$$42_TestVector_unwrap_or'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$L5_correct|  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@3 |inline$$42_TestVector_unwrap_or'u64'$0$$t6@1|) (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@0|)) (and (=> (= (ControlFlow 0 43794) 44574) anon12_Then_correct) (=> (= (ControlFlow 0 43794) 44498) anon12_Else_correct))))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon11_Then_correct|  (=> (and (and $abort_flag@2 (= $abort_code@1 $abort_code@1)) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t6@1| $abort_code@1) (= (ControlFlow 0 43788) 43794))) |inline$$42_TestVector_unwrap_or'u64'$0$L5_correct|)))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon9_Then_correct|  (=> (and (and $abort_flag@1 (= $abort_code@0 $abort_code@0)) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t6@1| $abort_code@0) (= (ControlFlow 0 43822) 43794))) |inline$$42_TestVector_unwrap_or'u64'$0$L5_correct|)))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$L3_correct|  (=> (and (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1| |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1|) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@3 $abort_code@2) (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1|))) (and (=> (= (ControlFlow 0 43774) 44574) anon12_Then_correct) (=> (= (ControlFlow 0 43774) 44498) anon12_Else_correct)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon11_Else_correct|  (=> (not $abort_flag@2) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t3@2| (|v#$Mutation_25326| |inline$$1_Vector_pop_back'u64'$0$m'|)) (= |inline$$1_Vector_pop_back'u64'$0$e@2| |inline$$1_Vector_pop_back'u64'$0$e@2|)) (=> (and (and (= $abort_code@2 $abort_code@1) (= $abort_flag@3 $abort_flag@2)) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1| |inline$$1_Vector_pop_back'u64'$0$e@2|) (= (ControlFlow 0 43762) 43774))) |inline$$42_TestVector_unwrap_or'u64'$0$L3_correct|)))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Then$1_correct|  (=> (= $abort_code@1 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2 true) (= |inline$$1_Vector_pop_back'u64'$0$e@2| |inline$$1_Vector_pop_back'u64'$0$e@0|)) (and (=> (= (ControlFlow 0 43732) 43788) |inline$$42_TestVector_unwrap_or'u64'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 43732) 43762) |inline$$42_TestVector_unwrap_or'u64'$0$anon11_Else_correct|))))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$0$len@1| 0) (= (ControlFlow 0 43730) 43732)) |inline$$1_Vector_pop_back'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Else_correct|  (=> (and (not (= |inline$$1_Vector_pop_back'u64'$0$len@1| 0)) (= |inline$$1_Vector_pop_back'u64'$0$e@1| (seq.nth |inline$$1_Vector_pop_back'u64'$0$v@1| (- |inline$$1_Vector_pop_back'u64'$0$len@1| 1)))) (=> (and (and (= |inline$$1_Vector_pop_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1|) (|p#$Mutation_25326| |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1|) (seq.extract |inline$$1_Vector_pop_back'u64'$0$v@1| 0 (- (- (seq.len |inline$$1_Vector_pop_back'u64'$0$v@1|) 1) 0)))) (= $abort_code@1 $abort_code@0)) (and (= $abort_flag@2 $abort_flag@1) (= |inline$$1_Vector_pop_back'u64'$0$e@2| |inline$$1_Vector_pop_back'u64'$0$e@1|))) (and (=> (= (ControlFlow 0 43682) 43788) |inline$$42_TestVector_unwrap_or'u64'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 43682) 43762) |inline$$42_TestVector_unwrap_or'u64'$0$anon11_Else_correct|))))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$0$v@1| (|v#$Mutation_25326| |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1|)) (= |inline$$1_Vector_pop_back'u64'$0$len@1| (seq.len |inline$$1_Vector_pop_back'u64'$0$v@1|))) (and (=> (= (ControlFlow 0 43656) 43730) |inline$$1_Vector_pop_back'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 43656) 43682) |inline$$1_Vector_pop_back'u64'$0$anon3_Else_correct|)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon10_Else_correct|  (=> (not |inline$$1_Vector_is_empty'u64'$0$b@1|) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1| ($Mutation_25326 ($Local 3) (as seq.empty (Seq Int)) |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1|)) (= (ControlFlow 0 43740) 43656)) |inline$$1_Vector_pop_back'u64'$0$anon0_correct|))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon10_Then_correct|  (=> (and |inline$$1_Vector_is_empty'u64'$0$b@1| (= 0 0)) (=> (and (and (= $abort_code@2 $abort_code@0) (= $abort_flag@3 $abort_flag@1)) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1| 0) (= (ControlFlow 0 43808) 43774))) |inline$$42_TestVector_unwrap_or'u64'$0$L3_correct|))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon9_Else_correct|  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 43537) 43808) |inline$$42_TestVector_unwrap_or'u64'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 43537) 43740) |inline$$42_TestVector_unwrap_or'u64'$0$anon10_Else_correct|)))))
(let ((|inline$$1_Vector_is_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u64'$0$b@1| (= (seq.len |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1|) 0)) (and (=> (= (ControlFlow 0 43523) 43822) |inline$$42_TestVector_unwrap_or'u64'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 43523) 43537) |inline$$42_TestVector_unwrap_or'u64'$0$anon9_Else_correct|)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon0_correct|  (=> (and (= (seq.len (|p#$Mutation_25326| |inline$$42_TestVector_unwrap_or'u64'$0$$t7@0|)) 0) (= |inline$$42_TestVector_none'u64'$0$$ret0@1| |inline$$42_TestVector_none'u64'$0$$ret0@1|)) (=> (and (and (= 0 0) (= |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1| (|$v#$42_TestVector_T'u64'| |inline$$42_TestVector_none'u64'$0$$ret0@1|))) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1| |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1|) (= (ControlFlow 0 43529) 43523))) |inline$$1_Vector_is_empty'u64'$0$anon0_correct|))))
(let ((anon11_Else_correct  (=> (and (and (not $abort_flag@1) (= |inline$$42_TestVector_some'u64'$0$$ret0@1| |inline$$42_TestVector_some'u64'$0$$ret0@1|)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 43828) 43529))) |inline$$42_TestVector_unwrap_or'u64'$0$anon0_correct|)))
(let ((anon11_Then_correct true))
(let ((|inline$$42_TestVector_some'u64'$0$L2_correct|  (=> (and (= $abort_flag@1 true) (= |inline$$42_TestVector_some'u64'$0$$ret0@1| |inline$$42_TestVector_some'u64'$0$$ret0@0|)) (and (=> (= (ControlFlow 0 43130) 44588) anon11_Then_correct) (=> (= (ControlFlow 0 43130) 43828) anon11_Else_correct)))))
(let ((|inline$$42_TestVector_some'u64'$0$anon6_Then_correct|  (=> $abort_flag@0 (=> (and (= $abort_code@0 $abort_code@0) (= (ControlFlow 0 43124) 43130)) |inline$$42_TestVector_some'u64'$0$L2_correct|))))
(let ((|inline$$42_TestVector_some'u64'$0$anon5_Then_correct|  (=> $abort_flag@0 (=> (and (= $abort_code@0 $abort_code@0) (= (ControlFlow 0 43144) 43130)) |inline$$42_TestVector_some'u64'$0$L2_correct|))))
(let ((|inline$$42_TestVector_some'u64'$0$anon6_Else_correct|  (=> (and (not $abort_flag@0) (= |inline$$42_TestVector_some'u64'$0$$t1@1| (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (=> (and (and (= |inline$$42_TestVector_some'u64'$0$$t5@1| (|$42_TestVector_T'u64'| |inline$$42_TestVector_some'u64'$0$$t1@1|)) (= |inline$$42_TestVector_some'u64'$0$$t5@1| |inline$$42_TestVector_some'u64'$0$$t5@1|)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$42_TestVector_some'u64'$0$$ret0@1| |inline$$42_TestVector_some'u64'$0$$t5@1|))) (and (=> (= (ControlFlow 0 43110) 44588) anon11_Then_correct) (=> (= (ControlFlow 0 43110) 43828) anon11_Else_correct))))))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| |inline$$42_TestVector_some'u64'$0$$t3@1|) (|p#$Mutation_25326| |inline$$42_TestVector_some'u64'$0$$t3@1|) (seq.++ (|v#$Mutation_25326| |inline$$42_TestVector_some'u64'$0$$t3@1|) (seq.unit 42)))) (and (=> (= (ControlFlow 0 43074) 43124) |inline$$42_TestVector_some'u64'$0$anon6_Then_correct|) (=> (= (ControlFlow 0 43074) 43110) |inline$$42_TestVector_some'u64'$0$anon6_Else_correct|)))))
(let ((|inline$$42_TestVector_some'u64'$0$anon5_Else_correct|  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|)) (and (= |inline$$42_TestVector_some'u64'$0$$t3@1| ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|)) (= (ControlFlow 0 43080) 43074))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|)))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 42991) 43144) |inline$$42_TestVector_some'u64'$0$anon5_Then_correct|) (=> (= (ControlFlow 0 42991) 43080) |inline$$42_TestVector_some'u64'$0$anon5_Else_correct|)))))
(let ((|inline$$42_TestVector_some'u64'$0$anon0_correct|  (=> (= (seq.len (|p#$Mutation_25326| |inline$$42_TestVector_some'u64'$0$$t3@0|)) 0) (=> (and (= 42 42) (= (ControlFlow 0 42997) 42991)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon10_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$42_TestVector_none'u64'$0$$ret0@1| |inline$$42_TestVector_none'u64'$0$$ret0@1|)) (and (|$IsValid'u64'| 42) (= (ControlFlow 0 43150) 42997))) |inline$$42_TestVector_some'u64'$0$anon0_correct|)))
(let ((anon10_Then_correct true))
(let ((|inline$$42_TestVector_none'u64'$0$anon3_Else_correct|  (=> (not false) (=> (and (and (= |inline$$42_TestVector_none'u64'$0$$t2@1| (|$42_TestVector_T'u64'| |inline$$1_Vector_empty'u64'$0$v@1|)) (= |inline$$42_TestVector_none'u64'$0$$t2@1| |inline$$42_TestVector_none'u64'$0$$t2@1|)) (and (= $abort_flag@0 false) (= |inline$$42_TestVector_none'u64'$0$$ret0@1| |inline$$42_TestVector_none'u64'$0$$t2@1|))) (and (=> (= (ControlFlow 0 42693) 44602) anon10_Then_correct) (=> (= (ControlFlow 0 42693) 43150) anon10_Else_correct))))))
(let ((|inline$$42_TestVector_none'u64'$0$anon3_Then_correct| true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 42665) 42711) |inline$$42_TestVector_none'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 42665) 42693) |inline$$42_TestVector_none'u64'$0$anon3_Else_correct|)))))
(let ((|inline$$42_TestVector_none'u64'$0$anon0_correct|  (=> (= (ControlFlow 0 42671) 42665) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 42717) 42671) |inline$$42_TestVector_none'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 63948) 42717) anon0$1_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
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
 (=> (= (ControlFlow 0 0) 65344) true)
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
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
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t2@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_borrow1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 65554) (let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (= (ControlFlow 0 45449) (- 0 65845))) (= |inline$$1_Vector_borrow'u64'$0$dst@2| 7)))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 45417) 45463) anon10_Then_correct) (=> (= (ControlFlow 0 45417) 45449) anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len $t0@0)))) (= (ControlFlow 0 45415) 45417)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (and (>= 0 0) (< 0 (seq.len $t0@0))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (seq.nth $t0@0 0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 45365) 45463) anon10_Then_correct) (=> (= (ControlFlow 0 45365) 45449) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (|$IsValid'u64'| 0)) (and (=> (= (ControlFlow 0 45423) 45415) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 45423) 45365) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t2@0) (|p#$Mutation_25326| $t2@0) (seq.++ (|v#$Mutation_25326| $t2@0) (seq.unit 7)))) (and (=> (= (ControlFlow 0 45254) 45483) anon9_Then_correct) (=> (= (ControlFlow 0 45254) 45423) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 7) (= (ControlFlow 0 45260) 45254))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 45165) 45497) anon8_Then_correct) (=> (= (ControlFlow 0 45165) 45260) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 45171) 45165) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25326| $t2)) 0) (= (ControlFlow 0 45141) 45171)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 65554) 45141) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
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
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t2@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_borrow2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 65868) (let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (= (ControlFlow 0 45899) (- 0 66159))) (not (= |inline$$1_Vector_borrow'u64'$0$dst@2| 7))))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 45865) 45913) anon10_Then_correct) (=> (= (ControlFlow 0 45865) 45899) anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len $t0@0)))) (= (ControlFlow 0 45863) 45865)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (and (>= 0 0) (< 0 (seq.len $t0@0))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (seq.nth $t0@0 0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 45813) 45913) anon10_Then_correct) (=> (= (ControlFlow 0 45813) 45899) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (|$IsValid'u64'| 0)) (and (=> (= (ControlFlow 0 45871) 45863) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 45871) 45813) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t2@0) (|p#$Mutation_25326| $t2@0) (seq.++ (|v#$Mutation_25326| $t2@0) (seq.unit 0)))) (and (=> (= (ControlFlow 0 45702) 45933) anon9_Then_correct) (=> (= (ControlFlow 0 45702) 45871) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 45708) 45702))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 45613) 45947) anon8_Then_correct) (=> (= (ControlFlow 0 45613) 45708) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 45619) 45613) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25326| $t2)) 0) (= (ControlFlow 0 45589) 45619)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 65868) 45589) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
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
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t2@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_borrow3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 66184) (let ((L2_correct  (=> (= (ControlFlow 0 46369) (- 0 66484)) true)))
(let ((anon10_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 46359) 46369)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (= (ControlFlow 0 46345) (- 0 66475))) (not true)))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 46315) 46359) anon10_Then_correct) (=> (= (ControlFlow 0 46315) 46345) anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 1 0) (< 1 (seq.len $t0@0)))) (= (ControlFlow 0 46313) 46315)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (and (>= 1 0) (< 1 (seq.len $t0@0))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (seq.nth $t0@0 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 46263) 46359) anon10_Then_correct) (=> (= (ControlFlow 0 46263) 46345) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 46321) 46313) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 46321) 46263) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t2@0) (|p#$Mutation_25326| $t2@0) (seq.++ (|v#$Mutation_25326| $t2@0) (seq.unit 7)))) (and (=> (= (ControlFlow 0 46152) 46383) anon9_Then_correct) (=> (= (ControlFlow 0 46152) 46321) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 7) (= (ControlFlow 0 46158) 46152))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 46063) 46397) anon8_Then_correct) (=> (= (ControlFlow 0 46063) 46158) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 46069) 46063) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25326| $t2)) 0) (= (ControlFlow 0 46039) 46069)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 66184) 46039) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
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
(declare-fun $t0@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun |$temp_0'vec'u64''@2| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@0| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4535)
(declare-fun _$t0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun $t5@0 () (Seq Int))
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(declare-fun $t1 () T@$Mutation_25326)
(declare-fun $t11 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_borrow_mut$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 66504) (let ((L2_correct  (=> (= (ControlFlow 0 47018) (- 0 66998)) (= (seq.len $t4@0) 0))))
(let ((anon7_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 47002) 47018)) L2_correct))))
(let ((anon6_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 47032) 47018)) L2_correct))))
(let ((anon7_Else_correct  (=> (not $abort_flag@1) (=> (and (= $t11@0 ($Mutation_4535 (|l#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (|p#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) 7)) (= $t0@0 ($Mutation_25326 (|l#$Mutation_25326| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (|p#$Mutation_25326| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (seq.++ (seq.extract (|v#$Mutation_25326| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) 0 (- (seq.nth (|p#$Mutation_4535| $t11@0) (seq.len (|p#$Mutation_25326| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 0)) (seq.unit (|v#$Mutation_4535| $t11@0)) (seq.extract (|v#$Mutation_25326| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (+ (seq.nth (|p#$Mutation_4535| $t11@0) (seq.len (|p#$Mutation_25326| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 1) (- (seq.len (|v#$Mutation_25326| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)) (+ (seq.nth (|p#$Mutation_4535| $t11@0) (seq.len (|p#$Mutation_25326| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 1))))))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (= |$temp_0'vec'u64''@2| (|v#$Mutation_25326| $t0@0))) (and (= |$temp_0'vec'u64''@2| |$temp_0'vec'u64''@2|) (= (ControlFlow 0 46988) (- 0 66982)))) (not (= (seq.len $t4@0) 0)))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| |inline$$1_Vector_borrow_mut'u64'$0$m'@0|))) (and (=> (= (ControlFlow 0 46904) 47002) anon7_Then_correct) (=> (= (ControlFlow 0 46904) 46988) anon7_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|)))) (= (ControlFlow 0 46902) 46904)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (and (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|))) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4535 (|l#$Mutation_25326| _$t0) (seq.++ (|p#$Mutation_25326| _$t0) (seq.unit 0)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0)))) (and (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| _$t0)))) (and (=> (= (ControlFlow 0 46852) 47002) anon7_Then_correct) (=> (= (ControlFlow 0 46852) 46988) anon7_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_25326| _$t0)) (and (=> (= (ControlFlow 0 46822) 46902) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 46822) 46852) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (|$IsValid'u64'| 7)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 46912) 46822))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 46688) 47032) anon6_Then_correct) (=> (= (ControlFlow 0 46688) 46912) anon6_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len $t5@0)))) (= (ControlFlow 0 46686) 46688)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (and (>= 0 0) (< 0 (seq.len $t5@0))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (seq.nth $t5@0 0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 46636) 47032) anon6_Then_correct) (=> (= (ControlFlow 0 46636) 46912) anon6_Else_correct))))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_25326| _$t0) ($Param 0)) (=> (and (and (and (|$IsValid'vec'u64''| (|v#$Mutation_25326| _$t0)) (= $t4@0 (|v#$Mutation_25326| _$t0))) (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_25326| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|))) (and (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_25326| _$t0)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)) (and (= $t5@0 (|v#$Mutation_25326| _$t0)) (|$IsValid'u64'| 0)))) (and (=> (= (ControlFlow 0 46694) 46686) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 46694) 46636) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25326| $t1)) 0) (=> (and (= (seq.len (|p#$Mutation_4535| $t11)) 0) (= (ControlFlow 0 46497) 46694)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 66504) 46497) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_contains'u64'$1$res@1| () Bool)
(declare-fun $t2@3 () (Seq Int))
(declare-fun |inline$$1_Vector_contains'u64'$0$res@1| () Bool)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_25326)
(declare-fun $t14@0 () T@$Mutation_25326)
(declare-fun $t2@2 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25326)
(declare-fun $t12@0 () T@$Mutation_25326)
(declare-fun $t2@1 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun $t10@0 () T@$Mutation_25326)
(declare-fun $t2@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t8@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t8 () T@$Mutation_25326)
(declare-fun $t10 () T@$Mutation_25326)
(declare-fun $t12 () T@$Mutation_25326)
(declare-fun $t14 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_contains$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 67021) (let ((anon22_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_contains'u64'$1$res@1| |inline$$1_Vector_contains'u64'$1$res@1|) (= $t2@3 $t2@3)) (and (= |inline$$1_Vector_contains'u64'$0$res@1| |inline$$1_Vector_contains'u64'$0$res@1|) (= |inline$$1_Vector_contains'u64'$1$res@1| |inline$$1_Vector_contains'u64'$1$res@1|))) (and (=> (= (ControlFlow 0 48005) (- 0 67637)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 48005) (- 0 67644)) (= |inline$$1_Vector_contains'u64'$0$res@1| true)) (=> (= |inline$$1_Vector_contains'u64'$0$res@1| true) (and (=> (= (ControlFlow 0 48005) (- 0 67652)) (= |inline$$1_Vector_contains'u64'$1$res@1| false)) (=> (= |inline$$1_Vector_contains'u64'$1$res@1| false) (and (=> (= (ControlFlow 0 48005) (- 0 67660)) (= (seq.len $t2@3) 4)) (=> (= (seq.len $t2@3) 4) (and (=> (= (ControlFlow 0 48005) (- 0 67670)) (= (seq.nth $t2@3 0) 1)) (=> (= (seq.nth $t2@3 0) 1) (and (=> (= (ControlFlow 0 48005) (- 0 67682)) (= (seq.nth $t2@3 1) 2)) (=> (= (seq.nth $t2@3 1) 2) (and (=> (= (ControlFlow 0 48005) (- 0 67694)) (= (seq.nth $t2@3 2) 3)) (=> (= (seq.nth $t2@3 2) 3) (and (=> (= (ControlFlow 0 48005) (- 0 67706)) (= (seq.nth $t2@3 3) 5)) (=> (= (seq.nth $t2@3 3) 5) (and (=> (= (ControlFlow 0 48005) (- 0 67718)) (let (($range_0 $t2@3))
(exists (($i_1 Int) ) (!  (and (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let ((x (seq.nth $range_0 $i_1)))
(= x 1)))
 :qid |simplevectorclientz3bpl.2312:38|
 :skolemid |36|
)))) (=> (let (($range_0 $t2@3))
(exists (($i_1@@0 Int) ) (!  (and (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0))) (let ((x (seq.nth $range_0 $i_1@@0)))
(= x 1)))
 :qid |simplevectorclientz3bpl.2312:38|
 :skolemid |36|
))) (and (=> (= (ControlFlow 0 48005) (- 0 67749)) (let (($range_0@@0 $t2@3))
(exists (($i_1@@1 Int) ) (!  (and (and (>= $i_1@@1 0) (< $i_1@@1 (seq.len $range_0@@0))) (let ((x@@0 (seq.nth $range_0@@0 $i_1@@1)))
(= x@@0 2)))
 :qid |simplevectorclientz3bpl.2318:38|
 :skolemid |37|
)))) (=> (let (($range_0@@0 $t2@3))
(exists (($i_1@@2 Int) ) (!  (and (and (>= $i_1@@2 0) (< $i_1@@2 (seq.len $range_0@@0))) (let ((x@@0 (seq.nth $range_0@@0 $i_1@@2)))
(= x@@0 2)))
 :qid |simplevectorclientz3bpl.2318:38|
 :skolemid |37|
))) (and (=> (= (ControlFlow 0 48005) (- 0 67780)) (let (($range_0@@1 $t2@3))
(exists (($i_1@@3 Int) ) (!  (and (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@1))) (let ((x@@1 (seq.nth $range_0@@1 $i_1@@3)))
(= x@@1 3)))
 :qid |simplevectorclientz3bpl.2324:38|
 :skolemid |38|
)))) (=> (let (($range_0@@1 $t2@3))
(exists (($i_1@@4 Int) ) (!  (and (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@1))) (let ((x@@1 (seq.nth $range_0@@1 $i_1@@4)))
(= x@@1 3)))
 :qid |simplevectorclientz3bpl.2324:38|
 :skolemid |38|
))) (and (=> (= (ControlFlow 0 48005) (- 0 67811)) (not (let (($range_0@@2 $t2@3))
(exists (($i_1@@5 Int) ) (!  (and (and (>= $i_1@@5 0) (< $i_1@@5 (seq.len $range_0@@2))) (let ((x@@2 (seq.nth $range_0@@2 $i_1@@5)))
(= x@@2 4)))
 :qid |simplevectorclientz3bpl.2330:39|
 :skolemid |39|
))))) (=> (not (let (($range_0@@2 $t2@3))
(exists (($i_1@@6 Int) ) (!  (and (and (>= $i_1@@6 0) (< $i_1@@6 (seq.len $range_0@@2))) (let ((x@@2 (seq.nth $range_0@@2 $i_1@@6)))
(= x@@2 4)))
 :qid |simplevectorclientz3bpl.2330:39|
 :skolemid |39|
)))) (=> (= (ControlFlow 0 48005) (- 0 67844)) (let (($range_0@@3 $t2@3))
(exists (($i_1@@7 Int) ) (!  (and (and (>= $i_1@@7 0) (< $i_1@@7 (seq.len $range_0@@3))) (let ((x@@3 (seq.nth $range_0@@3 $i_1@@7)))
(= x@@3 5)))
 :qid |simplevectorclientz3bpl.2336:38|
 :skolemid |40|
))))))))))))))))))))))))))))))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_contains'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_contains'u64'$1$res@1| (exists ((i@@12 Int) ) (!  (and (and (|$IsValid'u64'| i@@12) (and (>= i@@12 0) (< i@@12 (seq.len $t2@3)))) (= (seq.nth $t2@3 i@@12) 4))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (and (=> (= (ControlFlow 0 47718) 48019) anon22_Then_correct) (=> (= (ControlFlow 0 47718) 48005) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (not false) (= |inline$$1_Vector_contains'u64'$0$res@1| |inline$$1_Vector_contains'u64'$0$res@1|)) (=> (and (and (= $t2@3 $t2@3) (|$IsValid'u64'| 4)) (and (= 4 4) (= (ControlFlow 0 47724) 47718))) |inline$$1_Vector_contains'u64'$1$anon0_correct|))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_contains'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'u64'$0$res@1| (exists ((i@@13 Int) ) (!  (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len $t2@3)))) (= (seq.nth $t2@3 i@@13) 3))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (and (=> (= (ControlFlow 0 47636) 48043) anon21_Then_correct) (=> (= (ControlFlow 0 47636) 47724) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (and (not false) (= $t2@3 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (=> (and (and (= $t2@3 $t2@3) (|$IsValid'u64'| 3)) (and (= 3 3) (= (ControlFlow 0 47642) 47636))) |inline$$1_Vector_contains'u64'$0$anon0_correct|))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t14@0) (|p#$Mutation_25326| $t14@0) (seq.++ (|v#$Mutation_25326| $t14@0) (seq.unit 5)))) (and (=> (= (ControlFlow 0 47556) 48057) anon20_Then_correct) (=> (= (ControlFlow 0 47556) 47642) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not false) (=> (and (and (= $t2@2 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t14@0 ($Mutation_25326 ($Local 2) (as seq.empty (Seq Int)) $t2@2))) (and (|$IsValid'u64'| 5) (= (ControlFlow 0 47562) 47556))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t12@0) (|p#$Mutation_25326| $t12@0) (seq.++ (|v#$Mutation_25326| $t12@0) (seq.unit 3)))) (and (=> (= (ControlFlow 0 47469) 48071) anon19_Then_correct) (=> (= (ControlFlow 0 47469) 47562) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not false) (=> (and (and (= $t2@1 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t12@0 ($Mutation_25326 ($Local 2) (as seq.empty (Seq Int)) $t2@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 47475) 47469))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t10@0) (|p#$Mutation_25326| $t10@0) (seq.++ (|v#$Mutation_25326| $t10@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 47382) 48085) anon18_Then_correct) (=> (= (ControlFlow 0 47382) 47475) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not false) (=> (and (and (= $t2@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t10@0 ($Mutation_25326 ($Local 2) (as seq.empty (Seq Int)) $t2@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 47388) 47382))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t8@0) (|p#$Mutation_25326| $t8@0) (seq.++ (|v#$Mutation_25326| $t8@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 47295) 48099) anon17_Then_correct) (=> (= (ControlFlow 0 47295) 47388) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t8@0 ($Mutation_25326 ($Local 2) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 47301) 47295))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 47206) 48113) anon16_Then_correct) (=> (= (ControlFlow 0 47206) 47301) anon16_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 47212) 47206) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25326| $t8)) 0) (=> (and (and (= (seq.len (|p#$Mutation_25326| $t10)) 0) (= (seq.len (|p#$Mutation_25326| $t12)) 0)) (and (= (seq.len (|p#$Mutation_25326| $t14)) 0) (= (ControlFlow 0 47182) 47212))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 67021) 47182) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
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
 (=> (= (ControlFlow 0 0) 67904) (let ((anon15_Then_correct true))
(let ((anon14_Then_correct true))
(let ((L3_correct  (=> (and (= $t1@0 $t1@0) (= (ControlFlow 0 48392) (- 0 68145))) (= $t1@0 _$t0))))
(let ((anon15_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|)) (and (= $t1@0 |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 48558) 48392))) L3_correct)))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 48534) 48572) anon15_Then_correct) (=> (= (ControlFlow 0 48534) 48558) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 48540) 48534)) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 48500) 48592) anon14_Then_correct) (=> (= (ControlFlow 0 48500) 48540) anon14_Else_correct)))))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Then_correct|  (=> (and (not (= (seq.len _$t0) 0)) (= (ControlFlow 0 48498) 48500)) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Then$1_correct|)))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Else_correct|  (=> (= (seq.len _$t0) 0) (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 48450) 48592) anon14_Then_correct) (=> (= (ControlFlow 0 48450) 48540) anon14_Else_correct))))))
(let ((anon13_Then_correct  (=> |inline$$1_Vector_is_empty'u64'$0$b@1| (and (=> (= (ControlFlow 0 48504) 48498) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Then_correct|) (=> (= (ControlFlow 0 48504) 48450) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Else_correct|)))))
(let ((anon13_Else_correct  (=> (and (and (not |inline$$1_Vector_is_empty'u64'$0$b@1|) (= _$t0 _$t0)) (and (= $t1@0 _$t0) (= (ControlFlow 0 48372) 48392))) L3_correct)))
(let ((anon12_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 48356) 48504) anon13_Then_correct) (=> (= (ControlFlow 0 48356) 48372) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_is_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u64'$0$b@1| (= (seq.len _$t0) 0)) (and (=> (= (ControlFlow 0 48342) 48606) anon12_Then_correct) (=> (= (ControlFlow 0 48342) 48356) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 48348) 48342)) |inline$$1_Vector_is_empty'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 67904) 48348) anon0$1_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
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
(declare-fun |inline$$1_Vector_swap'u64'$0$m'| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t4@0 () T@$Mutation_25326)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_is_empty'u64'$0$b@1| () Bool)
(declare-fun _$t0 () (Seq Int))
(declare-fun $t4 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_destroy_empty2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 68166) (let ((L5_correct  (=> (= (ControlFlow 0 48930) (- 0 68514)) true)))
(let ((anon14_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 49198) 48930)) L5_correct))))
(let ((anon15_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 48920) 48930)) L5_correct))))
(let ((L3_correct  (=> (= (ControlFlow 0 48906) (- 0 68543)) (not true))))
(let ((anon14_Else_correct  (=> (not $abort_flag@1) (=> (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_swap'u64'$0$m'|)) (= (ControlFlow 0 49184) 48906)) L3_correct))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 49164) 49198) anon14_Then_correct) (=> (= (ControlFlow 0 49164) 49184) anon14_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|))))) (= (ControlFlow 0 49162) 49164)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (and (and (not (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))))) (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t4@0) (|p#$Mutation_25326| $t4@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1)))) 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1)))) (+ 0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1))))) (+ 0 1))))))) (and (= $abort_flag@1 false) (= $abort_code@2 $abort_code@0))) (and (=> (= (ControlFlow 0 49102) 49198) anon14_Then_correct) (=> (= (ControlFlow 0 49102) 49184) anon14_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_25326| $t4@0)) (and (=> (= (ControlFlow 0 49068) 49162) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 49068) 49102) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon13_Then_correct  (=> |inline$$1_Vector_is_empty'u64'$0$b@1| (=> (and (and (= $t4@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) _$t0)) (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 49170) 49068))) |inline$$1_Vector_swap'u64'$0$anon0_correct|))))
(let ((anon15_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 48896) 48906)) L3_correct)))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 48882) 48920) anon15_Then_correct) (=> (= (ControlFlow 0 48882) 48896) anon15_Else_correct)))))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Then_correct|  (=> (and (not (= (seq.len _$t0) 0)) (= (ControlFlow 0 48880) 48882)) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Then$1_correct|)))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Else_correct|  (=> (= (seq.len _$t0) 0) (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 48832) 48920) anon15_Then_correct) (=> (= (ControlFlow 0 48832) 48896) anon15_Else_correct))))))
(let ((anon13_Else_correct  (=> (not |inline$$1_Vector_is_empty'u64'$0$b@1|) (and (=> (= (ControlFlow 0 48886) 48880) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Then_correct|) (=> (= (ControlFlow 0 48886) 48832) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Else_correct|)))))
(let ((anon12_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 48770) 49170) anon13_Then_correct) (=> (= (ControlFlow 0 48770) 48886) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_is_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u64'$0$b@1| (= (seq.len _$t0) 0)) (and (=> (= (ControlFlow 0 48756) 49212) anon12_Then_correct) (=> (= (ControlFlow 0 48756) 48770) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 48762) 48756)) |inline$$1_Vector_is_empty'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25326| $t4)) 0) (= (ControlFlow 0 48708) 48762)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 68166) 48708) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
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
 (=> (= (ControlFlow 0 0) 68557) (let ((anon7_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|)) (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|))) (and (=> (= (ControlFlow 0 49445) (- 0 68685)) (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$1$v@1|)) (=> (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (and (=> (= (ControlFlow 0 49445) (- 0 68692)) (= (seq.len |inline$$1_Vector_empty'u64'$0$v@1|) 0)) (=> (= (seq.len |inline$$1_Vector_empty'u64'$0$v@1|) 0) (=> (= (ControlFlow 0 49445) (- 0 68702)) (= (seq.len |inline$$1_Vector_empty'u64'$1$v@1|) 0)))))))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 49377) 49459) anon7_Then_correct) (=> (= (ControlFlow 0 49377) 49445) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 49383) 49377)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon6_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 49335) 49479) anon6_Then_correct) (=> (= (ControlFlow 0 49335) 49383) anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 49341) 49335) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 68557) 49341) anon0$1_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
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
 (=> (= (ControlFlow 0 0) 68725) (let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'u64''| _$t0) (= _$t0 _$t0)) (and (= _$t0 _$t0) (= (ControlFlow 0 49603) (- 0 68779)))) (= _$t0 _$t0))))
(let ((anon0_correct  (=> (= (ControlFlow 0 68725) 49603) anon0$1_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun _$t0 () (Seq Int))
(declare-fun $t4@0 () T@$Mutation_25326)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t2@0 () T@$Mutation_25326)
(declare-fun $t2 () T@$Mutation_25326)
(declare-fun $t4 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_id2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 68794) (let ((anon7_Else_correct  (=> (and (and (not false) (= $t0@1 (|v#$Mutation_25326| |inline$$1_Vector_reverse'u64'$1$m'@1|))) (and (= $t0@1 $t0@1) (= (ControlFlow 0 49867) (- 0 69020)))) (= $t0@1 _$t0))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t4@0) (|p#$Mutation_25326| $t4@0) (ReverseVec_4388 (|v#$Mutation_25326| $t4@0)))) (and (=> (= (ControlFlow 0 49827) 49881) anon7_Then_correct) (=> (= (ControlFlow 0 49827) 49867) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_reverse'u64'$0$m'@1|))) (and (= $t4@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@0)) (= (ControlFlow 0 49833) 49827))) |inline$$1_Vector_reverse'u64'$1$anon0_correct|)))
(let ((anon6_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t2@0) (|p#$Mutation_25326| $t2@0) (ReverseVec_4388 (|v#$Mutation_25326| $t2@0)))) (and (=> (= (ControlFlow 0 49756) 49901) anon6_Then_correct) (=> (= (ControlFlow 0 49756) 49833) anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'u64''| _$t0) (= _$t0 _$t0)) (and (= $t2@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) _$t0)) (= (ControlFlow 0 49762) 49756))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25326| $t2)) 0) (=> (and (= (seq.len (|p#$Mutation_25326| $t4)) 0) (= (ControlFlow 0 49685) 49762)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 68794) 49685) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t0@3 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun _$t0 () (Seq Int))
(declare-fun $t15@0 () T@$Mutation_25326)
(declare-fun $t0@2 () (Seq Int))
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@2| () T@$Mutation_25326)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@0| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () (Seq Int))
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t10@0 () T@$Mutation_25326)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Le$1$dst@1 () Bool)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $t14@0 () T@$Mutation_25326)
(declare-fun $t10 () T@$Mutation_25326)
(declare-fun $t14 () T@$Mutation_25326)
(declare-fun $t15 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_id3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 69042) (let ((anon23_Then_correct true))
(let ((anon22_Then_correct true))
(let ((anon25_Else_correct  (=> (and (and (not $abort_flag@2) (= $t0@3 (|v#$Mutation_25326| |inline$$1_Vector_reverse'u64'$1$m'@1|))) (and (= $t0@3 $t0@3) (= (ControlFlow 0 50385) (- 0 69737)))) (= $t0@3 _$t0))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t15@0) (|p#$Mutation_25326| $t15@0) (ReverseVec_4388 (|v#$Mutation_25326| $t15@0)))) (and (=> (= (ControlFlow 0 50345) 50399) anon25_Then_correct) (=> (= (ControlFlow 0 50345) 50385) anon25_Else_correct)))))
(let ((L3_correct  (=> (and (= $t15@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@2)) (= (ControlFlow 0 50351) 50345)) |inline$$1_Vector_reverse'u64'$1$anon0_correct|)))
(let ((anon23_Else_correct  (=> (and (not $abort_flag@1) (= $t0@1 (|v#$Mutation_25326| |inline$$1_Vector_swap'u64'$0$m'@2|))) (=> (and (and (= $t0@2 $t0@1) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= (ControlFlow 0 50818) 50351))) L3_correct))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@0|)) (and (=> (= (ControlFlow 0 50798) 50832) anon23_Then_correct) (=> (= (ControlFlow 0 50798) 50818) anon23_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= inline$$Sub$0$dst@2 0) (< inline$$Sub$0$dst@2 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|))))) (= (ControlFlow 0 50796) 50798)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (not (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= inline$$Sub$0$dst@2 0) (< inline$$Sub$0$dst@2 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t10@0) (|p#$Mutation_25326| $t10@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- inline$$Sub$0$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ inline$$Sub$0$dst@2 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ inline$$Sub$0$dst@2 1)))) 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| inline$$Sub$0$dst@2)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- inline$$Sub$0$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ inline$$Sub$0$dst@2 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ inline$$Sub$0$dst@2 1)))) (+ 0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- inline$$Sub$0$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ inline$$Sub$0$dst@2 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ inline$$Sub$0$dst@2 1))))) (+ 0 1)))))) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@1|))) (and (=> (= (ControlFlow 0 50736) 50832) anon23_Then_correct) (=> (= (ControlFlow 0 50736) 50818) anon23_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_25326| $t10@0)) (and (=> (= (ControlFlow 0 50702) 50796) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 50702) 50736) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon22_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 50804) 50702)) |inline$$1_Vector_swap'u64'$0$anon0_correct|)))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 50576) 50846) anon22_Then_correct) (=> (= (ControlFlow 0 50576) 50804) anon22_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< |inline$$1_Vector_length'u64'$0$l@1| 1) (= (ControlFlow 0 50574) 50576)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= 1 |inline$$1_Vector_length'u64'$0$l@1|) (=> (and (and (= inline$$Sub$0$dst@1 (- |inline$$1_Vector_length'u64'$0$l@1| 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 50526) 50846) anon22_Then_correct) (=> (= (ControlFlow 0 50526) 50804) anon22_Else_correct))))))
(let ((anon21_Then_correct  (=> (and (and inline$$Le$1$dst@1 (= $t10@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) _$t0))) (and (|$IsValid'u64'| 0) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 50582) 50574) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 50582) 50526) inline$$Sub$0$anon3_Else_correct)))))
(let ((anon24_Else_correct  (=> (and (not false) (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_reverse'u64'$0$m'@1|))) (=> (and (and (= $t0@2 $t0@0) (= $abort_flag@2 false)) (and (= $abort_code@3 $abort_code@0) (= (ControlFlow 0 50292) 50351))) L3_correct))))
(let ((anon20_Then_correct  (=> inline$$Le$0$dst@1 (=> (and (and (= $t0@2 _$t0) (= $abort_flag@2 false)) (and (= $abort_code@3 $abort_code@0) (= (ControlFlow 0 50850) 50351))) L3_correct))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t14@0) (|p#$Mutation_25326| $t14@0) (ReverseVec_4388 (|v#$Mutation_25326| $t14@0)))) (and (=> (= (ControlFlow 0 50272) 50419) anon24_Then_correct) (=> (= (ControlFlow 0 50272) 50292) anon24_Else_correct)))))
(let ((anon21_Else_correct  (=> (not inline$$Le$1$dst@1) (=> (and (= $t14@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) _$t0)) (= (ControlFlow 0 50278) 50272)) |inline$$1_Vector_reverse'u64'$0$anon0_correct|))))
(let ((inline$$Le$1$anon0_correct  (=> (= inline$$Le$1$dst@1 (<= |inline$$1_Vector_length'u64'$0$l@1| 3)) (and (=> (= (ControlFlow 0 50207) 50582) anon21_Then_correct) (=> (= (ControlFlow 0 50207) 50278) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not inline$$Le$0$dst@1) (=> (and (|$IsValid'u64'| 3) (= (ControlFlow 0 50213) 50207)) inline$$Le$1$anon0_correct))))
(let ((inline$$Le$0$anon0_correct  (=> (= inline$$Le$0$dst@1 (<= |inline$$1_Vector_length'u64'$0$l@1| 1)) (and (=> (= (ControlFlow 0 50147) 50850) anon20_Then_correct) (=> (= (ControlFlow 0 50147) 50213) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 50153) 50147))) inline$$Le$0$anon0_correct)))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len _$t0)) (and (=> (= (ControlFlow 0 50079) 50864) anon19_Then_correct) (=> (= (ControlFlow 0 50079) 50153) anon19_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 50085) 50079)) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_25326| $t10)) 0) (= (seq.len (|p#$Mutation_25326| $t14)) 0)) (and (= (seq.len (|p#$Mutation_25326| $t15)) 0) (= (ControlFlow 0 50027) 50085))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 69042) 50027) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
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
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t22@0 () T@$Mutation_25326)
(declare-fun $t2@5 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$5$m'@1| () T@$Mutation_25326)
(declare-fun $t20@0 () T@$Mutation_25326)
(declare-fun $t2@4 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$4$m'@1| () T@$Mutation_25326)
(declare-fun $t18@0 () T@$Mutation_25326)
(declare-fun $t2@3 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_25326)
(declare-fun $t16@0 () T@$Mutation_25326)
(declare-fun $t2@2 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25326)
(declare-fun $t14@0 () T@$Mutation_25326)
(declare-fun $t2@1 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun $t12@0 () T@$Mutation_25326)
(declare-fun $t2@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t10@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t10 () T@$Mutation_25326)
(declare-fun $t12 () T@$Mutation_25326)
(declare-fun $t14 () T@$Mutation_25326)
(declare-fun $t16 () T@$Mutation_25326)
(declare-fun $t18 () T@$Mutation_25326)
(declare-fun $t20 () T@$Mutation_25326)
(declare-fun $t22 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_index_of$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 69763) (let ((anon31_Else_correct  (=> (and (and (and (not false) (= |inline$$1_Vector_index_of'u64'$1$res2@2| |inline$$1_Vector_index_of'u64'$1$res2@2|)) (and (= |inline$$1_Vector_index_of'u64'$1$res1@1| |inline$$1_Vector_index_of'u64'$1$res1@1|) (= $t2@6 $t2@6))) (and (and (= |inline$$1_Vector_index_of'u64'$0$res1@1| |inline$$1_Vector_index_of'u64'$0$res1@1|) (= |inline$$1_Vector_index_of'u64'$0$res2@2| |inline$$1_Vector_index_of'u64'$0$res2@2|)) (and (= |inline$$1_Vector_index_of'u64'$1$res1@1| |inline$$1_Vector_index_of'u64'$1$res1@1|) (= |inline$$1_Vector_index_of'u64'$1$res2@2| |inline$$1_Vector_index_of'u64'$1$res2@2|)))) (and (=> (= (ControlFlow 0 52086) (- 0 70769)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 52086) (- 0 70776)) (= |inline$$1_Vector_index_of'u64'$0$res1@1| false)) (=> (= |inline$$1_Vector_index_of'u64'$0$res1@1| false) (and (=> (= (ControlFlow 0 52086) (- 0 70784)) (= |inline$$1_Vector_index_of'u64'$0$res2@2| 0)) (=> (= |inline$$1_Vector_index_of'u64'$0$res2@2| 0) (and (=> (= (ControlFlow 0 52086) (- 0 70792)) (= |inline$$1_Vector_index_of'u64'$1$res1@1| true)) (=> (= |inline$$1_Vector_index_of'u64'$1$res1@1| true) (and (=> (= (ControlFlow 0 52086) (- 0 70800)) (= (seq.nth $t2@6 1) 7)) (=> (= (seq.nth $t2@6 1) 7) (and (=> (= (ControlFlow 0 52086) (- 0 70812)) (= (seq.nth $t2@6 2) 7)) (=> (= (seq.nth $t2@6 2) 7) (=> (= (ControlFlow 0 52086) (- 0 70824)) (= |inline$$1_Vector_index_of'u64'$1$res2@2| 1)))))))))))))))))
(let ((anon31_Then_correct true))
(let ((|inline$$1_Vector_index_of'u64'$1$anon3_Else_correct|  (=> (> 0 |inline$$1_Vector_index_of'u64'$1$res2@1|) (=> (and (= |inline$$1_Vector_index_of'u64'$1$res1@1| false) (= |inline$$1_Vector_index_of'u64'$1$res2@2| 0)) (and (=> (= (ControlFlow 0 51940) 52100) anon31_Then_correct) (=> (= (ControlFlow 0 51940) 52086) anon31_Else_correct))))))
(let ((|inline$$1_Vector_index_of'u64'$1$anon3_Then_correct|  (=> (>= |inline$$1_Vector_index_of'u64'$1$res2@1| 0) (=> (and (= |inline$$1_Vector_index_of'u64'$1$res1@1| true) (= |inline$$1_Vector_index_of'u64'$1$res2@2| |inline$$1_Vector_index_of'u64'$1$res2@1|)) (and (=> (= (ControlFlow 0 51950) 52100) anon31_Then_correct) (=> (= (ControlFlow 0 51950) 52086) anon31_Else_correct))))))
(let ((|inline$$1_Vector_index_of'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_index_of'u64'$1$res2@1| (|$IndexOfVec'u64'| $t2@6 7)) (and (=> (= (ControlFlow 0 51928) 51950) |inline$$1_Vector_index_of'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 51928) 51940) |inline$$1_Vector_index_of'u64'$1$anon3_Else_correct|)))))
(let ((anon30_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_index_of'u64'$0$res2@2| |inline$$1_Vector_index_of'u64'$0$res2@2|) (= |inline$$1_Vector_index_of'u64'$0$res1@1| |inline$$1_Vector_index_of'u64'$0$res1@1|)) (=> (and (and (= $t2@6 $t2@6) (|$IsValid'u64'| 7)) (and (= 7 7) (= (ControlFlow 0 51958) 51928))) |inline$$1_Vector_index_of'u64'$1$anon0_correct|)))))
(let ((anon30_Then_correct true))
(let ((|inline$$1_Vector_index_of'u64'$0$anon3_Else_correct|  (=> (> 0 |inline$$1_Vector_index_of'u64'$0$res2@1|) (=> (and (= |inline$$1_Vector_index_of'u64'$0$res1@1| false) (= |inline$$1_Vector_index_of'u64'$0$res2@2| 0)) (and (=> (= (ControlFlow 0 51791) 52124) anon30_Then_correct) (=> (= (ControlFlow 0 51791) 51958) anon30_Else_correct))))))
(let ((|inline$$1_Vector_index_of'u64'$0$anon3_Then_correct|  (=> (>= |inline$$1_Vector_index_of'u64'$0$res2@1| 0) (=> (and (= |inline$$1_Vector_index_of'u64'$0$res1@1| true) (= |inline$$1_Vector_index_of'u64'$0$res2@2| |inline$$1_Vector_index_of'u64'$0$res2@1|)) (and (=> (= (ControlFlow 0 51801) 52124) anon30_Then_correct) (=> (= (ControlFlow 0 51801) 51958) anon30_Else_correct))))))
(let ((|inline$$1_Vector_index_of'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_index_of'u64'$0$res2@1| (|$IndexOfVec'u64'| $t2@6 4)) (and (=> (= (ControlFlow 0 51779) 51801) |inline$$1_Vector_index_of'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 51779) 51791) |inline$$1_Vector_index_of'u64'$0$anon3_Else_correct|)))))
(let ((anon29_Else_correct  (=> (and (not false) (= $t2@6 (|v#$Mutation_25326| |inline$$1_Vector_reverse'u64'$0$m'@1|))) (=> (and (and (= $t2@6 $t2@6) (|$IsValid'u64'| 4)) (and (= 4 4) (= (ControlFlow 0 51809) 51779))) |inline$$1_Vector_index_of'u64'$0$anon0_correct|))))
(let ((anon29_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t22@0) (|p#$Mutation_25326| $t22@0) (ReverseVec_4388 (|v#$Mutation_25326| $t22@0)))) (and (=> (= (ControlFlow 0 51662) 52138) anon29_Then_correct) (=> (= (ControlFlow 0 51662) 51809) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (and (not false) (= $t2@5 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$5$m'@1|))) (and (= $t22@0 ($Mutation_25326 ($Local 2) (as seq.empty (Seq Int)) $t2@5)) (= (ControlFlow 0 51668) 51662))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon28_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$5$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$5$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t20@0) (|p#$Mutation_25326| $t20@0) (seq.++ (|v#$Mutation_25326| $t20@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 51591) 52152) anon28_Then_correct) (=> (= (ControlFlow 0 51591) 51668) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (not false) (=> (and (and (= $t2@4 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$4$m'@1|)) (= $t20@0 ($Mutation_25326 ($Local 2) (as seq.empty (Seq Int)) $t2@4))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 51597) 51591))) |inline$$1_Vector_push_back'u64'$5$anon0_correct|))))
(let ((anon27_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$4$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$4$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t18@0) (|p#$Mutation_25326| $t18@0) (seq.++ (|v#$Mutation_25326| $t18@0) (seq.unit 7)))) (and (=> (= (ControlFlow 0 51504) 52166) anon27_Then_correct) (=> (= (ControlFlow 0 51504) 51597) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (not false) (=> (and (and (= $t2@3 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$3$m'@1|)) (= $t18@0 ($Mutation_25326 ($Local 2) (as seq.empty (Seq Int)) $t2@3))) (and (|$IsValid'u64'| 7) (= (ControlFlow 0 51510) 51504))) |inline$$1_Vector_push_back'u64'$4$anon0_correct|))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t16@0) (|p#$Mutation_25326| $t16@0) (seq.++ (|v#$Mutation_25326| $t16@0) (seq.unit 7)))) (and (=> (= (ControlFlow 0 51417) 52180) anon26_Then_correct) (=> (= (ControlFlow 0 51417) 51510) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not false) (=> (and (and (= $t2@2 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t16@0 ($Mutation_25326 ($Local 2) (as seq.empty (Seq Int)) $t2@2))) (and (|$IsValid'u64'| 7) (= (ControlFlow 0 51423) 51417))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t14@0) (|p#$Mutation_25326| $t14@0) (seq.++ (|v#$Mutation_25326| $t14@0) (seq.unit 3)))) (and (=> (= (ControlFlow 0 51330) 52194) anon25_Then_correct) (=> (= (ControlFlow 0 51330) 51423) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (not false) (=> (and (and (= $t2@1 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t14@0 ($Mutation_25326 ($Local 2) (as seq.empty (Seq Int)) $t2@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 51336) 51330))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t12@0) (|p#$Mutation_25326| $t12@0) (seq.++ (|v#$Mutation_25326| $t12@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 51243) 52208) anon24_Then_correct) (=> (= (ControlFlow 0 51243) 51336) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not false) (=> (and (and (= $t2@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t12@0 ($Mutation_25326 ($Local 2) (as seq.empty (Seq Int)) $t2@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 51249) 51243))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t10@0) (|p#$Mutation_25326| $t10@0) (seq.++ (|v#$Mutation_25326| $t10@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 51156) 52222) anon23_Then_correct) (=> (= (ControlFlow 0 51156) 51249) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t10@0 ($Mutation_25326 ($Local 2) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 51162) 51156))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 51067) 52236) anon22_Then_correct) (=> (= (ControlFlow 0 51067) 51162) anon22_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 51073) 51067) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (and (= (seq.len (|p#$Mutation_25326| $t10)) 0) (= (seq.len (|p#$Mutation_25326| $t12)) 0)) (and (= (seq.len (|p#$Mutation_25326| $t14)) 0) (= (seq.len (|p#$Mutation_25326| $t16)) 0))) (and (and (= (seq.len (|p#$Mutation_25326| $t18)) 0) (= (seq.len (|p#$Mutation_25326| $t20)) 0)) (and (= (seq.len (|p#$Mutation_25326| $t22)) 0) (= (ControlFlow 0 51043) 51073)))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 69763) 51043) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun |inline$$1_Vector_length'u64'$1$l@1| () Int)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t4@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t4 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_length1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 70868) (let ((anon16_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|) (= (ControlFlow 0 52741) (- 0 71169)))) (= |inline$$1_Vector_length'u64'$0$l@1| (+ |inline$$1_Vector_length'u64'$1$l@1| 1)))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$1$l@1| (seq.len |inline$$1_Vector_empty'u64'$1$v@1|)) (and (=> (= (ControlFlow 0 52697) 52755) anon16_Then_correct) (=> (= (ControlFlow 0 52697) 52741) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not false) (= (ControlFlow 0 52703) 52697)) |inline$$1_Vector_length'u64'$1$anon0_correct|)))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len $t0@0)) (and (=> (= (ControlFlow 0 52653) 52775) anon15_Then_correct) (=> (= (ControlFlow 0 52653) 52703) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= (ControlFlow 0 52659) 52653)) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t4@0) (|p#$Mutation_25326| $t4@0) (seq.++ (|v#$Mutation_25326| $t4@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 52601) 52789) anon14_Then_correct) (=> (= (ControlFlow 0 52601) 52659) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t4@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 52607) 52601))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 52512) 52803) anon13_Then_correct) (=> (= (ControlFlow 0 52512) 52607) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 52518) 52512)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 52470) 52817) anon12_Then_correct) (=> (= (ControlFlow 0 52470) 52518) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 52476) 52470) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25326| $t4)) 0) (= (ControlFlow 0 52446) 52476)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 70868) 52446) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'u64'$1$l@1| () Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun $t0@2 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25326)
(declare-fun $t10@0 () T@$Mutation_25326)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun $t8@0 () T@$Mutation_25326)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t6@0 () T@$Mutation_25326)
(declare-fun _$t0 () (Seq Int))
(declare-fun $t6 () T@$Mutation_25326)
(declare-fun $t8 () T@$Mutation_25326)
(declare-fun $t10 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_length2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 71201) (let ((anon16_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|) (= (ControlFlow 0 53351) (- 0 71645)))) (= (+ |inline$$1_Vector_length'u64'$0$l@1| 3) |inline$$1_Vector_length'u64'$1$l@1|)))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$1$l@1| (seq.len $t0@2)) (and (=> (= (ControlFlow 0 53299) 53365) anon16_Then_correct) (=> (= (ControlFlow 0 53299) 53351) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (not false) (=> (and (= $t0@2 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= (ControlFlow 0 53305) 53299)) |inline$$1_Vector_length'u64'$1$anon0_correct|))))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t10@0) (|p#$Mutation_25326| $t10@0) (seq.++ (|v#$Mutation_25326| $t10@0) (seq.unit 3)))) (and (=> (= (ControlFlow 0 53247) 53385) anon15_Then_correct) (=> (= (ControlFlow 0 53247) 53305) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t10@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 53253) 53247))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t8@0) (|p#$Mutation_25326| $t8@0) (seq.++ (|v#$Mutation_25326| $t8@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 53160) 53399) anon14_Then_correct) (=> (= (ControlFlow 0 53160) 53253) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t8@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 53166) 53160))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t6@0) (|p#$Mutation_25326| $t6@0) (seq.++ (|v#$Mutation_25326| $t6@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 53073) 53413) anon13_Then_correct) (=> (= (ControlFlow 0 53073) 53166) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (= $t6@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) _$t0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 53079) 53073))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len _$t0)) (and (=> (= (ControlFlow 0 52984) 53427) anon12_Then_correct) (=> (= (ControlFlow 0 52984) 53079) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 52990) 52984)) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_25326| $t6)) 0) (= (seq.len (|p#$Mutation_25326| $t8)) 0)) (and (= (seq.len (|p#$Mutation_25326| $t10)) 0) (= (ControlFlow 0 52934) 52990))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 71201) 52934) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun |inline$$1_Vector_length'u64'$1$l@1| () Int)
(declare-fun _$t0 () (Seq Int))
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t6@0 () T@$Mutation_25326)
(declare-fun $t6 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_length3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 71677) (let ((anon10_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|)) (and (=> (= (ControlFlow 0 53804) (- 0 71931)) (= (seq.len _$t0) |inline$$1_Vector_length'u64'$0$l@1|)) (=> (= (seq.len _$t0) |inline$$1_Vector_length'u64'$0$l@1|) (=> (= (ControlFlow 0 53804) (- 0 71940)) (= (+ |inline$$1_Vector_length'u64'$0$l@1| 1) |inline$$1_Vector_length'u64'$1$l@1|))))))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$1$l@1| (seq.len $t0@0)) (and (=> (= (ControlFlow 0 53750) 53818) anon10_Then_correct) (=> (= (ControlFlow 0 53750) 53804) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= (ControlFlow 0 53756) 53750)) |inline$$1_Vector_length'u64'$1$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t6@0) (|p#$Mutation_25326| $t6@0) (seq.++ (|v#$Mutation_25326| $t6@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 53698) 53838) anon9_Then_correct) (=> (= (ControlFlow 0 53698) 53756) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (= $t6@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) _$t0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 53704) 53698))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len _$t0)) (and (=> (= (ControlFlow 0 53609) 53852) anon8_Then_correct) (=> (= (ControlFlow 0 53609) 53704) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 53615) 53609)) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25326| $t6)) 0) (= (ControlFlow 0 53557) 53615)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 71677) 53557) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun |inline$$1_Vector_length'u64'$1$l@1| () Int)
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t2@0 () (Seq Int))
(declare-fun $t7@0 () (Seq Int))
(declare-fun _$t0 () T@$Mutation_25326)
(declare-fun $t3@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_length4$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 71971) (let ((anon10_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|)) (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|))) (and (=> (= (ControlFlow 0 54239) (- 0 72252)) (= (seq.len $t2@0) |inline$$1_Vector_length'u64'$0$l@1|)) (=> (= (seq.len $t2@0) |inline$$1_Vector_length'u64'$0$l@1|) (and (=> (= (ControlFlow 0 54239) (- 0 72261)) (= (+ |inline$$1_Vector_length'u64'$0$l@1| 1) |inline$$1_Vector_length'u64'$1$l@1|)) (=> (= (+ |inline$$1_Vector_length'u64'$0$l@1| 1) |inline$$1_Vector_length'u64'$1$l@1|) (and (=> (= (ControlFlow 0 54239) (- 0 72272)) (not (= (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|) $t2@0))) (=> (not (= (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|) $t2@0)) (=> (= (ControlFlow 0 54239) (- 0 72283)) (= (seq.len (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) |inline$$1_Vector_length'u64'$1$l@1|))))))))))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$1$l@1| (seq.len $t7@0)) (and (=> (= (ControlFlow 0 54149) 54253) anon10_Then_correct) (=> (= (ControlFlow 0 54149) 54239) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t7@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= (ControlFlow 0 54155) 54149)) |inline$$1_Vector_length'u64'$1$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| _$t0) (|p#$Mutation_25326| _$t0) (seq.++ (|v#$Mutation_25326| _$t0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 54099) 54273) anon9_Then_correct) (=> (= (ControlFlow 0 54099) 54155) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 54105) 54099))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|)))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len $t3@0)) (and (=> (= (ControlFlow 0 54020) 54287) anon8_Then_correct) (=> (= (ControlFlow 0 54020) 54105) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_25326| _$t0) ($Param 0)) (=> (and (|$IsValid'vec'u64''| (|v#$Mutation_25326| _$t0)) (= $t2@0 (|v#$Mutation_25326| _$t0))) (=> (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_25326| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (= $t3@0 (|v#$Mutation_25326| _$t0)) (= (ControlFlow 0 54026) 54020))) |inline$$1_Vector_length'u64'$0$anon0_correct|)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 71971) 54026) anon0$1_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25326)
(declare-fun $t0@1 () (Seq Int))
(declare-fun $t7@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25326)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t3@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25326)
(declare-fun $t5 () T@$Mutation_25326)
(declare-fun $t7 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_neq1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 72314) (let ((anon16_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t0@1 $t0@1)) (and (= $t1@0 $t1@0) (= (ControlFlow 0 54789) (- 0 72729)))) (not (= $t0@1 $t1@0))))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t7@0) (|p#$Mutation_25326| $t7@0) (seq.++ (|v#$Mutation_25326| $t7@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 54737) 54803) anon16_Then_correct) (=> (= (ControlFlow 0 54737) 54789) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 54743) 54737))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t5@0) (|p#$Mutation_25326| $t5@0) (seq.++ (|v#$Mutation_25326| $t5@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 54650) 54823) anon15_Then_correct) (=> (= (ControlFlow 0 54650) 54743) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 54656) 54650))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t3@0) (|p#$Mutation_25326| $t3@0) (seq.++ (|v#$Mutation_25326| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 54563) 54837) anon14_Then_correct) (=> (= (ControlFlow 0 54563) 54656) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 54569) 54563))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 54474) 54851) anon13_Then_correct) (=> (= (ControlFlow 0 54474) 54569) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 54480) 54474)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 54432) 54865) anon12_Then_correct) (=> (= (ControlFlow 0 54432) 54480) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 54438) 54432) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_25326| $t3)) 0) (= (seq.len (|p#$Mutation_25326| $t5)) 0)) (and (= (seq.len (|p#$Mutation_25326| $t7)) 0) (= (ControlFlow 0 54408) 54438))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 72314) 54408) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun $t0@0 () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t3@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25326)
(declare-fun $t5 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_neq2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 72758) (let ((anon13_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t0@0 $t0@0)) (and (= $t1@0 $t1@0) (= (ControlFlow 0 55309) (- 0 73080)))) (not (= $t0@0 $t1@0))))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t5@0) (|p#$Mutation_25326| $t5@0) (seq.++ (|v#$Mutation_25326| $t5@0) (seq.unit 0)))) (and (=> (= (ControlFlow 0 55257) 55323) anon13_Then_correct) (=> (= (ControlFlow 0 55257) 55309) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 55263) 55257))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t3@0) (|p#$Mutation_25326| $t3@0) (seq.++ (|v#$Mutation_25326| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 55170) 55343) anon12_Then_correct) (=> (= (ControlFlow 0 55170) 55263) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 55176) 55170))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 55081) 55357) anon11_Then_correct) (=> (= (ControlFlow 0 55081) 55176) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 55087) 55081)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 55039) 55371) anon10_Then_correct) (=> (= (ControlFlow 0 55039) 55087) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 55045) 55039) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25326| $t3)) 0) (=> (and (= (seq.len (|p#$Mutation_25326| $t5)) 0) (= (ControlFlow 0 55015) 55045)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 72758) 55015) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun $t0@0 () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t3@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25326)
(declare-fun $t5 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_push$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 73108) (let ((anon13_Else_correct  (=> (and (and (not false) (= $t1@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$1$m'@1|))) (and (= $t0@0 $t0@0) (= $t1@0 $t1@0))) (and (=> (= (ControlFlow 0 55817) (- 0 73430)) (= $t0@0 $t1@0)) (=> (= $t0@0 $t1@0) (and (=> (= (ControlFlow 0 55817) (- 0 73437)) (= (seq.len $t0@0) 1)) (=> (= (seq.len $t0@0) 1) (=> (= (ControlFlow 0 55817) (- 0 73447)) (= (seq.len $t1@0) 1)))))))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t5@0) (|p#$Mutation_25326| $t5@0) (seq.++ (|v#$Mutation_25326| $t5@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 55747) 55831) anon13_Then_correct) (=> (= (ControlFlow 0 55747) 55817) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 55753) 55747))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t3@0) (|p#$Mutation_25326| $t3@0) (seq.++ (|v#$Mutation_25326| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 55660) 55851) anon12_Then_correct) (=> (= (ControlFlow 0 55660) 55753) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 55666) 55660))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 55571) 55865) anon11_Then_correct) (=> (= (ControlFlow 0 55571) 55666) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 55577) 55571)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 55529) 55879) anon10_Then_correct) (=> (= (ControlFlow 0 55529) 55577) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 55535) 55529) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25326| $t3)) 0) (=> (and (= (seq.len (|p#$Mutation_25326| $t5)) 0) (= (ControlFlow 0 55505) 55535)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 73108) 55505) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'@2| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'@0| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$e@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t6@0 () T@$Mutation_25326)
(declare-fun $abort_code@0 () Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t4@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t4 () T@$Mutation_25326)
(declare-fun $t6 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_push_pop$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 73476) (let ((anon13_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= $t0@1 (|v#$Mutation_25326| |inline$$1_Vector_pop_back'u64'$0$m'@2|)) (= $t0@1 $t0@1)) (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= (ControlFlow 0 56429) (- 0 73894)))) (= $t0@1 |inline$$1_Vector_empty'u64'$1$v@1|)))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_pop_back'u64'$0$m'@2| |inline$$1_Vector_pop_back'u64'$0$m'@0|)) (and (=> (= (ControlFlow 0 56379) 56443) anon13_Then_correct) (=> (= (ControlFlow 0 56379) 56429) anon13_Else_correct))))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$0$len@1| 0) (= (ControlFlow 0 56377) 56379)) |inline$$1_Vector_pop_back'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Else_correct|  (=> (and (not (= |inline$$1_Vector_pop_back'u64'$0$len@1| 0)) (= |inline$$1_Vector_pop_back'u64'$0$e@1| (seq.nth |inline$$1_Vector_pop_back'u64'$0$v@1| (- |inline$$1_Vector_pop_back'u64'$0$len@1| 1)))) (=> (and (and (= |inline$$1_Vector_pop_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t6@0) (|p#$Mutation_25326| $t6@0) (seq.extract |inline$$1_Vector_pop_back'u64'$0$v@1| 0 (- (- (seq.len |inline$$1_Vector_pop_back'u64'$0$v@1|) 1) 0)))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_pop_back'u64'$0$m'@2| |inline$$1_Vector_pop_back'u64'$0$m'@1|))) (and (=> (= (ControlFlow 0 56329) 56443) anon13_Then_correct) (=> (= (ControlFlow 0 56329) 56429) anon13_Else_correct))))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$0$v@1| (|v#$Mutation_25326| $t6@0)) (= |inline$$1_Vector_pop_back'u64'$0$len@1| (seq.len |inline$$1_Vector_pop_back'u64'$0$v@1|))) (and (=> (= (ControlFlow 0 56303) 56377) |inline$$1_Vector_pop_back'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 56303) 56329) |inline$$1_Vector_pop_back'u64'$0$anon3_Else_correct|)))))
(let ((anon12_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (and (= $t6@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@0)) (= (ControlFlow 0 56387) 56303))) |inline$$1_Vector_pop_back'u64'$0$anon0_correct|)))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t4@0) (|p#$Mutation_25326| $t4@0) (seq.++ (|v#$Mutation_25326| $t4@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 56170) 56463) anon12_Then_correct) (=> (= (ControlFlow 0 56170) 56387) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t4@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 56176) 56170))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 56081) 56477) anon11_Then_correct) (=> (= (ControlFlow 0 56081) 56176) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 56087) 56081)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 56039) 56491) anon10_Then_correct) (=> (= (ControlFlow 0 56039) 56087) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 56045) 56039) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25326| $t4)) 0) (=> (and (= (seq.len (|p#$Mutation_25326| $t6)) 0) (= (ControlFlow 0 56015) 56045)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 73476) 56015) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t4@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t4 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_reverse1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 73920) (let ((anon10_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_reverse'u64'$0$m'@1|)) (= $t0@0 $t0@0)) (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= (ControlFlow 0 56809) (- 0 74132)))) (= $t0@0 |inline$$1_Vector_empty'u64'$1$v@1|)))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t4@0) (|p#$Mutation_25326| $t4@0) (ReverseVec_4388 (|v#$Mutation_25326| $t4@0)))) (and (=> (= (ControlFlow 0 56761) 56823) anon10_Then_correct) (=> (= (ControlFlow 0 56761) 56809) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|)) (and (= $t4@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|)) (= (ControlFlow 0 56767) 56761))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 56688) 56843) anon9_Then_correct) (=> (= (ControlFlow 0 56688) 56767) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 56694) 56688)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 56646) 56857) anon8_Then_correct) (=> (= (ControlFlow 0 56646) 56694) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 56652) 56646) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25326| $t4)) 0) (= (ControlFlow 0 56622) 56652)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 73920) 56622) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@2 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t1@1 () (Seq Int))
(declare-fun $t11@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_25326)
(declare-fun $t0@1 () (Seq Int))
(declare-fun $t9@0 () T@$Mutation_25326)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25326)
(declare-fun $t7@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25326)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t3@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25326)
(declare-fun $t5 () T@$Mutation_25326)
(declare-fun $t7 () T@$Mutation_25326)
(declare-fun $t9 () T@$Mutation_25326)
(declare-fun $t11 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_reverse2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 74157) (let ((anon22_Else_correct  (=> (not false) (=> (and (and (= $t0@2 (|v#$Mutation_25326| |inline$$1_Vector_reverse'u64'$0$m'@1|)) (= $t0@2 $t0@2)) (and (= $t1@1 $t1@1) (= (ControlFlow 0 57527) (- 0 74745)))) (= $t0@2 $t1@1)))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t11@0) (|p#$Mutation_25326| $t11@0) (ReverseVec_4388 (|v#$Mutation_25326| $t11@0)))) (and (=> (= (ControlFlow 0 57477) 57541) anon22_Then_correct) (=> (= (ControlFlow 0 57477) 57527) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (and (not false) (= $t1@1 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (and (= $t11@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@1)) (= (ControlFlow 0 57483) 57477))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t9@0) (|p#$Mutation_25326| $t9@0) (seq.++ (|v#$Mutation_25326| $t9@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 57406) 57561) anon21_Then_correct) (=> (= (ControlFlow 0 57406) 57483) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t9@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 57412) 57406))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t7@0) (|p#$Mutation_25326| $t7@0) (seq.++ (|v#$Mutation_25326| $t7@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 57319) 57575) anon20_Then_correct) (=> (= (ControlFlow 0 57319) 57412) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 57325) 57319))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t5@0) (|p#$Mutation_25326| $t5@0) (seq.++ (|v#$Mutation_25326| $t5@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 57232) 57589) anon19_Then_correct) (=> (= (ControlFlow 0 57232) 57325) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 57238) 57232))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t3@0) (|p#$Mutation_25326| $t3@0) (seq.++ (|v#$Mutation_25326| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 57145) 57603) anon18_Then_correct) (=> (= (ControlFlow 0 57145) 57238) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 57151) 57145))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 57056) 57617) anon17_Then_correct) (=> (= (ControlFlow 0 57056) 57151) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 57062) 57056)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 57014) 57631) anon16_Then_correct) (=> (= (ControlFlow 0 57014) 57062) anon16_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 57020) 57014) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25326| $t3)) 0) (= (seq.len (|p#$Mutation_25326| $t5)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_25326| $t7)) 0) (= (seq.len (|p#$Mutation_25326| $t9)) 0)) (and (= (seq.len (|p#$Mutation_25326| $t11)) 0) (= (ControlFlow 0 56990) 57020))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 74157) 56990) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@2 () (Seq Int))
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t1@1 () (Seq Int))
(declare-fun $t11@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_25326)
(declare-fun $t0@1 () (Seq Int))
(declare-fun $t9@0 () T@$Mutation_25326)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25326)
(declare-fun $t7@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25326)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t3@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25326)
(declare-fun $t5 () T@$Mutation_25326)
(declare-fun $t7 () T@$Mutation_25326)
(declare-fun $t9 () T@$Mutation_25326)
(declare-fun $t11 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_reverse3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 74774) (let ((anon22_Else_correct  (=> (not false) (=> (and (and (= $t0@2 (|v#$Mutation_25326| |inline$$1_Vector_reverse'u64'$0$m'@1|)) (= $t0@2 $t0@2)) (and (= $t1@1 $t1@1) (= (ControlFlow 0 58370) (- 0 75362)))) (not (= $t0@2 $t1@1))))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t11@0) (|p#$Mutation_25326| $t11@0) (ReverseVec_4388 (|v#$Mutation_25326| $t11@0)))) (and (=> (= (ControlFlow 0 58318) 58384) anon22_Then_correct) (=> (= (ControlFlow 0 58318) 58370) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (and (not false) (= $t1@1 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (and (= $t11@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@1)) (= (ControlFlow 0 58324) 58318))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t9@0) (|p#$Mutation_25326| $t9@0) (seq.++ (|v#$Mutation_25326| $t9@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 58247) 58404) anon21_Then_correct) (=> (= (ControlFlow 0 58247) 58324) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t9@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 58253) 58247))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t7@0) (|p#$Mutation_25326| $t7@0) (seq.++ (|v#$Mutation_25326| $t7@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 58160) 58418) anon20_Then_correct) (=> (= (ControlFlow 0 58160) 58253) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 58166) 58160))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t5@0) (|p#$Mutation_25326| $t5@0) (seq.++ (|v#$Mutation_25326| $t5@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 58073) 58432) anon19_Then_correct) (=> (= (ControlFlow 0 58073) 58166) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 58079) 58073))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t3@0) (|p#$Mutation_25326| $t3@0) (seq.++ (|v#$Mutation_25326| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 57986) 58446) anon18_Then_correct) (=> (= (ControlFlow 0 57986) 58079) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 57992) 57986))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 57897) 58460) anon17_Then_correct) (=> (= (ControlFlow 0 57897) 57992) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 57903) 57897)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 57855) 58474) anon16_Then_correct) (=> (= (ControlFlow 0 57855) 57903) anon16_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 57861) 57855) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25326| $t3)) 0) (= (seq.len (|p#$Mutation_25326| $t5)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_25326| $t7)) 0) (= (seq.len (|p#$Mutation_25326| $t9)) 0)) (and (= (seq.len (|p#$Mutation_25326| $t11)) 0) (= (ControlFlow 0 57831) 57861))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 74774) 57831) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@5 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$7$m'@1| () T@$Mutation_25326)
(declare-fun $t0@1 () (Seq Int))
(declare-fun $t17@0 () T@$Mutation_25326)
(declare-fun $t1@4 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$6$m'@1| () T@$Mutation_25326)
(declare-fun $t15@0 () T@$Mutation_25326)
(declare-fun $t1@3 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$5$m'@1| () T@$Mutation_25326)
(declare-fun $t13@0 () T@$Mutation_25326)
(declare-fun $t1@2 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$4$m'@1| () T@$Mutation_25326)
(declare-fun $t11@0 () T@$Mutation_25326)
(declare-fun $t1@1 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_25326)
(declare-fun $t9@0 () T@$Mutation_25326)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25326)
(declare-fun $t7@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25326)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t3@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25326)
(declare-fun $t5 () T@$Mutation_25326)
(declare-fun $t7 () T@$Mutation_25326)
(declare-fun $t9 () T@$Mutation_25326)
(declare-fun $t11 () T@$Mutation_25326)
(declare-fun $t13 () T@$Mutation_25326)
(declare-fun $t15 () T@$Mutation_25326)
(declare-fun $t17 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_slice$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 75393) (let ((anon31_Else_correct  (=> (and (and (not false) (= $t1@5 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$7$m'@1|))) (and (= $t0@1 $t0@1) (= $t1@5 $t1@5))) (and (=> (= (ControlFlow 0 59620) (- 0 76273)) (= $t0@1 (seq.extract $t1@5 (|lb#$Range| ($Range 1 3)) (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3)))))) (=> (= $t0@1 (seq.extract $t1@5 (|lb#$Range| ($Range 1 3)) (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3))))) (and (=> (= (ControlFlow 0 59620) (- 0 76288)) (not (= $t0@1 (seq.extract $t1@5 (|lb#$Range| ($Range 0 2)) (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2))))))) (=> (not (= $t0@1 (seq.extract $t1@5 (|lb#$Range| ($Range 0 2)) (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2)))))) (and (=> (= (ControlFlow 0 59620) (- 0 76305)) (= $t0@1 (seq.extract $t1@5 (|lb#$Range| ($Range 4 6)) (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6)))))) (=> (= $t0@1 (seq.extract $t1@5 (|lb#$Range| ($Range 4 6)) (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))))) (and (=> (= (ControlFlow 0 59620) (- 0 76320)) (= (seq.extract $t0@1 (|lb#$Range| ($Range 0 2)) (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2)))) (seq.extract $t1@5 (|lb#$Range| ($Range 4 6)) (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6)))))) (=> (= (seq.extract $t0@1 (|lb#$Range| ($Range 0 2)) (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2)))) (seq.extract $t1@5 (|lb#$Range| ($Range 4 6)) (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))))) (and (=> (= (ControlFlow 0 59620) (- 0 76343)) (= (seq.extract $t0@1 (|lb#$Range| ($Range 1 2)) (- (|ub#$Range| ($Range 1 2)) (|lb#$Range| ($Range 1 2)))) (seq.extract $t1@5 (|lb#$Range| ($Range 2 3)) (- (|ub#$Range| ($Range 2 3)) (|lb#$Range| ($Range 2 3)))))) (=> (= (seq.extract $t0@1 (|lb#$Range| ($Range 1 2)) (- (|ub#$Range| ($Range 1 2)) (|lb#$Range| ($Range 1 2)))) (seq.extract $t1@5 (|lb#$Range| ($Range 2 3)) (- (|ub#$Range| ($Range 2 3)) (|lb#$Range| ($Range 2 3))))) (=> (= (ControlFlow 0 59620) (- 0 76366)) (= (seq.extract $t1@5 (|lb#$Range| ($Range 1 3)) (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3)))) (seq.extract $t1@5 (|lb#$Range| ($Range 4 6)) (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6)))))))))))))))))))
(let ((anon31_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$7$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$7$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t17@0) (|p#$Mutation_25326| $t17@0) (seq.++ (|v#$Mutation_25326| $t17@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 59456) 59634) anon31_Then_correct) (=> (= (ControlFlow 0 59456) 59620) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (not false) (=> (and (and (= $t1@4 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$6$m'@1|)) (= $t17@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) $t1@4))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 59462) 59456))) |inline$$1_Vector_push_back'u64'$7$anon0_correct|))))
(let ((anon30_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$6$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$6$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t15@0) (|p#$Mutation_25326| $t15@0) (seq.++ (|v#$Mutation_25326| $t15@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 59369) 59654) anon30_Then_correct) (=> (= (ControlFlow 0 59369) 59462) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (not false) (=> (and (and (= $t1@3 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$5$m'@1|)) (= $t15@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) $t1@3))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 59375) 59369))) |inline$$1_Vector_push_back'u64'$6$anon0_correct|))))
(let ((anon29_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$5$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$5$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t13@0) (|p#$Mutation_25326| $t13@0) (seq.++ (|v#$Mutation_25326| $t13@0) (seq.unit 3)))) (and (=> (= (ControlFlow 0 59282) 59668) anon29_Then_correct) (=> (= (ControlFlow 0 59282) 59375) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (not false) (=> (and (and (= $t1@2 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$4$m'@1|)) (= $t13@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) $t1@2))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 59288) 59282))) |inline$$1_Vector_push_back'u64'$5$anon0_correct|))))
(let ((anon28_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$4$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$4$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t11@0) (|p#$Mutation_25326| $t11@0) (seq.++ (|v#$Mutation_25326| $t11@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 59195) 59682) anon28_Then_correct) (=> (= (ControlFlow 0 59195) 59288) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (not false) (=> (and (and (= $t1@1 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$3$m'@1|)) (= $t11@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) $t1@1))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 59201) 59195))) |inline$$1_Vector_push_back'u64'$4$anon0_correct|))))
(let ((anon27_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t9@0) (|p#$Mutation_25326| $t9@0) (seq.++ (|v#$Mutation_25326| $t9@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 59108) 59696) anon27_Then_correct) (=> (= (ControlFlow 0 59108) 59201) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t9@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 59114) 59108))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t7@0) (|p#$Mutation_25326| $t7@0) (seq.++ (|v#$Mutation_25326| $t7@0) (seq.unit 0)))) (and (=> (= (ControlFlow 0 59021) 59710) anon26_Then_correct) (=> (= (ControlFlow 0 59021) 59114) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 59027) 59021))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t5@0) (|p#$Mutation_25326| $t5@0) (seq.++ (|v#$Mutation_25326| $t5@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 58934) 59724) anon25_Then_correct) (=> (= (ControlFlow 0 58934) 59027) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 58940) 58934))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t3@0) (|p#$Mutation_25326| $t3@0) (seq.++ (|v#$Mutation_25326| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 58847) 59738) anon24_Then_correct) (=> (= (ControlFlow 0 58847) 58940) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 58853) 58847))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 58758) 59752) anon23_Then_correct) (=> (= (ControlFlow 0 58758) 58853) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 58764) 58758)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 58716) 59766) anon22_Then_correct) (=> (= (ControlFlow 0 58716) 58764) anon22_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 58722) 58716) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25326| $t3)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_25326| $t5)) 0) (= (seq.len (|p#$Mutation_25326| $t7)) 0)) (and (= (seq.len (|p#$Mutation_25326| $t9)) 0) (= (seq.len (|p#$Mutation_25326| $t11)) 0))) (and (and (= (seq.len (|p#$Mutation_25326| $t13)) 0) (= (seq.len (|p#$Mutation_25326| $t15)) 0)) (and (= (seq.len (|p#$Mutation_25326| $t17)) 0) (= (ControlFlow 0 58692) 58722)))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 75393) 58692) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t0@3 () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@2| () T@$Mutation_25326)
(declare-fun $t1@1 () (Seq Int))
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@0| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_swap'u64'$1$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun $t14@0 () T@$Mutation_25326)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t0@2 () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@2| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@0| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t11@0 () T@$Mutation_25326)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_25326)
(declare-fun $t0@1 () (Seq Int))
(declare-fun $t9@0 () T@$Mutation_25326)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25326)
(declare-fun $t7@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () (Seq Int))
(declare-fun $t5@0 () T@$Mutation_25326)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t3@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t3 () T@$Mutation_25326)
(declare-fun $t5 () T@$Mutation_25326)
(declare-fun $t7 () T@$Mutation_25326)
(declare-fun $t9 () T@$Mutation_25326)
(declare-fun $t11 () T@$Mutation_25326)
(declare-fun $t14 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_swap$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 76414) (let ((anon25_Else_correct  (=> (not $abort_flag@1) (=> (and (and (= $t0@3 (|v#$Mutation_25326| |inline$$1_Vector_swap'u64'$1$m'@2|)) (= $t0@3 $t0@3)) (and (= $t1@1 $t1@1) (= (ControlFlow 0 60996) (- 0 77324)))) (= $t0@3 $t1@1)))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Vector_swap'u64'$1$m'@2| |inline$$1_Vector_swap'u64'$1$m'@0|)) (and (=> (= (ControlFlow 0 60946) 61010) anon25_Then_correct) (=> (= (ControlFlow 0 60946) 60996) anon25_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Then_correct|  (=> (and (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|)))) (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|))))) (= (ControlFlow 0 60944) 60946)) |inline$$1_Vector_swap'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Else_correct|  (=> (not (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|)))) (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t14@0) (|p#$Mutation_25326| $t14@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| (+ 1 1) (- (seq.len |inline$$1_Vector_swap'u64'$1$v@1|) (+ 1 1)))) 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| 1)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| (+ 1 1) (- (seq.len |inline$$1_Vector_swap'u64'$1$v@1|) (+ 1 1)))) (+ 0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| (+ 1 1) (- (seq.len |inline$$1_Vector_swap'u64'$1$v@1|) (+ 1 1))))) (+ 0 1)))))) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$1_Vector_swap'u64'$1$m'@2| |inline$$1_Vector_swap'u64'$1$m'@1|))) (and (=> (= (ControlFlow 0 60884) 61010) anon25_Then_correct) (=> (= (ControlFlow 0 60884) 60996) anon25_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$1$v@1| (|v#$Mutation_25326| $t14@0)) (and (=> (= (ControlFlow 0 60850) 60944) |inline$$1_Vector_swap'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 60850) 60884) |inline$$1_Vector_swap'u64'$1$anon3_Else_correct|)))))
(let ((anon24_Else_correct  (=> (and (not $abort_flag@0) (= $t0@2 (|v#$Mutation_25326| |inline$$1_Vector_swap'u64'$0$m'@2|))) (=> (and (and (= $t14@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@2)) (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 60952) 60850))) |inline$$1_Vector_swap'u64'$1$anon0_correct|))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@0|)) (and (=> (= (ControlFlow 0 60696) 61030) anon24_Then_correct) (=> (= (ControlFlow 0 60696) 60952) anon24_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|))))) (= (ControlFlow 0 60694) 60696)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (not (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t11@0) (|p#$Mutation_25326| $t11@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1)))) 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1)))) (+ 0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1))))) (+ 0 1)))))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@1|))) (and (=> (= (ControlFlow 0 60634) 61030) anon24_Then_correct) (=> (= (ControlFlow 0 60634) 60952) anon24_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_25326| $t11@0)) (and (=> (= (ControlFlow 0 60600) 60694) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 60600) 60634) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon23_Else_correct  (=> (and (not false) (= $t1@1 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (=> (and (and (= $t11@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@1)) (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 60702) 60600))) |inline$$1_Vector_swap'u64'$0$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t9@0) (|p#$Mutation_25326| $t9@0) (seq.++ (|v#$Mutation_25326| $t9@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 60446) 61044) anon23_Then_correct) (=> (= (ControlFlow 0 60446) 60702) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t9@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 60452) 60446))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t7@0) (|p#$Mutation_25326| $t7@0) (seq.++ (|v#$Mutation_25326| $t7@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 60359) 61058) anon22_Then_correct) (=> (= (ControlFlow 0 60359) 60452) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_25326 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 60365) 60359))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t5@0) (|p#$Mutation_25326| $t5@0) (seq.++ (|v#$Mutation_25326| $t5@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 60272) 61072) anon21_Then_correct) (=> (= (ControlFlow 0 60272) 60365) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 60278) 60272))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t3@0) (|p#$Mutation_25326| $t3@0) (seq.++ (|v#$Mutation_25326| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 60185) 61086) anon20_Then_correct) (=> (= (ControlFlow 0 60185) 60278) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 60191) 60185))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 60096) 61100) anon19_Then_correct) (=> (= (ControlFlow 0 60096) 60191) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 60102) 60096)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 60054) 61114) anon18_Then_correct) (=> (= (ControlFlow 0 60054) 60102) anon18_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 60060) 60054) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25326| $t3)) 0) (=> (and (= (seq.len (|p#$Mutation_25326| $t5)) 0) (= (seq.len (|p#$Mutation_25326| $t7)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_25326| $t9)) 0) (= (seq.len (|p#$Mutation_25326| $t11)) 0)) (and (= (seq.len (|p#$Mutation_25326| $t14)) 0) (= (ControlFlow 0 60030) 60060))) anon0$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 76414) 60030) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t4@0 () T@$Mutation_25326)
(declare-fun $abort_code@0 () Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t2@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_25326)
(declare-fun $t4 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_swap_abort1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 77351) (let ((L2_correct  (=> (= (ControlFlow 0 61741) (- 0 77714)) true)))
(let ((anon10_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 61731) 61741)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t0@1 (|v#$Mutation_25326| |inline$$1_Vector_swap'u64'$0$m'|)) (= (ControlFlow 0 61717) (- 0 77707))) (not true)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 61691) 61731) anon10_Then_correct) (=> (= (ControlFlow 0 61691) 61717) anon10_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|))))) (= (ControlFlow 0 61689) 61691)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (and (and (not (or (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))))) (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t4@0) (|p#$Mutation_25326| $t4@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 1)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1)))) 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 1)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1)))) (+ 1 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 1)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 0 1))))) (+ 1 1))))))) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 61629) 61731) anon10_Then_correct) (=> (= (ControlFlow 0 61629) 61717) anon10_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_25326| $t4@0)) (and (=> (= (ControlFlow 0 61595) 61689) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 61595) 61629) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon9_Else_correct  (=> (and (not false) (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (=> (and (and (= $t4@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@0)) (|$IsValid'u64'| 1)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 61697) 61595))) |inline$$1_Vector_swap'u64'$0$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t2@0) (|p#$Mutation_25326| $t2@0) (seq.++ (|v#$Mutation_25326| $t2@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 61441) 61755) anon9_Then_correct) (=> (= (ControlFlow 0 61441) 61697) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 61447) 61441))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 61352) 61769) anon8_Then_correct) (=> (= (ControlFlow 0 61352) 61447) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 61358) 61352) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25326| $t2)) 0) (=> (and (= (seq.len (|p#$Mutation_25326| $t4)) 0) (= (ControlFlow 0 61328) 61358)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 77351) 61328) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'| () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t4@0 () T@$Mutation_25326)
(declare-fun $abort_code@0 () Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t2@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_25326)
(declare-fun $t4 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_swap_abort2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 77731) (let ((L2_correct  (=> (= (ControlFlow 0 62295) (- 0 78094)) true)))
(let ((anon10_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 62285) 62295)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t0@1 (|v#$Mutation_25326| |inline$$1_Vector_swap'u64'$0$m'|)) (= (ControlFlow 0 62271) (- 0 78087))) (not true)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 62245) 62285) anon10_Then_correct) (=> (= (ControlFlow 0 62245) 62271) anon10_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|))))) (= (ControlFlow 0 62243) 62245)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (and (and (not (or (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))))) (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t4@0) (|p#$Mutation_25326| $t4@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 1 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 1 1)))) 0 (- 0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 1)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 1 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 1 1)))) (+ 0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- 1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| 0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ 1 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ 1 1))))) (+ 0 1))))))) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 62183) 62285) anon10_Then_correct) (=> (= (ControlFlow 0 62183) 62271) anon10_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_25326| $t4@0)) (and (=> (= (ControlFlow 0 62149) 62243) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 62149) 62183) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon9_Else_correct  (=> (and (not false) (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (=> (and (and (= $t4@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@0)) (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 62251) 62149))) |inline$$1_Vector_swap'u64'$0$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t2@0) (|p#$Mutation_25326| $t2@0) (seq.++ (|v#$Mutation_25326| $t2@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 61995) 62309) anon9_Then_correct) (=> (= (ControlFlow 0 61995) 62251) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 62001) 61995))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 61906) 62323) anon8_Then_correct) (=> (= (ControlFlow 0 61906) 62001) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 61912) 61906) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_25326| $t2)) 0) (=> (and (= (seq.len (|p#$Mutation_25326| $t4)) 0) (= (ControlFlow 0 61882) 61912)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 77731) 61882) anon0_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t1 () T@$Mutation_25326)
(declare-fun _$t0 () (Seq Int))
(declare-fun $t2@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_vector_equal$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 78110) (let ((anon0$1_correct  (=> (= (|l#$Mutation_25326| _$t1) ($Param 1)) (=> (and (and (and (|$IsValid'vec'u64''| _$t0) (|$IsValid'vec'u64''| (|v#$Mutation_25326| _$t1))) (and (= $t2@0 (|v#$Mutation_25326| _$t1)) (= _$t0 _$t0))) (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_25326| _$t1)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_25326| _$t1)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)))) (and (=> (= (ControlFlow 0 62580) (- 0 78215)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 62580) (- 0 78222)) (= _$t0 _$t0)) (=> (= _$t0 _$t0) (and (=> (= (ControlFlow 0 62580) (- 0 78229)) (= _$t0 (seq.extract _$t0 (|lb#$Range| ($Range 0 (seq.len _$t0))) (- (|ub#$Range| ($Range 0 (seq.len _$t0))) (|lb#$Range| ($Range 0 (seq.len _$t0))))))) (=> (= _$t0 (seq.extract _$t0 (|lb#$Range| ($Range 0 (seq.len _$t0))) (- (|ub#$Range| ($Range 0 (seq.len _$t0))) (|lb#$Range| ($Range 0 (seq.len _$t0)))))) (and (=> (= (ControlFlow 0 62580) (- 0 78245)) (= (|v#$Mutation_25326| _$t1) (|v#$Mutation_25326| _$t1))) (=> (= (|v#$Mutation_25326| _$t1) (|v#$Mutation_25326| _$t1)) (and (=> (= (ControlFlow 0 62580) (- 0 78256)) (= $t2@0 $t2@0)) (=> (= $t2@0 $t2@0) (and (=> (= (ControlFlow 0 62580) (- 0 78263)) (= (|v#$Mutation_25326| _$t1) (seq.extract (|v#$Mutation_25326| _$t1) (|lb#$Range| ($Range 0 (seq.len (|v#$Mutation_25326| _$t1)))) (- (|ub#$Range| ($Range 0 (seq.len (|v#$Mutation_25326| _$t1)))) (|lb#$Range| ($Range 0 (seq.len (|v#$Mutation_25326| _$t1)))))))) (=> (= (|v#$Mutation_25326| _$t1) (seq.extract (|v#$Mutation_25326| _$t1) (|lb#$Range| ($Range 0 (seq.len (|v#$Mutation_25326| _$t1)))) (- (|ub#$Range| ($Range 0 (seq.len (|v#$Mutation_25326| _$t1)))) (|lb#$Range| ($Range 0 (seq.len (|v#$Mutation_25326| _$t1))))))) (=> (= (ControlFlow 0 62580) (- 0 78285)) (= $t2@0 (seq.extract $t2@0 (|lb#$Range| ($Range 0 (seq.len $t2@0))) (- (|ub#$Range| ($Range 0 (seq.len $t2@0))) (|lb#$Range| ($Range 0 (seq.len $t2@0)))))))))))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 78110) 62580) anon0$1_correct)))
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
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
 (=> (= (ControlFlow 0 0) 78310) true)
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
(declare-datatypes ((T@$Mutation_25326 0)) ((($Mutation_25326 (|l#$Mutation_25326| T@$Location) (|p#$Mutation_25326| (Seq Int)) (|v#$Mutation_25326| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24019 0)) ((($Mutation_24019 (|l#$Mutation_24019| T@$Location) (|p#$Mutation_24019| (Seq Int)) (|v#$Mutation_24019| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23307 0)) ((($Mutation_23307 (|l#$Mutation_23307| T@$Location) (|p#$Mutation_23307| (Seq Int)) (|v#$Mutation_23307| (Seq |T@#0|)) ) ) ))
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
 :qid |simplevectorclientz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |simplevectorclientz3bpl.590:13|
 :skolemid |15|
))))
 :qid |simplevectorclientz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |simplevectorclientz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |simplevectorclientz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |simplevectorclientz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |simplevectorclientz3bpl.770:13|
 :skolemid |20|
))))
 :qid |simplevectorclientz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |simplevectorclientz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |simplevectorclientz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |simplevectorclientz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |simplevectorclientz3bpl.950:13|
 :skolemid |25|
))))
 :qid |simplevectorclientz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |simplevectorclientz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |simplevectorclientz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |simplevectorclientz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |simplevectorclientz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |simplevectorclientz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientz3bpl.1264:42|
 :skolemid |34|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientz3bpl.1277:41|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq |T@#0|)) ) (! (let ((r@@1 (ReverseVec_19250 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |simplevectorclientz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |simplevectorclientz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_19250 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |simplevectorclientz3bpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Undetermined

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@2 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_25326)
(declare-fun $t6@0 () T@$Mutation_25326)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_25326)
(declare-fun $t4@0 () T@$Mutation_25326)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_25326)
(declare-fun $t2@0 () T@$Mutation_25326)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_25326)
(declare-fun $t4 () T@$Mutation_25326)
(declare-fun $t6 () T@$Mutation_25326)
(push 1)
(set-info :boogie-vc-id $42_TestVector_vector_of_proper_positives$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 78680) (let ((anon13_Else_correct  (=> (not false) (=> (and (= $t0@2 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t0@2 $t0@2)) (and (=> (= (ControlFlow 0 63642) (- 0 79043)) (let (($range_0 $t0@2))
(forall (($i_1 Int) ) (!  (=> (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let ((n (seq.nth $range_0 $i_1)))
(> n 0)))
 :qid |simplevectorclientz3bpl.6065:37|
 :skolemid |41|
)))) (=> (let (($range_0 $t0@2))
(forall (($i_1@@0 Int) ) (!  (=> (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0))) (let ((n (seq.nth $range_0 $i_1@@0)))
(> n 0)))
 :qid |simplevectorclientz3bpl.6065:37|
 :skolemid |41|
))) (=> (= (ControlFlow 0 63642) (- 0 79074)) (let (($range_0@@0 ($Range 0 (seq.len $t0@2))))
(let (($range_1 ($Range 0 (seq.len $t0@2))))
(forall (($i_2 Int) ($i_3 Int) ) (!  (=> ($InRange $range_0@@0 $i_2) (=> ($InRange $range_1 $i_3) (let ((i@@12 $i_2))
(let ((j@@2 $i_3))
 (=> (= (seq.nth $t0@2 i@@12) (seq.nth $t0@2 j@@2)) (= i@@12 j@@2))))))
 :qid |simplevectorclientz3bpl.6071:97|
 :skolemid |42|
)))))))))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t6@0) (|p#$Mutation_25326| $t6@0) (seq.++ (|v#$Mutation_25326| $t6@0) (seq.unit 3)))) (and (=> (= (ControlFlow 0 63508) 63656) anon13_Then_correct) (=> (= (ControlFlow 0 63508) 63642) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t6@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 63514) 63508))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t4@0) (|p#$Mutation_25326| $t4@0) (seq.++ (|v#$Mutation_25326| $t4@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 63421) 63676) anon12_Then_correct) (=> (= (ControlFlow 0 63421) 63514) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_25326| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t4@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 63427) 63421))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_25326 (|l#$Mutation_25326| $t2@0) (|p#$Mutation_25326| $t2@0) (seq.++ (|v#$Mutation_25326| $t2@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 63334) 63690) anon11_Then_correct) (=> (= (ControlFlow 0 63334) 63427) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_25326 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 63340) 63334))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 63245) 63704) anon10_Then_correct) (=> (= (ControlFlow 0 63245) 63340) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 63251) 63245) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_25326| $t2)) 0) (= (seq.len (|p#$Mutation_25326| $t4)) 0)) (and (= (seq.len (|p#$Mutation_25326| $t6)) 0) (= (ControlFlow 0 63221) 63251))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 78680) 63221) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
