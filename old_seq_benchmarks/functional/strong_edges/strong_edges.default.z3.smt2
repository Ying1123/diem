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
(declare-datatypes ((T@$42_TestStrongEdges_S 0)) ((($42_TestStrongEdges_S (|$x#$42_TestStrongEdges_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestStrongEdges_S| 0)
(declare-datatypes ((T@$Memory_13361 0)) ((($Memory_13361 (|domain#$Memory_13361| |T@[Int]Bool|) (|contents#$Memory_13361| |T@[Int]$42_TestStrongEdges_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13394 0)) ((($Mutation_13394 (|l#$Mutation_13394| T@$Location) (|p#$Mutation_13394| T@Vec_2977) (|v#$Mutation_13394| T@$42_TestStrongEdges_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9867 0)) ((($Mutation_9867 (|l#$Mutation_9867| T@$Location) (|p#$Mutation_9867| T@Vec_2977) (|v#$Mutation_9867| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u64''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_2977 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestStrongEdges_S'| (T@$42_TestStrongEdges_S) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |strongedgesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |strongedgesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |strongedgesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |strongedgesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |strongedgesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |strongedgesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |strongedgesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |strongedgesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |strongedgesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |strongedgesdefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |strongedgesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |strongedgesdefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |strongedgesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |strongedgesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |strongedgesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |strongedgesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |strongedgesdefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |strongedgesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |strongedgesdefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |strongedgesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |strongedgesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |strongedgesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |strongedgesdefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |strongedgesdefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |strongedgesdefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |strongedgesdefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestStrongEdges_S) ) (! (= (|$IsValid'$42_TestStrongEdges_S'| s) (|$IsValid'u64'| (|$x#$42_TestStrongEdges_S| s)))
 :qid |strongedgesdefaultz3bpl.1113:42|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestStrongEdges_S'| s))
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_2977| v@@8))))
 :qid |strongedgesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@9 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@10 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@10) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@10) e@@1))
 :qid |strongedgesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@9 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@9) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@9) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@9)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |strongedgesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |strongedgesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |strongedgesdefaultz3bpl.275:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@12 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12) (ite  (and (>= i@@12 |l#0@@0|) (< i@@12 |l#1|)) (ite (< i@@12 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@12) (|Select__T@[Int]Int_| |l#4| (- i@@12 |l#5|))) |l#6|))
 :qid |strongedgesdefaultz3bpl.73:19|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@13 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13) (ite  (and (<= |l#0@@1| i@@13) (< i@@13 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@13) |l#4@@0|)) |l#5@@0|))
 :qid |strongedgesdefaultz3bpl.82:30|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |strongedgesdefaultz3bpl.63:20|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$42_TestStrongEdges_S'@0| () T@$42_TestStrongEdges_S)
(declare-fun $t2@1 () T@$Mutation_13394)
(declare-fun $t5@0 () T@$Mutation_3601)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t5@1 () T@$Mutation_3601)
(declare-fun $t2@2 () T@$Mutation_13394)
(declare-fun $42_TestStrongEdges_S_$memory@0 () T@$Memory_13361)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $42_TestStrongEdges_S_$memory () T@$Memory_13361)
(declare-fun |Store__T@[Int]$42_TestStrongEdges_S_| (|T@[Int]$42_TestStrongEdges_S| Int T@$42_TestStrongEdges_S) |T@[Int]$42_TestStrongEdges_S|)
(declare-fun |Select__T@[Int]$42_TestStrongEdges_S_| (|T@[Int]$42_TestStrongEdges_S| Int) T@$42_TestStrongEdges_S)
(assert (forall ( ( ?x0 |T@[Int]$42_TestStrongEdges_S|) ( ?x1 Int) ( ?x2 T@$42_TestStrongEdges_S)) (! (= (|Select__T@[Int]$42_TestStrongEdges_S_| (|Store__T@[Int]$42_TestStrongEdges_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestStrongEdges_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestStrongEdges_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestStrongEdges_S_| (|Store__T@[Int]$42_TestStrongEdges_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestStrongEdges_S_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$Mutation_13394)
(declare-fun $t2@0 () T@$Mutation_13394)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $42_TestStrongEdges_S_$modifies () |T@[Int]Bool|)
(declare-fun $t1 () T@$Mutation_13394)
(declare-fun $t5 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_TestStrongEdges_glob_and_field_edges$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18148) (let ((anon8_Else_correct  (=> (and (and (and (not $abort_flag@0) (= |$temp_0'$42_TestStrongEdges_S'@0| (|v#$Mutation_13394| $t2@1))) (and (= |$temp_0'$42_TestStrongEdges_S'@0| |$temp_0'$42_TestStrongEdges_S'@0|) (|$IsValid'u64'| 2))) (and (and (= $t5@0 ($Mutation_3601 (|l#$Mutation_13394| $t2@1) (let ((l (|l#Vec_2977| (|p#$Mutation_13394| $t2@1))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_13394| $t2@1)) l 0) (+ l 1))) (|$x#$42_TestStrongEdges_S| (|v#$Mutation_13394| $t2@1)))) (= $t5@1 ($Mutation_3601 (|l#$Mutation_3601| $t5@0) (|p#$Mutation_3601| $t5@0) 2))) (and (= $t2@2 ($Mutation_13394 (|l#$Mutation_13394| $t2@1) (|p#$Mutation_13394| $t2@1) ($42_TestStrongEdges_S (|v#$Mutation_3601| $t5@1)))) (= $42_TestStrongEdges_S_$memory@0 ($Memory_13361 (|Store__T@[Int]Bool_| (|domain#$Memory_13361| $42_TestStrongEdges_S_$memory) (|a#$Global| (|l#$Mutation_13394| $t2@2)) true) (|Store__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_13361| $42_TestStrongEdges_S_$memory) (|a#$Global| (|l#$Mutation_13394| $t2@2)) (|v#$Mutation_13394| $t2@2))))))) (and (=> (= (ControlFlow 0 16076) (- 0 18459)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_13361| $42_TestStrongEdges_S_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_13361| $42_TestStrongEdges_S_$memory) _$t0))) (=> (= (ControlFlow 0 16076) (- 0 18470)) (= (|$x#$42_TestStrongEdges_S| (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_13361| $42_TestStrongEdges_S_$memory@0) _$t0)) 2)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 16104) (- 0 18357))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_13361| $42_TestStrongEdges_S_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 16156) 16104) anon8_Then_correct) (=> (= (ControlFlow 0 16156) 16076) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_13361| $42_TestStrongEdges_S_$memory) _$t0)) (= (ControlFlow 0 16154) 16156)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13361| $42_TestStrongEdges_S_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_13394 ($Global _$t0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_13361| $42_TestStrongEdges_S_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 15978) 16104) anon8_Then_correct) (=> (= (ControlFlow 0 15978) 16076) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_13361| $42_TestStrongEdges_S_$memory) $a_0)))
(|$IsValid'$42_TestStrongEdges_S'| $rsc))
 :qid |strongedgesdefaultz3bpl.1149:20|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_13361| $42_TestStrongEdges_S_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $42_TestStrongEdges_S_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 15956) (- 0 18270)) (|Select__T@[Int]Bool_| $42_TestStrongEdges_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $42_TestStrongEdges_S_$modifies _$t0) (and (=> (= (ControlFlow 0 15956) 16154) anon7_Then_correct) (=> (= (ControlFlow 0 15956) 15978) anon7_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_13394| $t1)) 0) (= (|l#Vec_2977| (|p#$Mutation_13394| $t2)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t5)) 0) (= (ControlFlow 0 15900) 15956))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18148) 15900) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
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
(declare-datatypes ((T@$42_TestStrongEdges_S 0)) ((($42_TestStrongEdges_S (|$x#$42_TestStrongEdges_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestStrongEdges_S| 0)
(declare-datatypes ((T@$Memory_13361 0)) ((($Memory_13361 (|domain#$Memory_13361| |T@[Int]Bool|) (|contents#$Memory_13361| |T@[Int]$42_TestStrongEdges_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13394 0)) ((($Mutation_13394 (|l#$Mutation_13394| T@$Location) (|p#$Mutation_13394| T@Vec_2977) (|v#$Mutation_13394| T@$42_TestStrongEdges_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9867 0)) ((($Mutation_9867 (|l#$Mutation_9867| T@$Location) (|p#$Mutation_9867| T@Vec_2977) (|v#$Mutation_9867| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u64''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_2977 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestStrongEdges_S'| (T@$42_TestStrongEdges_S) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |strongedgesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |strongedgesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |strongedgesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |strongedgesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |strongedgesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |strongedgesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |strongedgesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |strongedgesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |strongedgesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |strongedgesdefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |strongedgesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |strongedgesdefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |strongedgesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |strongedgesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |strongedgesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |strongedgesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |strongedgesdefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |strongedgesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |strongedgesdefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |strongedgesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |strongedgesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |strongedgesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |strongedgesdefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |strongedgesdefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |strongedgesdefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |strongedgesdefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestStrongEdges_S) ) (! (= (|$IsValid'$42_TestStrongEdges_S'| s) (|$IsValid'u64'| (|$x#$42_TestStrongEdges_S| s)))
 :qid |strongedgesdefaultz3bpl.1113:42|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestStrongEdges_S'| s))
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_2977| v@@8))))
 :qid |strongedgesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@9 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@10 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@10) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@10) e@@1))
 :qid |strongedgesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@9 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@9) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@9) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@9)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |strongedgesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |strongedgesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |strongedgesdefaultz3bpl.275:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@12 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12) (ite  (and (>= i@@12 |l#0@@0|) (< i@@12 |l#1|)) (ite (< i@@12 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@12) (|Select__T@[Int]Int_| |l#4| (- i@@12 |l#5|))) |l#6|))
 :qid |strongedgesdefaultz3bpl.73:19|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@13 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13) (ite  (and (<= |l#0@@1| i@@13) (< i@@13 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@13) |l#4@@0|)) |l#5@@0|))
 :qid |strongedgesdefaultz3bpl.82:30|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |strongedgesdefaultz3bpl.63:20|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$42_TestStrongEdges_S'@0| () T@$42_TestStrongEdges_S)
(declare-fun $t2@1 () T@$Mutation_13394)
(declare-fun $t5@0 () T@$Mutation_3601)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t5@1 () T@$Mutation_3601)
(declare-fun $t2@2 () T@$Mutation_13394)
(declare-fun $42_TestStrongEdges_S_$memory@0 () T@$Memory_13361)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $42_TestStrongEdges_S_$memory () T@$Memory_13361)
(declare-fun |Store__T@[Int]$42_TestStrongEdges_S_| (|T@[Int]$42_TestStrongEdges_S| Int T@$42_TestStrongEdges_S) |T@[Int]$42_TestStrongEdges_S|)
(declare-fun |Select__T@[Int]$42_TestStrongEdges_S_| (|T@[Int]$42_TestStrongEdges_S| Int) T@$42_TestStrongEdges_S)
(assert (forall ( ( ?x0 |T@[Int]$42_TestStrongEdges_S|) ( ?x1 Int) ( ?x2 T@$42_TestStrongEdges_S)) (! (= (|Select__T@[Int]$42_TestStrongEdges_S_| (|Store__T@[Int]$42_TestStrongEdges_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestStrongEdges_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestStrongEdges_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestStrongEdges_S_| (|Store__T@[Int]$42_TestStrongEdges_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestStrongEdges_S_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$Mutation_13394)
(declare-fun $t2@0 () T@$Mutation_13394)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $42_TestStrongEdges_S_$modifies () |T@[Int]Bool|)
(declare-fun $t1 () T@$Mutation_13394)
(declare-fun $t5 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_TestStrongEdges_glob_and_field_edges_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18504) (let ((anon8_Else_correct  (=> (and (and (and (not $abort_flag@0) (= |$temp_0'$42_TestStrongEdges_S'@0| (|v#$Mutation_13394| $t2@1))) (and (= |$temp_0'$42_TestStrongEdges_S'@0| |$temp_0'$42_TestStrongEdges_S'@0|) (|$IsValid'u64'| 2))) (and (and (= $t5@0 ($Mutation_3601 (|l#$Mutation_13394| $t2@1) (let ((l (|l#Vec_2977| (|p#$Mutation_13394| $t2@1))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_13394| $t2@1)) l 0) (+ l 1))) (|$x#$42_TestStrongEdges_S| (|v#$Mutation_13394| $t2@1)))) (= $t5@1 ($Mutation_3601 (|l#$Mutation_3601| $t5@0) (|p#$Mutation_3601| $t5@0) 2))) (and (= $t2@2 ($Mutation_13394 (|l#$Mutation_13394| $t2@1) (|p#$Mutation_13394| $t2@1) ($42_TestStrongEdges_S (|v#$Mutation_3601| $t5@1)))) (= $42_TestStrongEdges_S_$memory@0 ($Memory_13361 (|Store__T@[Int]Bool_| (|domain#$Memory_13361| $42_TestStrongEdges_S_$memory) (|a#$Global| (|l#$Mutation_13394| $t2@2)) true) (|Store__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_13361| $42_TestStrongEdges_S_$memory) (|a#$Global| (|l#$Mutation_13394| $t2@2)) (|v#$Mutation_13394| $t2@2))))))) (and (=> (= (ControlFlow 0 16446) (- 0 18815)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_13361| $42_TestStrongEdges_S_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_13361| $42_TestStrongEdges_S_$memory) _$t0))) (=> (= (ControlFlow 0 16446) (- 0 18826)) (= (|$x#$42_TestStrongEdges_S| (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_13361| $42_TestStrongEdges_S_$memory@0) _$t0)) 3)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 16474) (- 0 18713))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_13361| $42_TestStrongEdges_S_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 16526) 16474) anon8_Then_correct) (=> (= (ControlFlow 0 16526) 16446) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_13361| $42_TestStrongEdges_S_$memory) _$t0)) (= (ControlFlow 0 16524) 16526)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_13361| $42_TestStrongEdges_S_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_13394 ($Global _$t0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_13361| $42_TestStrongEdges_S_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 16348) 16474) anon8_Then_correct) (=> (= (ControlFlow 0 16348) 16446) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_13361| $42_TestStrongEdges_S_$memory) $a_0)))
(|$IsValid'$42_TestStrongEdges_S'| $rsc))
 :qid |strongedgesdefaultz3bpl.1264:20|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_13361| $42_TestStrongEdges_S_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $42_TestStrongEdges_S_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 16326) (- 0 18626)) (|Select__T@[Int]Bool_| $42_TestStrongEdges_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $42_TestStrongEdges_S_$modifies _$t0) (and (=> (= (ControlFlow 0 16326) 16524) anon7_Then_correct) (=> (= (ControlFlow 0 16326) 16348) anon7_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_13394| $t1)) 0) (= (|l#Vec_2977| (|p#$Mutation_13394| $t2)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t5)) 0) (= (ControlFlow 0 16270) 16326))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18504) 16270) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 18504)))
(get-value ((ControlFlow 0 16270)))
(get-value ((ControlFlow 0 16326)))
(get-value ((ControlFlow 0 16348)))
(get-value ((ControlFlow 0 16446)))
(assert (not (= (ControlFlow 0 16446) (- 18826))))
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
(declare-datatypes ((T@$42_TestStrongEdges_S 0)) ((($42_TestStrongEdges_S (|$x#$42_TestStrongEdges_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestStrongEdges_S| 0)
(declare-datatypes ((T@$Memory_13361 0)) ((($Memory_13361 (|domain#$Memory_13361| |T@[Int]Bool|) (|contents#$Memory_13361| |T@[Int]$42_TestStrongEdges_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13394 0)) ((($Mutation_13394 (|l#$Mutation_13394| T@$Location) (|p#$Mutation_13394| T@Vec_2977) (|v#$Mutation_13394| T@$42_TestStrongEdges_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9867 0)) ((($Mutation_9867 (|l#$Mutation_9867| T@$Location) (|p#$Mutation_9867| T@Vec_2977) (|v#$Mutation_9867| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u64''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_2977 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestStrongEdges_S'| (T@$42_TestStrongEdges_S) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |strongedgesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |strongedgesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |strongedgesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |strongedgesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |strongedgesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |strongedgesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |strongedgesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |strongedgesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |strongedgesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |strongedgesdefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |strongedgesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |strongedgesdefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |strongedgesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |strongedgesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |strongedgesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |strongedgesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |strongedgesdefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |strongedgesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |strongedgesdefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |strongedgesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |strongedgesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |strongedgesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |strongedgesdefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |strongedgesdefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |strongedgesdefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |strongedgesdefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestStrongEdges_S) ) (! (= (|$IsValid'$42_TestStrongEdges_S'| s) (|$IsValid'u64'| (|$x#$42_TestStrongEdges_S| s)))
 :qid |strongedgesdefaultz3bpl.1113:42|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestStrongEdges_S'| s))
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_2977| v@@8))))
 :qid |strongedgesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@9 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@10 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@10) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@10) e@@1))
 :qid |strongedgesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@9 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@9) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@9) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@9)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |strongedgesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |strongedgesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |strongedgesdefaultz3bpl.275:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@12 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12) (ite  (and (>= i@@12 |l#0@@0|) (< i@@12 |l#1|)) (ite (< i@@12 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@12) (|Select__T@[Int]Int_| |l#4| (- i@@12 |l#5|))) |l#6|))
 :qid |strongedgesdefaultz3bpl.73:19|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@13 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13) (ite  (and (<= |l#0@@1| i@@13) (< i@@13 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@13) |l#4@@0|)) |l#5@@0|))
 :qid |strongedgesdefaultz3bpl.82:30|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |strongedgesdefaultz3bpl.63:20|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t3@0 () T@$Mutation_3601)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t3@1 () T@$Mutation_3601)
(declare-fun $t0@0 () Int)
(declare-fun $t1 () T@$Mutation_3601)
(declare-fun $t3 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_TestStrongEdges_loc__edge_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18839) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (and (= 5 5) (= $t3@0 ($Mutation_3601 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) 5))) (and (= |$temp_0'u64'@0| (|v#$Mutation_3601| $t3@0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|))) (and (and (|$IsValid'u64'| 6) (= $t3@1 ($Mutation_3601 (|l#$Mutation_3601| $t3@0) (|p#$Mutation_3601| $t3@0) 6))) (and (= $t0@0 (|v#$Mutation_3601| $t3@1)) (= (ControlFlow 0 16700) (- 0 18963))))) (= $t0@0 5)))))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_3601| $t1)) 0) (=> (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t3)) 0) (= (ControlFlow 0 16632) 16700)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18839) 16632) anon0_correct)))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 18839)))
(get-value ((ControlFlow 0 16632)))
(get-value ((ControlFlow 0 16700)))
(assert (not (= (ControlFlow 0 16700) (- 18963))))
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
(declare-datatypes ((T@$42_TestStrongEdges_S 0)) ((($42_TestStrongEdges_S (|$x#$42_TestStrongEdges_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestStrongEdges_S| 0)
(declare-datatypes ((T@$Memory_13361 0)) ((($Memory_13361 (|domain#$Memory_13361| |T@[Int]Bool|) (|contents#$Memory_13361| |T@[Int]$42_TestStrongEdges_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13394 0)) ((($Mutation_13394 (|l#$Mutation_13394| T@$Location) (|p#$Mutation_13394| T@Vec_2977) (|v#$Mutation_13394| T@$42_TestStrongEdges_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9867 0)) ((($Mutation_9867 (|l#$Mutation_9867| T@$Location) (|p#$Mutation_9867| T@Vec_2977) (|v#$Mutation_9867| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u64''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_2977 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestStrongEdges_S'| (T@$42_TestStrongEdges_S) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |strongedgesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |strongedgesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |strongedgesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |strongedgesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |strongedgesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |strongedgesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |strongedgesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |strongedgesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |strongedgesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |strongedgesdefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |strongedgesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |strongedgesdefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |strongedgesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |strongedgesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |strongedgesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |strongedgesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |strongedgesdefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |strongedgesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |strongedgesdefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |strongedgesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |strongedgesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |strongedgesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |strongedgesdefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |strongedgesdefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |strongedgesdefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |strongedgesdefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestStrongEdges_S) ) (! (= (|$IsValid'$42_TestStrongEdges_S'| s) (|$IsValid'u64'| (|$x#$42_TestStrongEdges_S| s)))
 :qid |strongedgesdefaultz3bpl.1113:42|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestStrongEdges_S'| s))
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_2977| v@@8))))
 :qid |strongedgesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@9 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@10 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@10) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@10) e@@1))
 :qid |strongedgesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@9 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@9) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@9) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@9)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |strongedgesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |strongedgesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |strongedgesdefaultz3bpl.275:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@12 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12) (ite  (and (>= i@@12 |l#0@@0|) (< i@@12 |l#1|)) (ite (< i@@12 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@12) (|Select__T@[Int]Int_| |l#4| (- i@@12 |l#5|))) |l#6|))
 :qid |strongedgesdefaultz3bpl.73:19|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@13 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13) (ite  (and (<= |l#0@@1| i@@13) (< i@@13 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@13) |l#4@@0|)) |l#5@@0|))
 :qid |strongedgesdefaultz3bpl.82:30|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |strongedgesdefaultz3bpl.63:20|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t3@0 () T@$Mutation_3601)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t3@1 () T@$Mutation_3601)
(declare-fun $t0@0 () Int)
(declare-fun $t1 () T@$Mutation_3601)
(declare-fun $t3 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_TestStrongEdges_loc_edge$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18974) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (and (= 5 5) (= $t3@0 ($Mutation_3601 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) 5))) (and (= |$temp_0'u64'@0| (|v#$Mutation_3601| $t3@0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|))) (and (and (|$IsValid'u64'| 6) (= $t3@1 ($Mutation_3601 (|l#$Mutation_3601| $t3@0) (|p#$Mutation_3601| $t3@0) 6))) (and (= $t0@0 (|v#$Mutation_3601| $t3@1)) (= (ControlFlow 0 16841) (- 0 19098))))) (= $t0@0 6)))))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_3601| $t1)) 0) (=> (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t3)) 0) (= (ControlFlow 0 16773) 16841)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18974) 16773) anon0_correct)))
PreconditionGeneratedEntry_correct))))
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
(declare-datatypes ((T@$42_TestStrongEdges_S 0)) ((($42_TestStrongEdges_S (|$x#$42_TestStrongEdges_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestStrongEdges_S| 0)
(declare-datatypes ((T@$Memory_13361 0)) ((($Memory_13361 (|domain#$Memory_13361| |T@[Int]Bool|) (|contents#$Memory_13361| |T@[Int]$42_TestStrongEdges_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13394 0)) ((($Mutation_13394 (|l#$Mutation_13394| T@$Location) (|p#$Mutation_13394| T@Vec_2977) (|v#$Mutation_13394| T@$42_TestStrongEdges_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9867 0)) ((($Mutation_9867 (|l#$Mutation_9867| T@$Location) (|p#$Mutation_9867| T@Vec_2977) (|v#$Mutation_9867| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u64''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_2977 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestStrongEdges_S'| (T@$42_TestStrongEdges_S) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |strongedgesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |strongedgesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |strongedgesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |strongedgesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |strongedgesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |strongedgesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |strongedgesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |strongedgesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |strongedgesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |strongedgesdefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |strongedgesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |strongedgesdefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |strongedgesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |strongedgesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |strongedgesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |strongedgesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |strongedgesdefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |strongedgesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |strongedgesdefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |strongedgesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |strongedgesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |strongedgesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |strongedgesdefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |strongedgesdefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |strongedgesdefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |strongedgesdefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestStrongEdges_S) ) (! (= (|$IsValid'$42_TestStrongEdges_S'| s) (|$IsValid'u64'| (|$x#$42_TestStrongEdges_S| s)))
 :qid |strongedgesdefaultz3bpl.1113:42|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestStrongEdges_S'| s))
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_2977| v@@8))))
 :qid |strongedgesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@9 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@10 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@10) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@10) e@@1))
 :qid |strongedgesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@9 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@9) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@9) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@9)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |strongedgesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |strongedgesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |strongedgesdefaultz3bpl.275:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@12 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12) (ite  (and (>= i@@12 |l#0@@0|) (< i@@12 |l#1|)) (ite (< i@@12 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@12) (|Select__T@[Int]Int_| |l#4| (- i@@12 |l#5|))) |l#6|))
 :qid |strongedgesdefaultz3bpl.73:19|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@13 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13) (ite  (and (<= |l#0@@1| i@@13) (< i@@13 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@13) |l#4@@0|)) |l#5@@0|))
 :qid |strongedgesdefaultz3bpl.82:30|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |strongedgesdefaultz3bpl.63:20|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t4@0 () T@Vec_2977)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t11@0 () T@$Mutation_3601)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_3601)
(declare-fun $t0@0 () T@$Mutation_9867)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@1| () T@$Mutation_9867)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun |$temp_0'vec'u64''@2| () T@Vec_2977)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_3601)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@0| () T@$Mutation_9867)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () T@Vec_2977)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_3601)
(declare-fun _$t0 () T@$Mutation_9867)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun $t5@0 () T@Vec_2977)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'u64''@0| () T@Vec_2977)
(declare-fun |$temp_0'vec'u64''@1| () T@Vec_2977)
(declare-fun $t1 () T@$Mutation_9867)
(declare-fun $t11 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_TestStrongEdges_vec_edge$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19116) (let ((L2_correct  (=> (= (ControlFlow 0 17469) (- 0 19641)) (= (|l#Vec_2977| $t4@0) 0))))
(let ((anon7_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 17453) 17469)) L2_correct))))
(let ((anon6_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 17483) 17469)) L2_correct))))
(let ((anon7_Else_correct  (=> (and (not $abort_flag@1) (= $t11@0 ($Mutation_3601 (|l#$Mutation_3601| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (|p#$Mutation_3601| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) 7))) (=> (and (and (= $t0@0 ($Mutation_9867 (|l#$Mutation_9867| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (|p#$Mutation_9867| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_9867| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_3601| $t11@0)) (|l#Vec_2977| (|p#$Mutation_9867| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) (|v#$Mutation_3601| $t11@0)) (|l#Vec_2977| (|v#$Mutation_9867| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))))) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|)) (and (= |$temp_0'vec'u64''@2| (|v#$Mutation_9867| $t0@0)) (= |$temp_0'vec'u64''@2| |$temp_0'vec'u64''@2|))) (and (=> (= (ControlFlow 0 17439) (- 0 19594)) (not (= (|l#Vec_2977| $t4@0) 0))) (=> (not (= (|l#Vec_2977| $t4@0) 0)) (and (=> (= (ControlFlow 0 17439) (- 0 19606)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_9867| $t0@0)) 0) 7)) (=> (= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_9867| $t0@0)) 0) 7) (=> (= (ControlFlow 0 17439) (- 0 19620)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_9867| $t0@0)) 1) (|Select__T@[Int]Int_| (|v#Vec_2977| $t4@0) 1)))))))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| |inline$$1_Vector_borrow_mut'u64'$0$m'@0|))) (and (=> (= (ControlFlow 0 17323) 17453) anon7_Then_correct) (=> (= (ControlFlow 0 17323) 17439) anon7_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0)) (= (ControlFlow 0 17321) 17323)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_3601 (|l#$Mutation_9867| _$t0) (let ((l (|l#Vec_2977| (|p#$Mutation_9867| _$t0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_9867| _$t0)) l 0) (+ l 1))) (|Select__T@[Int]Int_| (|v#Vec_2977| |inline$$1_Vector_borrow_mut'u64'$0$v@1|) 0)))) (=> (and (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| _$t0))) (and (=> (= (ControlFlow 0 17271) 17453) anon7_Then_correct) (=> (= (ControlFlow 0 17271) 17439) anon7_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_9867| _$t0)) (and (=> (= (ControlFlow 0 17241) 17321) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 17241) 17271) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (|$IsValid'u64'| 7)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 17331) 17241))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 17107) 17483) anon6_Then_correct) (=> (= (ControlFlow 0 17107) 17331) anon6_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_2977 $t5@0 0)) (= (ControlFlow 0 17105) 17107)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (InRangeVec_2977 $t5@0 0) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (|Select__T@[Int]Int_| (|v#Vec_2977| $t5@0) 0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 17055) 17483) anon6_Then_correct) (=> (= (ControlFlow 0 17055) 17331) anon6_Else_correct))))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_9867| _$t0) ($Param 0)) (=> (and (and (and (|$IsValid'vec'u64''| (|v#$Mutation_9867| _$t0)) (= $t4@0 (|v#$Mutation_9867| _$t0))) (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_9867| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|))) (and (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_9867| _$t0)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)) (and (= $t5@0 (|v#$Mutation_9867| _$t0)) (|$IsValid'u64'| 0)))) (and (=> (= (ControlFlow 0 17113) 17105) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 17113) 17055) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_9867| $t1)) 0) (=> (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t11)) 0) (= (ControlFlow 0 16916) 17113)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19116) 16916) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
