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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_abort1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17229) (let ((anon4_Else_correct  (=> (and (not inline$$Not$0$dst@1) (= (ControlFlow 0 14026) (- 0 17371))) (not (<= _$t0 _$t1)))))
(let ((anon4_Then_correct  (=> (and (and inline$$Not$0$dst@1 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 14056) (- 0 17353)))) (<= _$t0 _$t1))))
(let ((inline$$Not$0$anon0_correct  (=> (= inline$$Not$0$dst@1  (not inline$$Gt$0$dst@1)) (and (=> (= (ControlFlow 0 14000) 14056) anon4_Then_correct) (=> (= (ControlFlow 0 14000) 14026) anon4_Else_correct)))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t0 _$t1)) (= (ControlFlow 0 13962) 14000)) inline$$Not$0$anon0_correct)))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 13968) 13962))) inline$$Gt$0$anon0_correct))))
(let ((anon0_correct  (=> (= (ControlFlow 0 17229) 13968) anon0$1_correct)))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_abort2_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17395) (let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 14148) (- 0 17449)))) (not (<= _$t0 _$t1))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 17395) 14148) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 17395)))
(get-value ((ControlFlow 0 14148)))
(assert (not (= (ControlFlow 0 14148) (- 17449))))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_abort3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17460) (let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (=> (and (and (= _$t1 _$t1) (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 14254) (- 0 17537)))) true)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 17460) 14254) anon0$1_correct)))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_abort4_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17553) (let ((anon4_Else_correct  (=> (and (not inline$$Gt$0$dst@1) (= (ControlFlow 0 14402) (- 0 17666))) (not (<= _$t0 _$t1)))))
(let ((anon4_Then_correct true))
(let ((inline$$Gt$0$anon0_correct  (=> (= inline$$Gt$0$dst@1 (> _$t0 _$t1)) (and (=> (= (ControlFlow 0 14376) 14424) anon4_Then_correct) (=> (= (ControlFlow 0 14376) 14402) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 14382) 14376))) inline$$Gt$0$anon0_correct))))
(let ((anon0_correct  (=> (= (ControlFlow 0 17553) 14382) anon0$1_correct)))
anon0_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 17553)))
(get-value ((ControlFlow 0 14382)))
(get-value ((ControlFlow 0 14376)))
(get-value ((ControlFlow 0 14402)))
(assert (not (= (ControlFlow 0 14402) (- 17666))))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_abort5_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17681) (let ((anon4_Else_correct  (=> (and (not inline$$Le$0$dst@1) (= (ControlFlow 0 14572) (- 0 17801))) (not (< _$t0 _$t1)))))
(let ((anon4_Then_correct  (=> (and (and inline$$Le$0$dst@1 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 14602) (- 0 17783)))) (< _$t0 _$t1))))
(let ((inline$$Le$0$anon0_correct  (=> (= inline$$Le$0$dst@1 (<= _$t0 _$t1)) (and (=> (= (ControlFlow 0 14546) 14602) anon4_Then_correct) (=> (= (ControlFlow 0 14546) 14572) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 14552) 14546))) inline$$Le$0$anon0_correct))))
(let ((anon0_correct  (=> (= (ControlFlow 0 17681) 14552) anon0$1_correct)))
anon0_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 17681)))
(get-value ((ControlFlow 0 14552)))
(get-value ((ControlFlow 0 14546)))
(get-value ((ControlFlow 0 14602)))
(assert (not (= (ControlFlow 0 14602) (- 17783))))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_abort6_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17816) (let ((anon4_Else_correct  (=> (and (not inline$$Lt$0$dst@1) (= (ControlFlow 0 14750) (- 0 17936))) (not (<= _$t0 _$t1)))))
(let ((anon4_Then_correct  (=> (and (and inline$$Lt$0$dst@1 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 14780) (- 0 17918)))) (<= _$t0 _$t1))))
(let ((inline$$Lt$0$anon0_correct  (=> (= inline$$Lt$0$dst@1 (< _$t0 _$t1)) (and (=> (= (ControlFlow 0 14724) 14780) anon4_Then_correct) (=> (= (ControlFlow 0 14724) 14750) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 14730) 14724))) inline$$Lt$0$anon0_correct))))
(let ((anon0_correct  (=> (= (ControlFlow 0 17816) 14730) anon0$1_correct)))
anon0_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 17816)))
(get-value ((ControlFlow 0 14730)))
(get-value ((ControlFlow 0 14724)))
(get-value ((ControlFlow 0 14750)))
(assert (not (= (ControlFlow 0 14750) (- 17936))))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_abort_1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17945) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 1) (= 1 1)) (and (=> (= (ControlFlow 0 14870) (- 0 17993)) true) (=> (= (ControlFlow 0 14870) (- 0 17995)) (and true (= 1 1)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 17945) 14870) anon0$1_correct)))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () Bool)
(declare-fun _$t0 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t6@0 () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_abort_at_2_or_3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18017) (let ((anon7_Else_correct  (=> (and (not $t1@0) (= (ControlFlow 0 14998) (- 0 18169))) (not (= _$t0 2)))))
(let ((anon7_Then_correct true))
(let ((anon6_Else_correct  (=> (not $t3@0) (=> (and (and (|$IsValid'u64'| 3) (= $t6@0 (= _$t0 3))) (and (= $t6@0 $t6@0) (= $t1@0 $t6@0))) (and (=> (= (ControlFlow 0 14978) 15020) anon7_Then_correct) (=> (= (ControlFlow 0 14978) 14998) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> $t3@0 (=> (and (= true true) (= $t1@0 true)) (and (=> (= (ControlFlow 0 15038) 15020) anon7_Then_correct) (=> (= (ControlFlow 0 15038) 14998) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'u64'| _$t0) (= _$t0 _$t0)) (and (|$IsValid'u64'| 2) (= $t3@0 (= _$t0 2)))) (and (=> (= (ControlFlow 0 14952) 15038) anon6_Then_correct) (=> (= (ControlFlow 0 14952) 14978) anon6_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 18017) 14952) anon0$1_correct)))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () Bool)
(declare-fun _$t0 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t6@0 () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_abort_at_2_or_3_spec_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18184) (let ((anon7_Else_correct  (=> (and (not $t1@0) (= (ControlFlow 0 15166) (- 0 18336))) (not (= _$t0 4)))))
(let ((anon7_Then_correct true))
(let ((anon6_Else_correct  (=> (not $t3@0) (=> (and (and (|$IsValid'u64'| 3) (= $t6@0 (= _$t0 3))) (and (= $t6@0 $t6@0) (= $t1@0 $t6@0))) (and (=> (= (ControlFlow 0 15146) 15188) anon7_Then_correct) (=> (= (ControlFlow 0 15146) 15166) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> $t3@0 (=> (and (= true true) (= $t1@0 true)) (and (=> (= (ControlFlow 0 15206) 15188) anon7_Then_correct) (=> (= (ControlFlow 0 15206) 15166) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'u64'| _$t0) (= _$t0 _$t0)) (and (|$IsValid'u64'| 2) (= $t3@0 (= _$t0 2)))) (and (=> (= (ControlFlow 0 15120) 15206) anon6_Then_correct) (=> (= (ControlFlow 0 15120) 15146) anon6_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 18184) 15120) anon0$1_correct)))
anon0_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 18184)))
(get-value ((ControlFlow 0 15120)))
(get-value ((ControlFlow 0 15146)))
(get-value ((ControlFlow 0 15166)))
(assert (not (= (ControlFlow 0 15166) (- 18336))))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () Bool)
(declare-fun $t3@0 () Bool)
(declare-fun $t6@0 () Bool)
(declare-fun _$t0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_abort_at_2_or_3_strict_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18351) (let ((anon6_Else_correct  (=> (and (not $t1@0) (= (ControlFlow 0 15328) (- 0 18505))) (not false))))
(let ((anon6_Then_correct  (=> (and (and $t1@0 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 15354) (- 0 18492)))) false)))
(let ((anon5_Else_correct  (=> (not $t3@0) (=> (and (and (|$IsValid'u64'| 3) (= $t6@0 (= _$t0 3))) (and (= $t6@0 $t6@0) (= $t1@0 $t6@0))) (and (=> (= (ControlFlow 0 15314) 15354) anon6_Then_correct) (=> (= (ControlFlow 0 15314) 15328) anon6_Else_correct))))))
(let ((anon5_Then_correct  (=> $t3@0 (=> (and (= true true) (= $t1@0 true)) (and (=> (= (ControlFlow 0 15372) 15354) anon6_Then_correct) (=> (= (ControlFlow 0 15372) 15328) anon6_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'u64'| _$t0) (= _$t0 _$t0)) (and (|$IsValid'u64'| 2) (= $t3@0 (= _$t0 2)))) (and (=> (= (ControlFlow 0 15288) 15372) anon5_Then_correct) (=> (= (ControlFlow 0 15288) 15314) anon5_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 18351) 15288) anon0$1_correct)))
anon0_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 18351)))
(get-value ((ControlFlow 0 15288)))
(get-value ((ControlFlow 0 15314)))
(get-value ((ControlFlow 0 15354)))
(assert (not (= (ControlFlow 0 15354) (- 18492))))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () Bool)
(declare-fun _$t0 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t6@0 () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_abort_at_2_or_3_total_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18518) (let ((anon7_Else_correct  (=> (and (not $t1@0) (= (ControlFlow 0 15500) (- 0 18678))) (not (= _$t0 2)))))
(let ((anon7_Then_correct  (=> (and (and $t1@0 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 15530) (- 0 18659)))) (= _$t0 2))))
(let ((anon6_Else_correct  (=> (not $t3@0) (=> (and (and (|$IsValid'u64'| 3) (= $t6@0 (= _$t0 3))) (and (= $t6@0 $t6@0) (= $t1@0 $t6@0))) (and (=> (= (ControlFlow 0 15480) 15530) anon7_Then_correct) (=> (= (ControlFlow 0 15480) 15500) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> $t3@0 (=> (and (= true true) (= $t1@0 true)) (and (=> (= (ControlFlow 0 15548) 15530) anon7_Then_correct) (=> (= (ControlFlow 0 15548) 15500) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'u64'| _$t0) (= _$t0 _$t0)) (and (|$IsValid'u64'| 2) (= $t3@0 (= _$t0 2)))) (and (=> (= (ControlFlow 0 15454) 15548) anon6_Then_correct) (=> (= (ControlFlow 0 15454) 15480) anon6_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 18518) 15454) anon0$1_correct)))
anon0_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 18518)))
(get-value ((ControlFlow 0 15454)))
(get-value ((ControlFlow 0 15480)))
(get-value ((ControlFlow 0 15530)))
(assert (not (= (ControlFlow 0 15530) (- 18659))))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t7 () Bool)
(declare-fun $t8 () Int)
(declare-fun _$t0 () Int)
(declare-fun $t1@0 () Bool)
(declare-fun $t3@0 () Bool)
(declare-fun $t6@0 () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_aborts_if_with_code$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18693) (let ((anon10_Then_correct  (=> $t7 (=> (and (and true (= 1 $t8)) (and (= $t8 $t8) (= (ControlFlow 0 15744) (- 0 18849)))) (or (and (= _$t0 2) (= 1 $t8)) (= 1 $t8))))))
(let ((L6_correct  (=> (= (ControlFlow 0 15678) (- 0 18886)) (not (= _$t0 2)))))
(let ((anon10_Else_correct  (=> (and (not $t7) (= (ControlFlow 0 15694) 15678)) L6_correct)))
(let ((anon9_Then_correct  (=> (and $t1@0 (= $t7 true)) (and (=> (= (ControlFlow 0 15688) 15744) anon10_Then_correct) (=> (= (ControlFlow 0 15688) 15694) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (not $t1@0) (= (ControlFlow 0 15664) 15678)) L6_correct)))
(let ((anon8_Else_correct  (=> (not $t3@0) (=> (and (and (|$IsValid'u64'| 3) (= $t6@0 (= _$t0 3))) (and (= $t6@0 $t6@0) (= $t1@0 $t6@0))) (and (=> (= (ControlFlow 0 15656) 15688) anon9_Then_correct) (=> (= (ControlFlow 0 15656) 15664) anon9_Else_correct))))))
(let ((anon8_Then_correct  (=> $t3@0 (=> (and (= true true) (= $t1@0 true)) (and (=> (= (ControlFlow 0 15762) 15688) anon9_Then_correct) (=> (= (ControlFlow 0 15762) 15664) anon9_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'u64'| _$t0) (= _$t0 _$t0)) (and (|$IsValid'u64'| 2) (= $t3@0 (= _$t0 2)))) (and (=> (= (ControlFlow 0 15630) 15762) anon8_Then_correct) (=> (= (ControlFlow 0 15630) 15656) anon8_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 18693) 15630) anon0$1_correct)))
anon0_correct))))))))))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_multi_abort1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18902) (let ((anon4_Else_correct  (=> (not inline$$Le$0$dst@1) (and (=> (= (ControlFlow 0 15920) (- 0 19028)) (not (< _$t0 _$t1))) (=> (not (< _$t0 _$t1)) (=> (= (ControlFlow 0 15920) (- 0 19037)) (not (= _$t0 _$t1))))))))
(let ((anon4_Then_correct  (=> (and (and inline$$Le$0$dst@1 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 15958) (- 0 19004)))) (or (< _$t0 _$t1) (= _$t0 _$t1)))))
(let ((inline$$Le$0$anon0_correct  (=> (= inline$$Le$0$dst@1 (<= _$t0 _$t1)) (and (=> (= (ControlFlow 0 15884) 15958) anon4_Then_correct) (=> (= (ControlFlow 0 15884) 15920) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 15890) 15884))) inline$$Le$0$anon0_correct))))
(let ((anon0_correct  (=> (= (ControlFlow 0 18902) 15890) anon0$1_correct)))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_multi_abort2_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19052) (let ((anon4_Else_correct  (=> (not inline$$Lt$0$dst@1) (and (=> (= (ControlFlow 0 16116) (- 0 19178)) (not (< _$t0 _$t1))) (=> (not (< _$t0 _$t1)) (=> (= (ControlFlow 0 16116) (- 0 19187)) (not (= _$t0 _$t1))))))))
(let ((anon4_Then_correct  (=> (and (and inline$$Lt$0$dst@1 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 16154) (- 0 19154)))) (or (< _$t0 _$t1) (= _$t0 _$t1)))))
(let ((inline$$Lt$0$anon0_correct  (=> (= inline$$Lt$0$dst@1 (< _$t0 _$t1)) (and (=> (= (ControlFlow 0 16080) 16154) anon4_Then_correct) (=> (= (ControlFlow 0 16080) 16116) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 16086) 16080))) inline$$Lt$0$anon0_correct))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19052) 16086) anon0$1_correct)))
anon0_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 19052)))
(get-value ((ControlFlow 0 16086)))
(get-value ((ControlFlow 0 16080)))
(get-value ((ControlFlow 0 16116)))
(assert (not (= (ControlFlow 0 16116) (- 19187))))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_multi_abort3_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19198) (let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (=> (and (and (= _$t1 _$t1) (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 16272) (- 0 19275)))) (or (< _$t0 _$t1) (= _$t0 _$t1)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19198) 16272) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 19198)))
(get-value ((ControlFlow 0 16272)))
(assert (not (= (ControlFlow 0 16272) (- 19275))))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_multi_abort4$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19295) (let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (|$IsValid'u64'| _$t1) (= _$t0 _$t0)) (=> (and (and (= _$t1 _$t1) (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 16398) (- 0 19372)))) (or (or (< _$t0 _$t1) (= _$t0 _$t1)) (> _$t0 _$t1)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19295) 16398) anon0$1_correct)))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@0 () Bool)
(declare-fun _$t0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_multi_abort5_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19401) (let ((anon6_Else_correct  (=> (not $t2@0) (and (=> (= (ControlFlow 0 16504) (- 0 19506)) (not true)) (=> (not true) (=> (= (ControlFlow 0 16504) (- 0 19513)) (not (> _$t0 0))))))))
(let ((anon6_Then_correct  (=> (and (and $t2@0 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 16538) (- 0 19483)))) (or true (> _$t0 0)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'u64'| _$t0) (= _$t0 _$t0)) (and (|$IsValid'u64'| 0) (= $t2@0 (= _$t0 0)))) (and (=> (= (ControlFlow 0 16480) 16538) anon6_Then_correct) (=> (= (ControlFlow 0 16480) 16504) anon6_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19401) 16480) anon0$1_correct)))
anon0_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 19401)))
(get-value ((ControlFlow 0 16480)))
(get-value ((ControlFlow 0 16504)))
(assert (not (= (ControlFlow 0 16504) (- 19506))))
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
(declare-datatypes ((T@$Mutation_9518 0)) ((($Mutation_9518 (|l#$Mutation_9518| T@$Location) (|p#$Mutation_9518| T@Vec_2977) (|v#$Mutation_9518| T@Vec_2977) ) ) ))
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
 :qid |abortsifdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |abortsifdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |abortsifdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |abortsifdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |abortsifdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |abortsifdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |abortsifdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |abortsifdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |abortsifdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |abortsifdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |abortsifdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |abortsifdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |abortsifdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |abortsifdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |abortsifdefaultz3bpl.275:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |abortsifdefaultz3bpl.73:19|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |abortsifdefaultz3bpl.82:30|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |abortsifdefaultz3bpl.63:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestAbortsIf_no_aborts_if$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19525) true)
))
(check-sat)
(pop 1)
; Valid
