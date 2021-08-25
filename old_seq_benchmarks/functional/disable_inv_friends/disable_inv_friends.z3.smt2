(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$1_M2_R2 0)) ((($1_M2_R2 (|$dummy_field#$1_M2_R2| Bool) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$1_M2_R2| 0)
(declare-datatypes ((T@$Memory_10156 0)) ((($Memory_10156 (|domain#$Memory_10156| |T@[Int]Bool|) (|contents#$Memory_10156| |T@[Int]$1_M2_R2|) ) ) ))
(declare-datatypes ((T@$1_M3_R3 0)) ((($1_M3_R3 (|$dummy_field#$1_M3_R3| Bool) ) ) ))
(declare-sort |T@[Int]$1_M3_R3| 0)
(declare-datatypes ((T@$Memory_9737 0)) ((($Memory_9737 (|domain#$Memory_9737| |T@[Int]Bool|) (|contents#$Memory_9737| |T@[Int]$1_M3_R3|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7957 0)) ((($Mutation_7957 (|l#$Mutation_7957| T@$Location) (|p#$Mutation_7957| (Seq Int)) (|v#$Mutation_7957| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$1_M3_R3'| (T@$1_M3_R3) Bool)
(declare-fun |$IsValid'$1_M2_R2'| (T@$1_M2_R2) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |disableinvfriendsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |disableinvfriendsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |disableinvfriendsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |disableinvfriendsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |disableinvfriendsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |disableinvfriendsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |disableinvfriendsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |disableinvfriendsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |disableinvfriendsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |disableinvfriendsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |disableinvfriendsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |disableinvfriendsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |disableinvfriendsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |disableinvfriendsz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |disableinvfriendsz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |disableinvfriendsz3bpl.901:15|
 :skolemid |24|
)))
(assert (forall ((addr Int) ) (! true
 :qid |disableinvfriendsz3bpl.910:15|
 :skolemid |25|
)))
(assert (forall ((s@@0 T@$1_M3_R3) ) (! (= (|$IsValid'$1_M3_R3'| s@@0) true)
 :qid |disableinvfriendsz3bpl.920:29|
 :skolemid |26|
 :pattern ( (|$IsValid'$1_M3_R3'| s@@0))
)))
(assert (forall ((s@@1 T@$1_M2_R2) ) (! (= (|$IsValid'$1_M2_R2'| s@@1) true)
 :qid |disableinvfriendsz3bpl.1014:29|
 :skolemid |28|
 :pattern ( (|$IsValid'$1_M2_R2'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |disableinvfriendsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |disableinvfriendsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |disableinvfriendsz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_M3_R3_$memory@1 () T@$Memory_9737)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_M3_R3_$memory () T@$Memory_9737)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_M3_R3_$memory@0 () T@$Memory_9737)
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
 (=> (= (ControlFlow 0 0) 13078) (let ((anon8_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 11895) (- 0 13286))) (|Select__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory@1) (|$addr#$signer| _$t0)))))
(let ((anon8_Then_correct true))
(let ((anon7_Then$1_correct  (=> (= $1_M3_R3_$memory@1 $1_M3_R3_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 11965) 11913) anon8_Then_correct) (=> (= (ControlFlow 0 11965) 11895) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 11963) 11965)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory) (|$addr#$signer| _$t0))) (=> (and (and (= $1_M3_R3_$memory@0 ($Memory_9737 (|Store__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_M3_R3_| (|contents#$Memory_9737| $1_M3_R3_$memory) (|$addr#$signer| _$t0) $t2@0))) (= $1_M3_R3_$memory@1 $1_M3_R3_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 11875) 11913) anon8_Then_correct) (=> (= (ControlFlow 0 11875) 11895) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| (|$addr#$signer| _$t0)) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_M3_R3_| (|contents#$Memory_9737| $1_M3_R3_$memory) $a_0)))
(|$IsValid'$1_M3_R3'| $rsc))
 :qid |disableinvfriendsz3bpl.949:20|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]$1_M3_R3_| (|contents#$Memory_9737| $1_M3_R3_$memory) $a_0))
)) (|Select__T@[Int]Bool_| $1_M3_R3_$modifies (|$addr#$signer| _$t0))) (and (= _$t0 _$t0) (= $t2@0 ($1_M3_R3 false)))) (and (=> (= (ControlFlow 0 11853) (- 0 13186)) (|Select__T@[Int]Bool_| $1_M3_R3_$modifies (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| $1_M3_R3_$modifies (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 11853) 11963) anon7_Then_correct) (=> (= (ControlFlow 0 11853) 11875) anon7_Else_correct))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13078) 11853) anon0$1_correct)))
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
(declare-datatypes ((T@$1_M2_R2 0)) ((($1_M2_R2 (|$dummy_field#$1_M2_R2| Bool) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$1_M2_R2| 0)
(declare-datatypes ((T@$Memory_10156 0)) ((($Memory_10156 (|domain#$Memory_10156| |T@[Int]Bool|) (|contents#$Memory_10156| |T@[Int]$1_M2_R2|) ) ) ))
(declare-datatypes ((T@$1_M3_R3 0)) ((($1_M3_R3 (|$dummy_field#$1_M3_R3| Bool) ) ) ))
(declare-sort |T@[Int]$1_M3_R3| 0)
(declare-datatypes ((T@$Memory_9737 0)) ((($Memory_9737 (|domain#$Memory_9737| |T@[Int]Bool|) (|contents#$Memory_9737| |T@[Int]$1_M3_R3|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7957 0)) ((($Mutation_7957 (|l#$Mutation_7957| T@$Location) (|p#$Mutation_7957| (Seq Int)) (|v#$Mutation_7957| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$1_M3_R3'| (T@$1_M3_R3) Bool)
(declare-fun |$IsValid'$1_M2_R2'| (T@$1_M2_R2) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |disableinvfriendsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |disableinvfriendsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |disableinvfriendsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |disableinvfriendsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |disableinvfriendsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |disableinvfriendsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |disableinvfriendsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |disableinvfriendsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |disableinvfriendsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |disableinvfriendsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |disableinvfriendsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |disableinvfriendsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |disableinvfriendsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |disableinvfriendsz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |disableinvfriendsz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |disableinvfriendsz3bpl.901:15|
 :skolemid |24|
)))
(assert (forall ((addr Int) ) (! true
 :qid |disableinvfriendsz3bpl.910:15|
 :skolemid |25|
)))
(assert (forall ((s@@0 T@$1_M3_R3) ) (! (= (|$IsValid'$1_M3_R3'| s@@0) true)
 :qid |disableinvfriendsz3bpl.920:29|
 :skolemid |26|
 :pattern ( (|$IsValid'$1_M3_R3'| s@@0))
)))
(assert (forall ((s@@1 T@$1_M2_R2) ) (! (= (|$IsValid'$1_M2_R2'| s@@1) true)
 :qid |disableinvfriendsz3bpl.1014:29|
 :skolemid |28|
 :pattern ( (|$IsValid'$1_M2_R2'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |disableinvfriendsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |disableinvfriendsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |disableinvfriendsz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_M2_R2_$memory@1 () T@$Memory_10156)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_M2_R2_$memory () T@$Memory_10156)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_M2_R2_$memory@0 () T@$Memory_10156)
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
 (=> (= (ControlFlow 0 0) 13317) (let ((anon8_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 12158) (- 0 13525))) (|Select__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory@1) (|$addr#$signer| _$t0)))))
(let ((anon8_Then_correct true))
(let ((anon7_Then$1_correct  (=> (= $1_M2_R2_$memory@1 $1_M2_R2_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 12228) 12176) anon8_Then_correct) (=> (= (ControlFlow 0 12228) 12158) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 12226) 12228)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory) (|$addr#$signer| _$t0))) (=> (and (and (= $1_M2_R2_$memory@0 ($Memory_10156 (|Store__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_M2_R2_| (|contents#$Memory_10156| $1_M2_R2_$memory) (|$addr#$signer| _$t0) $t2@0))) (= $1_M2_R2_$memory@1 $1_M2_R2_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 12138) 12176) anon8_Then_correct) (=> (= (ControlFlow 0 12138) 12158) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| (|$addr#$signer| _$t0)) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_M2_R2_| (|contents#$Memory_10156| $1_M2_R2_$memory) $a_0)))
(|$IsValid'$1_M2_R2'| $rsc))
 :qid |disableinvfriendsz3bpl.1043:20|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]$1_M2_R2_| (|contents#$Memory_10156| $1_M2_R2_$memory) $a_0))
)) (|Select__T@[Int]Bool_| $1_M2_R2_$modifies (|$addr#$signer| _$t0))) (and (= _$t0 _$t0) (= $t2@0 ($1_M2_R2 false)))) (and (=> (= (ControlFlow 0 12116) (- 0 13425)) (|Select__T@[Int]Bool_| $1_M2_R2_$modifies (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| $1_M2_R2_$modifies (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 12116) 12226) anon7_Then_correct) (=> (= (ControlFlow 0 12116) 12138) anon7_Else_correct))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13317) 12116) anon0$1_correct)))
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
(declare-datatypes ((T@$1_M2_R2 0)) ((($1_M2_R2 (|$dummy_field#$1_M2_R2| Bool) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$1_M2_R2| 0)
(declare-datatypes ((T@$Memory_10156 0)) ((($Memory_10156 (|domain#$Memory_10156| |T@[Int]Bool|) (|contents#$Memory_10156| |T@[Int]$1_M2_R2|) ) ) ))
(declare-datatypes ((T@$1_M3_R3 0)) ((($1_M3_R3 (|$dummy_field#$1_M3_R3| Bool) ) ) ))
(declare-sort |T@[Int]$1_M3_R3| 0)
(declare-datatypes ((T@$Memory_9737 0)) ((($Memory_9737 (|domain#$Memory_9737| |T@[Int]Bool|) (|contents#$Memory_9737| |T@[Int]$1_M3_R3|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7957 0)) ((($Mutation_7957 (|l#$Mutation_7957| T@$Location) (|p#$Mutation_7957| (Seq Int)) (|v#$Mutation_7957| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$1_M3_R3'| (T@$1_M3_R3) Bool)
(declare-fun |$IsValid'$1_M2_R2'| (T@$1_M2_R2) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |disableinvfriendsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |disableinvfriendsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |disableinvfriendsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |disableinvfriendsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |disableinvfriendsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |disableinvfriendsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |disableinvfriendsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |disableinvfriendsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |disableinvfriendsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |disableinvfriendsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |disableinvfriendsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |disableinvfriendsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |disableinvfriendsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |disableinvfriendsz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |disableinvfriendsz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |disableinvfriendsz3bpl.901:15|
 :skolemid |24|
)))
(assert (forall ((addr Int) ) (! true
 :qid |disableinvfriendsz3bpl.910:15|
 :skolemid |25|
)))
(assert (forall ((s@@0 T@$1_M3_R3) ) (! (= (|$IsValid'$1_M3_R3'| s@@0) true)
 :qid |disableinvfriendsz3bpl.920:29|
 :skolemid |26|
 :pattern ( (|$IsValid'$1_M3_R3'| s@@0))
)))
(assert (forall ((s@@1 T@$1_M2_R2) ) (! (= (|$IsValid'$1_M2_R2'| s@@1) true)
 :qid |disableinvfriendsz3bpl.1014:29|
 :skolemid |28|
 :pattern ( (|$IsValid'$1_M2_R2'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |disableinvfriendsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |disableinvfriendsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |disableinvfriendsz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_M3_R3_$memory@2 () T@$Memory_9737)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_M2_R2_$memory@2 () T@$Memory_10156)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_M3_R3_$memory@1 () T@$Memory_9737)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_M3_R3_$memory () T@$Memory_9737)
(declare-fun $1_M3_R3_$memory@0 () T@$Memory_9737)
(declare-fun |Store__T@[Int]$1_M3_R3_| (|T@[Int]$1_M3_R3| Int T@$1_M3_R3) |T@[Int]$1_M3_R3|)
(declare-fun |Select__T@[Int]$1_M3_R3_| (|T@[Int]$1_M3_R3| Int) T@$1_M3_R3)
(assert (forall ( ( ?x0 |T@[Int]$1_M3_R3|) ( ?x1 Int) ( ?x2 T@$1_M3_R3)) (! (= (|Select__T@[Int]$1_M3_R3_| (|Store__T@[Int]$1_M3_R3_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_M3_R3|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_M3_R3)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_M3_R3_| (|Store__T@[Int]$1_M3_R3_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_M3_R3_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_M3_R3'@0| () T@$1_M3_R3)
(declare-fun $t3@0 () Bool)
(declare-fun $1_M3_R3_$modifies () |T@[Int]Bool|)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_M2_R2_$memory@1 () T@$Memory_10156)
(declare-fun $1_M2_R2_$memory () T@$Memory_10156)
(declare-fun $1_M2_R2_$memory@0 () T@$Memory_10156)
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
 (=> (= (ControlFlow 0 0) 13539) (let ((anon10_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory@2) (|$addr#$signer| _$t0)) (= (ControlFlow 0 12531) (- 0 13846))) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory@2) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory@2) addr@@0)))
 :qid |disableinvfriendsz3bpl.1246:15|
 :skolemid |33|
)))))
(let ((anon14_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= $1_M3_R3_$memory@1 ($Memory_9737 (|Store__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory) (|$addr#$signer| _$t0) false) (|contents#$Memory_9737| $1_M3_R3_$memory)))) (and (= $1_M3_R3_$memory@2 $1_M3_R3_$memory@1) (= (ControlFlow 0 12492) 12531))) anon10_correct)))
(let ((anon14_Then_correct  (=> (and (and |$temp_0'bool'@1| (= $1_M3_R3_$memory@0 ($Memory_9737 (|Store__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_M3_R3_| (|contents#$Memory_9737| $1_M3_R3_$memory) (|$addr#$signer| _$t0) |$temp_0'$1_M3_R3'@0|)))) (and (= $1_M3_R3_$memory@2 $1_M3_R3_$memory@0) (= (ControlFlow 0 12545) 12531))) anon10_correct)))
(let ((anon13_Else_correct  (=> (not $t3@0) (and (=> (= (ControlFlow 0 12478) 12545) anon14_Then_correct) (=> (= (ControlFlow 0 12478) 12492) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon5_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory@2) (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 12472) (- 0 13761)) (|Select__T@[Int]Bool_| $1_M3_R3_$modifies (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| $1_M3_R3_$modifies (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 12472) 12557) anon13_Then_correct) (=> (= (ControlFlow 0 12472) 12478) anon13_Else_correct)))))))
(let ((anon12_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_M2_R2_$memory@1 ($Memory_10156 (|Store__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory) (|$addr#$signer| _$t0) false) (|contents#$Memory_10156| $1_M2_R2_$memory)))) (and (= $1_M2_R2_$memory@2 $1_M2_R2_$memory@1) (= (ControlFlow 0 12448) 12472))) anon5_correct)))
(let ((anon12_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_M2_R2_$memory@0 ($Memory_10156 (|Store__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_M2_R2_| (|contents#$Memory_10156| $1_M2_R2_$memory) (|$addr#$signer| _$t0) |$temp_0'$1_M2_R2'@0|)))) (and (= $1_M2_R2_$memory@2 $1_M2_R2_$memory@0) (= (ControlFlow 0 12577) 12472))) anon5_correct)))
(let ((anon11_Else_correct  (=> (not $t1@0) (and (=> (= (ControlFlow 0 12434) 12577) anon12_Then_correct) (=> (= (ControlFlow 0 12434) 12448) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon0$1_correct  (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory) addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory) addr@@1)))
 :qid |disableinvfriendsz3bpl.1125:20|
 :skolemid |30|
)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_M3_R3_| (|contents#$Memory_9737| $1_M3_R3_$memory) $a_0)))
(|$IsValid'$1_M3_R3'| $rsc))
 :qid |disableinvfriendsz3bpl.1131:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]$1_M3_R3_| (|contents#$Memory_9737| $1_M3_R3_$memory) $a_0))
))) (=> (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_M2_R2_| (|contents#$Memory_10156| $1_M2_R2_$memory) $a_0@@0)))
(|$IsValid'$1_M2_R2'| $rsc@@0))
 :qid |disableinvfriendsz3bpl.1135:20|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]$1_M2_R2_| (|contents#$Memory_10156| $1_M2_R2_$memory) $a_0@@0))
)) (|Select__T@[Int]Bool_| $1_M2_R2_$modifies (|$addr#$signer| _$t0))) (and (|Select__T@[Int]Bool_| $1_M3_R3_$modifies (|$addr#$signer| _$t0)) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 12428) (- 0 13679)) (|Select__T@[Int]Bool_| $1_M2_R2_$modifies (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| $1_M2_R2_$modifies (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 12428) 12589) anon11_Then_correct) (=> (= (ControlFlow 0 12428) 12434) anon11_Else_correct)))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13539) 12428) anon0$1_correct)))
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
(declare-datatypes ((T@$1_M2_R2 0)) ((($1_M2_R2 (|$dummy_field#$1_M2_R2| Bool) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$1_M2_R2| 0)
(declare-datatypes ((T@$Memory_10156 0)) ((($Memory_10156 (|domain#$Memory_10156| |T@[Int]Bool|) (|contents#$Memory_10156| |T@[Int]$1_M2_R2|) ) ) ))
(declare-datatypes ((T@$1_M3_R3 0)) ((($1_M3_R3 (|$dummy_field#$1_M3_R3| Bool) ) ) ))
(declare-sort |T@[Int]$1_M3_R3| 0)
(declare-datatypes ((T@$Memory_9737 0)) ((($Memory_9737 (|domain#$Memory_9737| |T@[Int]Bool|) (|contents#$Memory_9737| |T@[Int]$1_M3_R3|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7957 0)) ((($Mutation_7957 (|l#$Mutation_7957| T@$Location) (|p#$Mutation_7957| (Seq Int)) (|v#$Mutation_7957| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$1_M3_R3'| (T@$1_M3_R3) Bool)
(declare-fun |$IsValid'$1_M2_R2'| (T@$1_M2_R2) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |disableinvfriendsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |disableinvfriendsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |disableinvfriendsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |disableinvfriendsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |disableinvfriendsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |disableinvfriendsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |disableinvfriendsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |disableinvfriendsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |disableinvfriendsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |disableinvfriendsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |disableinvfriendsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |disableinvfriendsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |disableinvfriendsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |disableinvfriendsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |disableinvfriendsz3bpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |disableinvfriendsz3bpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |disableinvfriendsz3bpl.901:15|
 :skolemid |24|
)))
(assert (forall ((addr Int) ) (! true
 :qid |disableinvfriendsz3bpl.910:15|
 :skolemid |25|
)))
(assert (forall ((s@@0 T@$1_M3_R3) ) (! (= (|$IsValid'$1_M3_R3'| s@@0) true)
 :qid |disableinvfriendsz3bpl.920:29|
 :skolemid |26|
 :pattern ( (|$IsValid'$1_M3_R3'| s@@0))
)))
(assert (forall ((s@@1 T@$1_M2_R2) ) (! (= (|$IsValid'$1_M2_R2'| s@@1) true)
 :qid |disableinvfriendsz3bpl.1014:29|
 :skolemid |28|
 :pattern ( (|$IsValid'$1_M2_R2'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |disableinvfriendsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |disableinvfriendsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |disableinvfriendsz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_M2_R2_$memory@2 () T@$Memory_10156)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_M3_R3_$memory@2 () T@$Memory_9737)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_M2_R2_$memory@1 () T@$Memory_10156)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_M2_R2_$memory () T@$Memory_10156)
(declare-fun $1_M2_R2_$memory@0 () T@$Memory_10156)
(declare-fun |Store__T@[Int]$1_M2_R2_| (|T@[Int]$1_M2_R2| Int T@$1_M2_R2) |T@[Int]$1_M2_R2|)
(declare-fun |Select__T@[Int]$1_M2_R2_| (|T@[Int]$1_M2_R2| Int) T@$1_M2_R2)
(assert (forall ( ( ?x0 |T@[Int]$1_M2_R2|) ( ?x1 Int) ( ?x2 T@$1_M2_R2)) (! (= (|Select__T@[Int]$1_M2_R2_| (|Store__T@[Int]$1_M2_R2_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_M2_R2|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_M2_R2)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_M2_R2_| (|Store__T@[Int]$1_M2_R2_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_M2_R2_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_M2_R2'@0| () T@$1_M2_R2)
(declare-fun $t3@0 () Bool)
(declare-fun $1_M2_R2_$modifies () |T@[Int]Bool|)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_M3_R3_$memory@1 () T@$Memory_9737)
(declare-fun $1_M3_R3_$memory () T@$Memory_9737)
(declare-fun $1_M3_R3_$memory@0 () T@$Memory_9737)
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
 (=> (= (ControlFlow 0 0) 13884) (let ((anon10_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory@2) (|$addr#$signer| _$t0)) (= (ControlFlow 0 12915) (- 0 14191))) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory@2) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory@2) addr@@0)))
 :qid |disableinvfriendsz3bpl.1406:15|
 :skolemid |37|
)))))
(let ((anon14_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= $1_M2_R2_$memory@1 ($Memory_10156 (|Store__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory) (|$addr#$signer| _$t0) false) (|contents#$Memory_10156| $1_M2_R2_$memory)))) (and (= $1_M2_R2_$memory@2 $1_M2_R2_$memory@1) (= (ControlFlow 0 12876) 12915))) anon10_correct)))
(let ((anon14_Then_correct  (=> (and (and |$temp_0'bool'@1| (= $1_M2_R2_$memory@0 ($Memory_10156 (|Store__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_M2_R2_| (|contents#$Memory_10156| $1_M2_R2_$memory) (|$addr#$signer| _$t0) |$temp_0'$1_M2_R2'@0|)))) (and (= $1_M2_R2_$memory@2 $1_M2_R2_$memory@0) (= (ControlFlow 0 12929) 12915))) anon10_correct)))
(let ((anon13_Else_correct  (=> (not $t3@0) (and (=> (= (ControlFlow 0 12862) 12929) anon14_Then_correct) (=> (= (ControlFlow 0 12862) 12876) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon5_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory@2) (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 12856) (- 0 14106)) (|Select__T@[Int]Bool_| $1_M2_R2_$modifies (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| $1_M2_R2_$modifies (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 12856) 12941) anon13_Then_correct) (=> (= (ControlFlow 0 12856) 12862) anon13_Else_correct)))))))
(let ((anon12_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_M3_R3_$memory@1 ($Memory_9737 (|Store__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory) (|$addr#$signer| _$t0) false) (|contents#$Memory_9737| $1_M3_R3_$memory)))) (and (= $1_M3_R3_$memory@2 $1_M3_R3_$memory@1) (= (ControlFlow 0 12832) 12856))) anon5_correct)))
(let ((anon12_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_M3_R3_$memory@0 ($Memory_9737 (|Store__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_M3_R3_| (|contents#$Memory_9737| $1_M3_R3_$memory) (|$addr#$signer| _$t0) |$temp_0'$1_M3_R3'@0|)))) (and (= $1_M3_R3_$memory@2 $1_M3_R3_$memory@0) (= (ControlFlow 0 12961) 12856))) anon5_correct)))
(let ((anon11_Else_correct  (=> (not $t1@0) (and (=> (= (ControlFlow 0 12818) 12961) anon12_Then_correct) (=> (= (ControlFlow 0 12818) 12832) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon0$1_correct  (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9737| $1_M3_R3_$memory) addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_10156| $1_M2_R2_$memory) addr@@1)))
 :qid |disableinvfriendsz3bpl.1285:20|
 :skolemid |34|
)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_M3_R3_| (|contents#$Memory_9737| $1_M3_R3_$memory) $a_0)))
(|$IsValid'$1_M3_R3'| $rsc))
 :qid |disableinvfriendsz3bpl.1291:20|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]$1_M3_R3_| (|contents#$Memory_9737| $1_M3_R3_$memory) $a_0))
))) (=> (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_M2_R2_| (|contents#$Memory_10156| $1_M2_R2_$memory) $a_0@@0)))
(|$IsValid'$1_M2_R2'| $rsc@@0))
 :qid |disableinvfriendsz3bpl.1295:20|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]$1_M2_R2_| (|contents#$Memory_10156| $1_M2_R2_$memory) $a_0@@0))
)) (|Select__T@[Int]Bool_| $1_M2_R2_$modifies (|$addr#$signer| _$t0))) (and (|Select__T@[Int]Bool_| $1_M3_R3_$modifies (|$addr#$signer| _$t0)) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 12812) (- 0 14024)) (|Select__T@[Int]Bool_| $1_M3_R3_$modifies (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| $1_M3_R3_$modifies (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 12812) 12973) anon11_Then_correct) (=> (= (ControlFlow 0 12812) 12818) anon11_Else_correct)))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13884) 12812) anon0$1_correct)))
anon0_correct)))))))))))))
))
(check-sat)
(pop 1)
; Valid
