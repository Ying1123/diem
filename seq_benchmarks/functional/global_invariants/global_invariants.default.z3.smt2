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
(declare-datatypes ((T@$42_TestGlobalInvariants_S 0)) ((($42_TestGlobalInvariants_S (|$x#$42_TestGlobalInvariants_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestGlobalInvariants_S| 0)
(declare-datatypes ((T@$Memory_11062 0)) ((($Memory_11062 (|domain#$Memory_11062| |T@[Int]Bool|) (|contents#$Memory_11062| |T@[Int]$42_TestGlobalInvariants_S|) ) ) ))
(declare-datatypes ((T@$42_TestGlobalInvariants_R 0)) ((($42_TestGlobalInvariants_R (|$x#$42_TestGlobalInvariants_R| Int) ) ) ))
(declare-sort |T@[Int]$42_TestGlobalInvariants_R| 0)
(declare-datatypes ((T@$Memory_10886 0)) ((($Memory_10886 (|domain#$Memory_10886| |T@[Int]Bool|) (|contents#$Memory_10886| |T@[Int]$42_TestGlobalInvariants_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8846 0)) ((($Mutation_8846 (|l#$Mutation_8846| T@$Location) (|p#$Mutation_8846| T@Vec_2977) (|v#$Mutation_8846| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestGlobalInvariants_R'| (T@$42_TestGlobalInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestGlobalInvariants_S'| (T@$42_TestGlobalInvariants_S) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |globalinvariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |globalinvariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |globalinvariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |globalinvariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |globalinvariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |globalinvariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |globalinvariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |globalinvariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |globalinvariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |globalinvariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |globalinvariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |globalinvariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |globalinvariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |globalinvariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |globalinvariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |globalinvariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |globalinvariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestGlobalInvariants_R) ) (! (= (|$IsValid'$42_TestGlobalInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_R| s)))
 :qid |globalinvariantsdefaultz3bpl.937:47|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestGlobalInvariants_S) ) (! (= (|$IsValid'$42_TestGlobalInvariants_S'| s@@0) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_S| s@@0)))
 :qid |globalinvariantsdefaultz3bpl.951:47|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_S'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |globalinvariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |globalinvariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |globalinvariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |globalinvariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |globalinvariantsdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |globalinvariantsdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |globalinvariantsdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |globalinvariantsdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $42_TestGlobalInvariants_R_$memory@1 () T@$Memory_10886)
(declare-fun $42_TestGlobalInvariants_S_$memory@1 () T@$Memory_11062)
(declare-fun $42_TestGlobalInvariants_R_$memory () T@$Memory_10886)
(declare-fun $abort_code@2 () Int)
(declare-fun _$t0 () Int)
(declare-fun $42_TestGlobalInvariants_R_$memory@0 () T@$Memory_10886)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int T@$42_TestGlobalInvariants_R) |T@[Int]$42_TestGlobalInvariants_R|)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int) T@$42_TestGlobalInvariants_R)
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_R|) ( ?x1 Int) ( ?x2 T@$42_TestGlobalInvariants_R)) (! (= (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|Store__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestGlobalInvariants_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|Store__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t5@0 () T@$42_TestGlobalInvariants_R)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestGlobalInvariants_S_$memory () T@$Memory_11062)
(declare-fun $42_TestGlobalInvariants_S_$memory@0 () T@$Memory_11062)
(declare-fun |Store__T@[Int]$42_TestGlobalInvariants_S_| (|T@[Int]$42_TestGlobalInvariants_S| Int T@$42_TestGlobalInvariants_S) |T@[Int]$42_TestGlobalInvariants_S|)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_S_| (|T@[Int]$42_TestGlobalInvariants_S| Int) T@$42_TestGlobalInvariants_S)
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_S|) ( ?x1 Int) ( ?x2 T@$42_TestGlobalInvariants_S)) (! (= (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|Store__T@[Int]$42_TestGlobalInvariants_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestGlobalInvariants_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|Store__T@[Int]$42_TestGlobalInvariants_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestGlobalInvariants_S_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0 () T@$42_TestGlobalInvariants_S)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_create_R$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16131) (let ((anon14_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 13950) (- 0 16523)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory@1) a) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory@1) a)))
 :qid |globalinvariantsdefaultz3bpl.1063:15|
 :skolemid |34|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory@1) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory@1) a@@0)))
 :qid |globalinvariantsdefaultz3bpl.1063:15|
 :skolemid |34|
)) (=> (= (ControlFlow 0 13950) (- 0 16547)) (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory@1) a@@1)))
 :qid |globalinvariantsdefaultz3bpl.1069:15|
 :skolemid |35|
))))))))
(let ((anon14_Then_correct true))
(let ((anon13_Then$1_correct  (=> (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory) (=> (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14020) 13964) anon14_Then_correct) (=> (= (ControlFlow 0 14020) 13950) anon14_Else_correct))))))
(let ((anon13_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0) (= (ControlFlow 0 14018) 14020)) anon13_Then$1_correct)))
(let ((anon13_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0)) (=> (and (and (= $42_TestGlobalInvariants_R_$memory@0 ($Memory_10886 (|Store__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0 true) (|Store__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0 $t5@0))) (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory@0)) (and (= $abort_flag@1 $abort_flag@0) (= $abort_code@2 $abort_code@1))) (and (=> (= (ControlFlow 0 13890) 13964) anon14_Then_correct) (=> (= (ControlFlow 0 13890) 13950) anon14_Else_correct))))))
(let ((anon12_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 13872) (- 0 16395)) (forall ((a@@2 Int) ) (!  (=> (|$IsValid'address'| a@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory@1) a@@2)))
 :qid |globalinvariantsdefaultz3bpl.1030:15|
 :skolemid |33|
))) (=> (forall ((a@@3 Int) ) (!  (=> (|$IsValid'address'| a@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) a@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory@1) a@@3)))
 :qid |globalinvariantsdefaultz3bpl.1030:15|
 :skolemid |33|
)) (=> (and (|$IsValid'u64'| 0) (= $t5@0 ($42_TestGlobalInvariants_R 0))) (and (=> (= (ControlFlow 0 13872) 14018) anon13_Then_correct) (=> (= (ControlFlow 0 13872) 13890) anon13_Else_correct))))))))
(let ((anon12_Then_correct true))
(let ((anon11_Then$1_correct  (=> (= $42_TestGlobalInvariants_S_$memory@1 $42_TestGlobalInvariants_S_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14084) 14034) anon12_Then_correct) (=> (= (ControlFlow 0 14084) 13872) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) _$t0) (= (ControlFlow 0 14082) 14084)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) _$t0)) (=> (and (and (= $42_TestGlobalInvariants_S_$memory@0 ($Memory_11062 (|Store__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) _$t0 true) (|Store__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_11062| $42_TestGlobalInvariants_S_$memory) _$t0 $t2@0))) (= $42_TestGlobalInvariants_S_$memory@1 $42_TestGlobalInvariants_S_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 13821) 14034) anon12_Then_correct) (=> (= (ControlFlow 0 13821) 13872) anon12_Else_correct))))))
(let ((anon0$1_correct  (=> (forall ((a@@4 Int) ) (!  (=> (|$IsValid'address'| a@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) a@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) a@@4)))
 :qid |globalinvariantsdefaultz3bpl.980:20|
 :skolemid |30|
)) (=> (and (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $a_0)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc))
 :qid |globalinvariantsdefaultz3bpl.986:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_11062| $42_TestGlobalInvariants_S_$memory) $a_0@@0)))
(|$IsValid'$42_TestGlobalInvariants_S'| $rsc@@0))
 :qid |globalinvariantsdefaultz3bpl.990:20|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_11062| $42_TestGlobalInvariants_S_$memory) $a_0@@0))
)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0)))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) _$t0)) (= _$t0 _$t0)) (and (|$IsValid'u64'| 0) (= $t2@0 ($42_TestGlobalInvariants_S 0))))) (and (=> (= (ControlFlow 0 13803) 14082) anon11_Then_correct) (=> (= (ControlFlow 0 13803) 13821) anon11_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 16131) 13803) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestGlobalInvariants_S 0)) ((($42_TestGlobalInvariants_S (|$x#$42_TestGlobalInvariants_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestGlobalInvariants_S| 0)
(declare-datatypes ((T@$Memory_11062 0)) ((($Memory_11062 (|domain#$Memory_11062| |T@[Int]Bool|) (|contents#$Memory_11062| |T@[Int]$42_TestGlobalInvariants_S|) ) ) ))
(declare-datatypes ((T@$42_TestGlobalInvariants_R 0)) ((($42_TestGlobalInvariants_R (|$x#$42_TestGlobalInvariants_R| Int) ) ) ))
(declare-sort |T@[Int]$42_TestGlobalInvariants_R| 0)
(declare-datatypes ((T@$Memory_10886 0)) ((($Memory_10886 (|domain#$Memory_10886| |T@[Int]Bool|) (|contents#$Memory_10886| |T@[Int]$42_TestGlobalInvariants_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8846 0)) ((($Mutation_8846 (|l#$Mutation_8846| T@$Location) (|p#$Mutation_8846| T@Vec_2977) (|v#$Mutation_8846| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestGlobalInvariants_R'| (T@$42_TestGlobalInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestGlobalInvariants_S'| (T@$42_TestGlobalInvariants_S) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |globalinvariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |globalinvariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |globalinvariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |globalinvariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |globalinvariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |globalinvariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |globalinvariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |globalinvariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |globalinvariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |globalinvariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |globalinvariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |globalinvariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |globalinvariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |globalinvariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |globalinvariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |globalinvariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |globalinvariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestGlobalInvariants_R) ) (! (= (|$IsValid'$42_TestGlobalInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_R| s)))
 :qid |globalinvariantsdefaultz3bpl.937:47|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestGlobalInvariants_S) ) (! (= (|$IsValid'$42_TestGlobalInvariants_S'| s@@0) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_S| s@@0)))
 :qid |globalinvariantsdefaultz3bpl.951:47|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_S'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |globalinvariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |globalinvariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |globalinvariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |globalinvariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |globalinvariantsdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |globalinvariantsdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |globalinvariantsdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |globalinvariantsdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_TestGlobalInvariants_R_$memory@1 () T@$Memory_10886)
(declare-fun $42_TestGlobalInvariants_S_$memory () T@$Memory_11062)
(declare-fun $42_TestGlobalInvariants_R_$memory () T@$Memory_10886)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () Int)
(declare-fun $42_TestGlobalInvariants_R_$memory@0 () T@$Memory_10886)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int T@$42_TestGlobalInvariants_R) |T@[Int]$42_TestGlobalInvariants_R|)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int) T@$42_TestGlobalInvariants_R)
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_R|) ( ?x1 Int) ( ?x2 T@$42_TestGlobalInvariants_R)) (! (= (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|Store__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestGlobalInvariants_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|Store__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0 () T@$42_TestGlobalInvariants_R)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_create_R_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16602) (let ((anon7_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 14328) (- 0 16815)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory@1) a) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) a)))
 :qid |globalinvariantsdefaultz3bpl.1150:15|
 :skolemid |38|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory@1) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) a@@0)))
 :qid |globalinvariantsdefaultz3bpl.1150:15|
 :skolemid |38|
)) (=> (= (ControlFlow 0 14328) (- 0 16840)) (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory@1) a@@1)))
 :qid |globalinvariantsdefaultz3bpl.1156:15|
 :skolemid |39|
))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14396) 14346) anon7_Then_correct) (=> (= (ControlFlow 0 14396) 14328) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0) (= (ControlFlow 0 14394) 14396)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0)) (=> (and (and (= $42_TestGlobalInvariants_R_$memory@0 ($Memory_10886 (|Store__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0 true) (|Store__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0 $t2@0))) (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 14268) 14346) anon7_Then_correct) (=> (= (ControlFlow 0 14268) 14328) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (and (forall ((a@@2 Int) ) (!  (=> (|$IsValid'address'| a@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) a@@2)))
 :qid |globalinvariantsdefaultz3bpl.1107:20|
 :skolemid |36|
)) (|$IsValid'address'| _$t0)) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $a_0)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc))
 :qid |globalinvariantsdefaultz3bpl.1113:20|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (|$IsValid'u64'| 0) (= $t2@0 ($42_TestGlobalInvariants_R 0)))) (and (=> (= (ControlFlow 0 14250) 14394) anon6_Then_correct) (=> (= (ControlFlow 0 14250) 14268) anon6_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 16602) 14250) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 16602)))
(get-value ((ControlFlow 0 14250)))
(get-value ((ControlFlow 0 14268)))
(get-value ((ControlFlow 0 14328)))
(assert (not (= (ControlFlow 0 14328) (- 16815))))
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
(declare-datatypes ((T@$42_TestGlobalInvariants_S 0)) ((($42_TestGlobalInvariants_S (|$x#$42_TestGlobalInvariants_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestGlobalInvariants_S| 0)
(declare-datatypes ((T@$Memory_11062 0)) ((($Memory_11062 (|domain#$Memory_11062| |T@[Int]Bool|) (|contents#$Memory_11062| |T@[Int]$42_TestGlobalInvariants_S|) ) ) ))
(declare-datatypes ((T@$42_TestGlobalInvariants_R 0)) ((($42_TestGlobalInvariants_R (|$x#$42_TestGlobalInvariants_R| Int) ) ) ))
(declare-sort |T@[Int]$42_TestGlobalInvariants_R| 0)
(declare-datatypes ((T@$Memory_10886 0)) ((($Memory_10886 (|domain#$Memory_10886| |T@[Int]Bool|) (|contents#$Memory_10886| |T@[Int]$42_TestGlobalInvariants_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8846 0)) ((($Mutation_8846 (|l#$Mutation_8846| T@$Location) (|p#$Mutation_8846| T@Vec_2977) (|v#$Mutation_8846| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestGlobalInvariants_R'| (T@$42_TestGlobalInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestGlobalInvariants_S'| (T@$42_TestGlobalInvariants_S) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |globalinvariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |globalinvariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |globalinvariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |globalinvariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |globalinvariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |globalinvariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |globalinvariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |globalinvariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |globalinvariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |globalinvariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |globalinvariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |globalinvariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |globalinvariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |globalinvariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |globalinvariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |globalinvariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |globalinvariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestGlobalInvariants_R) ) (! (= (|$IsValid'$42_TestGlobalInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_R| s)))
 :qid |globalinvariantsdefaultz3bpl.937:47|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestGlobalInvariants_S) ) (! (= (|$IsValid'$42_TestGlobalInvariants_S'| s@@0) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_S| s@@0)))
 :qid |globalinvariantsdefaultz3bpl.951:47|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_S'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |globalinvariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |globalinvariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |globalinvariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |globalinvariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |globalinvariantsdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |globalinvariantsdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |globalinvariantsdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |globalinvariantsdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t9@0 () Int)
(declare-fun $t8@1 () T@$42_TestGlobalInvariants_S)
(declare-fun $42_TestGlobalInvariants_R_$memory () T@$Memory_10886)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_S_| (|T@[Int]$42_TestGlobalInvariants_S| Int) T@$42_TestGlobalInvariants_S)
(declare-fun $42_TestGlobalInvariants_S_$memory () T@$Memory_11062)
(declare-fun $abort_code@1 () Int)
(declare-fun $t8 () T@$42_TestGlobalInvariants_S)
(declare-fun $t7 () Int)
(declare-fun $t8@0 () T@$42_TestGlobalInvariants_S)
(declare-fun $abort_code@0 () Int)
(declare-fun $t4@0 () Bool)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int) T@$42_TestGlobalInvariants_R)
(declare-fun $t3 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_get_S_x$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16873) (let ((anon12_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t9@0 (|$x#$42_TestGlobalInvariants_S| $t8@1)) (= $t9@0 $t9@0)) (and (=> (= (ControlFlow 0 14705) (- 0 17189)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0))) (=> (= (ControlFlow 0 14705) (- 0 17202)) (= $t9@0 (|$x#$42_TestGlobalInvariants_S| (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_11062| $42_TestGlobalInvariants_S_$memory) _$t0))))))))))
(let ((L3_correct  (=> (= (ControlFlow 0 14623) (- 0 17152)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0)))))
(let ((anon12_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 14719) 14623)) L3_correct))))
(let ((anon11_Then$1_correct  (=> (= $t8@1 $t8) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14771) 14719) anon12_Then_correct) (=> (= (ControlFlow 0 14771) 14705) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) $t7)) (= (ControlFlow 0 14769) 14771)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) $t7) (=> (and (and (= $t8@0 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_11062| $42_TestGlobalInvariants_S_$memory) $t7)) (= $t8@1 $t8@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 14653) 14719) anon12_Then_correct) (=> (= (ControlFlow 0 14653) 14705) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> $t4@0 (=> (and (|$IsValid'address'| $t7) (= $t7 _$t0)) (and (=> (= (ControlFlow 0 14639) 14769) anon11_Then_correct) (=> (= (ControlFlow 0 14639) 14653) anon11_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (and (not $t4@0) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 14605) 14623))) L3_correct)))
(let ((anon0$1_correct  (=> (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) a) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) a)))
 :qid |globalinvariantsdefaultz3bpl.1202:20|
 :skolemid |40|
)) (=> (and (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $a_0)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc))
 :qid |globalinvariantsdefaultz3bpl.1209:20|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_11062| $42_TestGlobalInvariants_S_$memory) $a_0@@0)))
(|$IsValid'$42_TestGlobalInvariants_S'| $rsc@@0))
 :qid |globalinvariantsdefaultz3bpl.1213:20|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_11062| $42_TestGlobalInvariants_S_$memory) $a_0@@0))
)) (= _$t0 _$t0))) (and (and (|$IsValid'address'| $t3) (= $t3 _$t0)) (and (= $t4@0 (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $t3)) (= $t4@0 $t4@0)))) (and (=> (= (ControlFlow 0 14583) 14639) anon10_Then_correct) (=> (= (ControlFlow 0 14583) 14605) anon10_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 16873) 14583) anon0$1_correct)))
anon0_correct)))))))))))
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
(declare-datatypes ((T@$42_TestGlobalInvariants_S 0)) ((($42_TestGlobalInvariants_S (|$x#$42_TestGlobalInvariants_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestGlobalInvariants_S| 0)
(declare-datatypes ((T@$Memory_11062 0)) ((($Memory_11062 (|domain#$Memory_11062| |T@[Int]Bool|) (|contents#$Memory_11062| |T@[Int]$42_TestGlobalInvariants_S|) ) ) ))
(declare-datatypes ((T@$42_TestGlobalInvariants_R 0)) ((($42_TestGlobalInvariants_R (|$x#$42_TestGlobalInvariants_R| Int) ) ) ))
(declare-sort |T@[Int]$42_TestGlobalInvariants_R| 0)
(declare-datatypes ((T@$Memory_10886 0)) ((($Memory_10886 (|domain#$Memory_10886| |T@[Int]Bool|) (|contents#$Memory_10886| |T@[Int]$42_TestGlobalInvariants_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8846 0)) ((($Mutation_8846 (|l#$Mutation_8846| T@$Location) (|p#$Mutation_8846| T@Vec_2977) (|v#$Mutation_8846| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestGlobalInvariants_R'| (T@$42_TestGlobalInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestGlobalInvariants_S'| (T@$42_TestGlobalInvariants_S) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |globalinvariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |globalinvariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |globalinvariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |globalinvariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |globalinvariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |globalinvariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |globalinvariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |globalinvariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |globalinvariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |globalinvariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |globalinvariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |globalinvariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |globalinvariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |globalinvariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |globalinvariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |globalinvariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |globalinvariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestGlobalInvariants_R) ) (! (= (|$IsValid'$42_TestGlobalInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_R| s)))
 :qid |globalinvariantsdefaultz3bpl.937:47|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestGlobalInvariants_S) ) (! (= (|$IsValid'$42_TestGlobalInvariants_S'| s@@0) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_S| s@@0)))
 :qid |globalinvariantsdefaultz3bpl.951:47|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_S'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |globalinvariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |globalinvariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |globalinvariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |globalinvariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |globalinvariantsdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |globalinvariantsdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |globalinvariantsdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |globalinvariantsdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_TestGlobalInvariants_R_$memory@1 () T@$Memory_10886)
(declare-fun $42_TestGlobalInvariants_S_$memory () T@$Memory_11062)
(declare-fun $42_TestGlobalInvariants_R_$memory () T@$Memory_10886)
(declare-fun $abort_code@1 () Int)
(declare-fun $t7 () Int)
(declare-fun $t8@0 () T@$42_TestGlobalInvariants_R)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int) T@$42_TestGlobalInvariants_R)
(declare-fun $42_TestGlobalInvariants_R_$memory@0 () T@$Memory_10886)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(declare-fun $t4@0 () Bool)
(declare-fun _$t0 () Int)
(declare-fun $t3 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_remove_R_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17224) (let ((anon11_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 15069) (- 0 17502)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory@1) a) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) a)))
 :qid |globalinvariantsdefaultz3bpl.1456:15|
 :skolemid |45|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory@1) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) a@@0)))
 :qid |globalinvariantsdefaultz3bpl.1456:15|
 :skolemid |45|
)) (=> (= (ControlFlow 0 15069) (- 0 17527)) (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory@1) a@@1)))
 :qid |globalinvariantsdefaultz3bpl.1462:15|
 :skolemid |46|
))))))))
(let ((anon11_Then_correct true))
(let ((anon10_Then$1_correct  (=> (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 15135) 15083) anon11_Then_correct) (=> (= (ControlFlow 0 15135) 15069) anon11_Else_correct))))))
(let ((anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $t7)) (= (ControlFlow 0 15133) 15135)) anon10_Then$1_correct)))
(let ((anon10_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $t7) (= $t8@0 (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $t7))) (=> (and (and (= $42_TestGlobalInvariants_R_$memory@0 ($Memory_10886 (|Store__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $t7 false) (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory))) (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 15003) 15083) anon11_Then_correct) (=> (= (ControlFlow 0 15003) 15069) anon11_Else_correct))))))
(let ((anon9_Then_correct  (=> $t4@0 (=> (and (|$IsValid'address'| $t7) (= $t7 _$t0)) (and (=> (= (ControlFlow 0 14983) 15133) anon10_Then_correct) (=> (= (ControlFlow 0 14983) 15003) anon10_Else_correct))))))
(let ((anon9_Else_correct true))
(let ((anon0$1_correct  (=> (and (and (and (forall ((a@@2 Int) ) (!  (=> (|$IsValid'address'| a@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) a@@2)))
 :qid |globalinvariantsdefaultz3bpl.1361:20|
 :skolemid |43|
)) (|$IsValid'address'| _$t0)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $a_0)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc))
 :qid |globalinvariantsdefaultz3bpl.1367:20|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $a_0))
)) (= _$t0 _$t0))) (and (and (|$IsValid'address'| $t3) (= $t3 _$t0)) (and (= $t4@0 (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $t3)) (= $t4@0 $t4@0)))) (and (=> (= (ControlFlow 0 14933) 14983) anon9_Then_correct) (=> (= (ControlFlow 0 14933) 14955) anon9_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 17224) 14933) anon0$1_correct)))
anon0_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 17224)))
(get-value ((ControlFlow 0 14933)))
(get-value ((ControlFlow 0 14983)))
(get-value ((ControlFlow 0 15003)))
(get-value ((ControlFlow 0 15069)))
(assert (not (= (ControlFlow 0 15069) (- 17527))))
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
(declare-datatypes ((T@$42_TestGlobalInvariants_S 0)) ((($42_TestGlobalInvariants_S (|$x#$42_TestGlobalInvariants_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestGlobalInvariants_S| 0)
(declare-datatypes ((T@$Memory_11062 0)) ((($Memory_11062 (|domain#$Memory_11062| |T@[Int]Bool|) (|contents#$Memory_11062| |T@[Int]$42_TestGlobalInvariants_S|) ) ) ))
(declare-datatypes ((T@$42_TestGlobalInvariants_R 0)) ((($42_TestGlobalInvariants_R (|$x#$42_TestGlobalInvariants_R| Int) ) ) ))
(declare-sort |T@[Int]$42_TestGlobalInvariants_R| 0)
(declare-datatypes ((T@$Memory_10886 0)) ((($Memory_10886 (|domain#$Memory_10886| |T@[Int]Bool|) (|contents#$Memory_10886| |T@[Int]$42_TestGlobalInvariants_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8846 0)) ((($Mutation_8846 (|l#$Mutation_8846| T@$Location) (|p#$Mutation_8846| T@Vec_2977) (|v#$Mutation_8846| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestGlobalInvariants_R'| (T@$42_TestGlobalInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestGlobalInvariants_S'| (T@$42_TestGlobalInvariants_S) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |globalinvariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |globalinvariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |globalinvariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |globalinvariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |globalinvariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |globalinvariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |globalinvariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |globalinvariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |globalinvariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |globalinvariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |globalinvariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |globalinvariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |globalinvariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |globalinvariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |globalinvariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |globalinvariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |globalinvariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestGlobalInvariants_R) ) (! (= (|$IsValid'$42_TestGlobalInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_R| s)))
 :qid |globalinvariantsdefaultz3bpl.937:47|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestGlobalInvariants_S) ) (! (= (|$IsValid'$42_TestGlobalInvariants_S'| s@@0) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_S| s@@0)))
 :qid |globalinvariantsdefaultz3bpl.951:47|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_S'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |globalinvariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |globalinvariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |globalinvariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |globalinvariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |globalinvariantsdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |globalinvariantsdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |globalinvariantsdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |globalinvariantsdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_TestGlobalInvariants_R_$memory () T@$Memory_10886)
(declare-fun $42_TestGlobalInvariants_S_$memory@1 () T@$Memory_11062)
(declare-fun $t9@0 () Int)
(declare-fun $t8 () T@$42_TestGlobalInvariants_S)
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestGlobalInvariants_S_$memory () T@$Memory_11062)
(declare-fun $t7 () Int)
(declare-fun $t8@0 () T@$42_TestGlobalInvariants_S)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_S_| (|T@[Int]$42_TestGlobalInvariants_S| Int) T@$42_TestGlobalInvariants_S)
(declare-fun $42_TestGlobalInvariants_S_$memory@0 () T@$Memory_11062)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(declare-fun $t4@0 () Bool)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int) T@$42_TestGlobalInvariants_R)
(declare-fun $t3 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_remove_S_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17572) (let ((anon12_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 15451) (- 0 17877)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) a) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory@1) a)))
 :qid |globalinvariantsdefaultz3bpl.1609:15|
 :skolemid |50|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory@1) a@@0)))
 :qid |globalinvariantsdefaultz3bpl.1609:15|
 :skolemid |50|
)) (=> (and (= $t9@0 (|$x#$42_TestGlobalInvariants_S| $t8)) (= (ControlFlow 0 15451) (- 0 17918))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0)))))))))
(let ((L3_correct  (=> (= (ControlFlow 0 15360) (- 0 17857)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) _$t0)))))
(let ((anon12_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 15465) 15360)) L3_correct))))
(let ((anon11_Then$1_correct  (=> (= $42_TestGlobalInvariants_S_$memory@1 $42_TestGlobalInvariants_S_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 15517) 15465) anon12_Then_correct) (=> (= (ControlFlow 0 15517) 15451) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) $t7)) (= (ControlFlow 0 15515) 15517)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) $t7) (= $t8@0 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_11062| $42_TestGlobalInvariants_S_$memory) $t7))) (=> (and (and (= $42_TestGlobalInvariants_S_$memory@0 ($Memory_11062 (|Store__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) $t7 false) (|contents#$Memory_11062| $42_TestGlobalInvariants_S_$memory))) (= $42_TestGlobalInvariants_S_$memory@1 $42_TestGlobalInvariants_S_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 15396) 15465) anon12_Then_correct) (=> (= (ControlFlow 0 15396) 15451) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> $t4@0 (=> (and (|$IsValid'address'| $t7) (= $t7 _$t0)) (and (=> (= (ControlFlow 0 15376) 15515) anon11_Then_correct) (=> (= (ControlFlow 0 15376) 15396) anon11_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (and (not $t4@0) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 15342) 15360))) L3_correct)))
(let ((anon0$1_correct  (=> (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_11062| $42_TestGlobalInvariants_S_$memory) a@@1)))
 :qid |globalinvariantsdefaultz3bpl.1513:20|
 :skolemid |47|
)) (=> (and (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $a_0)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc))
 :qid |globalinvariantsdefaultz3bpl.1519:20|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_11062| $42_TestGlobalInvariants_S_$memory) $a_0@@0)))
(|$IsValid'$42_TestGlobalInvariants_S'| $rsc@@0))
 :qid |globalinvariantsdefaultz3bpl.1523:20|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_11062| $42_TestGlobalInvariants_S_$memory) $a_0@@0))
)) (= _$t0 _$t0))) (and (and (|$IsValid'address'| $t3) (= $t3 _$t0)) (and (= $t4@0 (|Select__T@[Int]Bool_| (|domain#$Memory_10886| $42_TestGlobalInvariants_R_$memory) $t3)) (= $t4@0 $t4@0)))) (and (=> (= (ControlFlow 0 15320) 15376) anon10_Then_correct) (=> (= (ControlFlow 0 15320) 15342) anon10_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 17572) 15320) anon0$1_correct)))
anon0_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 17572)))
(get-value ((ControlFlow 0 15320)))
(get-value ((ControlFlow 0 15376)))
(get-value ((ControlFlow 0 15396)))
(get-value ((ControlFlow 0 15451)))
(assert (not (= (ControlFlow 0 15451) (- 17877))))
(check-sat)
(pop 1)
; Invalid
