(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7842 0)) ((($Mutation_7842 (|l#$Mutation_7842| T@$Location) (|p#$Mutation_7842| T@Vec_2977) (|v#$Mutation_7842| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |specsinfundefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |specsinfundefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |specsinfundefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |specsinfundefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |specsinfundefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |specsinfundefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |specsinfundefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |specsinfundefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |specsinfundefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |specsinfundefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |specsinfundefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |specsinfundefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |specsinfundefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |specsinfundefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |specsinfundefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |specsinfundefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |specsinfundefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |specsinfundefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |specsinfundefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |specsinfundefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |specsinfundefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |specsinfundefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |specsinfundefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |specsinfundefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |specsinfundefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13161) (let ((anon4_Else_correct  (=> (and (not inline$$Not$0$dst@1) (= (ControlFlow 0 11024) (- 0 13293))) (> _$t0 _$t1))))
(let ((anon4_Then_correct true))
(let ((inline$$Not$0$anon0_correct  (=> (= inline$$Not$0$dst@1  (not inline$$Gt$0$dst@1)) (and (=> (= (ControlFlow 0 11000) 11046) anon4_Then_correct) (=> (= (ControlFlow 0 11000) 11024) anon4_Else_correct)))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t0 _$t1)) (= (ControlFlow 0 10962) 11000)) inline$$Not$0$anon0_correct)))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 10968) 10962))) inline$$Gt$0$anon0_correct))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13161) 10968) anon0$1_correct)))
anon0_correct)))))))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7842 0)) ((($Mutation_7842 (|l#$Mutation_7842| T@$Location) (|p#$Mutation_7842| T@Vec_2977) (|v#$Mutation_7842| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |specsinfundefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |specsinfundefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |specsinfundefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |specsinfundefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |specsinfundefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |specsinfundefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |specsinfundefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |specsinfundefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |specsinfundefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |specsinfundefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |specsinfundefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |specsinfundefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |specsinfundefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |specsinfundefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |specsinfundefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |specsinfundefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |specsinfundefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |specsinfundefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |specsinfundefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |specsinfundefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |specsinfundefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |specsinfundefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |specsinfundefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |specsinfundefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |specsinfundefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple1_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13322) (let ((anon4_Else_correct  (=> (and (not inline$$Not$0$dst@1) (= (ControlFlow 0 11230) (- 0 13454))) (= _$t0 _$t1))))
(let ((anon4_Then_correct true))
(let ((inline$$Not$0$anon0_correct  (=> (= inline$$Not$0$dst@1  (not inline$$Gt$0$dst@1)) (and (=> (= (ControlFlow 0 11206) 11252) anon4_Then_correct) (=> (= (ControlFlow 0 11206) 11230) anon4_Else_correct)))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t0 _$t1)) (= (ControlFlow 0 11168) 11206)) inline$$Not$0$anon0_correct)))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 11174) 11168))) inline$$Gt$0$anon0_correct))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13322) 11174) anon0$1_correct)))
anon0_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 13322)))
(get-value ((ControlFlow 0 11174)))
(get-value ((ControlFlow 0 11168)))
(get-value ((ControlFlow 0 11206)))
(get-value ((ControlFlow 0 11230)))
(assert (not (= (ControlFlow 0 11230) (- 13454))))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7842 0)) ((($Mutation_7842 (|l#$Mutation_7842| T@$Location) (|p#$Mutation_7842| T@Vec_2977) (|v#$Mutation_7842| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |specsinfundefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |specsinfundefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |specsinfundefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |specsinfundefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |specsinfundefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |specsinfundefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |specsinfundefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |specsinfundefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |specsinfundefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |specsinfundefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |specsinfundefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |specsinfundefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |specsinfundefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |specsinfundefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |specsinfundefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |specsinfundefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |specsinfundefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |specsinfundefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |specsinfundefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |specsinfundefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |specsinfundefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |specsinfundefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |specsinfundefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |specsinfundefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |specsinfundefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13469) (let ((anon3_Else_correct  (=> (not $abort_flag@0) (=> (and (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2) (= (ControlFlow 0 11509) (- 0 13644))) (= _$t0 (- inline$$AddU64$0$dst@2 1))))))
(let ((anon3_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 11475) 11527) anon3_Then_correct) (=> (= (ControlFlow 0 11475) 11509) anon3_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ _$t0 1) $MAX_U64) (= (ControlFlow 0 11473) 11475)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ _$t0 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 11421) 11527) anon3_Then_correct) (=> (= (ControlFlow 0 11421) 11509) anon3_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (= _$t0 _$t0) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 11481) 11473) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 11481) 11421) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13469) 11481) anon0$1_correct)))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7842 0)) ((($Mutation_7842 (|l#$Mutation_7842| T@$Location) (|p#$Mutation_7842| T@Vec_2977) (|v#$Mutation_7842| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |specsinfundefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |specsinfundefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |specsinfundefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |specsinfundefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |specsinfundefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |specsinfundefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |specsinfundefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |specsinfundefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |specsinfundefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |specsinfundefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |specsinfundefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |specsinfundefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |specsinfundefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |specsinfundefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |specsinfundefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |specsinfundefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |specsinfundefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |specsinfundefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |specsinfundefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |specsinfundefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |specsinfundefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |specsinfundefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |specsinfundefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |specsinfundefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |specsinfundefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple2_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13663) (let ((anon3_Else_correct  (=> (not $abort_flag@0) (=> (and (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2) (= (ControlFlow 0 11780) (- 0 13838))) (= _$t0 inline$$AddU64$0$dst@2)))))
(let ((anon3_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 11750) 11798) anon3_Then_correct) (=> (= (ControlFlow 0 11750) 11780) anon3_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ _$t0 1) $MAX_U64) (= (ControlFlow 0 11748) 11750)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ _$t0 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 11696) 11798) anon3_Then_correct) (=> (= (ControlFlow 0 11696) 11780) anon3_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (= _$t0 _$t0) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 11756) 11748) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 11756) 11696) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13663) 11756) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 13663)))
(get-value ((ControlFlow 0 11756)))
(get-value ((ControlFlow 0 11696)))
(get-value ((ControlFlow 0 11780)))
(assert (not (= (ControlFlow 0 11780) (- 13838))))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7842 0)) ((($Mutation_7842 (|l#$Mutation_7842| T@$Location) (|p#$Mutation_7842| T@Vec_2977) (|v#$Mutation_7842| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |specsinfundefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |specsinfundefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |specsinfundefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |specsinfundefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |specsinfundefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |specsinfundefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |specsinfundefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |specsinfundefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |specsinfundefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |specsinfundefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |specsinfundefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |specsinfundefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |specsinfundefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |specsinfundefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |specsinfundefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |specsinfundefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |specsinfundefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |specsinfundefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |specsinfundefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |specsinfundefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |specsinfundefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |specsinfundefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |specsinfundefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |specsinfundefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |specsinfundefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13850) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| _$t0) (|$IsValid'u64'| _$t1)) (=> (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (> _$t0 _$t1) (= (ControlFlow 0 11896) (- 0 13908)))) (>= _$t0 _$t1)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13850) 11896) anon0$1_correct)))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7842 0)) ((($Mutation_7842 (|l#$Mutation_7842| T@$Location) (|p#$Mutation_7842| T@Vec_2977) (|v#$Mutation_7842| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |specsinfundefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |specsinfundefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |specsinfundefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |specsinfundefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |specsinfundefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |specsinfundefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |specsinfundefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |specsinfundefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |specsinfundefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |specsinfundefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |specsinfundefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |specsinfundefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |specsinfundefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |specsinfundefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |specsinfundefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |specsinfundefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |specsinfundefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |specsinfundefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |specsinfundefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |specsinfundefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |specsinfundefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |specsinfundefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |specsinfundefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |specsinfundefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |specsinfundefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple3_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13920) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| _$t0) (|$IsValid'u64'| _$t1)) (=> (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (>= _$t0 _$t1) (= (ControlFlow 0 11994) (- 0 13978)))) (> _$t0 _$t1)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13920) 11994) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 13920)))
(get-value ((ControlFlow 0 11994)))
(assert (not (= (ControlFlow 0 11994) (- 13978))))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7842 0)) ((($Mutation_7842 (|l#$Mutation_7842| T@$Location) (|p#$Mutation_7842| T@Vec_2977) (|v#$Mutation_7842| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |specsinfundefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |specsinfundefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |specsinfundefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |specsinfundefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |specsinfundefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |specsinfundefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |specsinfundefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |specsinfundefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |specsinfundefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |specsinfundefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |specsinfundefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |specsinfundefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |specsinfundefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |specsinfundefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |specsinfundefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |specsinfundefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |specsinfundefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |specsinfundefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |specsinfundefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |specsinfundefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |specsinfundefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |specsinfundefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |specsinfundefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |specsinfundefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |specsinfundefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple4$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13994) (let ((anon3_Else_correct  (=> (and (and (not $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (> _$t0 _$t1) (= (ControlFlow 0 12265) (- 0 14181)))) (> inline$$AddU64$0$dst@2 (* 2 _$t1)))))
(let ((anon3_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 12223) 12283) anon3_Then_correct) (=> (= (ControlFlow 0 12223) 12265) anon3_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ _$t0 _$t1) $MAX_U64) (= (ControlFlow 0 12221) 12223)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0 _$t1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ _$t0 _$t1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 12169) 12283) anon3_Then_correct) (=> (= (ControlFlow 0 12169) 12265) anon3_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'u64'| _$t0) (|$IsValid'u64'| _$t1)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (=> (= (ControlFlow 0 12229) 12221) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 12229) 12169) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13994) 12229) anon0$1_correct)))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7842 0)) ((($Mutation_7842 (|l#$Mutation_7842| T@$Location) (|p#$Mutation_7842| T@Vec_2977) (|v#$Mutation_7842| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |specsinfundefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |specsinfundefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |specsinfundefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |specsinfundefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |specsinfundefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |specsinfundefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |specsinfundefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |specsinfundefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |specsinfundefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |specsinfundefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |specsinfundefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |specsinfundefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |specsinfundefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |specsinfundefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |specsinfundefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |specsinfundefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |specsinfundefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |specsinfundefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |specsinfundefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |specsinfundefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |specsinfundefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |specsinfundefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |specsinfundefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |specsinfundefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |specsinfundefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |specsinfundefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAssertAndAssume_simple4_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14201) (let ((anon3_Else_correct  (=> (and (and (not $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (> _$t0 _$t1) (= (ControlFlow 0 12554) (- 0 14388)))) (> inline$$AddU64$0$dst@2 (* 2 _$t0)))))
(let ((anon3_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 12512) 12572) anon3_Then_correct) (=> (= (ControlFlow 0 12512) 12554) anon3_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ _$t0 _$t1) $MAX_U64) (= (ControlFlow 0 12510) 12512)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0 _$t1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ _$t0 _$t1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 12458) 12572) anon3_Then_correct) (=> (= (ControlFlow 0 12458) 12554) anon3_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'u64'| _$t0) (|$IsValid'u64'| _$t1)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (=> (= (ControlFlow 0 12518) 12510) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 12518) 12458) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14201) 12518) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 14201)))
(get-value ((ControlFlow 0 12518)))
(get-value ((ControlFlow 0 12458)))
(get-value ((ControlFlow 0 12554)))
(assert (not (= (ControlFlow 0 12554) (- 14388))))
(check-sat)
(pop 1)
; Invalid
