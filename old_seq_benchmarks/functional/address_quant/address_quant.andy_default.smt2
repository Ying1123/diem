(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$42_AddressQuant_R 0)) ((($42_AddressQuant_R (|$x#$42_AddressQuant_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_AddressQuant_R| 0)
(declare-datatypes ((T@$Memory_9396 0)) ((($Memory_9396 (|domain#$Memory_9396| |T@[Int]Bool|) (|contents#$Memory_9396| |T@[Int]$42_AddressQuant_R|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9588 0)) ((($Mutation_9588 (|l#$Mutation_9588| T@$Location) (|p#$Mutation_9588| (Seq Int)) (|v#$Mutation_9588| T@$42_AddressQuant_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7677 0)) ((($Mutation_7677 (|l#$Mutation_7677| T@$Location) (|p#$Mutation_7677| (Seq Int)) (|v#$Mutation_7677| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_AddressQuant_R'| (T@$42_AddressQuant_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |addressquantandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |addressquantandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |addressquantandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |addressquantandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |addressquantandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |addressquantandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |addressquantandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |addressquantandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |addressquantandybpl.590:13|
 :skolemid |15|
))))
 :qid |addressquantandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |addressquantandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |addressquantandybpl.603:17|
 :skolemid |18|
)))))
 :qid |addressquantandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |addressquantandybpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |addressquantandybpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |addressquantandybpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |addressquantandybpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |addressquantandybpl.901:15|
 :skolemid |24|
)))
(assert (forall ((addr Int) ) (! true
 :qid |addressquantandybpl.905:15|
 :skolemid |25|
)))
(assert (forall ((s@@0 T@$42_AddressQuant_R) ) (! (= (|$IsValid'$42_AddressQuant_R'| s@@0) (|$IsValid'u64'| (|$x#$42_AddressQuant_R| s@@0)))
 :qid |addressquantandybpl.925:39|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_AddressQuant_R'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |addressquantandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |addressquantandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |addressquantandybpl.245:54|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t7@0 () T@$Mutation_3430)
(declare-fun $t2@1 () T@$Mutation_9588)
(declare-fun $t7@1 () T@$Mutation_3430)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t2@2 () T@$Mutation_9588)
(declare-fun $42_AddressQuant_R_$memory@0 () T@$Memory_9396)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $42_AddressQuant_R_$memory () T@$Memory_9396)
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
(declare-fun $t2 () T@$Mutation_9588)
(declare-fun $t2@0 () T@$Mutation_9588)
(declare-fun $abort_code@0 () Int)
(declare-fun $t1 () T@$Mutation_9588)
(declare-fun $t7 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_AddressQuant_f$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 12376) (let ((anon11_Else_correct  (=> (not $abort_flag@1) (=> (and (and (= $t7@0 ($Mutation_3430 (|l#$Mutation_9588| $t2@1) (seq.++ (|p#$Mutation_9588| $t2@1) (seq.unit 0)) (|$x#$42_AddressQuant_R| (|v#$Mutation_9588| $t2@1)))) (= $t7@1 ($Mutation_3430 (|l#$Mutation_3430| $t7@0) (|p#$Mutation_3430| $t7@0) inline$$AddU64$0$dst@2))) (and (= $t2@2 ($Mutation_9588 (|l#$Mutation_9588| $t2@1) (|p#$Mutation_9588| $t2@1) ($42_AddressQuant_R (|v#$Mutation_3430| $t7@1)))) (= $42_AddressQuant_R_$memory@0 ($Memory_9396 (|Store__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) (|a#$Global| (|l#$Mutation_9588| $t2@2)) true) (|Store__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory) (|a#$Global| (|l#$Mutation_9588| $t2@2)) (|v#$Mutation_9588| $t2@2)))))) (and (=> (= (ControlFlow 0 11585) (- 0 12799)) (= (|$x#$42_AddressQuant_R| (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory@0) _$t0)) (+ (|$x#$42_AddressQuant_R| (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory) _$t0)) 1))) (=> (= (|$x#$42_AddressQuant_R| (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory@0) _$t0)) (+ (|$x#$42_AddressQuant_R| (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory) _$t0)) 1)) (and (=> (= (ControlFlow 0 11585) (- 0 12820)) (forall ((a Int) (b Int) ) (!  (=> (|$IsValid'address'| a) (=> (|$IsValid'address'| b) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@0) a) (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@0) b)) (= a b))))
 :qid |addressquantandybpl.911:13|
 :skolemid |26|
))) (=> (forall ((a@@0 Int) (b@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|$IsValid'address'| b@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@0) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@0) b@@0)) (= a@@0 b@@0))))
 :qid |addressquantandybpl.911:13|
 :skolemid |26|
)) (=> (= (ControlFlow 0 11585) (- 0 12826)) (exists ((a@@1 Int) ) (!  (and (|$IsValid'address'| a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@0) a@@1))
 :qid |addressquantandybpl.916:13|
 :skolemid |27|
)))))))))))
(let ((anon11_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 11489) 11599) anon11_Then_correct) (=> (= (ControlFlow 0 11489) 11585) anon11_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t4@0 1) $MAX_U64) (= (ControlFlow 0 11487) 11489)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t4@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t4@0 1)) (= $abort_flag@1 $abort_flag@0)) (and (= $abort_code@2 $abort_code@1) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 11435) 11599) anon11_Then_correct) (=> (= (ControlFlow 0 11435) 11585) anon11_Else_correct))))))
(let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= |$temp_0'$42_AddressQuant_R'@0| (|v#$Mutation_9588| $t2@1)) (= |$temp_0'$42_AddressQuant_R'@0| |$temp_0'$42_AddressQuant_R'@0|)) (and (= $t4@0 (|$x#$42_AddressQuant_R| (|v#$Mutation_9588| $t2@1))) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 11495) 11487) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 11495) 11435) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon10_Then_correct true))
(let ((anon9_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 11671) 11619) anon10_Then_correct) (=> (= (ControlFlow 0 11671) 11495) anon10_Else_correct))))))
(let ((anon9_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) _$t0)) (= (ControlFlow 0 11669) 11671)) anon9_Then$1_correct)))
(let ((anon9_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_9588 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 11310) 11619) anon10_Then_correct) (=> (= (ControlFlow 0 11310) 11495) anon10_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory) $a_0)))
(|$IsValid'$42_AddressQuant_R'| $rsc))
 :qid |addressquantandybpl.962:20|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory) $a_0))
)) (forall ((a@@2 Int) (b@@1 Int) ) (!  (=> (|$IsValid'address'| a@@2) (=> (|$IsValid'address'| b@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) b@@1)) (= a@@2 b@@1))))
 :qid |addressquantandybpl.911:13|
 :skolemid |26|
))) (and (exists ((a@@3 Int) ) (!  (and (|$IsValid'address'| a@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) a@@3))
 :qid |addressquantandybpl.916:13|
 :skolemid |27|
)) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 11288) 11669) anon9_Then_correct) (=> (= (ControlFlow 0 11288) 11310) anon9_Else_correct))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_9588| $t1)) 0) (= (seq.len (|p#$Mutation_9588| $t2)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t7)) 0) (= (ControlFlow 0 11234) 11288))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12376) 11234) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $42_AddressQuant_R_$memory@1 () T@$Memory_9396)
(declare-fun _$t1 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $42_AddressQuant_R_$memory@0@@0 () T@$Memory_9396)
(declare-fun $t9@0 () T@$42_AddressQuant_R)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t5@0 () Bool)
(declare-fun $t4 () Int)
(push 1)
(set-info :boogie-vc-id $42_AddressQuant_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 12860) (let ((anon12_Else_correct  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 11974) (- 0 13138)) (forall ((a@@4 Int) ) (!  (=> (|$IsValid'address'| a@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@1) a@@4) (= a@@4 _$t1)))
 :qid |addressquantandybpl.1180:15|
 :skolemid |32|
))) (=> (forall ((a@@5 Int) ) (!  (=> (|$IsValid'address'| a@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@1) a@@5) (= a@@5 _$t1)))
 :qid |addressquantandybpl.1180:15|
 :skolemid |32|
)) (and (=> (= (ControlFlow 0 11974) (- 0 13162)) (forall ((a@@6 Int) (b@@2 Int) ) (!  (=> (|$IsValid'address'| a@@6) (=> (|$IsValid'address'| b@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@1) a@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@1) b@@2)) (= a@@6 b@@2))))
 :qid |addressquantandybpl.911:13|
 :skolemid |26|
))) (=> (forall ((a@@7 Int) (b@@3 Int) ) (!  (=> (|$IsValid'address'| a@@7) (=> (|$IsValid'address'| b@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@1) a@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@1) b@@3)) (= a@@7 b@@3))))
 :qid |addressquantandybpl.911:13|
 :skolemid |26|
)) (=> (= (ControlFlow 0 11974) (- 0 13168)) (exists ((a@@8 Int) ) (!  (and (|$IsValid'address'| a@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@1) a@@8))
 :qid |addressquantandybpl.916:13|
 :skolemid |27|
))))))))))
(let ((anon12_Then_correct true))
(let ((anon11_Then$1_correct  (=> (= $42_AddressQuant_R_$memory@1 $42_AddressQuant_R_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 12040) 11988) anon12_Then_correct) (=> (= (ControlFlow 0 12040) 11974) anon12_Else_correct))))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 12038) 12040)) anon11_Then$1_correct)))
(let ((anon11_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) (|$addr#$signer| _$t0@@0))) (=> (and (and (= $42_AddressQuant_R_$memory@0@@0 ($Memory_9396 (|Store__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory) (|$addr#$signer| _$t0@@0) $t9@0))) (= $42_AddressQuant_R_$memory@1 $42_AddressQuant_R_$memory@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 11927) 11988) anon12_Then_correct) (=> (= (ControlFlow 0 11927) 11974) anon12_Else_correct))))))
(let ((anon10_Then_correct@@0  (=> $t5@0 (=> (and (|$IsValid'u64'| 1) (= $t9@0 ($42_AddressQuant_R 1))) (and (=> (= (ControlFlow 0 11905) 12038) anon11_Then_correct@@0) (=> (= (ControlFlow 0 11905) 11927) anon11_Else_correct@@0))))))
(let ((anon10_Else_correct@@0 true))
(let ((anon0$1_correct@@0  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (|$IsValid'address'| _$t1)) (=> (and (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory) $a_0@@0)))
(|$IsValid'$42_AddressQuant_R'| $rsc@@0))
 :qid |addressquantandybpl.1093:20|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory) $a_0@@0))
)) (forall ((a@@9 Int) ) (!  (=> (|$IsValid'address'| a@@9) (not (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) a@@9)))
 :qid |addressquantandybpl.1098:20|
 :skolemid |31|
))) (and (= _$t0@@0 _$t0@@0) (= _$t1 _$t1))) (and (and (|$IsValid'address'| $t4) (= $t4 (|$addr#$signer| _$t0@@0))) (and (= $t5@0 (= $t4 _$t1)) (= $t5@0 $t5@0)))) (and (=> (= (ControlFlow 0 11863) 11905) anon10_Then_correct@@0) (=> (= (ControlFlow 0 11863) 11885) anon10_Else_correct@@0))))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 12860) 11863) anon0$1_correct@@0)))
anon0_correct@@0))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $42_AddressQuant_R_$memory@1@@0 () T@$Memory_9396)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $42_AddressQuant_R_$memory@0@@1 () T@$Memory_9396)
(declare-fun $t2@0@@0 () T@$42_AddressQuant_R)
(declare-fun $abort_code@0@@1 () Int)
(push 1)
(set-info :boogie-vc-id $42_AddressQuant_multiple_copy_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 13179) (let ((anon8_Else_correct  (=> (not $abort_flag@0@@1) (and (=> (= (ControlFlow 0 12227) (- 0 13384)) (forall ((a@@10 Int) (b@@4 Int) ) (!  (=> (|$IsValid'address'| a@@10) (=> (|$IsValid'address'| b@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@1@@0) a@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@1@@0) b@@4)) (= a@@10 b@@4))))
 :qid |addressquantandybpl.911:13|
 :skolemid |26|
))) (=> (forall ((a@@11 Int) (b@@5 Int) ) (!  (=> (|$IsValid'address'| a@@11) (=> (|$IsValid'address'| b@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@1@@0) a@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@1@@0) b@@5)) (= a@@11 b@@5))))
 :qid |addressquantandybpl.911:13|
 :skolemid |26|
)) (=> (= (ControlFlow 0 12227) (- 0 13390)) (exists ((a@@12 Int) ) (!  (and (|$IsValid'address'| a@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory@1@@0) a@@12))
 :qid |addressquantandybpl.916:13|
 :skolemid |27|
))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Then$1_correct  (=> (= $42_AddressQuant_R_$memory@1@@0 $42_AddressQuant_R_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 12297) 12245) anon8_Then_correct) (=> (= (ControlFlow 0 12297) 12227) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 12295) 12297)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) (|$addr#$signer| _$t0@@1))) (=> (and (and (= $42_AddressQuant_R_$memory@0@@1 ($Memory_9396 (|Store__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory) (|$addr#$signer| _$t0@@1) $t2@0@@0))) (= $42_AddressQuant_R_$memory@1@@0 $42_AddressQuant_R_$memory@0@@1)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 12205) 12245) anon8_Then_correct) (=> (= (ControlFlow 0 12205) 12227) anon8_Else_correct))))))
(let ((anon0$1_correct@@1  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) (=> (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory) $a_0@@1)))
(|$IsValid'$42_AddressQuant_R'| $rsc@@1))
 :qid |addressquantandybpl.1226:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]$42_AddressQuant_R_| (|contents#$Memory_9396| $42_AddressQuant_R_$memory) $a_0@@1))
)) (forall ((a@@13 Int) (b@@6 Int) ) (!  (=> (|$IsValid'address'| a@@13) (=> (|$IsValid'address'| b@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) a@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) b@@6)) (= a@@13 b@@6))))
 :qid |addressquantandybpl.911:13|
 :skolemid |26|
))) (=> (and (and (exists ((a@@14 Int) ) (!  (and (|$IsValid'address'| a@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_9396| $42_AddressQuant_R_$memory) a@@14))
 :qid |addressquantandybpl.916:13|
 :skolemid |27|
)) (= _$t0@@1 _$t0@@1)) (and (|$IsValid'u64'| 1) (= $t2@0@@0 ($42_AddressQuant_R 1)))) (and (=> (= (ControlFlow 0 12183) 12295) anon7_Then_correct) (=> (= (ControlFlow 0 12183) 12205) anon7_Else_correct)))))))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 13179) 12183) anon0$1_correct@@1)))
anon0_correct@@1))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 13179)))
(get-value ((ControlFlow 0 12183)))
(get-value ((ControlFlow 0 12205)))
(get-value ((ControlFlow 0 12227)))
(assert (not (= (ControlFlow 0 12227) (- 13384))))
(check-sat)
(pop 1)
; Invalid
