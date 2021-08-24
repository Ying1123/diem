(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :strings-seq-update true)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_9661 0)) ((($Memory_9661 (|domain#$Memory_9661| |T@[Int]Bool|) (|contents#$Memory_9661| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_9427 0)) ((($Memory_9427 (|domain#$Memory_9427| |T@[Int]Bool|) (|contents#$Memory_9427| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7708 0)) ((($Mutation_7708 (|l#$Mutation_7708| T@$Location) (|p#$Mutation_7708| (Seq Int)) (|v#$Mutation_7708| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun $1_SlidingNonce_spec_try_record_nonce (T@$signer Int) Int)
(declare-fun |$IsValid'$1_SlidingNonce_SlidingNonce'| (T@$1_SlidingNonce_SlidingNonce) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |SlidingNonceseqArraybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |SlidingNonceseqArraybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |SlidingNonceseqArraybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |SlidingNonceseqArraybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |SlidingNonceseqArraybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |SlidingNonceseqArraybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |SlidingNonceseqArraybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |SlidingNonceseqArraybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |SlidingNonceseqArraybpl.590:13|
 :skolemid |15|
))))
 :qid |SlidingNonceseqArraybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |SlidingNonceseqArraybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |SlidingNonceseqArraybpl.603:17|
 :skolemid |18|
)))))
 :qid |SlidingNonceseqArraybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |SlidingNonceseqArraybpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |SlidingNonceseqArraybpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |SlidingNonceseqArraybpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |SlidingNonceseqArraybpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |SlidingNonceseqArraybpl.901:15|
 :skolemid |24|
)))
(assert (forall ((addr Int) ) (! true
 :qid |SlidingNonceseqArraybpl.905:15|
 :skolemid |25|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |SlidingNonceseqArraybpl.920:61|
 :skolemid |26|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |SlidingNonceseqArraybpl.930:15|
 :skolemid |27|
)))
(assert (forall ((s@@1 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@1)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@1)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@1))))
 :qid |SlidingNonceseqArraybpl.943:49|
 :skolemid |28|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |SlidingNonceseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |SlidingNonceseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |SlidingNonceseqArraybpl.245:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_9427)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1 () T@$Memory_9661)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_9661)
(declare-fun _$t0 () T@$signer)
(declare-fun $t8@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0 () T@$Memory_9661)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int T@$1_SlidingNonce_SlidingNonce) |T@[Int]$1_SlidingNonce_SlidingNonce|)
(declare-fun |Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int) T@$1_SlidingNonce_SlidingNonce)
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?y1))) :weight 0)))
(declare-fun $t11@0 () T@$1_SlidingNonce_SlidingNonce)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$modifies () |T@[Int]Bool|)
(declare-fun $t7 () Int)
(declare-fun $t4@0 () Bool)
(declare-fun $t3 () Int)
(push 1)
(set-info :boogie-vc-id $1_SlidingNonce_publish$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 12022) (let ((anon12_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 11423) (- 0 12392)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9427| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9427| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 11423) (- 0 12406)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9427| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory@1) 186537453))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9427| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory@1) 186537453)) (and (=> (= (ControlFlow 0 11423) (- 0 12423)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (=> (= (ControlFlow 0 11423) (- 0 12434)) (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory@1) (|$addr#$signer| _$t0))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 11311) (- 0 12362)) (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0)) (=> (= (ControlFlow 0 11311) (- 0 12368)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0)) (= 6 $t8@0)))))))
(let ((anon12_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t8@0 $abort_code@1) (= (ControlFlow 0 11437) 11311))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_SlidingNonce_SlidingNonce_$memory@1 $1_SlidingNonce_SlidingNonce_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 11489) 11437) anon12_Then_correct) (=> (= (ControlFlow 0 11489) 11423) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 11487) 11489)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (=> (and (and (= $1_SlidingNonce_SlidingNonce_$memory@0 ($Memory_9661 (|Store__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0) $t11@0))) (= $1_SlidingNonce_SlidingNonce_$memory@1 $1_SlidingNonce_SlidingNonce_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 11363) 11437) anon12_Then_correct) (=> (= (ControlFlow 0 11363) 11423) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> (and (and inline$$Not$0$dst@1 (|$IsValid'u64'| 0)) (and (|$IsValid'u128'| 0) (= $t11@0 ($1_SlidingNonce_SlidingNonce 0 0)))) (and (=> (= (ControlFlow 0 11341) (- 0 12248)) (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 11341) 11487) anon11_Then_correct) (=> (= (ControlFlow 0 11341) 11363) anon11_Else_correct)))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t7 $t7)) (and (= $t8@0 $t7) (= (ControlFlow 0 11279) 11311))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t7) (= $t7 6)) (and (= $t7 $t7) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 11263) 11341) anon10_Then_correct) (=> (= (ControlFlow 0 11263) 11279) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t4@0)) (= (ControlFlow 0 11227) 11263)) anon0$2_correct)))
(let ((anon0$1_correct  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9427| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9427| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) $a_0)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc))
 :qid |SlidingNonceseqArraybpl.992:20|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies (|$addr#$signer| _$t0)) (= _$t0 _$t0))) (and (and (|$IsValid'address'| $t3) (= $t3 (|$addr#$signer| _$t0))) (and (= $t4@0 (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) $t3)) (= (ControlFlow 0 11233) 11227)))) inline$$Not$0$anon0_correct))))
(let ((anon0_correct  (=> (= (ControlFlow 0 12022) 11233) anon0$1_correct)))
anon0_correct)))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t7@0 () Int)
(declare-fun $t9@0 () Bool)
(declare-fun $t10 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t7@@0 () Int)
(declare-fun $t5 () Int)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1@@0 () T@$Memory_9661)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0@@0 () T@$Memory_9661)
(declare-fun |$temp_0'$1_SlidingNonce_SlidingNonce'@0| () T@$1_SlidingNonce_SlidingNonce)
(push 1)
(set-info :boogie-vc-id $1_SlidingNonce_record_nonce_or_abort$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 12466) (let ((L3_correct@@0  (and (=> (= (ControlFlow 0 11847) (- 0 12787)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@0))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@0 _$t1) 0)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@0))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@0 _$t1) 0))) (=> (= (ControlFlow 0 11847) (- 0 12807)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@0))) (= 5 $t7@0)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@0 _$t1) 0)) (= 7 $t7@0))))))))
(let ((anon11_Else_correct@@0  (=> (and (and (not $t9@0) (= $t10 $t10)) (and (= $t7@0 $t10) (= (ControlFlow 0 11775) 11847))) L3_correct@@0)))
(let ((anon9_Then_correct  (=> $t6 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@0))) (= 5 $t7@@0)) (= $t7@@0 $t7@@0)) (and (= $t7@0 $t7@@0) (= (ControlFlow 0 11927) 11847))) L3_correct@@0))))
(let ((anon11_Then_correct@@0  (=> $t9@0 (and (=> (= (ControlFlow 0 11883) (- 0 12733)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@0))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@0)))) (=> (= (ControlFlow 0 11883) (- 0 12746)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@0 _$t1) 0)))))))))
(let ((anon5_correct  (=> (|$IsValid'u64'| $t5) (=> (and (and (and (= $t5 ($1_SlidingNonce_spec_try_record_nonce _$t0@@0 _$t1)) (= $t5 $t5)) (and (|$IsValid'u64'| 0) (= $t9@0 (= $t5 0)))) (and (and (|$IsValid'u64'| $t10) (= $t10 7)) (and (= $t10 $t10) (= $t9@0 $t9@0)))) (and (=> (= (ControlFlow 0 11759) 11883) anon11_Then_correct@@0) (=> (= (ControlFlow 0 11759) 11775) anon11_Else_correct@@0))))))
(let ((anon10_Else_correct@@0  (=> (not |$temp_0'bool'@0|) (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@1@@0 ($Memory_9661 (|Store__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@0) false) (|contents#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory))) (= (ControlFlow 0 11701) 11759)) anon5_correct))))
(let ((anon10_Then_correct@@0  (=> |$temp_0'bool'@0| (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@0@@0 ($Memory_9661 (|Store__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@0) |$temp_0'$1_SlidingNonce_SlidingNonce'@0|))) (= (ControlFlow 0 11897) 11759)) anon5_correct))))
(let ((anon9_Else_correct  (=> (not $t6) (and (=> (= (ControlFlow 0 11687) 11897) anon10_Then_correct@@0) (=> (= (ControlFlow 0 11687) 11701) anon10_Else_correct@@0)))))
(let ((anon0$1_correct@@0  (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9427| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9427| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (|$IsValid'u64'| _$t1))) (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@0)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@0))
 :qid |SlidingNonceseqArraybpl.1191:20|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@0))
)) (= _$t0@@0 _$t0@@0)) (and (= _$t1 _$t1) (= $t6  (not (|Select__T@[Int]Bool_| (|domain#$Memory_9661| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@0))))))) (and (=> (= (ControlFlow 0 11681) 11927) anon9_Then_correct) (=> (= (ControlFlow 0 11681) 11687) anon9_Else_correct)))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 12466) 11681) anon0$1_correct@@0)))
anon0_correct@@0)))))))))))
))
(check-sat)
(pop 1)
; Valid
