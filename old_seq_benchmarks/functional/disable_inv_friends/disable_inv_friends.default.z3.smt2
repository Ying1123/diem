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
(declare-datatypes ((T@$1_M2_R2 0)) ((($1_M2_R2 (|$dummy_field#$1_M2_R2| Bool) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$1_M2_R2| 0)
(declare-datatypes ((T@$Memory_10753 0)) ((($Memory_10753 (|domain#$Memory_10753| |T@[Int]Bool|) (|contents#$Memory_10753| |T@[Int]$1_M2_R2|) ) ) ))
(declare-datatypes ((T@$1_M3_R3 0)) ((($1_M3_R3 (|$dummy_field#$1_M3_R3| Bool) ) ) ))
(declare-sort |T@[Int]$1_M3_R3| 0)
(declare-datatypes ((T@$Memory_10364 0)) ((($Memory_10364 (|domain#$Memory_10364| |T@[Int]Bool|) (|contents#$Memory_10364| |T@[Int]$1_M3_R3|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8265 0)) ((($Mutation_8265 (|l#$Mutation_8265| T@$Location) (|p#$Mutation_8265| T@Vec_2977) (|v#$Mutation_8265| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$1_M3_R3'| (T@$1_M3_R3) Bool)
(declare-fun |$IsValid'$1_M2_R2'| (T@$1_M2_R2) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |disableinvfriendsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |disableinvfriendsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |disableinvfriendsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |disableinvfriendsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |disableinvfriendsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |disableinvfriendsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |disableinvfriendsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |disableinvfriendsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |disableinvfriendsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |disableinvfriendsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |disableinvfriendsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |disableinvfriendsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |disableinvfriendsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |disableinvfriendsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |disableinvfriendsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |disableinvfriendsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |disableinvfriendsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_M3_R3) ) (! (= (|$IsValid'$1_M3_R3'| s) true)
 :qid |disableinvfriendsdefaultz3bpl.937:29|
 :skolemid |28|
 :pattern ( (|$IsValid'$1_M3_R3'| s))
)))
(assert (forall ((s@@0 T@$1_M2_R2) ) (! (= (|$IsValid'$1_M2_R2'| s@@0) true)
 :qid |disableinvfriendsdefaultz3bpl.1031:29|
 :skolemid |30|
 :pattern ( (|$IsValid'$1_M2_R2'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |disableinvfriendsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |disableinvfriendsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |disableinvfriendsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |disableinvfriendsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |disableinvfriendsdefaultz3bpl.275:54|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |disableinvfriendsdefaultz3bpl.73:19|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |disableinvfriendsdefaultz3bpl.82:30|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |disableinvfriendsdefaultz3bpl.63:20|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_M3_R3_$memory@1 () T@$Memory_10364)
(declare-fun _$t0 () Int)
(declare-fun $1_M3_R3_$memory () T@$Memory_10364)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_M3_R3_$memory@0 () T@$Memory_10364)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_M3_R3_| (|T@[Int]$1_M3_R3| Int T@$1_M3_R3) |T@[Int]$1_M3_R3|)
(declare-fun |Select__T@[Int]$1_M3_R3_| (|T@[Int]$1_M3_R3| Int) T@$1_M3_R3)
(assert (forall ( ( ?x0 |T@[Int]$1_M3_R3|) ( ?x1 Int) ( ?x2 T@$1_M3_R3)) (! (= (|Select__T@[Int]$1_M3_R3_| (|Store__T@[Int]$1_M3_R3_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_M3_R3|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_M3_R3)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_M3_R3_| (|Store__T@[Int]$1_M3_R3_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_M3_R3_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0 () T@$1_M3_R3)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_M3_R3_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_M3_f3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14113) (let ((anon8_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 12469) (- 0 14313))) (|Select__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory@1) _$t0))))
(let ((anon8_Then_correct true))
(let ((anon7_Then$1_correct  (=> (= $1_M3_R3_$memory@1 $1_M3_R3_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 12537) 12487) anon8_Then_correct) (=> (= (ControlFlow 0 12537) 12469) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory) _$t0) (= (ControlFlow 0 12535) 12537)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory) _$t0)) (=> (and (and (= $1_M3_R3_$memory@0 ($Memory_10364 (|Store__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory) _$t0 true) (|Store__T@[Int]$1_M3_R3_| (|contents#$Memory_10364| $1_M3_R3_$memory) _$t0 $t2@0))) (= $1_M3_R3_$memory@1 $1_M3_R3_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 12449) 12487) anon8_Then_correct) (=> (= (ControlFlow 0 12449) 12469) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_M3_R3_| (|contents#$Memory_10364| $1_M3_R3_$memory) $a_0)))
(|$IsValid'$1_M3_R3'| $rsc))
 :qid |disableinvfriendsdefaultz3bpl.966:20|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]$1_M3_R3_| (|contents#$Memory_10364| $1_M3_R3_$memory) $a_0))
)) (|Select__T@[Int]Bool_| $1_M3_R3_$modifies _$t0)) (and (= _$t0 _$t0) (= $t2@0 ($1_M3_R3 false)))) (and (=> (= (ControlFlow 0 12431) (- 0 14221)) (|Select__T@[Int]Bool_| $1_M3_R3_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $1_M3_R3_$modifies _$t0) (and (=> (= (ControlFlow 0 12431) 12535) anon7_Then_correct) (=> (= (ControlFlow 0 12431) 12449) anon7_Else_correct))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14113) 12431) anon0$1_correct)))
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
(declare-datatypes ((T@$1_M2_R2 0)) ((($1_M2_R2 (|$dummy_field#$1_M2_R2| Bool) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$1_M2_R2| 0)
(declare-datatypes ((T@$Memory_10753 0)) ((($Memory_10753 (|domain#$Memory_10753| |T@[Int]Bool|) (|contents#$Memory_10753| |T@[Int]$1_M2_R2|) ) ) ))
(declare-datatypes ((T@$1_M3_R3 0)) ((($1_M3_R3 (|$dummy_field#$1_M3_R3| Bool) ) ) ))
(declare-sort |T@[Int]$1_M3_R3| 0)
(declare-datatypes ((T@$Memory_10364 0)) ((($Memory_10364 (|domain#$Memory_10364| |T@[Int]Bool|) (|contents#$Memory_10364| |T@[Int]$1_M3_R3|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8265 0)) ((($Mutation_8265 (|l#$Mutation_8265| T@$Location) (|p#$Mutation_8265| T@Vec_2977) (|v#$Mutation_8265| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$1_M3_R3'| (T@$1_M3_R3) Bool)
(declare-fun |$IsValid'$1_M2_R2'| (T@$1_M2_R2) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |disableinvfriendsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |disableinvfriendsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |disableinvfriendsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |disableinvfriendsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |disableinvfriendsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |disableinvfriendsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |disableinvfriendsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |disableinvfriendsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |disableinvfriendsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |disableinvfriendsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |disableinvfriendsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |disableinvfriendsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |disableinvfriendsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |disableinvfriendsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |disableinvfriendsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |disableinvfriendsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |disableinvfriendsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_M3_R3) ) (! (= (|$IsValid'$1_M3_R3'| s) true)
 :qid |disableinvfriendsdefaultz3bpl.937:29|
 :skolemid |28|
 :pattern ( (|$IsValid'$1_M3_R3'| s))
)))
(assert (forall ((s@@0 T@$1_M2_R2) ) (! (= (|$IsValid'$1_M2_R2'| s@@0) true)
 :qid |disableinvfriendsdefaultz3bpl.1031:29|
 :skolemid |30|
 :pattern ( (|$IsValid'$1_M2_R2'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |disableinvfriendsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |disableinvfriendsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |disableinvfriendsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |disableinvfriendsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |disableinvfriendsdefaultz3bpl.275:54|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |disableinvfriendsdefaultz3bpl.73:19|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |disableinvfriendsdefaultz3bpl.82:30|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |disableinvfriendsdefaultz3bpl.63:20|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_M2_R2_$memory@1 () T@$Memory_10753)
(declare-fun _$t0 () Int)
(declare-fun $1_M2_R2_$memory () T@$Memory_10753)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_M2_R2_$memory@0 () T@$Memory_10753)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_M2_R2_| (|T@[Int]$1_M2_R2| Int T@$1_M2_R2) |T@[Int]$1_M2_R2|)
(declare-fun |Select__T@[Int]$1_M2_R2_| (|T@[Int]$1_M2_R2| Int) T@$1_M2_R2)
(assert (forall ( ( ?x0 |T@[Int]$1_M2_R2|) ( ?x1 Int) ( ?x2 T@$1_M2_R2)) (! (= (|Select__T@[Int]$1_M2_R2_| (|Store__T@[Int]$1_M2_R2_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_M2_R2|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_M2_R2)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_M2_R2_| (|Store__T@[Int]$1_M2_R2_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_M2_R2_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0 () T@$1_M2_R2)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_M2_R2_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_M2_f2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14344) (let ((anon8_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 12710) (- 0 14544))) (|Select__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory@1) _$t0))))
(let ((anon8_Then_correct true))
(let ((anon7_Then$1_correct  (=> (= $1_M2_R2_$memory@1 $1_M2_R2_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 12778) 12728) anon8_Then_correct) (=> (= (ControlFlow 0 12778) 12710) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory) _$t0) (= (ControlFlow 0 12776) 12778)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory) _$t0)) (=> (and (and (= $1_M2_R2_$memory@0 ($Memory_10753 (|Store__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory) _$t0 true) (|Store__T@[Int]$1_M2_R2_| (|contents#$Memory_10753| $1_M2_R2_$memory) _$t0 $t2@0))) (= $1_M2_R2_$memory@1 $1_M2_R2_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 12690) 12728) anon8_Then_correct) (=> (= (ControlFlow 0 12690) 12710) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_M2_R2_| (|contents#$Memory_10753| $1_M2_R2_$memory) $a_0)))
(|$IsValid'$1_M2_R2'| $rsc))
 :qid |disableinvfriendsdefaultz3bpl.1060:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]$1_M2_R2_| (|contents#$Memory_10753| $1_M2_R2_$memory) $a_0))
)) (|Select__T@[Int]Bool_| $1_M2_R2_$modifies _$t0)) (and (= _$t0 _$t0) (= $t2@0 ($1_M2_R2 false)))) (and (=> (= (ControlFlow 0 12672) (- 0 14452)) (|Select__T@[Int]Bool_| $1_M2_R2_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $1_M2_R2_$modifies _$t0) (and (=> (= (ControlFlow 0 12672) 12776) anon7_Then_correct) (=> (= (ControlFlow 0 12672) 12690) anon7_Else_correct))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14344) 12672) anon0$1_correct)))
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
(declare-datatypes ((T@$1_M2_R2 0)) ((($1_M2_R2 (|$dummy_field#$1_M2_R2| Bool) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$1_M2_R2| 0)
(declare-datatypes ((T@$Memory_10753 0)) ((($Memory_10753 (|domain#$Memory_10753| |T@[Int]Bool|) (|contents#$Memory_10753| |T@[Int]$1_M2_R2|) ) ) ))
(declare-datatypes ((T@$1_M3_R3 0)) ((($1_M3_R3 (|$dummy_field#$1_M3_R3| Bool) ) ) ))
(declare-sort |T@[Int]$1_M3_R3| 0)
(declare-datatypes ((T@$Memory_10364 0)) ((($Memory_10364 (|domain#$Memory_10364| |T@[Int]Bool|) (|contents#$Memory_10364| |T@[Int]$1_M3_R3|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8265 0)) ((($Mutation_8265 (|l#$Mutation_8265| T@$Location) (|p#$Mutation_8265| T@Vec_2977) (|v#$Mutation_8265| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$1_M3_R3'| (T@$1_M3_R3) Bool)
(declare-fun |$IsValid'$1_M2_R2'| (T@$1_M2_R2) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |disableinvfriendsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |disableinvfriendsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |disableinvfriendsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |disableinvfriendsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |disableinvfriendsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |disableinvfriendsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |disableinvfriendsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |disableinvfriendsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |disableinvfriendsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |disableinvfriendsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |disableinvfriendsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |disableinvfriendsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |disableinvfriendsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |disableinvfriendsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |disableinvfriendsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |disableinvfriendsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |disableinvfriendsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_M3_R3) ) (! (= (|$IsValid'$1_M3_R3'| s) true)
 :qid |disableinvfriendsdefaultz3bpl.937:29|
 :skolemid |28|
 :pattern ( (|$IsValid'$1_M3_R3'| s))
)))
(assert (forall ((s@@0 T@$1_M2_R2) ) (! (= (|$IsValid'$1_M2_R2'| s@@0) true)
 :qid |disableinvfriendsdefaultz3bpl.1031:29|
 :skolemid |30|
 :pattern ( (|$IsValid'$1_M2_R2'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |disableinvfriendsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |disableinvfriendsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |disableinvfriendsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |disableinvfriendsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |disableinvfriendsdefaultz3bpl.275:54|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |disableinvfriendsdefaultz3bpl.73:19|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |disableinvfriendsdefaultz3bpl.82:30|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |disableinvfriendsdefaultz3bpl.63:20|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_M3_R3_$memory@2 () T@$Memory_10364)
(declare-fun _$t0 () Int)
(declare-fun $1_M2_R2_$memory@2 () T@$Memory_10753)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_M3_R3_$memory@1 () T@$Memory_10364)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_M3_R3_$memory () T@$Memory_10364)
(declare-fun $1_M3_R3_$memory@0 () T@$Memory_10364)
(declare-fun |Store__T@[Int]$1_M3_R3_| (|T@[Int]$1_M3_R3| Int T@$1_M3_R3) |T@[Int]$1_M3_R3|)
(declare-fun |Select__T@[Int]$1_M3_R3_| (|T@[Int]$1_M3_R3| Int) T@$1_M3_R3)
(assert (forall ( ( ?x0 |T@[Int]$1_M3_R3|) ( ?x1 Int) ( ?x2 T@$1_M3_R3)) (! (= (|Select__T@[Int]$1_M3_R3_| (|Store__T@[Int]$1_M3_R3_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_M3_R3|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_M3_R3)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_M3_R3_| (|Store__T@[Int]$1_M3_R3_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_M3_R3_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_M3_R3'@0| () T@$1_M3_R3)
(declare-fun $t3@0 () Bool)
(declare-fun $1_M3_R3_$modifies () |T@[Int]Bool|)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_M2_R2_$memory@1 () T@$Memory_10753)
(declare-fun $1_M2_R2_$memory () T@$Memory_10753)
(declare-fun $1_M2_R2_$memory@0 () T@$Memory_10753)
(declare-fun |Store__T@[Int]$1_M2_R2_| (|T@[Int]$1_M2_R2| Int T@$1_M2_R2) |T@[Int]$1_M2_R2|)
(declare-fun |Select__T@[Int]$1_M2_R2_| (|T@[Int]$1_M2_R2| Int) T@$1_M2_R2)
(assert (forall ( ( ?x0 |T@[Int]$1_M2_R2|) ( ?x1 Int) ( ?x2 T@$1_M2_R2)) (! (= (|Select__T@[Int]$1_M2_R2_| (|Store__T@[Int]$1_M2_R2_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_M2_R2|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_M2_R2)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_M2_R2_| (|Store__T@[Int]$1_M2_R2_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_M2_R2_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_M2_R2'@0| () T@$1_M2_R2)
(declare-fun $t1@0 () Bool)
(declare-fun $1_M2_R2_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_M1_f1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14558) (let ((anon10_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory@2) _$t0) (= (ControlFlow 0 13067) (- 0 14865))) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory@2) addr) (|Select__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory@2) addr)))
 :qid |disableinvfriendsdefaultz3bpl.1263:15|
 :skolemid |35|
)))))
(let ((anon14_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= $1_M3_R3_$memory@1 ($Memory_10364 (|Store__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory) _$t0 false) (|contents#$Memory_10364| $1_M3_R3_$memory)))) (and (= $1_M3_R3_$memory@2 $1_M3_R3_$memory@1) (= (ControlFlow 0 13028) 13067))) anon10_correct)))
(let ((anon14_Then_correct  (=> (and (and |$temp_0'bool'@1| (= $1_M3_R3_$memory@0 ($Memory_10364 (|Store__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory) _$t0 true) (|Store__T@[Int]$1_M3_R3_| (|contents#$Memory_10364| $1_M3_R3_$memory) _$t0 |$temp_0'$1_M3_R3'@0|)))) (and (= $1_M3_R3_$memory@2 $1_M3_R3_$memory@0) (= (ControlFlow 0 13081) 13067))) anon10_correct)))
(let ((anon13_Else_correct  (=> (not $t3@0) (and (=> (= (ControlFlow 0 13014) 13081) anon14_Then_correct) (=> (= (ControlFlow 0 13014) 13028) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon5_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory@2) _$t0) (and (=> (= (ControlFlow 0 13008) (- 0 14780)) (|Select__T@[Int]Bool_| $1_M3_R3_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $1_M3_R3_$modifies _$t0) (and (=> (= (ControlFlow 0 13008) 13093) anon13_Then_correct) (=> (= (ControlFlow 0 13008) 13014) anon13_Else_correct)))))))
(let ((anon12_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_M2_R2_$memory@1 ($Memory_10753 (|Store__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory) _$t0 false) (|contents#$Memory_10753| $1_M2_R2_$memory)))) (and (= $1_M2_R2_$memory@2 $1_M2_R2_$memory@1) (= (ControlFlow 0 12984) 13008))) anon5_correct)))
(let ((anon12_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_M2_R2_$memory@0 ($Memory_10753 (|Store__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory) _$t0 true) (|Store__T@[Int]$1_M2_R2_| (|contents#$Memory_10753| $1_M2_R2_$memory) _$t0 |$temp_0'$1_M2_R2'@0|)))) (and (= $1_M2_R2_$memory@2 $1_M2_R2_$memory@0) (= (ControlFlow 0 13113) 13008))) anon5_correct)))
(let ((anon11_Else_correct  (=> (not $t1@0) (and (=> (= (ControlFlow 0 12970) 13113) anon12_Then_correct) (=> (= (ControlFlow 0 12970) 12984) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon0$1_correct  (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory) addr@@0)))
 :qid |disableinvfriendsdefaultz3bpl.1142:20|
 :skolemid |32|
)) (=> (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_M3_R3_| (|contents#$Memory_10364| $1_M3_R3_$memory) $a_0)))
(|$IsValid'$1_M3_R3'| $rsc))
 :qid |disableinvfriendsdefaultz3bpl.1148:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]$1_M3_R3_| (|contents#$Memory_10364| $1_M3_R3_$memory) $a_0))
))) (=> (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_M2_R2_| (|contents#$Memory_10753| $1_M2_R2_$memory) $a_0@@0)))
(|$IsValid'$1_M2_R2'| $rsc@@0))
 :qid |disableinvfriendsdefaultz3bpl.1152:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]$1_M2_R2_| (|contents#$Memory_10753| $1_M2_R2_$memory) $a_0@@0))
)) (|Select__T@[Int]Bool_| $1_M2_R2_$modifies _$t0)) (and (|Select__T@[Int]Bool_| $1_M3_R3_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 12964) (- 0 14698)) (|Select__T@[Int]Bool_| $1_M2_R2_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $1_M2_R2_$modifies _$t0) (and (=> (= (ControlFlow 0 12964) 13125) anon11_Then_correct) (=> (= (ControlFlow 0 12964) 12970) anon11_Else_correct)))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14558) 12964) anon0$1_correct)))
anon0_correct)))))))))))))
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
(declare-datatypes ((T@$1_M2_R2 0)) ((($1_M2_R2 (|$dummy_field#$1_M2_R2| Bool) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$1_M2_R2| 0)
(declare-datatypes ((T@$Memory_10753 0)) ((($Memory_10753 (|domain#$Memory_10753| |T@[Int]Bool|) (|contents#$Memory_10753| |T@[Int]$1_M2_R2|) ) ) ))
(declare-datatypes ((T@$1_M3_R3 0)) ((($1_M3_R3 (|$dummy_field#$1_M3_R3| Bool) ) ) ))
(declare-sort |T@[Int]$1_M3_R3| 0)
(declare-datatypes ((T@$Memory_10364 0)) ((($Memory_10364 (|domain#$Memory_10364| |T@[Int]Bool|) (|contents#$Memory_10364| |T@[Int]$1_M3_R3|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8265 0)) ((($Mutation_8265 (|l#$Mutation_8265| T@$Location) (|p#$Mutation_8265| T@Vec_2977) (|v#$Mutation_8265| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$1_M3_R3'| (T@$1_M3_R3) Bool)
(declare-fun |$IsValid'$1_M2_R2'| (T@$1_M2_R2) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |disableinvfriendsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |disableinvfriendsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |disableinvfriendsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |disableinvfriendsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |disableinvfriendsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |disableinvfriendsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |disableinvfriendsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |disableinvfriendsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |disableinvfriendsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |disableinvfriendsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |disableinvfriendsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |disableinvfriendsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |disableinvfriendsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |disableinvfriendsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |disableinvfriendsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |disableinvfriendsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |disableinvfriendsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_M3_R3) ) (! (= (|$IsValid'$1_M3_R3'| s) true)
 :qid |disableinvfriendsdefaultz3bpl.937:29|
 :skolemid |28|
 :pattern ( (|$IsValid'$1_M3_R3'| s))
)))
(assert (forall ((s@@0 T@$1_M2_R2) ) (! (= (|$IsValid'$1_M2_R2'| s@@0) true)
 :qid |disableinvfriendsdefaultz3bpl.1031:29|
 :skolemid |30|
 :pattern ( (|$IsValid'$1_M2_R2'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |disableinvfriendsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |disableinvfriendsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |disableinvfriendsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |disableinvfriendsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |disableinvfriendsdefaultz3bpl.275:54|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |disableinvfriendsdefaultz3bpl.73:19|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |disableinvfriendsdefaultz3bpl.82:30|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |disableinvfriendsdefaultz3bpl.63:20|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_M2_R2_$memory@2 () T@$Memory_10753)
(declare-fun _$t0 () Int)
(declare-fun $1_M3_R3_$memory@2 () T@$Memory_10364)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_M2_R2_$memory@1 () T@$Memory_10753)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_M2_R2_$memory () T@$Memory_10753)
(declare-fun $1_M2_R2_$memory@0 () T@$Memory_10753)
(declare-fun |Store__T@[Int]$1_M2_R2_| (|T@[Int]$1_M2_R2| Int T@$1_M2_R2) |T@[Int]$1_M2_R2|)
(declare-fun |Select__T@[Int]$1_M2_R2_| (|T@[Int]$1_M2_R2| Int) T@$1_M2_R2)
(assert (forall ( ( ?x0 |T@[Int]$1_M2_R2|) ( ?x1 Int) ( ?x2 T@$1_M2_R2)) (! (= (|Select__T@[Int]$1_M2_R2_| (|Store__T@[Int]$1_M2_R2_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_M2_R2|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_M2_R2)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_M2_R2_| (|Store__T@[Int]$1_M2_R2_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_M2_R2_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_M2_R2'@0| () T@$1_M2_R2)
(declare-fun $t3@0 () Bool)
(declare-fun $1_M2_R2_$modifies () |T@[Int]Bool|)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_M3_R3_$memory@1 () T@$Memory_10364)
(declare-fun $1_M3_R3_$memory () T@$Memory_10364)
(declare-fun $1_M3_R3_$memory@0 () T@$Memory_10364)
(declare-fun |Store__T@[Int]$1_M3_R3_| (|T@[Int]$1_M3_R3| Int T@$1_M3_R3) |T@[Int]$1_M3_R3|)
(declare-fun |Select__T@[Int]$1_M3_R3_| (|T@[Int]$1_M3_R3| Int) T@$1_M3_R3)
(assert (forall ( ( ?x0 |T@[Int]$1_M3_R3|) ( ?x1 Int) ( ?x2 T@$1_M3_R3)) (! (= (|Select__T@[Int]$1_M3_R3_| (|Store__T@[Int]$1_M3_R3_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_M3_R3|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_M3_R3)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_M3_R3_| (|Store__T@[Int]$1_M3_R3_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_M3_R3_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_M3_R3'@0| () T@$1_M3_R3)
(declare-fun $t1@0 () Bool)
(declare-fun $1_M3_R3_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_M4_f4$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14903) (let ((anon10_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory@2) _$t0) (= (ControlFlow 0 13433) (- 0 15210))) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory@2) addr) (|Select__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory@2) addr)))
 :qid |disableinvfriendsdefaultz3bpl.1423:15|
 :skolemid |39|
)))))
(let ((anon14_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= $1_M2_R2_$memory@1 ($Memory_10753 (|Store__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory) _$t0 false) (|contents#$Memory_10753| $1_M2_R2_$memory)))) (and (= $1_M2_R2_$memory@2 $1_M2_R2_$memory@1) (= (ControlFlow 0 13394) 13433))) anon10_correct)))
(let ((anon14_Then_correct  (=> (and (and |$temp_0'bool'@1| (= $1_M2_R2_$memory@0 ($Memory_10753 (|Store__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory) _$t0 true) (|Store__T@[Int]$1_M2_R2_| (|contents#$Memory_10753| $1_M2_R2_$memory) _$t0 |$temp_0'$1_M2_R2'@0|)))) (and (= $1_M2_R2_$memory@2 $1_M2_R2_$memory@0) (= (ControlFlow 0 13447) 13433))) anon10_correct)))
(let ((anon13_Else_correct  (=> (not $t3@0) (and (=> (= (ControlFlow 0 13380) 13447) anon14_Then_correct) (=> (= (ControlFlow 0 13380) 13394) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon5_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory@2) _$t0) (and (=> (= (ControlFlow 0 13374) (- 0 15125)) (|Select__T@[Int]Bool_| $1_M2_R2_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $1_M2_R2_$modifies _$t0) (and (=> (= (ControlFlow 0 13374) 13459) anon13_Then_correct) (=> (= (ControlFlow 0 13374) 13380) anon13_Else_correct)))))))
(let ((anon12_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_M3_R3_$memory@1 ($Memory_10364 (|Store__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory) _$t0 false) (|contents#$Memory_10364| $1_M3_R3_$memory)))) (and (= $1_M3_R3_$memory@2 $1_M3_R3_$memory@1) (= (ControlFlow 0 13350) 13374))) anon5_correct)))
(let ((anon12_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_M3_R3_$memory@0 ($Memory_10364 (|Store__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory) _$t0 true) (|Store__T@[Int]$1_M3_R3_| (|contents#$Memory_10364| $1_M3_R3_$memory) _$t0 |$temp_0'$1_M3_R3'@0|)))) (and (= $1_M3_R3_$memory@2 $1_M3_R3_$memory@0) (= (ControlFlow 0 13479) 13374))) anon5_correct)))
(let ((anon11_Else_correct  (=> (not $t1@0) (and (=> (= (ControlFlow 0 13336) 13479) anon12_Then_correct) (=> (= (ControlFlow 0 13336) 13350) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon0$1_correct  (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10364| $1_M3_R3_$memory) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_10753| $1_M2_R2_$memory) addr@@0)))
 :qid |disableinvfriendsdefaultz3bpl.1302:20|
 :skolemid |36|
)) (=> (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_M3_R3_| (|contents#$Memory_10364| $1_M3_R3_$memory) $a_0)))
(|$IsValid'$1_M3_R3'| $rsc))
 :qid |disableinvfriendsdefaultz3bpl.1308:20|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]$1_M3_R3_| (|contents#$Memory_10364| $1_M3_R3_$memory) $a_0))
))) (=> (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_M2_R2_| (|contents#$Memory_10753| $1_M2_R2_$memory) $a_0@@0)))
(|$IsValid'$1_M2_R2'| $rsc@@0))
 :qid |disableinvfriendsdefaultz3bpl.1312:20|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]$1_M2_R2_| (|contents#$Memory_10753| $1_M2_R2_$memory) $a_0@@0))
)) (|Select__T@[Int]Bool_| $1_M2_R2_$modifies _$t0)) (and (|Select__T@[Int]Bool_| $1_M3_R3_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 13330) (- 0 15043)) (|Select__T@[Int]Bool_| $1_M3_R3_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $1_M3_R3_$modifies _$t0) (and (=> (= (ControlFlow 0 13330) 13491) anon11_Then_correct) (=> (= (ControlFlow 0 13330) 13336) anon11_Else_correct)))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14903) 13330) anon0$1_correct)))
anon0_correct)))))))))))))
))
(check-sat)
(pop 1)
; Valid
