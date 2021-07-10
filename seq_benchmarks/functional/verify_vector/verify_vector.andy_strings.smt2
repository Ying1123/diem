(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20423 0)) ((($Mutation_20423 (|l#$Mutation_20423| T@$Location) (|p#$Mutation_20423| (Seq Int)) (|v#$Mutation_20423| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19059 0)) ((($Mutation_19059 (|l#$Mutation_19059| T@$Location) (|p#$Mutation_19059| (Seq Int)) (|v#$Mutation_19059| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18313 0)) ((($Mutation_18313 (|l#$Mutation_18313| T@$Location) (|p#$Mutation_18313| (Seq Int)) (|v#$Mutation_18313| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun ReverseVec_14622 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectorandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorandybpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorandybpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorandybpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorandybpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorandybpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorandybpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorandybpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorandybpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorandybpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorandybpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun |inline$$1_Vector_push_back'#0'$0$m'@1| () T@$Mutation_18313)
(declare-fun $t13@0 () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@2| () T@$Mutation_18313)
(declare-fun _$t1 () (Seq |T@#0|))
(declare-fun $t14@0 () (Seq |T@#0|))
(declare-fun $t15@0 () (Seq |T@#0|))
(declare-fun $t16@0 () (Seq |T@#0|))
(declare-fun $t0@0 () T@$Mutation_18313)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@2| () |T@#0|)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@0| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@0| () T@$Mutation_18313)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@1| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$v@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@1| () T@$Mutation_18313)
(declare-fun $t17@1 () T@$Mutation_18313)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'vec'#0''@4| () (Seq |T@#0|))
(declare-fun $t3@0 () (Seq |T@#0|))
(declare-fun $abort_code@1 () Int)
(declare-fun $t1@0 () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_is_empty'#0'$0$b@1| () Bool)
(declare-fun $t19@1 () (Seq |T@#0|))
(declare-fun _$t0 () T@$Mutation_18313)
(declare-fun $t9@0 () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_reverse'#0'$0$m'@1| () T@$Mutation_18313)
(declare-fun $t10@0 () (Seq |T@#0|))
(declare-fun $t11@0 () (Seq |T@#0|))
(declare-fun $t12@0 () (Seq |T@#0|))
(declare-fun $t19@0 () (Seq |T@#0|))
(declare-fun |$temp_0'vec'#0''@2| () (Seq |T@#0|))
(declare-fun |$temp_0'vec'#0''@3| () (Seq |T@#0|))
(declare-fun $t5@0 () (Seq |T@#0|))
(declare-fun $t6@0 () (Seq |T@#0|))
(declare-fun $t7@0 () (Seq |T@#0|))
(declare-fun $t8@0 () (Seq |T@#0|))
(declare-fun $t17@0 () T@$Mutation_18313)
(declare-fun |$temp_0'vec'#0''@0| () (Seq |T@#0|))
(declare-fun |$temp_0'vec'#0''@1| () (Seq |T@#0|))
(declare-fun $t2 () T@$Mutation_18313)
(declare-fun $t17 () T@$Mutation_18313)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_append$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 52211) (let ((anon21_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 38707) (- 0 53448)) (>= (seq.len (|v#$Mutation_18313| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (seq.len $t13@0))) (=> (>= (seq.len (|v#$Mutation_18313| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (seq.len $t13@0)) (and (=> (= (ControlFlow 0 38707) (- 0 53461)) (<= (seq.len (|v#$Mutation_18313| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (seq.len _$t1))) (=> (<= (seq.len (|v#$Mutation_18313| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (seq.len _$t1)) (and (=> (= (ControlFlow 0 38707) (- 0 53474)) (= (+ (seq.len (|v#$Mutation_18313| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (seq.len (|v#$Mutation_18313| |inline$$1_Vector_pop_back'#0'$0$m'@2|))) (+ (seq.len $t14@0) (seq.len _$t1)))) (=> (= (+ (seq.len (|v#$Mutation_18313| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (seq.len (|v#$Mutation_18313| |inline$$1_Vector_pop_back'#0'$0$m'@2|))) (+ (seq.len $t14@0) (seq.len _$t1))) (and (=> (= (ControlFlow 0 38707) (- 0 53499)) (let (($range_0 ($Range 0 (seq.len $t15@0))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((k $i_1))
(= (seq.nth (|v#$Mutation_18313| |inline$$1_Vector_push_back'#0'$0$m'@1|) k) (seq.nth $t15@0 k))))
 :qid |verifyvectorandybpl.1387:57|
 :skolemid |35|
)))) (=> (let (($range_0 ($Range 0 (seq.len $t15@0))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0 $i_1@@0) (let ((k $i_1@@0))
(= (seq.nth (|v#$Mutation_18313| |inline$$1_Vector_push_back'#0'$0$m'@1|) k) (seq.nth $t15@0 k))))
 :qid |verifyvectorandybpl.1387:57|
 :skolemid |35|
))) (and (=> (= (ControlFlow 0 38707) (- 0 53540)) (let (($range_0@@0 ($Range 0 (seq.len (|v#$Mutation_18313| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((k@@0 $i_1@@1))
(= (seq.nth (|v#$Mutation_18313| |inline$$1_Vector_pop_back'#0'$0$m'@2|) k@@0) (seq.nth _$t1 (- (- (seq.len _$t1) 1) k@@0)))))
 :qid |verifyvectorandybpl.1393:71|
 :skolemid |36|
)))) (=> (let (($range_0@@0 ($Range 0 (seq.len (|v#$Mutation_18313| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@2) (let ((k@@0 $i_1@@2))
(= (seq.nth (|v#$Mutation_18313| |inline$$1_Vector_pop_back'#0'$0$m'@2|) k@@0) (seq.nth _$t1 (- (- (seq.len _$t1) 1) k@@0)))))
 :qid |verifyvectorandybpl.1393:71|
 :skolemid |36|
))) (=> (= (ControlFlow 0 38707) (- 0 53592)) (let (($range_0@@1 ($Range (seq.len $t16@0) (seq.len (|v#$Mutation_18313| |inline$$1_Vector_push_back'#0'$0$m'@1|)))))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((k@@1 $i_1@@3))
(= (seq.nth (|v#$Mutation_18313| |inline$$1_Vector_push_back'#0'$0$m'@1|) k@@1) (seq.nth _$t1 (- k@@1 (seq.len $t16@0))))))
 :qid |verifyvectorandybpl.1399:81|
 :skolemid |37|
)))))))))))))))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_push_back'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'#0'$0$m'@1| ($Mutation_18313 (|l#$Mutation_18313| $t0@0) (|p#$Mutation_18313| $t0@0) (seq.++ (|v#$Mutation_18313| $t0@0) (seq.unit |inline$$1_Vector_pop_back'#0'$0$e@2|)))) (and (=> (= (ControlFlow 0 38484) 38721) anon21_Then_correct) (=> (= (ControlFlow 0 38484) 38707) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 38490) 38484)) |inline$$1_Vector_push_back'#0'$0$anon0_correct|)))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@0|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 38417) 38735) anon20_Then_correct) (=> (= (ControlFlow 0 38417) 38490) anon20_Else_correct)))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0) (= (ControlFlow 0 38415) 38417)) |inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|  (=> (not (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0)) (=> (and (= |inline$$1_Vector_pop_back'#0'$0$e@1| (seq.nth |inline$$1_Vector_pop_back'#0'$0$v@1| (- |inline$$1_Vector_pop_back'#0'$0$len@1| 1))) (= |inline$$1_Vector_pop_back'#0'$0$m'@1| ($Mutation_18313 (|l#$Mutation_18313| $t17@1) (|p#$Mutation_18313| $t17@1) (seq.extract |inline$$1_Vector_pop_back'#0'$0$v@1| 0 (- (- (seq.len |inline$$1_Vector_pop_back'#0'$0$v@1|) 1) 0))))) (=> (and (and (= $abort_flag@1 false) (= $abort_code@2 $abort_code@0)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@1|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 38367) 38735) anon20_Then_correct) (=> (= (ControlFlow 0 38367) 38490) anon20_Else_correct)))))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$v@1| (|v#$Mutation_18313| $t17@1)) (= |inline$$1_Vector_pop_back'#0'$0$len@1| (seq.len |inline$$1_Vector_pop_back'#0'$0$v@1|))) (and (=> (= (ControlFlow 0 38341) 38415) |inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 38341) 38367) |inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|)))))
(let ((anon19_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 38425) 38341)) |inline$$1_Vector_pop_back'#0'$0$anon0_correct|)))
(let ((anon22_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'vec'#0''@4| (|v#$Mutation_18313| $t0@0)) (= |$temp_0'vec'#0''@4| |$temp_0'vec'#0''@4|)) (and (=> (= (ControlFlow 0 38214) (- 0 53209)) (= (seq.len (|v#$Mutation_18313| $t0@0)) (+ (seq.len $t3@0) (seq.len _$t1)))) (=> (= (seq.len (|v#$Mutation_18313| $t0@0)) (+ (seq.len $t3@0) (seq.len _$t1))) (and (=> (= (ControlFlow 0 38214) (- 0 53227)) (= (seq.extract (|v#$Mutation_18313| $t0@0) (|lb#$Range| ($Range 0 (seq.len $t3@0))) (- (|ub#$Range| ($Range 0 (seq.len $t3@0))) (|lb#$Range| ($Range 0 (seq.len $t3@0))))) $t3@0)) (=> (= (seq.extract (|v#$Mutation_18313| $t0@0) (|lb#$Range| ($Range 0 (seq.len $t3@0))) (- (|ub#$Range| ($Range 0 (seq.len $t3@0))) (|lb#$Range| ($Range 0 (seq.len $t3@0))))) $t3@0) (=> (= (ControlFlow 0 38214) (- 0 53245)) (= (seq.extract (|v#$Mutation_18313| $t0@0) (|lb#$Range| ($Range (seq.len $t3@0) (seq.len (|v#$Mutation_18313| $t0@0)))) (- (|ub#$Range| ($Range (seq.len $t3@0) (seq.len (|v#$Mutation_18313| $t0@0)))) (|lb#$Range| ($Range (seq.len $t3@0) (seq.len (|v#$Mutation_18313| $t0@0)))))) _$t1))))))))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 38126) 38228) anon22_Then_correct) (=> (= (ControlFlow 0 38126) 38214) anon22_Else_correct)))))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Then_correct|  (=> (and (not (= (seq.len $t1@0) 0)) (= (ControlFlow 0 38124) 38126)) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Then$1_correct|)))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Else_correct|  (=> (= (seq.len $t1@0) 0) (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 38076) 38228) anon22_Then_correct) (=> (= (ControlFlow 0 38076) 38214) anon22_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (not inline$$Not$0$dst@1) (= $t1@0 (|v#$Mutation_18313| $t17@1))) (and (=> (= (ControlFlow 0 38130) 38124) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Then_correct|) (=> (= (ControlFlow 0 38130) 38076) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Else_correct|)))))
(let ((anon18_Else$1_correct  (and (=> (= (ControlFlow 0 38010) 38425) anon19_Then_correct) (=> (= (ControlFlow 0 38010) 38130) anon19_Else_correct))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not |inline$$1_Vector_is_empty'#0'$0$b@1|)) (= (ControlFlow 0 38000) 38010)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (and (not false) (= (ControlFlow 0 38006) 38000)) inline$$Not$0$anon0_correct)))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_is_empty'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'#0'$0$b@1| (= (seq.len $t19@1) 0)) (and (=> (= (ControlFlow 0 37956) 38749) anon18_Then_correct) (=> (= (ControlFlow 0 37956) 38006) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 37962) (- 0 52614)) (>= (seq.len (|v#$Mutation_18313| _$t0)) (seq.len $t9@0))) (=> (>= (seq.len (|v#$Mutation_18313| _$t0)) (seq.len $t9@0)) (and (=> (= (ControlFlow 0 37962) (- 0 52627)) (<= (seq.len (|v#$Mutation_18313| |inline$$1_Vector_reverse'#0'$0$m'@1|)) (seq.len _$t1))) (=> (<= (seq.len (|v#$Mutation_18313| |inline$$1_Vector_reverse'#0'$0$m'@1|)) (seq.len _$t1)) (and (=> (= (ControlFlow 0 37962) (- 0 52640)) (= (+ (seq.len (|v#$Mutation_18313| _$t0)) (seq.len (|v#$Mutation_18313| |inline$$1_Vector_reverse'#0'$0$m'@1|))) (+ (seq.len $t10@0) (seq.len _$t1)))) (=> (= (+ (seq.len (|v#$Mutation_18313| _$t0)) (seq.len (|v#$Mutation_18313| |inline$$1_Vector_reverse'#0'$0$m'@1|))) (+ (seq.len $t10@0) (seq.len _$t1))) (and (=> (= (ControlFlow 0 37962) (- 0 52665)) (let (($range_0@@2 ($Range 0 (seq.len $t11@0))))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@4) (let ((k@@2 $i_1@@4))
(= (seq.nth (|v#$Mutation_18313| _$t0) k@@2) (seq.nth $t11@0 k@@2))))
 :qid |verifyvectorandybpl.1213:57|
 :skolemid |29|
)))) (=> (let (($range_0@@2 ($Range 0 (seq.len $t11@0))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@5) (let ((k@@2 $i_1@@5))
(= (seq.nth (|v#$Mutation_18313| _$t0) k@@2) (seq.nth $t11@0 k@@2))))
 :qid |verifyvectorandybpl.1213:57|
 :skolemid |29|
))) (and (=> (= (ControlFlow 0 37962) (- 0 52706)) (let (($range_0@@3 ($Range 0 (seq.len (|v#$Mutation_18313| |inline$$1_Vector_reverse'#0'$0$m'@1|)))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@6) (let ((k@@3 $i_1@@6))
(= (seq.nth (|v#$Mutation_18313| |inline$$1_Vector_reverse'#0'$0$m'@1|) k@@3) (seq.nth _$t1 (- (- (seq.len _$t1) 1) k@@3)))))
 :qid |verifyvectorandybpl.1219:71|
 :skolemid |30|
)))) (=> (let (($range_0@@3 ($Range 0 (seq.len (|v#$Mutation_18313| |inline$$1_Vector_reverse'#0'$0$m'@1|)))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@7) (let ((k@@3 $i_1@@7))
(= (seq.nth (|v#$Mutation_18313| |inline$$1_Vector_reverse'#0'$0$m'@1|) k@@3) (seq.nth _$t1 (- (- (seq.len _$t1) 1) k@@3)))))
 :qid |verifyvectorandybpl.1219:71|
 :skolemid |30|
))) (and (=> (= (ControlFlow 0 37962) (- 0 52758)) (let (($range_0@@4 ($Range (seq.len $t12@0) (seq.len (|v#$Mutation_18313| _$t0)))))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@8) (let ((k@@4 $i_1@@8))
(= (seq.nth (|v#$Mutation_18313| _$t0) k@@4) (seq.nth _$t1 (- k@@4 (seq.len $t12@0))))))
 :qid |verifyvectorandybpl.1225:81|
 :skolemid |31|
)))) (=> (let (($range_0@@4 ($Range (seq.len $t12@0) (seq.len (|v#$Mutation_18313| _$t0)))))
(forall (($i_1@@9 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@9) (let ((k@@4 $i_1@@9))
(= (seq.nth (|v#$Mutation_18313| _$t0) k@@4) (seq.nth _$t1 (- k@@4 (seq.len $t12@0))))))
 :qid |verifyvectorandybpl.1225:81|
 :skolemid |31|
))) (=> (and (|$IsValid'vec'#0''| $t19@0) (= $t0@0 ($Mutation_18313 (|l#$Mutation_18313| _$t0) (|p#$Mutation_18313| _$t0) |$temp_0'vec'#0''@2|))) (=> (and (and (|$IsValid'vec'#0''| (|v#$Mutation_18313| $t0@0)) (= $t17@1 ($Mutation_18313 (|l#$Mutation_18313| |inline$$1_Vector_reverse'#0'$0$m'@1|) (|p#$Mutation_18313| |inline$$1_Vector_reverse'#0'$0$m'@1|) |$temp_0'vec'#0''@3|))) (and (|$IsValid'vec'#0''| (|v#$Mutation_18313| $t17@1)) (not false))) (=> (and (and (and (>= (seq.len (|v#$Mutation_18313| $t0@0)) (seq.len $t5@0)) (<= (seq.len (|v#$Mutation_18313| $t17@1)) (seq.len _$t1))) (and (= (+ (seq.len (|v#$Mutation_18313| $t0@0)) (seq.len (|v#$Mutation_18313| $t17@1))) (+ (seq.len $t6@0) (seq.len _$t1))) (let (($range_0@@5 ($Range 0 (seq.len $t7@0))))
(forall (($i_1@@10 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@10) (let ((k@@5 $i_1@@10))
(= (seq.nth (|v#$Mutation_18313| $t0@0) k@@5) (seq.nth $t7@0 k@@5))))
 :qid |verifyvectorandybpl.1271:61|
 :skolemid |32|
))))) (and (and (let (($range_0@@6 ($Range 0 (seq.len (|v#$Mutation_18313| $t17@1)))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@11) (let ((k@@6 $i_1@@11))
(= (seq.nth (|v#$Mutation_18313| $t17@1) k@@6) (seq.nth _$t1 (- (- (seq.len _$t1) 1) k@@6)))))
 :qid |verifyvectorandybpl.1276:76|
 :skolemid |33|
))) (let (($range_0@@7 ($Range (seq.len $t8@0) (seq.len (|v#$Mutation_18313| $t0@0)))))
(forall (($i_1@@12 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@12) (let ((k@@7 $i_1@@12))
(= (seq.nth (|v#$Mutation_18313| $t0@0) k@@7) (seq.nth _$t1 (- k@@7 (seq.len $t8@0))))))
 :qid |verifyvectorandybpl.1281:85|
 :skolemid |34|
)))) (and (= $t19@1 (|v#$Mutation_18313| $t17@1)) (= (ControlFlow 0 37962) 37956)))) |inline$$1_Vector_is_empty'#0'$0$anon0_correct|))))))))))))))))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_reverse'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'#0'$0$m'@1| ($Mutation_18313 (|l#$Mutation_18313| $t17@0) (|p#$Mutation_18313| $t17@0) (ReverseVec_14622 (|v#$Mutation_18313| $t17@0)))) (and (=> (= (ControlFlow 0 37446) 38763) anon17_Then_correct) (=> (= (ControlFlow 0 37446) 37962) anon17_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_18313| _$t0) ($Param 0)) (=> (and (|$IsValid'vec'#0''| (|v#$Mutation_18313| _$t0)) (|$IsValid'vec'#0''| _$t1)) (=> (and (and (= $t3@0 (|v#$Mutation_18313| _$t0)) (= $t5@0 (|v#$Mutation_18313| _$t0))) (and (= $t6@0 (|v#$Mutation_18313| _$t0)) (= $t7@0 (|v#$Mutation_18313| _$t0)))) (=> (and (and (and (and (= $t8@0 (|v#$Mutation_18313| _$t0)) (= $t9@0 (|v#$Mutation_18313| _$t0))) (and (= $t10@0 (|v#$Mutation_18313| _$t0)) (= $t11@0 (|v#$Mutation_18313| _$t0)))) (and (and (= $t12@0 (|v#$Mutation_18313| _$t0)) (= $t13@0 (|v#$Mutation_18313| _$t0))) (and (= $t14@0 (|v#$Mutation_18313| _$t0)) (= $t15@0 (|v#$Mutation_18313| _$t0))))) (and (and (and (= $t16@0 (|v#$Mutation_18313| _$t0)) (= |$temp_0'vec'#0''@0| (|v#$Mutation_18313| _$t0))) (and (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|) (= _$t1 _$t1))) (and (and (= $t17@0 ($Mutation_18313 ($Local 1) (as seq.empty (Seq Int)) _$t1)) (= |$temp_0'vec'#0''@1| (|v#$Mutation_18313| $t17@0))) (and (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|) (= (ControlFlow 0 37452) 37446))))) |inline$$1_Vector_reverse'#0'$0$anon0_correct|))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_18313| $t2)) 0) (=> (and (= (seq.len (|p#$Mutation_18313| $t17)) 0) (= (ControlFlow 0 37287) 37452)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 52211) 37287) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))
))
(check-sat)
