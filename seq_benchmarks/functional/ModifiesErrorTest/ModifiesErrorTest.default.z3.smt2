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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12893 0)) ((($Memory_12893 (|domain#$Memory_12893| |T@[Int]Bool|) (|contents#$Memory_12893| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11788 0)) ((($Memory_11788 (|domain#$Memory_11788| |T@[Int]Bool|) (|contents#$Memory_11788| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14701 0)) ((($Mutation_14701 (|l#$Mutation_14701| T@$Location) (|p#$Mutation_14701| T@Vec_2977) (|v#$Mutation_14701| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11821 0)) ((($Mutation_11821 (|l#$Mutation_11821| T@$Location) (|p#$Mutation_11821| T@Vec_2977) (|v#$Mutation_11821| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9694 0)) ((($Mutation_9694 (|l#$Mutation_9694| T@$Location) (|p#$Mutation_9694| T@Vec_2977) (|v#$Mutation_9694| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesErrorTestdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesErrorTestdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesErrorTestdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesErrorTestdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesErrorTestdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesErrorTestdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |ModifiesErrorTestdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |ModifiesErrorTestdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesErrorTestdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesErrorTestdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesErrorTestdefaultz3bpl.932:27|
 :skolemid |28|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.1153:27|
 :skolemid |31|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |ModifiesErrorTestdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |ModifiesErrorTestdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |ModifiesErrorTestdefaultz3bpl.275:54|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |ModifiesErrorTestdefaultz3bpl.73:19|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.82:30|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.63:20|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$0_A_S'@0| () T@$0_A_S)
(declare-fun $t2@1 () T@$Mutation_11821)
(declare-fun $t5@0 () T@$Mutation_3601)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t5@1 () T@$Mutation_3601)
(declare-fun $t2@2 () T@$Mutation_11821)
(declare-fun $0_A_S_$memory@0 () T@$Memory_11788)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_A_S_$memory () T@$Memory_11788)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$Mutation_11821)
(declare-fun $t2@0 () T@$Mutation_11821)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(declare-fun $t1 () T@$Mutation_11821)
(declare-fun $t5 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $0_A_mutate_at$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18878) (let ((anon8_Else_correct  (=> (and (and (and (not $abort_flag@0) (= |$temp_0'$0_A_S'@0| (|v#$Mutation_11821| $t2@1))) (and (= |$temp_0'$0_A_S'@0| |$temp_0'$0_A_S'@0|) (|$IsValid'u64'| 2))) (and (and (= $t5@0 ($Mutation_3601 (|l#$Mutation_11821| $t2@1) (let ((l (|l#Vec_2977| (|p#$Mutation_11821| $t2@1))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_11821| $t2@1)) l 0) (+ l 1))) (|$x#$0_A_S| (|v#$Mutation_11821| $t2@1)))) (= $t5@1 ($Mutation_3601 (|l#$Mutation_3601| $t5@0) (|p#$Mutation_3601| $t5@0) 2))) (and (= $t2@2 ($Mutation_11821 (|l#$Mutation_11821| $t2@1) (|p#$Mutation_11821| $t2@1) ($0_A_S (|v#$Mutation_3601| $t5@1)))) (= $0_A_S_$memory@0 ($Memory_11788 (|Store__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_11821| $t2@2)) true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_11821| $t2@2)) (|v#$Mutation_11821| $t2@2))))))) (and (=> (= (ControlFlow 0 15960) (- 0 19189)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0))) (=> (= (ControlFlow 0 15960) (- 0 19200)) (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory@0) _$t0)) 2)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 15988) (- 0 19087))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 16040) 15988) anon8_Then_correct) (=> (= (ControlFlow 0 16040) 15960) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 16038) 16040)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_11821 ($Global _$t0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 15862) 15988) anon8_Then_correct) (=> (= (ControlFlow 0 15862) 15960) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesErrorTestdefaultz3bpl.968:20|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 15840) (- 0 19000)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (and (=> (= (ControlFlow 0 15840) 16038) anon7_Then_correct) (=> (= (ControlFlow 0 15840) 15862) anon7_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_11821| $t1)) 0) (= (|l#Vec_2977| (|p#$Mutation_11821| $t2)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t5)) 0) (= (ControlFlow 0 15784) 15840))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18878) 15784) anon0_correct)))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12893 0)) ((($Memory_12893 (|domain#$Memory_12893| |T@[Int]Bool|) (|contents#$Memory_12893| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11788 0)) ((($Memory_11788 (|domain#$Memory_11788| |T@[Int]Bool|) (|contents#$Memory_11788| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14701 0)) ((($Mutation_14701 (|l#$Mutation_14701| T@$Location) (|p#$Mutation_14701| T@Vec_2977) (|v#$Mutation_14701| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11821 0)) ((($Mutation_11821 (|l#$Mutation_11821| T@$Location) (|p#$Mutation_11821| T@Vec_2977) (|v#$Mutation_11821| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9694 0)) ((($Mutation_9694 (|l#$Mutation_9694| T@$Location) (|p#$Mutation_9694| T@Vec_2977) (|v#$Mutation_9694| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesErrorTestdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesErrorTestdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesErrorTestdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesErrorTestdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesErrorTestdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesErrorTestdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |ModifiesErrorTestdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |ModifiesErrorTestdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesErrorTestdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesErrorTestdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesErrorTestdefaultz3bpl.932:27|
 :skolemid |28|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.1153:27|
 :skolemid |31|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |ModifiesErrorTestdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |ModifiesErrorTestdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |ModifiesErrorTestdefaultz3bpl.275:54|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |ModifiesErrorTestdefaultz3bpl.73:19|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.82:30|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.63:20|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t2@1 () T@$0_A_S)
(declare-fun $t4@0 () Int)
(declare-fun $0_A_S_$memory () T@$Memory_11788)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$0_A_S)
(declare-fun $t2@0 () T@$0_A_S)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $0_A_read_at$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19238) (let ((anon8_Else_correct  (=> (and (and (not $abort_flag@0) (= $t2@1 $t2@1)) (and (= $t4@0 (|$x#$0_A_S| $t2@1)) (= $t4@0 $t4@0))) (and (=> (= (ControlFlow 0 16248) (- 0 19443)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0))) (=> (= (ControlFlow 0 16248) (- 0 19454)) (= $t4@0 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) _$t0)))))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 16276) (- 0 19401))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 16328) 16276) anon8_Then_correct) (=> (= (ControlFlow 0 16328) 16248) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 16326) 16328)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0) (=> (and (and (= $t2@0 (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) _$t0)) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 16192) 16276) anon8_Then_correct) (=> (= (ControlFlow 0 16192) 16248) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesErrorTestdefaultz3bpl.1079:20|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0))
)) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 16178) 16326) anon7_Then_correct) (=> (= (ControlFlow 0 16178) 16192) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19238) 16178) anon0$1_correct)))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12893 0)) ((($Memory_12893 (|domain#$Memory_12893| |T@[Int]Bool|) (|contents#$Memory_12893| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11788 0)) ((($Memory_11788 (|domain#$Memory_11788| |T@[Int]Bool|) (|contents#$Memory_11788| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14701 0)) ((($Mutation_14701 (|l#$Mutation_14701| T@$Location) (|p#$Mutation_14701| T@Vec_2977) (|v#$Mutation_14701| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11821 0)) ((($Mutation_11821 (|l#$Mutation_11821| T@$Location) (|p#$Mutation_11821| T@Vec_2977) (|v#$Mutation_11821| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9694 0)) ((($Mutation_9694 (|l#$Mutation_9694| T@$Location) (|p#$Mutation_9694| T@Vec_2977) (|v#$Mutation_9694| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesErrorTestdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesErrorTestdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesErrorTestdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesErrorTestdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesErrorTestdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesErrorTestdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |ModifiesErrorTestdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |ModifiesErrorTestdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesErrorTestdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesErrorTestdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesErrorTestdefaultz3bpl.932:27|
 :skolemid |28|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.1153:27|
 :skolemid |31|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |ModifiesErrorTestdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |ModifiesErrorTestdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |ModifiesErrorTestdefaultz3bpl.275:54|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |ModifiesErrorTestdefaultz3bpl.73:19|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.82:30|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.63:20|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t10 () Bool)
(declare-fun $t9 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $0_A_S_$memory () T@$Memory_11788)
(declare-fun _$t1 () Int)
(declare-fun $t5 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t8@1 () T@$0_B_T)
(declare-fun $t8 () T@$0_B_T)
(declare-fun $abort_code@1 () Int)
(declare-fun $0_B_T_$memory () T@$Memory_12893)
(declare-fun _$t0 () Int)
(declare-fun $t8@0 () T@$0_B_T)
(declare-fun |Select__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int) T@$0_B_T)
(declare-fun $0_B_T_$memory@0 () T@$Memory_12893)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(declare-fun $t6 () Bool)
(declare-fun $0_B_T_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_move_from_test_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19476) (let ((anon13_Else_correct  (=> (not $t10) (=> (and (and (|$IsValid'u64'| $t9) (= $t9 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) _$t1)))) (and (= $t9 $t9) (= (ControlFlow 0 16627) (- 0 19805)))) (= $t5 $t9)))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t8@1 $t8@1) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t1)))) (and (=> (= (ControlFlow 0 16579) 16639) anon13_Then_correct) (=> (= (ControlFlow 0 16579) 16627) anon13_Else_correct))))))
(let ((anon12_Then_correct true))
(let ((anon11_Then$1_correct  (=> (= $t8@1 $t8) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 16711) 16659) anon12_Then_correct) (=> (= (ControlFlow 0 16711) 16579) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_12893| $0_B_T_$memory) _$t0)) (= (ControlFlow 0 16709) 16711)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_12893| $0_B_T_$memory) _$t0) (= $t8@0 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12893| $0_B_T_$memory) _$t0))) (=> (and (and (= $0_B_T_$memory@0 ($Memory_12893 (|Store__T@[Int]Bool_| (|domain#$Memory_12893| $0_B_T_$memory) _$t0 false) (|contents#$Memory_12893| $0_B_T_$memory))) (= $t8@1 $t8@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 16551) 16659) anon12_Then_correct) (=> (= (ControlFlow 0 16551) 16579) anon12_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (and (not $t6) (|$IsValid'u64'| $t5)) (and (= $t5 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) _$t1))) (= $t5 $t5))) (and (=> (= (ControlFlow 0 16531) (- 0 19654)) (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0) (and (=> (= (ControlFlow 0 16531) 16709) anon11_Then_correct) (=> (= (ControlFlow 0 16531) 16551) anon11_Else_correct)))))))
(let ((anon10_Then_correct true))
(let ((anon0$1_correct  (=> (and (and (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesErrorTestdefaultz3bpl.1195:20|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12893| $0_B_T_$memory) $a_0@@0)))
(|$IsValid'$0_B_T'| $rsc@@0))
 :qid |ModifiesErrorTestdefaultz3bpl.1199:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12893| $0_B_T_$memory) $a_0@@0))
)))) (and (and (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t6  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 16495) 16723) anon10_Then_correct) (=> (= (ControlFlow 0 16495) 16531) anon10_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19476) 16495) anon0$1_correct)))
anon0_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 19476)))
(get-value ((ControlFlow 0 16495)))
(get-value ((ControlFlow 0 16531)))
(assert (not (= (ControlFlow 0 16531) (- 19654))))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12893 0)) ((($Memory_12893 (|domain#$Memory_12893| |T@[Int]Bool|) (|contents#$Memory_12893| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11788 0)) ((($Memory_11788 (|domain#$Memory_11788| |T@[Int]Bool|) (|contents#$Memory_11788| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14701 0)) ((($Mutation_14701 (|l#$Mutation_14701| T@$Location) (|p#$Mutation_14701| T@Vec_2977) (|v#$Mutation_14701| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11821 0)) ((($Mutation_11821 (|l#$Mutation_11821| T@$Location) (|p#$Mutation_11821| T@Vec_2977) (|v#$Mutation_11821| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9694 0)) ((($Mutation_9694 (|l#$Mutation_9694| T@$Location) (|p#$Mutation_9694| T@Vec_2977) (|v#$Mutation_9694| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesErrorTestdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesErrorTestdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesErrorTestdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesErrorTestdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesErrorTestdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesErrorTestdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |ModifiesErrorTestdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |ModifiesErrorTestdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesErrorTestdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesErrorTestdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesErrorTestdefaultz3bpl.932:27|
 :skolemid |28|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.1153:27|
 :skolemid |31|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |ModifiesErrorTestdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |ModifiesErrorTestdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |ModifiesErrorTestdefaultz3bpl.275:54|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |ModifiesErrorTestdefaultz3bpl.73:19|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.82:30|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.63:20|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t10 () Bool)
(declare-fun $t9 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $0_A_S_$memory () T@$Memory_11788)
(declare-fun _$t1 () Int)
(declare-fun $t4 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $0_B_T_$memory () T@$Memory_12893)
(declare-fun _$t0 () Int)
(declare-fun $0_B_T_$memory@0 () T@$Memory_12893)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int T@$0_B_T) |T@[Int]$0_B_T|)
(declare-fun |Select__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int) T@$0_B_T)
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?x2 T@$0_B_T)) (! (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_B_T)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_B_T_| ?x0 ?y1))) :weight 0)))
(declare-fun $t8@0 () T@$0_B_T)
(declare-fun $abort_code@0 () Int)
(declare-fun $t5 () Bool)
(declare-fun $0_B_T_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_move_to_test_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19839) (let ((anon13_Else_correct  (=> (not $t10) (=> (and (and (|$IsValid'u64'| $t9) (= $t9 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) _$t1)))) (and (= $t9 $t9) (= (ControlFlow 0 17026) (- 0 20158)))) (= $t4 $t9)))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (=> (and (not $abort_flag@0) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t1)))) (and (=> (= (ControlFlow 0 16988) 17038) anon13_Then_correct) (=> (= (ControlFlow 0 16988) 17026) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((anon11_Then$1_correct  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 17108) 17058) anon12_Then_correct) (=> (= (ControlFlow 0 17108) 16988) anon12_Else_correct)))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_12893| $0_B_T_$memory) _$t0) (= (ControlFlow 0 17106) 17108)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_12893| $0_B_T_$memory) _$t0)) (= $0_B_T_$memory@0 ($Memory_12893 (|Store__T@[Int]Bool_| (|domain#$Memory_12893| $0_B_T_$memory) _$t0 true) (|Store__T@[Int]$0_B_T_| (|contents#$Memory_12893| $0_B_T_$memory) _$t0 $t8@0)))) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 16966) 17058) anon12_Then_correct) (=> (= (ControlFlow 0 16966) 16988) anon12_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (not $t5) (|$IsValid'u64'| $t4)) (=> (and (and (= $t4 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) _$t1))) (= $t4 $t4)) (and (|$IsValid'u64'| 2) (= $t8@0 ($0_B_T 2)))) (and (=> (= (ControlFlow 0 16948) (- 0 20032)) (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0) (and (=> (= (ControlFlow 0 16948) 17106) anon11_Then_correct) (=> (= (ControlFlow 0 16948) 16966) anon11_Else_correct))))))))
(let ((anon10_Then_correct true))
(let ((anon0$1_correct  (=> (and (and (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesErrorTestdefaultz3bpl.1367:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12893| $0_B_T_$memory) $a_0@@0)))
(|$IsValid'$0_B_T'| $rsc@@0))
 :qid |ModifiesErrorTestdefaultz3bpl.1371:20|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12893| $0_B_T_$memory) $a_0@@0))
)))) (and (and (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t5  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 16902) 17120) anon10_Then_correct) (=> (= (ControlFlow 0 16902) 16948) anon10_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19839) 16902) anon0$1_correct)))
anon0_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 19839)))
(get-value ((ControlFlow 0 16902)))
(get-value ((ControlFlow 0 16948)))
(assert (not (= (ControlFlow 0 16948) (- 20032))))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12893 0)) ((($Memory_12893 (|domain#$Memory_12893| |T@[Int]Bool|) (|contents#$Memory_12893| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11788 0)) ((($Memory_11788 (|domain#$Memory_11788| |T@[Int]Bool|) (|contents#$Memory_11788| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14701 0)) ((($Mutation_14701 (|l#$Mutation_14701| T@$Location) (|p#$Mutation_14701| T@Vec_2977) (|v#$Mutation_14701| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11821 0)) ((($Mutation_11821 (|l#$Mutation_11821| T@$Location) (|p#$Mutation_11821| T@Vec_2977) (|v#$Mutation_11821| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9694 0)) ((($Mutation_9694 (|l#$Mutation_9694| T@$Location) (|p#$Mutation_9694| T@Vec_2977) (|v#$Mutation_9694| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesErrorTestdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesErrorTestdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesErrorTestdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesErrorTestdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesErrorTestdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesErrorTestdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |ModifiesErrorTestdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |ModifiesErrorTestdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesErrorTestdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesErrorTestdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesErrorTestdefaultz3bpl.932:27|
 :skolemid |28|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.1153:27|
 :skolemid |31|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |ModifiesErrorTestdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |ModifiesErrorTestdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |ModifiesErrorTestdefaultz3bpl.275:54|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |ModifiesErrorTestdefaultz3bpl.73:19|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.82:30|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.63:20|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t9 () Bool)
(declare-fun $t8 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $0_A_S_$memory@2 () T@$Memory_11788)
(declare-fun _$t1 () Int)
(declare-fun $t4 () Int)
(declare-fun _$t0 () Int)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $0_A_S_$memory@1 () T@$Memory_11788)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_A_S_$memory () T@$Memory_11788)
(declare-fun $0_A_S_$memory@0 () T@$Memory_11788)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$0_A_S'@0| () T@$0_A_S)
(declare-fun $t7 () Bool)
(declare-fun $t5 () Bool)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_mutate_S_test1_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20182) (let ((anon13_Else_correct  (=> (not $t9) (=> (and (and (|$IsValid'u64'| $t8) (= $t8 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory@2) _$t1)))) (and (= $t8 $t8) (= (ControlFlow 0 17410) (- 0 20472)))) (= $t4 $t8)))))
(let ((anon13_Then_correct true))
(let ((anon7_correct  (=> (and (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory@2) _$t0)) 2) (= $t9  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory@2) _$t1)))) (and (=> (= (ControlFlow 0 17372) 17422) anon13_Then_correct) (=> (= (ControlFlow 0 17372) 17410) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $0_A_S_$memory@1 ($Memory_11788 (|Store__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0 false) (|contents#$Memory_11788| $0_A_S_$memory)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@1) (= (ControlFlow 0 17344) 17372))) anon7_correct)))
(let ((anon12_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $0_A_S_$memory@0 ($Memory_11788 (|Store__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0 true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) _$t0 |$temp_0'$0_A_S'@0|)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@0) (= (ControlFlow 0 17440) 17372))) anon7_correct)))
(let ((anon11_Else_correct  (=> (not $t7) (and (=> (= (ControlFlow 0 17332) 17440) anon12_Then_correct) (=> (= (ControlFlow 0 17332) 17344) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Else_correct  (=> (and (and (not $t5) (|$IsValid'u64'| $t4)) (and (= $t4 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) _$t1))) (= $t4 $t4))) (and (=> (= (ControlFlow 0 17326) (- 0 20335)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (=> (= $t7  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0))) (and (=> (= (ControlFlow 0 17326) 17452) anon11_Then_correct) (=> (= (ControlFlow 0 17326) 17332) anon11_Else_correct))))))))
(let ((anon10_Then_correct true))
(let ((anon0$1_correct  (=> (and (and (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesErrorTestdefaultz3bpl.1538:20|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0))
)) (not (= _$t0 _$t1)))) (and (and (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t5  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 17278) 17464) anon10_Then_correct) (=> (= (ControlFlow 0 17278) 17326) anon10_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 20182) 17278) anon0$1_correct)))
anon0_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 20182)))
(get-value ((ControlFlow 0 17278)))
(get-value ((ControlFlow 0 17326)))
(assert (not (= (ControlFlow 0 17326) (- 20335))))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12893 0)) ((($Memory_12893 (|domain#$Memory_12893| |T@[Int]Bool|) (|contents#$Memory_12893| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11788 0)) ((($Memory_11788 (|domain#$Memory_11788| |T@[Int]Bool|) (|contents#$Memory_11788| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14701 0)) ((($Mutation_14701 (|l#$Mutation_14701| T@$Location) (|p#$Mutation_14701| T@Vec_2977) (|v#$Mutation_14701| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11821 0)) ((($Mutation_11821 (|l#$Mutation_11821| T@$Location) (|p#$Mutation_11821| T@Vec_2977) (|v#$Mutation_11821| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9694 0)) ((($Mutation_9694 (|l#$Mutation_9694| T@$Location) (|p#$Mutation_9694| T@Vec_2977) (|v#$Mutation_9694| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesErrorTestdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesErrorTestdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesErrorTestdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesErrorTestdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesErrorTestdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesErrorTestdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |ModifiesErrorTestdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |ModifiesErrorTestdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesErrorTestdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesErrorTestdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesErrorTestdefaultz3bpl.932:27|
 :skolemid |28|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.1153:27|
 :skolemid |31|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |ModifiesErrorTestdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |ModifiesErrorTestdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |ModifiesErrorTestdefaultz3bpl.275:54|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |ModifiesErrorTestdefaultz3bpl.73:19|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.82:30|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.63:20|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t8 () Bool)
(declare-fun $t7 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $0_A_S_$memory@2 () T@$Memory_11788)
(declare-fun _$t0 () Int)
(declare-fun $t3 () Int)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $0_A_S_$memory@1 () T@$Memory_11788)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_A_S_$memory () T@$Memory_11788)
(declare-fun $0_A_S_$memory@0 () T@$Memory_11788)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$0_A_S'@0| () T@$0_A_S)
(declare-fun $t6 () Bool)
(declare-fun $t4 () Bool)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_mutate_S_test2_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20495) (let ((anon13_Else_correct  (=> (not $t8) (=> (and (and (|$IsValid'u64'| $t7) (= $t7 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory@2) _$t0)))) (and (= $t7 $t7) (= (ControlFlow 0 17730) (- 0 20763)))) (= $t3 $t7)))))
(let ((anon13_Then_correct true))
(let ((anon7_correct  (=> (and (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory@2) _$t0)) 2) (= $t8  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory@2) _$t0)))) (and (=> (= (ControlFlow 0 17692) 17742) anon13_Then_correct) (=> (= (ControlFlow 0 17692) 17730) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $0_A_S_$memory@1 ($Memory_11788 (|Store__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0 false) (|contents#$Memory_11788| $0_A_S_$memory)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@1) (= (ControlFlow 0 17664) 17692))) anon7_correct)))
(let ((anon12_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $0_A_S_$memory@0 ($Memory_11788 (|Store__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0 true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) _$t0 |$temp_0'$0_A_S'@0|)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@0) (= (ControlFlow 0 17760) 17692))) anon7_correct)))
(let ((anon11_Else_correct  (=> (not $t6) (and (=> (= (ControlFlow 0 17652) 17760) anon12_Then_correct) (=> (= (ControlFlow 0 17652) 17664) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Else_correct  (=> (and (and (not $t4) (|$IsValid'u64'| $t3)) (and (= $t3 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) _$t0))) (= $t3 $t3))) (and (=> (= (ControlFlow 0 17646) (- 0 20626)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (=> (= $t6  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0))) (and (=> (= (ControlFlow 0 17646) 17772) anon11_Then_correct) (=> (= (ControlFlow 0 17646) 17652) anon11_Else_correct))))))))
(let ((anon10_Then_correct true))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesErrorTestdefaultz3bpl.1722:20|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0))
)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (and (= _$t0 _$t0) (= $t4  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t0))))) (and (=> (= (ControlFlow 0 17598) 17784) anon10_Then_correct) (=> (= (ControlFlow 0 17598) 17646) anon10_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 20495) 17598) anon0$1_correct)))
anon0_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 20495)))
(get-value ((ControlFlow 0 17598)))
(get-value ((ControlFlow 0 17646)))
(get-value ((ControlFlow 0 17652)))
(get-value ((ControlFlow 0 17760)))
(get-value ((ControlFlow 0 17692)))
(get-value ((ControlFlow 0 17730)))
(assert (not (= (ControlFlow 0 17730) (- 20763))))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12893 0)) ((($Memory_12893 (|domain#$Memory_12893| |T@[Int]Bool|) (|contents#$Memory_12893| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_11788 0)) ((($Memory_11788 (|domain#$Memory_11788| |T@[Int]Bool|) (|contents#$Memory_11788| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14701 0)) ((($Mutation_14701 (|l#$Mutation_14701| T@$Location) (|p#$Mutation_14701| T@Vec_2977) (|v#$Mutation_14701| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_11821 0)) ((($Mutation_11821 (|l#$Mutation_11821| T@$Location) (|p#$Mutation_11821| T@Vec_2977) (|v#$Mutation_11821| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9694 0)) ((($Mutation_9694 (|l#$Mutation_9694| T@$Location) (|p#$Mutation_9694| T@Vec_2977) (|v#$Mutation_9694| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesErrorTestdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesErrorTestdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesErrorTestdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesErrorTestdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesErrorTestdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesErrorTestdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |ModifiesErrorTestdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |ModifiesErrorTestdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |ModifiesErrorTestdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |ModifiesErrorTestdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesErrorTestdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesErrorTestdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesErrorTestdefaultz3bpl.932:27|
 :skolemid |28|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.1153:27|
 :skolemid |31|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |ModifiesErrorTestdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |ModifiesErrorTestdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |ModifiesErrorTestdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |ModifiesErrorTestdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |ModifiesErrorTestdefaultz3bpl.275:54|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |ModifiesErrorTestdefaultz3bpl.73:19|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.82:30|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |ModifiesErrorTestdefaultz3bpl.63:20|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $0_A_S_$memory () T@$Memory_11788)
(declare-fun _$t1 () Int)
(declare-fun $t5 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$0_B_T'@0| () T@$0_B_T)
(declare-fun $t8@1 () T@$Mutation_14701)
(declare-fun $t10@0 () T@$Mutation_3601)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t10@1 () T@$Mutation_3601)
(declare-fun $t8@2 () T@$Mutation_14701)
(declare-fun $0_B_T_$memory@0 () T@$Memory_12893)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_B_T_$memory () T@$Memory_12893)
(declare-fun |Store__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int T@$0_B_T) |T@[Int]$0_B_T|)
(declare-fun |Select__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int) T@$0_B_T)
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?x2 T@$0_B_T)) (! (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_B_T)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_B_T_| ?x0 ?y1))) :weight 0)))
(declare-fun $t8 () T@$Mutation_14701)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () Int)
(declare-fun $t8@0 () T@$Mutation_14701)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t6 () Bool)
(declare-fun $0_B_T_$modifies () |T@[Int]Bool|)
(declare-fun $t2 () T@$Mutation_14701)
(declare-fun $t10 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $0_B_mutate_at_test_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20787) (let ((anon13_Else_correct  (=> (not $t12) (=> (and (and (|$IsValid'u64'| $t11) (= $t11 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) _$t1)))) (and (= $t11 $t11) (= (ControlFlow 0 18150) (- 0 21215)))) (= $t5 $t11)))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (=> (not $abort_flag@0) (=> (and (and (and (= |$temp_0'$0_B_T'@0| (|v#$Mutation_14701| $t8@1)) (= |$temp_0'$0_B_T'@0| |$temp_0'$0_B_T'@0|)) (and (|$IsValid'u64'| 2) (= $t10@0 ($Mutation_3601 (|l#$Mutation_14701| $t8@1) (let ((l (|l#Vec_2977| (|p#$Mutation_14701| $t8@1))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_14701| $t8@1)) l 0) (+ l 1))) (|$x#$0_B_T| (|v#$Mutation_14701| $t8@1)))))) (and (and (= $t10@1 ($Mutation_3601 (|l#$Mutation_3601| $t10@0) (|p#$Mutation_3601| $t10@0) 2)) (= $t8@2 ($Mutation_14701 (|l#$Mutation_14701| $t8@1) (|p#$Mutation_14701| $t8@1) ($0_B_T (|v#$Mutation_3601| $t10@1))))) (and (= $0_B_T_$memory@0 ($Memory_12893 (|Store__T@[Int]Bool_| (|domain#$Memory_12893| $0_B_T_$memory) (|a#$Global| (|l#$Mutation_14701| $t8@2)) true) (|Store__T@[Int]$0_B_T_| (|contents#$Memory_12893| $0_B_T_$memory) (|a#$Global| (|l#$Mutation_14701| $t8@2)) (|v#$Mutation_14701| $t8@2)))) (= $t12  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 18112) 18162) anon13_Then_correct) (=> (= (ControlFlow 0 18112) 18150) anon13_Else_correct))))))
(let ((anon12_Then_correct true))
(let ((anon11_Then$1_correct  (=> (= $t8@1 $t8) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 18234) 18182) anon12_Then_correct) (=> (= (ControlFlow 0 18234) 18112) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_12893| $0_B_T_$memory) _$t0)) (= (ControlFlow 0 18232) 18234)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_12893| $0_B_T_$memory) _$t0) (=> (and (and (= $t8@0 ($Mutation_14701 ($Global _$t0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12893| $0_B_T_$memory) _$t0))) (= $t8@1 $t8@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 18028) 18182) anon12_Then_correct) (=> (= (ControlFlow 0 18028) 18112) anon12_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (and (not $t6) (|$IsValid'u64'| $t5)) (and (= $t5 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) _$t1))) (= $t5 $t5))) (and (=> (= (ControlFlow 0 18006) (- 0 20991)) (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0) (and (=> (= (ControlFlow 0 18006) 18232) anon11_Then_correct) (=> (= (ControlFlow 0 18006) 18028) anon11_Else_correct)))))))
(let ((anon10_Then_correct true))
(let ((anon0$1_correct  (=> (and (and (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesErrorTestdefaultz3bpl.1909:20|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_11788| $0_A_S_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12893| $0_B_T_$memory) $a_0@@0)))
(|$IsValid'$0_B_T'| $rsc@@0))
 :qid |ModifiesErrorTestdefaultz3bpl.1913:20|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12893| $0_B_T_$memory) $a_0@@0))
)))) (and (and (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t6  (not (|Select__T@[Int]Bool_| (|domain#$Memory_11788| $0_A_S_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 17970) 18246) anon10_Then_correct) (=> (= (ControlFlow 0 17970) 18006) anon10_Else_correct)))))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_14701| $t2)) 0) (= (|l#Vec_2977| (|p#$Mutation_14701| $t8)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t10)) 0) (= (ControlFlow 0 17878) 17970))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 20787) 17878) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 20787)))
(get-value ((ControlFlow 0 17878)))
(get-value ((ControlFlow 0 17970)))
(get-value ((ControlFlow 0 18006)))
(assert (not (= (ControlFlow 0 18006) (- 20991))))
(check-sat)
(pop 1)
; Invalid
