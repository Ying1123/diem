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
(declare-datatypes ((T@$42_AddressQuant_R 0)) ((($42_AddressQuant_R (|$x#$42_AddressQuant_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_AddressQuant_R| 0)
(declare-datatypes ((T@$Memory_10037 0)) ((($Memory_10037 (|domain#$Memory_10037| |T@[Int]Bool|) (|contents#$Memory_10037| |T@[Int]$42_AddressQuant_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10229 0)) ((($Mutation_10229 (|l#$Mutation_10229| T@$Location) (|p#$Mutation_10229| T@Vec_2977) (|v#$Mutation_10229| T@$42_AddressQuant_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7997 0)) ((($Mutation_7997 (|l#$Mutation_7997| T@$Location) (|p#$Mutation_7997| T@Vec_2977) (|v#$Mutation_7997| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_AddressQuant_R'| (T@$42_AddressQuant_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |addressquantdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |addressquantdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |addressquantdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |addressquantdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |addressquantdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |addressquantdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |addressquantdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |addressquantdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |addressquantdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |addressquantdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |addressquantdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |addressquantdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |addressquantdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |addressquantdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |addressquantdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |addressquantdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |addressquantdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |addressquantdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |addressquantdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_AddressQuant_R) ) (! (= (|$IsValid'$42_AddressQuant_R'| s) (|$IsValid'u64'| (|$x#$42_AddressQuant_R| s)))
 :qid |addressquantdefaultz3bpl.942:39|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_AddressQuant_R'| s))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |addressquantdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |addressquantdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |addressquantdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |addressquantdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |addressquantdefaultz3bpl.275:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |addressquantdefaultz3bpl.73:19|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |addressquantdefaultz3bpl.82:30|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |addressquantdefaultz3bpl.63:20|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t7@0 () T@$Mutation_3601)
(declare-fun $t2@1 () T@$Mutation_10229)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@1 () T@$Mutation_3601)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t2@2 () T@$Mutation_10229)
(declare-fun $42_AddressQuant_R_$memory@0 () T@$Memory_10037)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $42_AddressQuant_R_$memory () T@$Memory_10037)
(declare-fun |Store__T@[Int]$42_AddressQuant_R_| (|T@[Int]$42_AddressQuant_R| Int T@$42_AddressQuant_R) |T@[Int]$42_AddressQuant_R|)
(declare-fun |Select__T@[Int]$42_AddressQuant_R_| (|T@[Int]$42_AddressQuant_R| Int) T@$42_AddressQuant_R)
(assert (forall ( ( ?x0 |T@[Int]$42_AddressQuant_R|) ( ?x1 Int) ( ?x2 T@$42_AddressQuant_R)) (! (= (|Select__T@[Int]$42_AddressQuant_R_| (|Store__T@[Int]$42_AddressQuant_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_AddressQuant_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_AddressQuant_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_AddressQuant_R_| (|Store__T@[Int]$42_AddressQuant_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_AddressQuant_R_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t4@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |$temp_0'$42_AddressQuant_R'@0| () T@$42_AddressQuant_R)
(declare-fun $t2 () T@$Mutation_10229)
(declare-fun $t2@0 () T@$Mutation_10229)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t1 () T@$Mutation_10229)
(declare-fun $t7 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_AddressQuant_f$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13534) (let ((anon11_Else_correct  (=> (not $abort_flag@1) (=> (and (and (= $t7@0 ($Mutation_3601 (|l#$Mutation_10229| $t2@1) (let ((l (|l#Vec_2977| (|p#$Mutation_10229| $t2@1))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_10229| $t2@1)) l 0) (+ l 1))) (|$x#$42_AddressQuant_R| (|v#$Mutation_10229| $t2@1)))) (= $t7@1 ($Mutation_3601 (|l#$Mutation_3601| $t7@0) (|p#$Mutation_3601| $t7@0) inline$$AddU64$0$dst@2))) (and (= $t2@2 ($Mutation_10229 (|l#$Mutation_10229| $t2@1) (|p#$Mutation_10229| $t2@1) ($42_AddressQuant_R (|v#$Mutation_3601| $t7@1)))) (= $42_AddressQuant_R_$memory@0 ($Memory_10037 (|Store__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) (|a#$Global| (|l#$Mutation_10229| $t2@2)) true) (|Store__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory) (|a#$Global| (|l#$Mutation_10229| $t2@2)) (|v#$Mutation_10229| $t2@2)))))) (and (=> (= (ControlFlow 0 12243) (- 0 13957)) (= (|$x#$42_AddressQuant_R| (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory@0) _$t0)) (+ (|$x#$42_AddressQuant_R| (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory) _$t0)) 1))) (=> (= (|$x#$42_AddressQuant_R| (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory@0) _$t0)) (+ (|$x#$42_AddressQuant_R| (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory) _$t0)) 1)) (and (=> (= (ControlFlow 0 12243) (- 0 13978)) (forall ((a Int) (b Int) ) (!  (=> (|$IsValid'address'| a) (=> (|$IsValid'address'| b) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@0) a) (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@0) b)) (= a b))))
 :qid |addressquantdefaultz3bpl.928:13|
 :skolemid |28|
))) (=> (forall ((a@@0 Int) (b@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|$IsValid'address'| b@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@0) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@0) b@@0)) (= a@@0 b@@0))))
 :qid |addressquantdefaultz3bpl.928:13|
 :skolemid |28|
)) (=> (= (ControlFlow 0 12243) (- 0 13984)) (exists ((a@@1 Int) ) (!  (and (|$IsValid'address'| a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@0) a@@1))
 :qid |addressquantdefaultz3bpl.933:13|
 :skolemid |29|
)))))))))))
(let ((anon11_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 12147) 12257) anon11_Then_correct) (=> (= (ControlFlow 0 12147) 12243) anon11_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t4@0 1) $MAX_U64) (= (ControlFlow 0 12145) 12147)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t4@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t4@0 1)) (= $abort_flag@1 $abort_flag@0)) (and (= $abort_code@2 $abort_code@1) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 12093) 12257) anon11_Then_correct) (=> (= (ControlFlow 0 12093) 12243) anon11_Else_correct))))))
(let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= |$temp_0'$42_AddressQuant_R'@0| (|v#$Mutation_10229| $t2@1)) (= |$temp_0'$42_AddressQuant_R'@0| |$temp_0'$42_AddressQuant_R'@0|)) (and (= $t4@0 (|$x#$42_AddressQuant_R| (|v#$Mutation_10229| $t2@1))) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 12153) 12145) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 12153) 12093) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon10_Then_correct true))
(let ((anon9_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 12329) 12277) anon10_Then_correct) (=> (= (ControlFlow 0 12329) 12153) anon10_Else_correct))))))
(let ((anon9_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) _$t0)) (= (ControlFlow 0 12327) 12329)) anon9_Then$1_correct)))
(let ((anon9_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_10229 ($Global _$t0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 11968) 12277) anon10_Then_correct) (=> (= (ControlFlow 0 11968) 12153) anon10_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory) $a_0)))
(|$IsValid'$42_AddressQuant_R'| $rsc))
 :qid |addressquantdefaultz3bpl.979:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory) $a_0))
)) (forall ((a@@2 Int) (b@@1 Int) ) (!  (=> (|$IsValid'address'| a@@2) (=> (|$IsValid'address'| b@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) b@@1)) (= a@@2 b@@1))))
 :qid |addressquantdefaultz3bpl.928:13|
 :skolemid |28|
))) (and (exists ((a@@3 Int) ) (!  (and (|$IsValid'address'| a@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) a@@3))
 :qid |addressquantdefaultz3bpl.933:13|
 :skolemid |29|
)) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 11946) 12327) anon9_Then_correct) (=> (= (ControlFlow 0 11946) 11968) anon9_Else_correct))))))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_10229| $t1)) 0) (= (|l#Vec_2977| (|p#$Mutation_10229| $t2)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t7)) 0) (= (ControlFlow 0 11892) 11946))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 13534) 11892) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
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
(declare-datatypes ((T@$42_AddressQuant_R 0)) ((($42_AddressQuant_R (|$x#$42_AddressQuant_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_AddressQuant_R| 0)
(declare-datatypes ((T@$Memory_10037 0)) ((($Memory_10037 (|domain#$Memory_10037| |T@[Int]Bool|) (|contents#$Memory_10037| |T@[Int]$42_AddressQuant_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10229 0)) ((($Mutation_10229 (|l#$Mutation_10229| T@$Location) (|p#$Mutation_10229| T@Vec_2977) (|v#$Mutation_10229| T@$42_AddressQuant_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7997 0)) ((($Mutation_7997 (|l#$Mutation_7997| T@$Location) (|p#$Mutation_7997| T@Vec_2977) (|v#$Mutation_7997| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_AddressQuant_R'| (T@$42_AddressQuant_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |addressquantdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |addressquantdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |addressquantdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |addressquantdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |addressquantdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |addressquantdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |addressquantdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |addressquantdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |addressquantdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |addressquantdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |addressquantdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |addressquantdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |addressquantdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |addressquantdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |addressquantdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |addressquantdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |addressquantdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |addressquantdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |addressquantdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_AddressQuant_R) ) (! (= (|$IsValid'$42_AddressQuant_R'| s) (|$IsValid'u64'| (|$x#$42_AddressQuant_R| s)))
 :qid |addressquantdefaultz3bpl.942:39|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_AddressQuant_R'| s))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |addressquantdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |addressquantdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |addressquantdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |addressquantdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |addressquantdefaultz3bpl.275:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |addressquantdefaultz3bpl.73:19|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |addressquantdefaultz3bpl.82:30|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |addressquantdefaultz3bpl.63:20|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_AddressQuant_R_$memory@1 () T@$Memory_10037)
(declare-fun _$t1 () Int)
(declare-fun $42_AddressQuant_R_$memory () T@$Memory_10037)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () Int)
(declare-fun $42_AddressQuant_R_$memory@0 () T@$Memory_10037)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_AddressQuant_R_| (|T@[Int]$42_AddressQuant_R| Int T@$42_AddressQuant_R) |T@[Int]$42_AddressQuant_R|)
(declare-fun |Select__T@[Int]$42_AddressQuant_R_| (|T@[Int]$42_AddressQuant_R| Int) T@$42_AddressQuant_R)
(assert (forall ( ( ?x0 |T@[Int]$42_AddressQuant_R|) ( ?x1 Int) ( ?x2 T@$42_AddressQuant_R)) (! (= (|Select__T@[Int]$42_AddressQuant_R_| (|Store__T@[Int]$42_AddressQuant_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_AddressQuant_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_AddressQuant_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_AddressQuant_R_| (|Store__T@[Int]$42_AddressQuant_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_AddressQuant_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t9@0 () T@$42_AddressQuant_R)
(declare-fun $abort_code@0 () Int)
(declare-fun $t5@0 () Bool)
(declare-fun $t4 () Int)
(push 1)
(set-info :boogie-vc-id $42_AddressQuant_initialize$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14018) (let ((anon12_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 12628) (- 0 14290)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@1) a) (= a _$t1)))
 :qid |addressquantdefaultz3bpl.1196:15|
 :skolemid |34|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@1) a@@0) (= a@@0 _$t1)))
 :qid |addressquantdefaultz3bpl.1196:15|
 :skolemid |34|
)) (and (=> (= (ControlFlow 0 12628) (- 0 14314)) (forall ((a@@1 Int) (b Int) ) (!  (=> (|$IsValid'address'| a@@1) (=> (|$IsValid'address'| b) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@1) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@1) b)) (= a@@1 b))))
 :qid |addressquantdefaultz3bpl.928:13|
 :skolemid |28|
))) (=> (forall ((a@@2 Int) (b@@0 Int) ) (!  (=> (|$IsValid'address'| a@@2) (=> (|$IsValid'address'| b@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@1) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@1) b@@0)) (= a@@2 b@@0))))
 :qid |addressquantdefaultz3bpl.928:13|
 :skolemid |28|
)) (=> (= (ControlFlow 0 12628) (- 0 14320)) (exists ((a@@3 Int) ) (!  (and (|$IsValid'address'| a@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@1) a@@3))
 :qid |addressquantdefaultz3bpl.933:13|
 :skolemid |29|
))))))))))
(let ((anon12_Then_correct true))
(let ((anon11_Then$1_correct  (=> (= $42_AddressQuant_R_$memory@1 $42_AddressQuant_R_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 12692) 12642) anon12_Then_correct) (=> (= (ControlFlow 0 12692) 12628) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) _$t0) (= (ControlFlow 0 12690) 12692)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) _$t0)) (=> (and (and (= $42_AddressQuant_R_$memory@0 ($Memory_10037 (|Store__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) _$t0 true) (|Store__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory) _$t0 $t9@0))) (= $42_AddressQuant_R_$memory@1 $42_AddressQuant_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 12581) 12642) anon12_Then_correct) (=> (= (ControlFlow 0 12581) 12628) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> $t5@0 (=> (and (|$IsValid'u64'| 1) (= $t9@0 ($42_AddressQuant_R 1))) (and (=> (= (ControlFlow 0 12563) 12690) anon11_Then_correct) (=> (= (ControlFlow 0 12563) 12581) anon11_Else_correct))))))
(let ((anon10_Else_correct true))
(let ((anon0$1_correct  (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory) $a_0)))
(|$IsValid'$42_AddressQuant_R'| $rsc))
 :qid |addressquantdefaultz3bpl.1109:20|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory) $a_0))
)) (forall ((a@@4 Int) ) (!  (=> (|$IsValid'address'| a@@4) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) a@@4)))
 :qid |addressquantdefaultz3bpl.1114:20|
 :skolemid |33|
))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (|$IsValid'address'| $t4) (= $t4 _$t0)) (and (= $t5@0 (= $t4 _$t1)) (= $t5@0 $t5@0)))) (and (=> (= (ControlFlow 0 12521) 12563) anon10_Then_correct) (=> (= (ControlFlow 0 12521) 12543) anon10_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14018) 12521) anon0$1_correct)))
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
(declare-datatypes ((T@$42_AddressQuant_R 0)) ((($42_AddressQuant_R (|$x#$42_AddressQuant_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_AddressQuant_R| 0)
(declare-datatypes ((T@$Memory_10037 0)) ((($Memory_10037 (|domain#$Memory_10037| |T@[Int]Bool|) (|contents#$Memory_10037| |T@[Int]$42_AddressQuant_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10229 0)) ((($Mutation_10229 (|l#$Mutation_10229| T@$Location) (|p#$Mutation_10229| T@Vec_2977) (|v#$Mutation_10229| T@$42_AddressQuant_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7997 0)) ((($Mutation_7997 (|l#$Mutation_7997| T@$Location) (|p#$Mutation_7997| T@Vec_2977) (|v#$Mutation_7997| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_AddressQuant_R'| (T@$42_AddressQuant_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |addressquantdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |addressquantdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |addressquantdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |addressquantdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |addressquantdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |addressquantdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |addressquantdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |addressquantdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |addressquantdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |addressquantdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |addressquantdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |addressquantdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |addressquantdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |addressquantdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |addressquantdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |addressquantdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |addressquantdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |addressquantdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |addressquantdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_AddressQuant_R) ) (! (= (|$IsValid'$42_AddressQuant_R'| s) (|$IsValid'u64'| (|$x#$42_AddressQuant_R| s)))
 :qid |addressquantdefaultz3bpl.942:39|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_AddressQuant_R'| s))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |addressquantdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |addressquantdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |addressquantdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |addressquantdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |addressquantdefaultz3bpl.275:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |addressquantdefaultz3bpl.73:19|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |addressquantdefaultz3bpl.82:30|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |addressquantdefaultz3bpl.63:20|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_AddressQuant_R_$memory@1 () T@$Memory_10037)
(declare-fun $42_AddressQuant_R_$memory () T@$Memory_10037)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () Int)
(declare-fun $42_AddressQuant_R_$memory@0 () T@$Memory_10037)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_AddressQuant_R_| (|T@[Int]$42_AddressQuant_R| Int T@$42_AddressQuant_R) |T@[Int]$42_AddressQuant_R|)
(declare-fun |Select__T@[Int]$42_AddressQuant_R_| (|T@[Int]$42_AddressQuant_R| Int) T@$42_AddressQuant_R)
(assert (forall ( ( ?x0 |T@[Int]$42_AddressQuant_R|) ( ?x1 Int) ( ?x2 T@$42_AddressQuant_R)) (! (= (|Select__T@[Int]$42_AddressQuant_R_| (|Store__T@[Int]$42_AddressQuant_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_AddressQuant_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_AddressQuant_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_AddressQuant_R_| (|Store__T@[Int]$42_AddressQuant_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_AddressQuant_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0 () T@$42_AddressQuant_R)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_AddressQuant_multiple_copy_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14331) (let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 12863) (- 0 14530)) (forall ((a Int) (b Int) ) (!  (=> (|$IsValid'address'| a) (=> (|$IsValid'address'| b) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@1) a) (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@1) b)) (= a b))))
 :qid |addressquantdefaultz3bpl.928:13|
 :skolemid |28|
))) (=> (forall ((a@@0 Int) (b@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|$IsValid'address'| b@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@1) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@1) b@@0)) (= a@@0 b@@0))))
 :qid |addressquantdefaultz3bpl.928:13|
 :skolemid |28|
)) (=> (= (ControlFlow 0 12863) (- 0 14536)) (exists ((a@@1 Int) ) (!  (and (|$IsValid'address'| a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory@1) a@@1))
 :qid |addressquantdefaultz3bpl.933:13|
 :skolemid |29|
))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Then$1_correct  (=> (= $42_AddressQuant_R_$memory@1 $42_AddressQuant_R_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 12931) 12881) anon8_Then_correct) (=> (= (ControlFlow 0 12931) 12863) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) _$t0) (= (ControlFlow 0 12929) 12931)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) _$t0)) (=> (and (and (= $42_AddressQuant_R_$memory@0 ($Memory_10037 (|Store__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) _$t0 true) (|Store__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory) _$t0 $t2@0))) (= $42_AddressQuant_R_$memory@1 $42_AddressQuant_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 12841) 12881) anon8_Then_correct) (=> (= (ControlFlow 0 12841) 12863) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory) $a_0)))
(|$IsValid'$42_AddressQuant_R'| $rsc))
 :qid |addressquantdefaultz3bpl.1242:20|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_10037| $42_AddressQuant_R_$memory) $a_0))
)) (forall ((a@@2 Int) (b@@1 Int) ) (!  (=> (|$IsValid'address'| a@@2) (=> (|$IsValid'address'| b@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) b@@1)) (= a@@2 b@@1))))
 :qid |addressquantdefaultz3bpl.928:13|
 :skolemid |28|
))) (=> (and (and (exists ((a@@3 Int) ) (!  (and (|$IsValid'address'| a@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_10037| $42_AddressQuant_R_$memory) a@@3))
 :qid |addressquantdefaultz3bpl.933:13|
 :skolemid |29|
)) (= _$t0 _$t0)) (and (|$IsValid'u64'| 1) (= $t2@0 ($42_AddressQuant_R 1)))) (and (=> (= (ControlFlow 0 12823) 12929) anon7_Then_correct) (=> (= (ControlFlow 0 12823) 12841) anon7_Else_correct)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14331) 12823) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 14331)))
(get-value ((ControlFlow 0 12823)))
(get-value ((ControlFlow 0 12841)))
(get-value ((ControlFlow 0 12863)))
(assert (not (= (ControlFlow 0 12863) (- 14530))))
(check-sat)
(pop 1)
; Invalid
