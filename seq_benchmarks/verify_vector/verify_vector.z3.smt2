(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun |inline$$1_Vector_push_back'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun $t13@0 () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@2| () T@$Mutation_18299)
(declare-fun _$t1 () (Seq |T@#0|))
(declare-fun $t14@0 () (Seq |T@#0|))
(declare-fun $t15@0 () (Seq |T@#0|))
(declare-fun $t16@0 () (Seq |T@#0|))
(declare-fun $t0@0 () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@2| () |T@#0|)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@0| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@0| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@1| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$v@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun $t17@1 () T@$Mutation_18299)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'vec'#0''@4| () (Seq |T@#0|))
(declare-fun $t3@0 () (Seq |T@#0|))
(declare-fun $abort_code@1 () Int)
(declare-fun $t1@0 () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_is_empty'#0'$0$b@1| () Bool)
(declare-fun $t19@1 () (Seq |T@#0|))
(declare-fun _$t0 () T@$Mutation_18299)
(declare-fun $t9@0 () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_reverse'#0'$0$m'@1| () T@$Mutation_18299)
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
(declare-fun $t17@0 () T@$Mutation_18299)
(declare-fun |$temp_0'vec'#0''@0| () (Seq |T@#0|))
(declare-fun |$temp_0'vec'#0''@1| () (Seq |T@#0|))
(declare-fun $t2 () T@$Mutation_18299)
(declare-fun $t17 () T@$Mutation_18299)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_append$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 50839) (let ((anon21_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 37335) (- 0 52076)) (>= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (seq.len $t13@0))) (=> (>= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (seq.len $t13@0)) (and (=> (= (ControlFlow 0 37335) (- 0 52089)) (<= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (seq.len _$t1))) (=> (<= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (seq.len _$t1)) (and (=> (= (ControlFlow 0 37335) (- 0 52102)) (= (+ (seq.len (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|))) (+ (seq.len $t14@0) (seq.len _$t1)))) (=> (= (+ (seq.len (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|))) (+ (seq.len $t14@0) (seq.len _$t1))) (and (=> (= (ControlFlow 0 37335) (- 0 52127)) (let (($range_0 ($Range 0 (seq.len $t15@0))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((k $i_1))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|) k) (seq.nth $t15@0 k))))
 :qid |verifyvectorz3bpl.1387:57|
 :skolemid |35|
)))) (=> (let (($range_0 ($Range 0 (seq.len $t15@0))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0 $i_1@@0) (let ((k $i_1@@0))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|) k) (seq.nth $t15@0 k))))
 :qid |verifyvectorz3bpl.1387:57|
 :skolemid |35|
))) (and (=> (= (ControlFlow 0 37335) (- 0 52168)) (let (($range_0@@0 ($Range 0 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((k@@0 $i_1@@1))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|) k@@0) (seq.nth _$t1 (- (- (seq.len _$t1) 1) k@@0)))))
 :qid |verifyvectorz3bpl.1393:71|
 :skolemid |36|
)))) (=> (let (($range_0@@0 ($Range 0 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@2) (let ((k@@0 $i_1@@2))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|) k@@0) (seq.nth _$t1 (- (- (seq.len _$t1) 1) k@@0)))))
 :qid |verifyvectorz3bpl.1393:71|
 :skolemid |36|
))) (=> (= (ControlFlow 0 37335) (- 0 52220)) (let (($range_0@@1 ($Range (seq.len $t16@0) (seq.len (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)))))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((k@@1 $i_1@@3))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|) k@@1) (seq.nth _$t1 (- k@@1 (seq.len $t16@0))))))
 :qid |verifyvectorz3bpl.1399:81|
 :skolemid |37|
)))))))))))))))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_push_back'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| $t0@0) (|p#$Mutation_18299| $t0@0) (seq.++ (|v#$Mutation_18299| $t0@0) (seq.unit |inline$$1_Vector_pop_back'#0'$0$e@2|)))) (and (=> (= (ControlFlow 0 37112) 37349) anon21_Then_correct) (=> (= (ControlFlow 0 37112) 37335) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 37118) 37112)) |inline$$1_Vector_push_back'#0'$0$anon0_correct|)))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@0|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 37045) 37363) anon20_Then_correct) (=> (= (ControlFlow 0 37045) 37118) anon20_Else_correct)))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0) (= (ControlFlow 0 37043) 37045)) |inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|  (=> (not (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0)) (=> (and (= |inline$$1_Vector_pop_back'#0'$0$e@1| (seq.nth |inline$$1_Vector_pop_back'#0'$0$v@1| (- |inline$$1_Vector_pop_back'#0'$0$len@1| 1))) (= |inline$$1_Vector_pop_back'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| $t17@1) (|p#$Mutation_18299| $t17@1) (seq.extract |inline$$1_Vector_pop_back'#0'$0$v@1| 0 (- (- (seq.len |inline$$1_Vector_pop_back'#0'$0$v@1|) 1) 0))))) (=> (and (and (= $abort_flag@1 false) (= $abort_code@2 $abort_code@0)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@1|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 36995) 37363) anon20_Then_correct) (=> (= (ControlFlow 0 36995) 37118) anon20_Else_correct)))))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$v@1| (|v#$Mutation_18299| $t17@1)) (= |inline$$1_Vector_pop_back'#0'$0$len@1| (seq.len |inline$$1_Vector_pop_back'#0'$0$v@1|))) (and (=> (= (ControlFlow 0 36969) 37043) |inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 36969) 36995) |inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|)))))
(let ((anon19_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 37053) 36969)) |inline$$1_Vector_pop_back'#0'$0$anon0_correct|)))
(let ((anon22_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'vec'#0''@4| (|v#$Mutation_18299| $t0@0)) (= |$temp_0'vec'#0''@4| |$temp_0'vec'#0''@4|)) (and (=> (= (ControlFlow 0 36842) (- 0 51837)) (= (seq.len (|v#$Mutation_18299| $t0@0)) (+ (seq.len $t3@0) (seq.len _$t1)))) (=> (= (seq.len (|v#$Mutation_18299| $t0@0)) (+ (seq.len $t3@0) (seq.len _$t1))) (and (=> (= (ControlFlow 0 36842) (- 0 51855)) (= (seq.extract (|v#$Mutation_18299| $t0@0) (|lb#$Range| ($Range 0 (seq.len $t3@0))) (- (|ub#$Range| ($Range 0 (seq.len $t3@0))) (|lb#$Range| ($Range 0 (seq.len $t3@0))))) $t3@0)) (=> (= (seq.extract (|v#$Mutation_18299| $t0@0) (|lb#$Range| ($Range 0 (seq.len $t3@0))) (- (|ub#$Range| ($Range 0 (seq.len $t3@0))) (|lb#$Range| ($Range 0 (seq.len $t3@0))))) $t3@0) (=> (= (ControlFlow 0 36842) (- 0 51873)) (= (seq.extract (|v#$Mutation_18299| $t0@0) (|lb#$Range| ($Range (seq.len $t3@0) (seq.len (|v#$Mutation_18299| $t0@0)))) (- (|ub#$Range| ($Range (seq.len $t3@0) (seq.len (|v#$Mutation_18299| $t0@0)))) (|lb#$Range| ($Range (seq.len $t3@0) (seq.len (|v#$Mutation_18299| $t0@0)))))) _$t1))))))))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 36754) 36856) anon22_Then_correct) (=> (= (ControlFlow 0 36754) 36842) anon22_Else_correct)))))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Then_correct|  (=> (and (not (= (seq.len $t1@0) 0)) (= (ControlFlow 0 36752) 36754)) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Then$1_correct|)))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Else_correct|  (=> (= (seq.len $t1@0) 0) (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 36704) 36856) anon22_Then_correct) (=> (= (ControlFlow 0 36704) 36842) anon22_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (not inline$$Not$0$dst@1) (= $t1@0 (|v#$Mutation_18299| $t17@1))) (and (=> (= (ControlFlow 0 36758) 36752) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Then_correct|) (=> (= (ControlFlow 0 36758) 36704) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Else_correct|)))))
(let ((anon18_Else$1_correct  (and (=> (= (ControlFlow 0 36638) 37053) anon19_Then_correct) (=> (= (ControlFlow 0 36638) 36758) anon19_Else_correct))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not |inline$$1_Vector_is_empty'#0'$0$b@1|)) (= (ControlFlow 0 36628) 36638)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (and (not false) (= (ControlFlow 0 36634) 36628)) inline$$Not$0$anon0_correct)))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_is_empty'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'#0'$0$b@1| (= (seq.len $t19@1) 0)) (and (=> (= (ControlFlow 0 36584) 37377) anon18_Then_correct) (=> (= (ControlFlow 0 36584) 36634) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 36590) (- 0 51242)) (>= (seq.len (|v#$Mutation_18299| _$t0)) (seq.len $t9@0))) (=> (>= (seq.len (|v#$Mutation_18299| _$t0)) (seq.len $t9@0)) (and (=> (= (ControlFlow 0 36590) (- 0 51255)) (<= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|)) (seq.len _$t1))) (=> (<= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|)) (seq.len _$t1)) (and (=> (= (ControlFlow 0 36590) (- 0 51268)) (= (+ (seq.len (|v#$Mutation_18299| _$t0)) (seq.len (|v#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|))) (+ (seq.len $t10@0) (seq.len _$t1)))) (=> (= (+ (seq.len (|v#$Mutation_18299| _$t0)) (seq.len (|v#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|))) (+ (seq.len $t10@0) (seq.len _$t1))) (and (=> (= (ControlFlow 0 36590) (- 0 51293)) (let (($range_0@@2 ($Range 0 (seq.len $t11@0))))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@4) (let ((k@@2 $i_1@@4))
(= (seq.nth (|v#$Mutation_18299| _$t0) k@@2) (seq.nth $t11@0 k@@2))))
 :qid |verifyvectorz3bpl.1213:57|
 :skolemid |29|
)))) (=> (let (($range_0@@2 ($Range 0 (seq.len $t11@0))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@5) (let ((k@@2 $i_1@@5))
(= (seq.nth (|v#$Mutation_18299| _$t0) k@@2) (seq.nth $t11@0 k@@2))))
 :qid |verifyvectorz3bpl.1213:57|
 :skolemid |29|
))) (and (=> (= (ControlFlow 0 36590) (- 0 51334)) (let (($range_0@@3 ($Range 0 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|)))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@6) (let ((k@@3 $i_1@@6))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|) k@@3) (seq.nth _$t1 (- (- (seq.len _$t1) 1) k@@3)))))
 :qid |verifyvectorz3bpl.1219:71|
 :skolemid |30|
)))) (=> (let (($range_0@@3 ($Range 0 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|)))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@7) (let ((k@@3 $i_1@@7))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|) k@@3) (seq.nth _$t1 (- (- (seq.len _$t1) 1) k@@3)))))
 :qid |verifyvectorz3bpl.1219:71|
 :skolemid |30|
))) (and (=> (= (ControlFlow 0 36590) (- 0 51386)) (let (($range_0@@4 ($Range (seq.len $t12@0) (seq.len (|v#$Mutation_18299| _$t0)))))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@8) (let ((k@@4 $i_1@@8))
(= (seq.nth (|v#$Mutation_18299| _$t0) k@@4) (seq.nth _$t1 (- k@@4 (seq.len $t12@0))))))
 :qid |verifyvectorz3bpl.1225:81|
 :skolemid |31|
)))) (=> (let (($range_0@@4 ($Range (seq.len $t12@0) (seq.len (|v#$Mutation_18299| _$t0)))))
(forall (($i_1@@9 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@9) (let ((k@@4 $i_1@@9))
(= (seq.nth (|v#$Mutation_18299| _$t0) k@@4) (seq.nth _$t1 (- k@@4 (seq.len $t12@0))))))
 :qid |verifyvectorz3bpl.1225:81|
 :skolemid |31|
))) (=> (and (|$IsValid'vec'#0''| $t19@0) (= $t0@0 ($Mutation_18299 (|l#$Mutation_18299| _$t0) (|p#$Mutation_18299| _$t0) |$temp_0'vec'#0''@2|))) (=> (and (and (|$IsValid'vec'#0''| (|v#$Mutation_18299| $t0@0)) (= $t17@1 ($Mutation_18299 (|l#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|) (|p#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|) |$temp_0'vec'#0''@3|))) (and (|$IsValid'vec'#0''| (|v#$Mutation_18299| $t17@1)) (not false))) (=> (and (and (and (>= (seq.len (|v#$Mutation_18299| $t0@0)) (seq.len $t5@0)) (<= (seq.len (|v#$Mutation_18299| $t17@1)) (seq.len _$t1))) (and (= (+ (seq.len (|v#$Mutation_18299| $t0@0)) (seq.len (|v#$Mutation_18299| $t17@1))) (+ (seq.len $t6@0) (seq.len _$t1))) (let (($range_0@@5 ($Range 0 (seq.len $t7@0))))
(forall (($i_1@@10 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@10) (let ((k@@5 $i_1@@10))
(= (seq.nth (|v#$Mutation_18299| $t0@0) k@@5) (seq.nth $t7@0 k@@5))))
 :qid |verifyvectorz3bpl.1271:61|
 :skolemid |32|
))))) (and (and (let (($range_0@@6 ($Range 0 (seq.len (|v#$Mutation_18299| $t17@1)))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@11) (let ((k@@6 $i_1@@11))
(= (seq.nth (|v#$Mutation_18299| $t17@1) k@@6) (seq.nth _$t1 (- (- (seq.len _$t1) 1) k@@6)))))
 :qid |verifyvectorz3bpl.1276:76|
 :skolemid |33|
))) (let (($range_0@@7 ($Range (seq.len $t8@0) (seq.len (|v#$Mutation_18299| $t0@0)))))
(forall (($i_1@@12 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@12) (let ((k@@7 $i_1@@12))
(= (seq.nth (|v#$Mutation_18299| $t0@0) k@@7) (seq.nth _$t1 (- k@@7 (seq.len $t8@0))))))
 :qid |verifyvectorz3bpl.1281:85|
 :skolemid |34|
)))) (and (= $t19@1 (|v#$Mutation_18299| $t17@1)) (= (ControlFlow 0 36590) 36584)))) |inline$$1_Vector_is_empty'#0'$0$anon0_correct|))))))))))))))))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_reverse'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| $t17@0) (|p#$Mutation_18299| $t17@0) (ReverseVec_14622 (|v#$Mutation_18299| $t17@0)))) (and (=> (= (ControlFlow 0 36074) 37391) anon17_Then_correct) (=> (= (ControlFlow 0 36074) 36590) anon17_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_18299| _$t0) ($Param 0)) (=> (and (|$IsValid'vec'#0''| (|v#$Mutation_18299| _$t0)) (|$IsValid'vec'#0''| _$t1)) (=> (and (and (= $t3@0 (|v#$Mutation_18299| _$t0)) (= $t5@0 (|v#$Mutation_18299| _$t0))) (and (= $t6@0 (|v#$Mutation_18299| _$t0)) (= $t7@0 (|v#$Mutation_18299| _$t0)))) (=> (and (and (and (and (= $t8@0 (|v#$Mutation_18299| _$t0)) (= $t9@0 (|v#$Mutation_18299| _$t0))) (and (= $t10@0 (|v#$Mutation_18299| _$t0)) (= $t11@0 (|v#$Mutation_18299| _$t0)))) (and (and (= $t12@0 (|v#$Mutation_18299| _$t0)) (= $t13@0 (|v#$Mutation_18299| _$t0))) (and (= $t14@0 (|v#$Mutation_18299| _$t0)) (= $t15@0 (|v#$Mutation_18299| _$t0))))) (and (and (and (= $t16@0 (|v#$Mutation_18299| _$t0)) (= |$temp_0'vec'#0''@0| (|v#$Mutation_18299| _$t0))) (and (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|) (= _$t1 _$t1))) (and (and (= $t17@0 ($Mutation_18299 ($Local 1) (as seq.empty (Seq Int)) _$t1)) (= |$temp_0'vec'#0''@1| (|v#$Mutation_18299| $t17@0))) (and (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|) (= (ControlFlow 0 36080) 36074))))) |inline$$1_Vector_reverse'#0'$0$anon0_correct|))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_18299| $t2)) 0) (=> (and (= (seq.len (|p#$Mutation_18299| $t17)) 0) (= (ControlFlow 0 35915) 36080)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 50839) 35915) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 50839)))
(get-value ((ControlFlow 0 35915)))
(get-value ((ControlFlow 0 36080)))
(get-value ((ControlFlow 0 36074)))
(get-value ((ControlFlow 0 36590)))
(assert (not (= (ControlFlow 0 36590) (- 51334))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 50839)))
(get-value ((ControlFlow 0 35915)))
(get-value ((ControlFlow 0 36080)))
(get-value ((ControlFlow 0 36074)))
(get-value ((ControlFlow 0 36590)))
(get-value ((ControlFlow 0 36584)))
(get-value ((ControlFlow 0 36634)))
(get-value ((ControlFlow 0 36628)))
(get-value ((ControlFlow 0 36638)))
(get-value ((ControlFlow 0 36758)))
(get-value ((ControlFlow 0 36704)))
(get-value ((ControlFlow 0 36842)))
(assert (not (= (ControlFlow 0 36842) (- 51873))))
(check-sat)
(get-info :reason-unknown)
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t0 () (Seq |T@#0|))
(declare-fun _$t1 () |T@#0|)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t4@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $t9@1 () Bool)
(declare-fun $t13@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@2| () |T@#0|)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@0| () |T@#0|)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@1| () |T@#0|)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun $t10@0 () Int)
(declare-fun $t11@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_contains$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 52296) (let ((L9_correct  (=> (= (ControlFlow 0 38557) (- 0 52968)) false)))
(let ((anon21_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 38547) 38557)) L9_correct))))
(let ((anon19_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 38589) 38557)) L9_correct))))
(let ((anon21_Else_correct  (=> (not $abort_flag@1) (=> (and (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2) (= (ControlFlow 0 38533) (- 0 52931))) (not (let (($range_0 ($Range 0 inline$$AddU64$0$dst@2)))
(exists (($i_1 Int) ) (!  (and ($InRange $range_0 $i_1) (let ((j@@1 $i_1))
(= (seq.nth _$t0 j@@1) _$t1)))
 :qid |verifyvectorz3bpl.1660:50|
 :skolemid |41|
))))))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 38474) 38547) anon21_Then_correct) (=> (= (ControlFlow 0 38474) 38533) anon21_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t4@0 1) $MAX_U64) (= (ControlFlow 0 38472) 38474)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t4@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t4@0 1)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 38420) 38547) anon21_Then_correct) (=> (= (ControlFlow 0 38420) 38533) anon21_Else_correct))))))
(let ((anon20_Else_correct  (=> (and (not $t9@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 38480) 38472) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 38480) 38420) inline$$AddU64$0$anon3_Else_correct)))))
(let ((L8_correct  (and (=> (= (ControlFlow 0 38156) (- 0 52785)) (not false)) (=> (not false) (=> (= (ControlFlow 0 38156) (- 0 52792)) (= $t13@0 (let (($range_0@@0 _$t0))
(exists (($i_1@@0 Int) ) (!  (and (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0@@0))) (let ((x (seq.nth $range_0@@0 $i_1@@0)))
(= x _$t1)))
 :qid |verifyvectorz3bpl.1679:58|
 :skolemid |42|
)))))))))
(let ((anon20_Then_correct  (=> (and (and $t9@1 (= true true)) (and (= $t13@0 true) (= (ControlFlow 0 38575) 38156))) L8_correct)))
(let ((anon19_Else_correct  (=> (and (not $abort_flag@0) (= $t9@1 (= |inline$$1_Vector_borrow'#0'$0$dst@2| _$t1))) (and (=> (= (ControlFlow 0 38315) 38575) anon20_Then_correct) (=> (= (ControlFlow 0 38315) 38480) anon20_Else_correct)))))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@0|)) (and (=> (= (ControlFlow 0 38295) 38589) anon19_Then_correct) (=> (= (ControlFlow 0 38295) 38315) anon19_Else_correct))))))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Then_correct|  (=> (and (not (and (>= $t4@0 0) (< $t4@0 (seq.len _$t0)))) (= (ControlFlow 0 38293) 38295)) |inline$$1_Vector_borrow'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Else_correct|  (=> (and (>= $t4@0 0) (< $t4@0 (seq.len _$t0))) (=> (and (and (= |inline$$1_Vector_borrow'#0'$0$dst@1| (seq.nth _$t0 $t4@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@1|))) (and (=> (= (ControlFlow 0 38243) 38589) anon19_Then_correct) (=> (= (ControlFlow 0 38243) 38315) anon19_Else_correct))))))
(let ((anon18_Then_correct  (=> inline$$Lt$0$dst@1 (and (=> (= (ControlFlow 0 38301) 38293) |inline$$1_Vector_borrow'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 38301) 38243) |inline$$1_Vector_borrow'#0'$0$anon3_Else_correct|)))))
(let ((anon18_Else_correct  (=> (not inline$$Lt$0$dst@1) (and (=> (= (ControlFlow 0 38111) (- 0 52620)) (not (let (($range_0@@1 _$t0))
(exists (($i_1@@1 Int) ) (!  (and (and (>= $i_1@@1 0) (< $i_1@@1 (seq.len $range_0@@1))) (let ((x@@0 (seq.nth $range_0@@1 $i_1@@1)))
(= x@@0 _$t1)))
 :qid |verifyvectorz3bpl.1635:38|
 :skolemid |40|
))))) (=> (not (let (($range_0@@1 _$t0))
(exists (($i_1@@2 Int) ) (!  (and (and (>= $i_1@@2 0) (< $i_1@@2 (seq.len $range_0@@1))) (let ((x@@0 (seq.nth $range_0@@1 $i_1@@2)))
(= x@@0 _$t1)))
 :qid |verifyvectorz3bpl.1635:38|
 :skolemid |40|
)))) (=> (= false false) (=> (and (= $t13@0 false) (= (ControlFlow 0 38111) 38156)) L8_correct)))))))
(let ((anon17_Else$1_correct  (and (=> (= (ControlFlow 0 38056) 38301) anon18_Then_correct) (=> (= (ControlFlow 0 38056) 38111) anon18_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t4@0 |inline$$1_Vector_length'#0'$0$l@1|)) (= (ControlFlow 0 38046) 38056)) anon17_Else$1_correct)))
(let ((anon17_Else_correct  (=> (and (not false) (= |inline$$1_Vector_length'#0'$0$l@1| |inline$$1_Vector_length'#0'$0$l@1|)) (and (=> (= (ControlFlow 0 38052) (- 0 52485)) (not (let (($range_0@@2 ($Range 0 0)))
(exists (($i_1@@3 Int) ) (!  (and ($InRange $range_0@@2 $i_1@@3) (let ((j@@2 $i_1@@3))
(= (seq.nth _$t0 j@@2) _$t1)))
 :qid |verifyvectorz3bpl.1512:49|
 :skolemid |38|
))))) (=> (not (let (($range_0@@2 ($Range 0 0)))
(exists (($i_1@@4 Int) ) (!  (and ($InRange $range_0@@2 $i_1@@4) (let ((j@@2 $i_1@@4))
(= (seq.nth _$t0 j@@2) _$t1)))
 :qid |verifyvectorz3bpl.1512:49|
 :skolemid |38|
)))) (=> (and (|$IsValid'u64'| $t4@0) (|$IsValid'u64'| $t10@0)) (=> (and (and (|$IsValid'u64'| $t11@0) (not false)) (and (not (let (($range_0@@3 ($Range 0 $t4@0)))
(exists (($i_1@@5 Int) ) (!  (and ($InRange $range_0@@3 $i_1@@5) (let ((j@@3 $i_1@@5))
(= (seq.nth _$t0 j@@3) _$t1)))
 :qid |verifyvectorz3bpl.1543:54|
 :skolemid |39|
)))) (= (ControlFlow 0 38052) 38046))) inline$$Lt$0$anon0_correct)))))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (seq.len _$t0)) (and (=> (= (ControlFlow 0 37882) 38603) anon17_Then_correct) (=> (= (ControlFlow 0 37882) 38052) anon17_Else_correct)))))
(let ((anon0$1_correct  (=> (and (|$IsValid'vec'#0''| _$t0) (= _$t0 _$t0)) (=> (and (and (= _$t1 _$t1) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 37888) 37882))) |inline$$1_Vector_length'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 52296) 37888) anon0$1_correct)))
anon0_correct))))))))))))))))))))))))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t0 () (Seq |T@#0|))
(declare-fun _$t1 () |T@#0|)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t4@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $t9@1 () Bool)
(declare-fun $t13@0 () Bool)
(declare-fun $t14@0 () Int)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@2| () |T@#0|)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@0| () |T@#0|)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@1| () |T@#0|)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun $t10@0 () Int)
(declare-fun $t11@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_index_of$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 52991) (let ((L9_correct  (=> (= (ControlFlow 0 39549) (- 0 53731)) false)))
(let ((anon20_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 39539) 39549)) L9_correct))))
(let ((anon18_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 39589) 39549)) L9_correct))))
(let ((anon20_Else_correct  (=> (not $abort_flag@1) (=> (and (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2) (= (ControlFlow 0 39525) (- 0 53694))) (not (let (($range_0 ($Range 0 inline$$AddU64$0$dst@2)))
(exists (($i_1 Int) ) (!  (and ($InRange $range_0 $i_1) (let ((j@@1 $i_1))
(= (seq.nth _$t0 j@@1) _$t1)))
 :qid |verifyvectorz3bpl.1936:50|
 :skolemid |45|
))))))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 39466) 39539) anon20_Then_correct) (=> (= (ControlFlow 0 39466) 39525) anon20_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t4@0 1) $MAX_U64) (= (ControlFlow 0 39464) 39466)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t4@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t4@0 1)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 39412) 39539) anon20_Then_correct) (=> (= (ControlFlow 0 39412) 39525) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (not $t9@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 39472) 39464) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 39472) 39412) inline$$AddU64$0$anon3_Else_correct)))))
(let ((L8_correct  (and (=> (= (ControlFlow 0 39148) (- 0 53482)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 39148) (- 0 53489)) (= $t13@0 (let (($range_0@@0 _$t0))
(exists (($i_1@@0 Int) ) (!  (and (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0@@0))) (let ((x (seq.nth $range_0@@0 $i_1@@0)))
(= x _$t1)))
 :qid |verifyvectorz3bpl.1955:58|
 :skolemid |46|
))))) (=> (= $t13@0 (let (($range_0@@0 _$t0))
(exists (($i_1@@1 Int) ) (!  (and (and (>= $i_1@@1 0) (< $i_1@@1 (seq.len $range_0@@0))) (let ((x (seq.nth $range_0@@0 $i_1@@1)))
(= x _$t1)))
 :qid |verifyvectorz3bpl.1955:58|
 :skolemid |46|
)))) (and (=> (= (ControlFlow 0 39148) (- 0 53522)) (=> $t13@0 (= (seq.nth _$t0 $t14@0) _$t1))) (=> (=> $t13@0 (= (seq.nth _$t0 $t14@0) _$t1)) (and (=> (= (ControlFlow 0 39148) (- 0 53535)) (=> $t13@0 (let (($range_0@@1 ($Range 0 $t14@0)))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@2) (let ((i@@9 $i_1@@2))
 (not (= (seq.nth _$t0 i@@9) _$t1))))
 :qid |verifyvectorz3bpl.1966:59|
 :skolemid |47|
))))) (=> (=> $t13@0 (let (($range_0@@1 ($Range 0 $t14@0)))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((i@@9 $i_1@@3))
 (not (= (seq.nth _$t0 i@@9) _$t1))))
 :qid |verifyvectorz3bpl.1966:59|
 :skolemid |47|
)))) (=> (= (ControlFlow 0 39148) (- 0 53573)) (=> (not $t13@0) (= $t14@0 0)))))))))))))
(let ((anon19_Then_correct  (=> (and $t9@1 (= true true)) (=> (and (and (= $t4@0 $t4@0) (= $t13@0 true)) (and (= $t14@0 $t4@0) (= (ControlFlow 0 39575) 39148))) L8_correct))))
(let ((anon18_Else_correct  (=> (and (not $abort_flag@0) (= $t9@1 (= |inline$$1_Vector_borrow'#0'$0$dst@2| _$t1))) (and (=> (= (ControlFlow 0 39307) 39575) anon19_Then_correct) (=> (= (ControlFlow 0 39307) 39472) anon19_Else_correct)))))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@0|)) (and (=> (= (ControlFlow 0 39287) 39589) anon18_Then_correct) (=> (= (ControlFlow 0 39287) 39307) anon18_Else_correct))))))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Then_correct|  (=> (and (not (and (>= $t4@0 0) (< $t4@0 (seq.len _$t0)))) (= (ControlFlow 0 39285) 39287)) |inline$$1_Vector_borrow'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Else_correct|  (=> (and (>= $t4@0 0) (< $t4@0 (seq.len _$t0))) (=> (and (and (= |inline$$1_Vector_borrow'#0'$0$dst@1| (seq.nth _$t0 $t4@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@1|))) (and (=> (= (ControlFlow 0 39235) 39589) anon18_Then_correct) (=> (= (ControlFlow 0 39235) 39307) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> inline$$Lt$0$dst@1 (and (=> (= (ControlFlow 0 39293) 39285) |inline$$1_Vector_borrow'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 39293) 39235) |inline$$1_Vector_borrow'#0'$0$anon3_Else_correct|)))))
(let ((anon17_Else_correct  (=> (not inline$$Lt$0$dst@1) (=> (and (|$IsValid'u64'| 0) (= false false)) (=> (and (and (= 0 0) (= $t13@0 false)) (and (= $t14@0 0) (= (ControlFlow 0 39030) 39148))) L8_correct)))))
(let ((anon16_Else$1_correct  (and (=> (= (ControlFlow 0 38996) 39293) anon17_Then_correct) (=> (= (ControlFlow 0 38996) 39030) anon17_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t4@0 |inline$$1_Vector_length'#0'$0$l@1|)) (= (ControlFlow 0 38986) 38996)) anon16_Else$1_correct)))
(let ((anon16_Else_correct  (=> (and (not false) (= |inline$$1_Vector_length'#0'$0$l@1| |inline$$1_Vector_length'#0'$0$l@1|)) (and (=> (= (ControlFlow 0 38992) (- 0 53188)) (not (let (($range_0@@2 ($Range 0 0)))
(exists (($i_1@@4 Int) ) (!  (and ($InRange $range_0@@2 $i_1@@4) (let ((j@@2 $i_1@@4))
(= (seq.nth _$t0 j@@2) _$t1)))
 :qid |verifyvectorz3bpl.1776:49|
 :skolemid |43|
))))) (=> (not (let (($range_0@@2 ($Range 0 0)))
(exists (($i_1@@5 Int) ) (!  (and ($InRange $range_0@@2 $i_1@@5) (let ((j@@2 $i_1@@5))
(= (seq.nth _$t0 j@@2) _$t1)))
 :qid |verifyvectorz3bpl.1776:49|
 :skolemid |43|
)))) (=> (and (|$IsValid'u64'| $t4@0) (|$IsValid'u64'| $t10@0)) (=> (and (and (|$IsValid'u64'| $t11@0) (not false)) (and (not (let (($range_0@@3 ($Range 0 $t4@0)))
(exists (($i_1@@6 Int) ) (!  (and ($InRange $range_0@@3 $i_1@@6) (let ((j@@3 $i_1@@6))
(= (seq.nth _$t0 j@@3) _$t1)))
 :qid |verifyvectorz3bpl.1807:54|
 :skolemid |44|
)))) (= (ControlFlow 0 38992) 38986))) inline$$Lt$0$anon0_correct)))))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (seq.len _$t0)) (and (=> (= (ControlFlow 0 38822) 39603) anon16_Then_correct) (=> (= (ControlFlow 0 38822) 38992) anon16_Else_correct)))))
(let ((anon0$1_correct  (=> (and (|$IsValid'vec'#0''| _$t0) (= _$t0 _$t0)) (=> (and (and (= _$t1 _$t1) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 38828) 38822))) |inline$$1_Vector_length'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 52991) 38828) anon0$1_correct)))
anon0_correct))))))))))))))))))))))))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t4@0 () Bool)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun _$t0 () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_is_empty$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 53751) (let ((anon4_Else_correct  (=> (not false) (=> (and (and (|$IsValid'u64'| 0) (= $t4@0 (= |inline$$1_Vector_length'#0'$0$l@1| 0))) (and (= $t4@0 $t4@0) (= (ControlFlow 0 39843) (- 0 53872)))) (= $t4@0 (= (seq.len _$t0) 0))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (seq.len _$t0)) (and (=> (= (ControlFlow 0 39793) 39861) anon4_Then_correct) (=> (= (ControlFlow 0 39793) 39843) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'#0''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 39799) 39793)) |inline$$1_Vector_length'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 53751) 39799) anon0$1_correct)))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$temp_0'vec'#0''@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_append'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun $t2@0 () (Seq |T@#0|))
(declare-fun _$t1 () (Seq |T@#0|))
(declare-fun _$t0 () T@$Mutation_18299)
(declare-fun |$temp_0'vec'#0''@0| () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_append$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 53895) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18299| |inline$$1_Vector_append'#0'$0$m'@1|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|)) (and (=> (= (ControlFlow 0 40132) (- 0 54060)) (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_append'#0'$0$m'@1|)) (+ (seq.len $t2@0) (seq.len _$t1)))) (=> (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_append'#0'$0$m'@1|)) (+ (seq.len $t2@0) (seq.len _$t1))) (and (=> (= (ControlFlow 0 40132) (- 0 54078)) (= (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_append'#0'$0$m'@1|) (|lb#$Range| ($Range 0 (seq.len $t2@0))) (- (|ub#$Range| ($Range 0 (seq.len $t2@0))) (|lb#$Range| ($Range 0 (seq.len $t2@0))))) $t2@0)) (=> (= (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_append'#0'$0$m'@1|) (|lb#$Range| ($Range 0 (seq.len $t2@0))) (- (|ub#$Range| ($Range 0 (seq.len $t2@0))) (|lb#$Range| ($Range 0 (seq.len $t2@0))))) $t2@0) (=> (= (ControlFlow 0 40132) (- 0 54096)) (= (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_append'#0'$0$m'@1|) (|lb#$Range| ($Range (seq.len $t2@0) (seq.len (|v#$Mutation_18299| |inline$$1_Vector_append'#0'$0$m'@1|)))) (- (|ub#$Range| ($Range (seq.len $t2@0) (seq.len (|v#$Mutation_18299| |inline$$1_Vector_append'#0'$0$m'@1|)))) (|lb#$Range| ($Range (seq.len $t2@0) (seq.len (|v#$Mutation_18299| |inline$$1_Vector_append'#0'$0$m'@1|)))))) _$t1))))))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_append'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_append'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| _$t0) (|p#$Mutation_18299| _$t0) (seq.++ (|v#$Mutation_18299| _$t0) _$t1))) (and (=> (= (ControlFlow 0 40040) 40150) anon4_Then_correct) (=> (= (ControlFlow 0 40040) 40132) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (and (= (|l#$Mutation_18299| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18299| _$t0))) (and (|$IsValid'vec'#0''| _$t1) (= $t2@0 (|v#$Mutation_18299| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| (|v#$Mutation_18299| _$t0)) (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|)) (and (= _$t1 _$t1) (= (ControlFlow 0 40046) 40040)))) |inline$$1_Vector_append'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 53895) 40046) anon0$1_correct)))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@2| () |T@#0|)
(declare-fun _$t1 () Int)
(declare-fun _$t0 () (Seq |T@#0|))
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@0| () |T@#0|)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@1| () |T@#0|)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_borrow$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 54127) (let ((anon4_Else_correct  (=> (and (not $abort_flag@0) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@2|)) (and (=> (= (ControlFlow 0 40501) (- 0 54318)) (not (>= _$t1 (seq.len _$t0)))) (=> (not (>= _$t1 (seq.len _$t0))) (=> (= (ControlFlow 0 40501) (- 0 54329)) (= |inline$$1_Vector_borrow'#0'$0$dst@2| (seq.nth _$t0 _$t1))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 40529) (- 0 54293))) (>= _$t1 (seq.len _$t0))))))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@0|)) (and (=> (= (ControlFlow 0 40453) 40529) anon4_Then_correct) (=> (= (ControlFlow 0 40453) 40501) anon4_Else_correct))))))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Then_correct|  (=> (and (not (and (>= _$t1 0) (< _$t1 (seq.len _$t0)))) (= (ControlFlow 0 40451) 40453)) |inline$$1_Vector_borrow'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Else_correct|  (=> (and (>= _$t1 0) (< _$t1 (seq.len _$t0))) (=> (and (and (= |inline$$1_Vector_borrow'#0'$0$dst@1| (seq.nth _$t0 _$t1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@1|))) (and (=> (= (ControlFlow 0 40401) 40529) anon4_Then_correct) (=> (= (ControlFlow 0 40401) 40501) anon4_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'#0''| _$t0) (|$IsValid'u64'| _$t1)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (=> (= (ControlFlow 0 40459) 40451) |inline$$1_Vector_borrow'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 40459) 40401) |inline$$1_Vector_borrow'#0'$0$anon3_Else_correct|)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 54127) 40459) anon0$1_correct)))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'#0'@0| () |T@#0|)
(declare-fun |inline$$1_Vector_borrow_mut'#0'$0$dst@2| () T@$Mutation_19011)
(declare-fun |$temp_0'vec'#0''@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_borrow_mut'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun _$t1 () Int)
(declare-fun $t2@0 () (Seq |T@#0|))
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'#0'$0$dst@0| () T@$Mutation_19011)
(declare-fun |inline$$1_Vector_borrow_mut'#0'$0$m'@0| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_borrow_mut'#0'$0$v@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_borrow_mut'#0'$0$dst@1| () T@$Mutation_19011)
(declare-fun _$t0 () T@$Mutation_18299)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'#0''@0| () (Seq |T@#0|))
(declare-fun $t3 () T@$Mutation_19011)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_borrow_mut$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 54349) (let ((anon4_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= |$temp_0'#0'@0| (|v#$Mutation_19011| |inline$$1_Vector_borrow_mut'#0'$0$dst@2|)) (= |$temp_0'#0'@0| |$temp_0'#0'@0|)) (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18299| |inline$$1_Vector_borrow_mut'#0'$0$m'@1|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|))) (and (=> (= (ControlFlow 0 40938) (- 0 54653)) (not (>= _$t1 (seq.len $t2@0)))) (=> (not (>= _$t1 (seq.len $t2@0))) (=> (= (ControlFlow 0 40938) (- 0 54664)) (= (|v#$Mutation_19011| |inline$$1_Vector_borrow_mut'#0'$0$dst@2|) (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_borrow_mut'#0'$0$m'@1|) _$t1)))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 40966) (- 0 54605))) (>= _$t1 (seq.len $t2@0))))))
(let ((|inline$$1_Vector_borrow_mut'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'#0'$0$dst@2| |inline$$1_Vector_borrow_mut'#0'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'#0'$0$m'@1| |inline$$1_Vector_borrow_mut'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 40868) 40966) anon4_Then_correct) (=> (= (ControlFlow 0 40868) 40938) anon4_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'#0'$0$anon3_Then_correct|  (=> (and (not (and (>= _$t1 0) (< _$t1 (seq.len |inline$$1_Vector_borrow_mut'#0'$0$v@1|)))) (= (ControlFlow 0 40866) 40868)) |inline$$1_Vector_borrow_mut'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'#0'$0$anon3_Else_correct|  (=> (and (and (and (>= _$t1 0) (< _$t1 (seq.len |inline$$1_Vector_borrow_mut'#0'$0$v@1|))) (= |inline$$1_Vector_borrow_mut'#0'$0$dst@1| ($Mutation_19011 (|l#$Mutation_18299| _$t0) (seq.++ (|p#$Mutation_18299| _$t0) (seq.unit _$t1)) (seq.nth |inline$$1_Vector_borrow_mut'#0'$0$v@1| _$t1)))) (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_borrow_mut'#0'$0$dst@2| |inline$$1_Vector_borrow_mut'#0'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'#0'$0$m'@1| _$t0)))) (and (=> (= (ControlFlow 0 40816) 40966) anon4_Then_correct) (=> (= (ControlFlow 0 40816) 40938) anon4_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'#0'$0$v@1| (|v#$Mutation_18299| _$t0)) (and (=> (= (ControlFlow 0 40786) 40866) |inline$$1_Vector_borrow_mut'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 40786) 40816) |inline$$1_Vector_borrow_mut'#0'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (and (and (and (= (|l#$Mutation_18299| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18299| _$t0))) (and (|$IsValid'u64'| _$t1) (= $t2@0 (|v#$Mutation_18299| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| (|v#$Mutation_18299| _$t0)) (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|)) (and (= _$t1 _$t1) (= (ControlFlow 0 40876) 40786)))) |inline$$1_Vector_borrow_mut'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_19011| $t3)) 0) (= (ControlFlow 0 40638) 40876)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 54349) 40638) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_contains'#0'$0$res@1| () Bool)
(declare-fun _$t0 () (Seq |T@#0|))
(declare-fun _$t1 () |T@#0|)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_contains$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 54689) (let ((anon4_Else_correct  (=> (and (not false) (= |inline$$1_Vector_contains'#0'$0$res@1| |inline$$1_Vector_contains'#0'$0$res@1|)) (and (=> (= (ControlFlow 0 41235) (- 0 54813)) (not false)) (=> (not false) (=> (= (ControlFlow 0 41235) (- 0 54820)) (= |inline$$1_Vector_contains'#0'$0$res@1| (let (($range_0 _$t0))
(exists (($i_1 Int) ) (!  (and (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let ((x (seq.nth $range_0 $i_1)))
(= x _$t1)))
 :qid |verifyvectorz3bpl.2374:57|
 :skolemid |48|
))))))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_contains'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'#0'$0$res@1| (exists ((i@@9 Int) ) (!  (and (and (|$IsValid'u64'| i@@9) (and (>= i@@9 0) (< i@@9 (seq.len _$t0)))) (= (seq.nth _$t0 i@@9) _$t1))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (and (=> (= (ControlFlow 0 41170) 41257) anon4_Then_correct) (=> (= (ControlFlow 0 41170) 41235) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'#0''| _$t0) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 41176) 41170))) |inline$$1_Vector_contains'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 54689) 41176) anon0$1_correct)))
anon0_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(pop 1)
; Timed out
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Timed out

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun _$t0 () (Seq |T@#0|))
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_destroy_empty$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 54861) (let ((anon4_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 41504) (- 0 54996))) (not (> (seq.len _$t0) 0)))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 41532) (- 0 54975))) (> (seq.len _$t0) 0)))))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 41478) 41532) anon4_Then_correct) (=> (= (ControlFlow 0 41478) 41504) anon4_Else_correct)))))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Then_correct|  (=> (and (not (= (seq.len _$t0) 0)) (= (ControlFlow 0 41476) 41478)) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Then$1_correct|)))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Else_correct|  (=> (= (seq.len _$t0) 0) (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 41428) 41532) anon4_Then_correct) (=> (= (ControlFlow 0 41428) 41504) anon4_Else_correct))))))
(let ((anon0$1_correct  (=> (and (|$IsValid'vec'#0''| _$t0) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 41482) 41476) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Then_correct|) (=> (= (ControlFlow 0 41482) 41428) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Else_correct|)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 54861) 41482) anon0$1_correct)))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_empty'#0'$0$v@1| () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_empty$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 55013) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'#0'$0$v@1| |inline$$1_Vector_empty'#0'$0$v@1|) (= (ControlFlow 0 41672) (- 0 55090))) (= (seq.len |inline$$1_Vector_empty'#0'$0$v@1|) 0)))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_empty'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'#0'$0$v@1| (as seq.empty (Seq |T@#0|))) (and (=> (= (ControlFlow 0 41638) 41690) anon4_Then_correct) (=> (= (ControlFlow 0 41638) 41672) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 41644) 41638) |inline$$1_Vector_empty'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 55013) 41644) anon0$1_correct)))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_index_of'#0'$0$res1@1| () Bool)
(declare-fun |inline$$1_Vector_index_of'#0'$0$res2@2| () Int)
(declare-fun _$t0 () (Seq |T@#0|))
(declare-fun _$t1 () |T@#0|)
(declare-fun |inline$$1_Vector_index_of'#0'$0$res2@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_index_of$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 55111) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_index_of'#0'$0$res1@1| |inline$$1_Vector_index_of'#0'$0$res1@1|) (= |inline$$1_Vector_index_of'#0'$0$res2@2| |inline$$1_Vector_index_of'#0'$0$res2@2|)) (and (=> (= (ControlFlow 0 42045) (- 0 55292)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 42045) (- 0 55299)) (= |inline$$1_Vector_index_of'#0'$0$res1@1| (let (($range_0 _$t0))
(exists (($i_1 Int) ) (!  (and (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let ((x (seq.nth $range_0 $i_1)))
(= x _$t1)))
 :qid |verifyvectorz3bpl.2566:57|
 :skolemid |49|
))))) (=> (= |inline$$1_Vector_index_of'#0'$0$res1@1| (let (($range_0 _$t0))
(exists (($i_1@@0 Int) ) (!  (and (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0))) (let ((x (seq.nth $range_0 $i_1@@0)))
(= x _$t1)))
 :qid |verifyvectorz3bpl.2566:57|
 :skolemid |49|
)))) (and (=> (= (ControlFlow 0 42045) (- 0 55332)) (=> |inline$$1_Vector_index_of'#0'$0$res1@1| (= (seq.nth _$t0 |inline$$1_Vector_index_of'#0'$0$res2@2|) _$t1))) (=> (=> |inline$$1_Vector_index_of'#0'$0$res1@1| (= (seq.nth _$t0 |inline$$1_Vector_index_of'#0'$0$res2@2|) _$t1)) (and (=> (= (ControlFlow 0 42045) (- 0 55345)) (=> |inline$$1_Vector_index_of'#0'$0$res1@1| (let (($range_0@@0 ($Range 0 |inline$$1_Vector_index_of'#0'$0$res2@2|)))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((i@@9 $i_1@@1))
 (not (= (seq.nth _$t0 i@@9) _$t1))))
 :qid |verifyvectorz3bpl.2577:57|
 :skolemid |50|
))))) (=> (=> |inline$$1_Vector_index_of'#0'$0$res1@1| (let (($range_0@@0 ($Range 0 |inline$$1_Vector_index_of'#0'$0$res2@2|)))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@2) (let ((i@@9 $i_1@@2))
 (not (= (seq.nth _$t0 i@@9) _$t1))))
 :qid |verifyvectorz3bpl.2577:57|
 :skolemid |50|
)))) (=> (= (ControlFlow 0 42045) (- 0 55383)) (=> (not |inline$$1_Vector_index_of'#0'$0$res1@1|) (= |inline$$1_Vector_index_of'#0'$0$res2@2| 0)))))))))))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_index_of'#0'$0$anon3_Else_correct|  (=> (> 0 |inline$$1_Vector_index_of'#0'$0$res2@1|) (=> (and (= |inline$$1_Vector_index_of'#0'$0$res1@1| false) (= |inline$$1_Vector_index_of'#0'$0$res2@2| 0)) (and (=> (= (ControlFlow 0 41889) 42067) anon4_Then_correct) (=> (= (ControlFlow 0 41889) 42045) anon4_Else_correct))))))
(let ((|inline$$1_Vector_index_of'#0'$0$anon3_Then_correct|  (=> (>= |inline$$1_Vector_index_of'#0'$0$res2@1| 0) (=> (and (= |inline$$1_Vector_index_of'#0'$0$res1@1| true) (= |inline$$1_Vector_index_of'#0'$0$res2@2| |inline$$1_Vector_index_of'#0'$0$res2@1|)) (and (=> (= (ControlFlow 0 41899) 42067) anon4_Then_correct) (=> (= (ControlFlow 0 41899) 42045) anon4_Else_correct))))))
(let ((|inline$$1_Vector_index_of'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_index_of'#0'$0$res2@1| (|$IndexOfVec'#0'| _$t0 _$t1)) (and (=> (= (ControlFlow 0 41877) 41899) |inline$$1_Vector_index_of'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 41877) 41889) |inline$$1_Vector_index_of'#0'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'#0''| _$t0) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 41907) 41877))) |inline$$1_Vector_index_of'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 55111) 41907) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(pop 1)
; Timed out
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Timed out

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_is_empty'#0'$0$b@1| () Bool)
(declare-fun _$t0 () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_is_empty$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 55407) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_is_empty'#0'$0$b@1| |inline$$1_Vector_is_empty'#0'$0$b@1|) (= (ControlFlow 0 42262) (- 0 55508))) (= |inline$$1_Vector_is_empty'#0'$0$b@1| (= (seq.len _$t0) 0))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_is_empty'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'#0'$0$b@1| (= (seq.len _$t0) 0)) (and (=> (= (ControlFlow 0 42224) 42280) anon4_Then_correct) (=> (= (ControlFlow 0 42224) 42262) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'#0''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 42230) 42224)) |inline$$1_Vector_is_empty'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 55407) 42230) anon0$1_correct)))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun _$t0 () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_length$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 55530) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_length'#0'$0$l@1| |inline$$1_Vector_length'#0'$0$l@1|) (= (ControlFlow 0 42442) (- 0 55631))) (= |inline$$1_Vector_length'#0'$0$l@1| (seq.len _$t0))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (seq.len _$t0)) (and (=> (= (ControlFlow 0 42408) 42460) anon4_Then_correct) (=> (= (ControlFlow 0 42408) 42442) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'#0''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 42414) 42408)) |inline$$1_Vector_length'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 55530) 42414) anon0$1_correct)))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@2| () |T@#0|)
(declare-fun |$temp_0'vec'#0''@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@2| () T@$Mutation_18299)
(declare-fun $t1@0 () (Seq |T@#0|))
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@0| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@0| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@1| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$v@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun _$t0 () T@$Mutation_18299)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'#0''@0| () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_pop_back$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 55650) (let ((anon4_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@2|)) (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|))) (and (=> (= (ControlFlow 0 42867) (- 0 55938)) (not (= (seq.len $t1@0) 0))) (=> (not (= (seq.len $t1@0) 0)) (and (=> (= (ControlFlow 0 42867) (- 0 55950)) (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (- (seq.len $t1@0) 1))) (=> (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (- (seq.len $t1@0) 1)) (and (=> (= (ControlFlow 0 42867) (- 0 55967)) (= |inline$$1_Vector_pop_back'#0'$0$e@2| (seq.nth $t1@0 (- (seq.len $t1@0) 1)))) (=> (= |inline$$1_Vector_pop_back'#0'$0$e@2| (seq.nth $t1@0 (- (seq.len $t1@0) 1))) (=> (= (ControlFlow 0 42867) (- 0 55983)) (= (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|) (seq.extract $t1@0 (|lb#$Range| ($Range 0 (- (seq.len $t1@0) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t1@0) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t1@0) 1))))))))))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 42895) (- 0 55898))) (= (seq.len $t1@0) 0)))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@0|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 42757) 42895) anon4_Then_correct) (=> (= (ControlFlow 0 42757) 42867) anon4_Else_correct)))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0) (= (ControlFlow 0 42755) 42757)) |inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|  (=> (not (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0)) (=> (and (= |inline$$1_Vector_pop_back'#0'$0$e@1| (seq.nth |inline$$1_Vector_pop_back'#0'$0$v@1| (- |inline$$1_Vector_pop_back'#0'$0$len@1| 1))) (= |inline$$1_Vector_pop_back'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| _$t0) (|p#$Mutation_18299| _$t0) (seq.extract |inline$$1_Vector_pop_back'#0'$0$v@1| 0 (- (- (seq.len |inline$$1_Vector_pop_back'#0'$0$v@1|) 1) 0))))) (=> (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@1|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 42707) 42895) anon4_Then_correct) (=> (= (ControlFlow 0 42707) 42867) anon4_Else_correct)))))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$v@1| (|v#$Mutation_18299| _$t0)) (= |inline$$1_Vector_pop_back'#0'$0$len@1| (seq.len |inline$$1_Vector_pop_back'#0'$0$v@1|))) (and (=> (= (ControlFlow 0 42681) 42755) |inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 42681) 42707) |inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (and (= (|l#$Mutation_18299| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18299| _$t0))) (=> (and (and (= $t1@0 (|v#$Mutation_18299| _$t0)) (= |$temp_0'vec'#0''@0| (|v#$Mutation_18299| _$t0))) (and (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|) (= (ControlFlow 0 42765) 42681))) |inline$$1_Vector_pop_back'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 55650) 42765) anon0$1_correct)))
anon0_correct)))))))))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$temp_0'vec'#0''@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_push_back'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun $t2@0 () (Seq |T@#0|))
(declare-fun _$t1 () |T@#0|)
(declare-fun _$t0 () T@$Mutation_18299)
(declare-fun |$temp_0'vec'#0''@0| () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_push_back$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 56016) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|)) (and (=> (= (ControlFlow 0 43227) (- 0 56181)) (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (+ (seq.len $t2@0) 1))) (=> (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (+ (seq.len $t2@0) 1)) (and (=> (= (ControlFlow 0 43227) (- 0 56198)) (= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|) (- (seq.len (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1)) _$t1)) (=> (= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|) (- (seq.len (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1)) _$t1) (=> (= (ControlFlow 0 43227) (- 0 56218)) (= $t2@0 (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|) (|lb#$Range| ($Range 0 (- (seq.len (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1))) (|lb#$Range| ($Range 0 (- (seq.len (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1)))))))))))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_push_back'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| _$t0) (|p#$Mutation_18299| _$t0) (seq.++ (|v#$Mutation_18299| _$t0) (seq.unit _$t1)))) (and (=> (= (ControlFlow 0 43133) 43245) anon4_Then_correct) (=> (= (ControlFlow 0 43133) 43227) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_18299| _$t0) ($Param 0)) (=> (and (|$IsValid'vec'#0''| (|v#$Mutation_18299| _$t0)) (= $t2@0 (|v#$Mutation_18299| _$t0))) (=> (and (and (= |$temp_0'vec'#0''@0| (|v#$Mutation_18299| _$t0)) (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|)) (and (= _$t1 _$t1) (= (ControlFlow 0 43139) 43133))) |inline$$1_Vector_push_back'#0'$0$anon0_correct|)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 56016) 43139) anon0$1_correct)))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_remove'#0'$0$e@2| () |T@#0|)
(declare-fun |$temp_0'vec'#0''@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_remove'#0'$0$m'@2| () T@$Mutation_18299)
(declare-fun _$t1 () Int)
(declare-fun $t2@0 () (Seq |T@#0|))
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_remove'#0'$0$e@0| () |T@#0|)
(declare-fun |inline$$1_Vector_remove'#0'$0$m'@0| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_remove'#0'$0$v@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_remove'#0'$0$e@1| () |T@#0|)
(declare-fun |inline$$1_Vector_remove'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun _$t0 () T@$Mutation_18299)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'#0''@0| () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_remove$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 56253) (let ((anon4_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_remove'#0'$0$e@2| |inline$$1_Vector_remove'#0'$0$e@2|)) (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18299| |inline$$1_Vector_remove'#0'$0$m'@2|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|))) (and (=> (= (ControlFlow 0 43728) (- 0 56540)) (not (>= _$t1 (seq.len $t2@0)))) (=> (not (>= _$t1 (seq.len $t2@0))) (and (=> (= (ControlFlow 0 43728) (- 0 56551)) (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_remove'#0'$0$m'@2|)) (- (seq.len $t2@0) 1))) (=> (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_remove'#0'$0$m'@2|)) (- (seq.len $t2@0) 1)) (and (=> (= (ControlFlow 0 43728) (- 0 56568)) (= (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_remove'#0'$0$m'@2|) (|lb#$Range| ($Range 0 _$t1)) (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1)))) (seq.extract $t2@0 (|lb#$Range| ($Range 0 _$t1)) (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1)))))) (=> (= (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_remove'#0'$0$m'@2|) (|lb#$Range| ($Range 0 _$t1)) (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1)))) (seq.extract $t2@0 (|lb#$Range| ($Range 0 _$t1)) (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))))) (and (=> (= (ControlFlow 0 43728) (- 0 56591)) (= (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_remove'#0'$0$m'@2|) (|lb#$Range| ($Range _$t1 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_remove'#0'$0$m'@2|)))) (- (|ub#$Range| ($Range _$t1 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_remove'#0'$0$m'@2|)))) (|lb#$Range| ($Range _$t1 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_remove'#0'$0$m'@2|)))))) (seq.extract $t2@0 (|lb#$Range| ($Range (+ _$t1 1) (seq.len $t2@0))) (- (|ub#$Range| ($Range (+ _$t1 1) (seq.len $t2@0))) (|lb#$Range| ($Range (+ _$t1 1) (seq.len $t2@0))))))) (=> (= (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_remove'#0'$0$m'@2|) (|lb#$Range| ($Range _$t1 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_remove'#0'$0$m'@2|)))) (- (|ub#$Range| ($Range _$t1 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_remove'#0'$0$m'@2|)))) (|lb#$Range| ($Range _$t1 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_remove'#0'$0$m'@2|)))))) (seq.extract $t2@0 (|lb#$Range| ($Range (+ _$t1 1) (seq.len $t2@0))) (- (|ub#$Range| ($Range (+ _$t1 1) (seq.len $t2@0))) (|lb#$Range| ($Range (+ _$t1 1) (seq.len $t2@0)))))) (=> (= (ControlFlow 0 43728) (- 0 56622)) (= (seq.nth $t2@0 _$t1) |inline$$1_Vector_remove'#0'$0$e@2|)))))))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 43756) (- 0 56501))) (>= _$t1 (seq.len $t2@0))))))
(let ((|inline$$1_Vector_remove'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_remove'#0'$0$e@2| |inline$$1_Vector_remove'#0'$0$e@0|) (= |inline$$1_Vector_remove'#0'$0$m'@2| |inline$$1_Vector_remove'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 43586) 43756) anon4_Then_correct) (=> (= (ControlFlow 0 43586) 43728) anon4_Else_correct)))))
(let ((|inline$$1_Vector_remove'#0'$0$anon3_Then_correct|  (=> (and (not (and (>= _$t1 0) (< _$t1 (seq.len |inline$$1_Vector_remove'#0'$0$v@1|)))) (= (ControlFlow 0 43584) 43586)) |inline$$1_Vector_remove'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_remove'#0'$0$anon3_Else_correct|  (=> (and (and (and (>= _$t1 0) (< _$t1 (seq.len |inline$$1_Vector_remove'#0'$0$v@1|))) (and (= |inline$$1_Vector_remove'#0'$0$e@1| (seq.nth |inline$$1_Vector_remove'#0'$0$v@1| _$t1)) (= |inline$$1_Vector_remove'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| _$t0) (|p#$Mutation_18299| _$t0) (seq.++ (seq.extract |inline$$1_Vector_remove'#0'$0$v@1| 0 (- _$t1 0)) (seq.extract |inline$$1_Vector_remove'#0'$0$v@1| (+ _$t1 1) (- (seq.len |inline$$1_Vector_remove'#0'$0$v@1|) (+ _$t1 1)))))))) (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_remove'#0'$0$e@2| |inline$$1_Vector_remove'#0'$0$e@1|) (= |inline$$1_Vector_remove'#0'$0$m'@2| |inline$$1_Vector_remove'#0'$0$m'@1|)))) (and (=> (= (ControlFlow 0 43534) 43756) anon4_Then_correct) (=> (= (ControlFlow 0 43534) 43728) anon4_Else_correct)))))
(let ((|inline$$1_Vector_remove'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_remove'#0'$0$v@1| (|v#$Mutation_18299| _$t0)) (and (=> (= (ControlFlow 0 43510) 43584) |inline$$1_Vector_remove'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 43510) 43534) |inline$$1_Vector_remove'#0'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (and (and (and (= (|l#$Mutation_18299| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18299| _$t0))) (and (|$IsValid'u64'| _$t1) (= $t2@0 (|v#$Mutation_18299| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| (|v#$Mutation_18299| _$t0)) (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|)) (and (= _$t1 _$t1) (= (ControlFlow 0 43594) 43510)))) |inline$$1_Vector_remove'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 56253) 43594) anon0$1_correct)))
anon0_correct)))))))))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$temp_0'vec'#0''@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_reverse'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun $t1@0 () (Seq |T@#0|))
(declare-fun _$t0 () T@$Mutation_18299)
(declare-fun |$temp_0'vec'#0''@0| () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_reverse$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 56642) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|)) (and (=> (= (ControlFlow 0 44067) (- 0 56794)) (not false)) (=> (not false) (=> (= (ControlFlow 0 44067) (- 0 56801)) (let (($range_0 ($Range 0 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|)))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i@@9 $i_1))
(= (seq.nth $t1@0 i@@9) (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|) (- (- (seq.len (|v#$Mutation_18299| |inline$$1_Vector_reverse'#0'$0$m'@1|)) 1) i@@9)))))
 :qid |verifyvectorz3bpl.3057:70|
 :skolemid |51|
))))))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_reverse'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| _$t0) (|p#$Mutation_18299| _$t0) (ReverseVec_14622 (|v#$Mutation_18299| _$t0)))) (and (=> (= (ControlFlow 0 43976) 44089) anon4_Then_correct) (=> (= (ControlFlow 0 43976) 44067) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= (|l#$Mutation_18299| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18299| _$t0))) (=> (and (and (= $t1@0 (|v#$Mutation_18299| _$t0)) (= |$temp_0'vec'#0''@0| (|v#$Mutation_18299| _$t0))) (and (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|) (= (ControlFlow 0 43982) 43976))) |inline$$1_Vector_reverse'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 56642) 43982) anon0$1_correct)))
anon0_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 56642)))
(get-value ((ControlFlow 0 43982)))
(get-value ((ControlFlow 0 43976)))
(get-value ((ControlFlow 0 44067)))
(assert (not (= (ControlFlow 0 44067) (- 56801))))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'vec'#0''@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@2| () T@$Mutation_18299)
(declare-fun _$t1 () Int)
(declare-fun $t3@0 () (Seq |T@#0|))
(declare-fun _$t2 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@0| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_swap'#0'$0$v@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun _$t0 () T@$Mutation_18299)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'#0''@0| () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_swap$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 56866) (let ((anon4_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|)) (and (=> (= (ControlFlow 0 44544) (- 0 57161)) (not (>= _$t1 (seq.len $t3@0)))) (=> (not (>= _$t1 (seq.len $t3@0))) (and (=> (= (ControlFlow 0 44544) (- 0 57172)) (not (>= _$t2 (seq.len $t3@0)))) (=> (not (>= _$t2 (seq.len $t3@0))) (=> (= (ControlFlow 0 44544) (- 0 57183)) (= (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) (seq.++ (seq.extract (seq.++ (seq.extract $t3@0 0 (- _$t1 0)) (seq.unit (seq.nth $t3@0 _$t2)) (seq.extract $t3@0 (+ _$t1 1) (- (seq.len $t3@0) (+ _$t1 1)))) 0 (- _$t2 0)) (seq.unit (seq.nth $t3@0 _$t1)) (seq.extract (seq.++ (seq.extract $t3@0 0 (- _$t1 0)) (seq.unit (seq.nth $t3@0 _$t2)) (seq.extract $t3@0 (+ _$t1 1) (- (seq.len $t3@0) (+ _$t1 1)))) (+ _$t2 1) (- (seq.len (seq.++ (seq.extract $t3@0 0 (- _$t1 0)) (seq.unit (seq.nth $t3@0 _$t2)) (seq.extract $t3@0 (+ _$t1 1) (- (seq.len $t3@0) (+ _$t1 1))))) (+ _$t2 1))))))))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 44582) (- 0 57119))) (or (>= _$t1 (seq.len $t3@0)) (>= _$t2 (seq.len $t3@0)))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@0|)) (and (=> (= (ControlFlow 0 44462) 44582) anon4_Then_correct) (=> (= (ControlFlow 0 44462) 44544) anon4_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then_correct|  (=> (and (or (not (and (>= _$t1 0) (< _$t1 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|)))) (not (and (>= _$t2 0) (< _$t2 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|))))) (= (ControlFlow 0 44460) 44462)) |inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Else_correct|  (=> (not (or (not (and (>= _$t1 0) (< _$t1 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|)))) (not (and (>= _$t2 0) (< _$t2 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| _$t0) (|p#$Mutation_18299| _$t0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| 0 (- _$t2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| _$t1)) (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| (+ _$t2 1) (- (seq.len |inline$$1_Vector_swap'#0'$0$v@1|) (+ _$t2 1)))) 0 (- _$t1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| _$t2)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| 0 (- _$t2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| _$t1)) (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| (+ _$t2 1) (- (seq.len |inline$$1_Vector_swap'#0'$0$v@1|) (+ _$t2 1)))) (+ _$t1 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| 0 (- _$t2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| _$t1)) (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| (+ _$t2 1) (- (seq.len |inline$$1_Vector_swap'#0'$0$v@1|) (+ _$t2 1))))) (+ _$t1 1)))))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 44400) 44582) anon4_Then_correct) (=> (= (ControlFlow 0 44400) 44544) anon4_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'#0'$0$v@1| (|v#$Mutation_18299| _$t0)) (and (=> (= (ControlFlow 0 44366) 44460) |inline$$1_Vector_swap'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 44366) 44400) |inline$$1_Vector_swap'#0'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (and (= (|l#$Mutation_18299| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18299| _$t0))) (=> (and (and (and (|$IsValid'u64'| _$t1) (|$IsValid'u64'| _$t2)) (and (= $t3@0 (|v#$Mutation_18299| _$t0)) (= |$temp_0'vec'#0''@0| (|v#$Mutation_18299| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= (ControlFlow 0 44468) 44366)))) |inline$$1_Vector_swap'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 56866) 44468) anon0$1_correct)))
anon0_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(pop 1)
; Timed out
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Timed out

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$e@2| () |T@#0|)
(declare-fun |$temp_0'vec'#0''@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$m'@2| () T@$Mutation_18299)
(declare-fun _$t1 () Int)
(declare-fun $t2@0 () (Seq |T@#0|))
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$e@0| () |T@#0|)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$m'@0| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$v@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$e@1| () |T@#0|)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun _$t0 () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$len@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'#0''@0| () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_swap_remove$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 57216) (let ((anon4_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_swap_remove'#0'$0$e@2| |inline$$1_Vector_swap_remove'#0'$0$e@2|)) (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18299| |inline$$1_Vector_swap_remove'#0'$0$m'@2|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|))) (and (=> (= (ControlFlow 0 45079) (- 0 57524)) (not (>= _$t1 (seq.len $t2@0)))) (=> (not (>= _$t1 (seq.len $t2@0))) (and (=> (= (ControlFlow 0 45079) (- 0 57535)) (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_swap_remove'#0'$0$m'@2|)) (- (seq.len $t2@0) 1))) (=> (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_swap_remove'#0'$0$m'@2|)) (- (seq.len $t2@0) 1)) (and (=> (= (ControlFlow 0 45079) (- 0 57552)) (= (|v#$Mutation_18299| |inline$$1_Vector_swap_remove'#0'$0$m'@2|) (seq.extract (seq.++ (seq.extract $t2@0 0 (- _$t1 0)) (seq.unit (seq.nth $t2@0 (- (seq.len $t2@0) 1))) (seq.extract $t2@0 (+ _$t1 1) (- (seq.len $t2@0) (+ _$t1 1)))) (|lb#$Range| ($Range 0 (- (seq.len $t2@0) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t2@0) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t2@0) 1))))))) (=> (= (|v#$Mutation_18299| |inline$$1_Vector_swap_remove'#0'$0$m'@2|) (seq.extract (seq.++ (seq.extract $t2@0 0 (- _$t1 0)) (seq.unit (seq.nth $t2@0 (- (seq.len $t2@0) 1))) (seq.extract $t2@0 (+ _$t1 1) (- (seq.len $t2@0) (+ _$t1 1)))) (|lb#$Range| ($Range 0 (- (seq.len $t2@0) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t2@0) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t2@0) 1)))))) (=> (= (ControlFlow 0 45079) (- 0 57587)) (= (seq.nth $t2@0 _$t1) |inline$$1_Vector_swap_remove'#0'$0$e@2|)))))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 45107) (- 0 57485))) (>= _$t1 (seq.len $t2@0))))))
(let ((|inline$$1_Vector_swap_remove'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_swap_remove'#0'$0$e@2| |inline$$1_Vector_swap_remove'#0'$0$e@0|) (= |inline$$1_Vector_swap_remove'#0'$0$m'@2| |inline$$1_Vector_swap_remove'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 44959) 45107) anon4_Then_correct) (=> (= (ControlFlow 0 44959) 45079) anon4_Else_correct)))))
(let ((|inline$$1_Vector_swap_remove'#0'$0$anon3_Then_correct|  (=> (and (not (and (>= _$t1 0) (< _$t1 (seq.len |inline$$1_Vector_swap_remove'#0'$0$v@1|)))) (= (ControlFlow 0 44957) 44959)) |inline$$1_Vector_swap_remove'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap_remove'#0'$0$anon3_Else_correct|  (=> (and (and (and (>= _$t1 0) (< _$t1 (seq.len |inline$$1_Vector_swap_remove'#0'$0$v@1|))) (and (= |inline$$1_Vector_swap_remove'#0'$0$e@1| (seq.nth |inline$$1_Vector_swap_remove'#0'$0$v@1| _$t1)) (= |inline$$1_Vector_swap_remove'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| _$t0) (|p#$Mutation_18299| _$t0) (seq.extract (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'#0'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'#0'$0$v@1| _$t1)) (seq.extract |inline$$1_Vector_swap_remove'#0'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'#0'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 1)))) 0 (- _$t1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'#0'$0$v@1| (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1))) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'#0'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'#0'$0$v@1| _$t1)) (seq.extract |inline$$1_Vector_swap_remove'#0'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'#0'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 1)))) (+ _$t1 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap_remove'#0'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'#0'$0$v@1| _$t1)) (seq.extract |inline$$1_Vector_swap_remove'#0'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'#0'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 1))))) (+ _$t1 1)))) 0 (- (- (seq.len (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'#0'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'#0'$0$v@1| _$t1)) (seq.extract |inline$$1_Vector_swap_remove'#0'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'#0'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 1)))) 0 (- _$t1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'#0'$0$v@1| (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1))) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'#0'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'#0'$0$v@1| _$t1)) (seq.extract |inline$$1_Vector_swap_remove'#0'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'#0'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 1)))) (+ _$t1 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap_remove'#0'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'#0'$0$v@1| _$t1)) (seq.extract |inline$$1_Vector_swap_remove'#0'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'#0'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) 1))))) (+ _$t1 1))))) 1) 0)))))) (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_swap_remove'#0'$0$e@2| |inline$$1_Vector_swap_remove'#0'$0$e@1|) (= |inline$$1_Vector_swap_remove'#0'$0$m'@2| |inline$$1_Vector_swap_remove'#0'$0$m'@1|)))) (and (=> (= (ControlFlow 0 44907) 45107) anon4_Then_correct) (=> (= (ControlFlow 0 44907) 45079) anon4_Else_correct)))))
(let ((|inline$$1_Vector_swap_remove'#0'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_swap_remove'#0'$0$v@1| (|v#$Mutation_18299| _$t0)) (= |inline$$1_Vector_swap_remove'#0'$0$len@1| (seq.len |inline$$1_Vector_swap_remove'#0'$0$v@1|))) (and (=> (= (ControlFlow 0 44875) 44957) |inline$$1_Vector_swap_remove'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 44875) 44907) |inline$$1_Vector_swap_remove'#0'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (and (and (and (= (|l#$Mutation_18299| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18299| _$t0))) (and (|$IsValid'u64'| _$t1) (= $t2@0 (|v#$Mutation_18299| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| (|v#$Mutation_18299| _$t0)) (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|)) (and (= _$t1 _$t1) (= (ControlFlow 0 44967) 44875)))) |inline$$1_Vector_swap_remove'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 57216) 44967) anon0$1_correct)))
anon0_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(pop 1)
; Timed out
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Timed out

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun $t1@0 () Int)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@2| () T@$Mutation_18299)
(declare-fun $t13@0 () (Seq |T@#0|))
(declare-fun $t14@0 () (Seq |T@#0|))
(declare-fun $t15@0 () (Seq |T@#0|))
(declare-fun $t16@0 () (Seq |T@#0|))
(declare-fun $t1@1 () Int)
(declare-fun $t4@0 () (Seq |T@#0|))
(declare-fun $abort_code@5 () Int)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@0| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_swap'#0'$0$v@1| () (Seq |T@#0|))
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun $t0@0 () T@$Mutation_18299)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun _$t1 () Int)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@2| () |T@#0|)
(declare-fun |$temp_0'vec'#0''@2| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@2| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@0| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@0| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@1| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$v@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun _$t0 () T@$Mutation_18299)
(declare-fun $t9@0 () (Seq |T@#0|))
(declare-fun $t10@0 () (Seq |T@#0|))
(declare-fun $t11@0 () (Seq |T@#0|))
(declare-fun $t12@0 () (Seq |T@#0|))
(declare-fun $t25@0 () Int)
(declare-fun $t26@0 () Int)
(declare-fun $t27@0 () Int)
(declare-fun $t28@0 () Int)
(declare-fun |$temp_0'vec'#0''@1| () (Seq |T@#0|))
(declare-fun $t5@0 () (Seq |T@#0|))
(declare-fun $t6@0 () (Seq |T@#0|))
(declare-fun $t7@0 () (Seq |T@#0|))
(declare-fun $t8@0 () (Seq |T@#0|))
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t17@0 () (Seq |T@#0|))
(declare-fun |$temp_0'vec'#0''@0| () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_remove$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 57610) (let ((anon28_Else_correct  (=> (and (not $abort_flag@4) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@2)) (and (=> (= (ControlFlow 0 47154) (- 0 59196)) (and (<= $t1@0 inline$$AddU64$1$dst@2) (<= inline$$AddU64$1$dst@2 inline$$Sub$0$dst@2))) (=> (and (<= $t1@0 inline$$AddU64$1$dst@2) (<= inline$$AddU64$1$dst@2 inline$$Sub$0$dst@2)) (and (=> (= (ControlFlow 0 47154) (- 0 59209)) (= (+ inline$$Sub$0$dst@2 1) (seq.len (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|)))) (=> (= (+ inline$$Sub$0$dst@2 1) (seq.len (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|))) (and (=> (= (ControlFlow 0 47154) (- 0 59224)) (= (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) (|lb#$Range| ($Range 0 $t1@0)) (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))) (seq.extract $t13@0 (|lb#$Range| ($Range 0 $t1@0)) (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))))) (=> (= (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) (|lb#$Range| ($Range 0 $t1@0)) (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))) (seq.extract $t13@0 (|lb#$Range| ($Range 0 $t1@0)) (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))))) (and (=> (= (ControlFlow 0 47154) (- 0 59247)) (let (($range_0 ($Range $t1@0 inline$$AddU64$1$dst@2)))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((k $i_1))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) k) (seq.nth $t14@0 (+ k 1)))))
 :qid |verifyvectorz3bpl.3646:51|
 :skolemid |56|
)))) (=> (let (($range_0 ($Range $t1@0 inline$$AddU64$1$dst@2)))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0 $i_1@@0) (let ((k $i_1@@0))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) k) (seq.nth $t14@0 (+ k 1)))))
 :qid |verifyvectorz3bpl.3646:51|
 :skolemid |56|
))) (and (=> (= (ControlFlow 0 47154) (- 0 59289)) (let (($range_0@@0 ($Range (+ inline$$AddU64$1$dst@2 1) (seq.len (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|)))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((k@@0 $i_1@@1))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) k@@0) (seq.nth $t15@0 k@@0))))
 :qid |verifyvectorz3bpl.3652:79|
 :skolemid |57|
)))) (=> (let (($range_0@@0 ($Range (+ inline$$AddU64$1$dst@2 1) (seq.len (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|)))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@2) (let ((k@@0 $i_1@@2))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) k@@0) (seq.nth $t15@0 k@@0))))
 :qid |verifyvectorz3bpl.3652:79|
 :skolemid |57|
))) (=> (= (ControlFlow 0 47154) (- 0 59335)) (= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) inline$$AddU64$1$dst@2) (seq.nth $t16@0 $t1@0))))))))))))))))
(let ((L9_correct  (=> (= (ControlFlow 0 46414) (- 0 59173)) (>= $t1@1 (seq.len $t4@0)))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t1@1 $t1@0) (= (ControlFlow 0 47168) 46414))) L9_correct)))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_code@5 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@4 true) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 46962) 47168) anon28_Then_correct) (=> (= (ControlFlow 0 46962) 47154) anon28_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ $t1@0 1) $MAX_U64) (= (ControlFlow 0 46960) 46962)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t1@0 1)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ $t1@0 1)) (= $abort_code@5 $abort_code@4)) (and (= $abort_flag@4 $abort_flag@3) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 46908) 47168) anon28_Then_correct) (=> (= (ControlFlow 0 46908) 47154) anon28_Else_correct))))))
(let ((anon27_Else_correct  (=> (and (not $abort_flag@3) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 46968) 46960) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 46968) 46908) inline$$AddU64$1$anon3_Else_correct)))))
(let ((anon27_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t1@1 $t1@0) (= (ControlFlow 0 47182) 46414))) L9_correct)))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|  (=> (= $abort_flag@3 true) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@0|)) (and (=> (= (ControlFlow 0 46793) 47182) anon27_Then_correct) (=> (= (ControlFlow 0 46793) 46968) anon27_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then_correct|  (=> (and (or (not (and (>= $t1@0 0) (< $t1@0 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|)))) (not (and (>= inline$$AddU64$0$dst@2 0) (< inline$$AddU64$0$dst@2 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|))))) (= (ControlFlow 0 46791) 46793)) |inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Else_correct|  (=> (not (or (not (and (>= $t1@0 0) (< $t1@0 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|)))) (not (and (>= inline$$AddU64$0$dst@2 0) (< inline$$AddU64$0$dst@2 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| $t0@0) (|p#$Mutation_18299| $t0@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| 0 (- inline$$AddU64$0$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| $t1@0)) (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| (+ inline$$AddU64$0$dst@2 1) (- (seq.len |inline$$1_Vector_swap'#0'$0$v@1|) (+ inline$$AddU64$0$dst@2 1)))) 0 (- $t1@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| inline$$AddU64$0$dst@2)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| 0 (- inline$$AddU64$0$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| $t1@0)) (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| (+ inline$$AddU64$0$dst@2 1) (- (seq.len |inline$$1_Vector_swap'#0'$0$v@1|) (+ inline$$AddU64$0$dst@2 1)))) (+ $t1@0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| 0 (- inline$$AddU64$0$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| $t1@0)) (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| (+ inline$$AddU64$0$dst@2 1) (- (seq.len |inline$$1_Vector_swap'#0'$0$v@1|) (+ inline$$AddU64$0$dst@2 1))))) (+ $t1@0 1)))))) (= $abort_flag@3 $abort_flag@2)) (and (= $abort_code@4 $abort_code@3) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 46731) 47182) anon27_Then_correct) (=> (= (ControlFlow 0 46731) 46968) anon27_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'#0'$0$v@1| (|v#$Mutation_18299| $t0@0)) (and (=> (= (ControlFlow 0 46697) 46791) |inline$$1_Vector_swap'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 46697) 46731) |inline$$1_Vector_swap'#0'$0$anon3_Else_correct|)))))
(let ((anon26_Else_correct  (=> (and (not $abort_flag@2) (= (ControlFlow 0 46799) 46697)) |inline$$1_Vector_swap'#0'$0$anon0_correct|)))
(let ((anon26_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t1@1 $t1@0) (= (ControlFlow 0 47196) 46414))) L9_correct)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@3 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 46571) 47196) anon26_Then_correct) (=> (= (ControlFlow 0 46571) 46799) anon26_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t1@0 1) $MAX_U64) (= (ControlFlow 0 46569) 46571)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t1@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t1@0 1)) (= $abort_code@3 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 46517) 47196) anon26_Then_correct) (=> (= (ControlFlow 0 46517) 46799) anon26_Else_correct))))))
(let ((anon25_Then_correct  (=> (and inline$$Lt$0$dst@1 (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 46577) 46569) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 46577) 46517) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t1@1 $t1@0) (= (ControlFlow 0 46398) 46414))) L9_correct)))
(let ((anon24_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t1@1 _$t1) (= (ControlFlow 0 47210) 46414))) L9_correct)))
(let ((anon23_Then_correct  (=> inline$$Ge$0$dst@1 (=> (and (and (|$IsValid'u64'| 10) (= 10 10)) (and (= $t1@1 _$t1) (= (ControlFlow 0 47230) 46414))) L9_correct))))
(let ((anon29_Else_correct  (=> (and (and (not $abort_flag@1) (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@2|)) (and (= |$temp_0'vec'#0''@2| (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (= |$temp_0'vec'#0''@2| |$temp_0'vec'#0''@2|))) (and (=> (= (ControlFlow 0 46384) (- 0 58745)) (not (>= $t1@0 (seq.len $t4@0)))) (=> (not (>= $t1@0 (seq.len $t4@0))) (and (=> (= (ControlFlow 0 46384) (- 0 58756)) (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (- (seq.len $t4@0) 1))) (=> (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (- (seq.len $t4@0) 1)) (and (=> (= (ControlFlow 0 46384) (- 0 58773)) (= (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|) (|lb#$Range| ($Range 0 $t1@0)) (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))) (seq.extract $t4@0 (|lb#$Range| ($Range 0 $t1@0)) (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))))) (=> (= (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|) (|lb#$Range| ($Range 0 $t1@0)) (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))) (seq.extract $t4@0 (|lb#$Range| ($Range 0 $t1@0)) (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))))) (and (=> (= (ControlFlow 0 46384) (- 0 58796)) (= (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|) (|lb#$Range| ($Range $t1@0 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))) (- (|ub#$Range| ($Range $t1@0 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))) (|lb#$Range| ($Range $t1@0 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))))) (seq.extract $t4@0 (|lb#$Range| ($Range (+ $t1@0 1) (seq.len $t4@0))) (- (|ub#$Range| ($Range (+ $t1@0 1) (seq.len $t4@0))) (|lb#$Range| ($Range (+ $t1@0 1) (seq.len $t4@0))))))) (=> (= (seq.extract (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|) (|lb#$Range| ($Range $t1@0 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))) (- (|ub#$Range| ($Range $t1@0 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))) (|lb#$Range| ($Range $t1@0 (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))))) (seq.extract $t4@0 (|lb#$Range| ($Range (+ $t1@0 1) (seq.len $t4@0))) (- (|ub#$Range| ($Range (+ $t1@0 1) (seq.len $t4@0))) (|lb#$Range| ($Range (+ $t1@0 1) (seq.len $t4@0)))))) (=> (= (ControlFlow 0 46384) (- 0 58827)) (= (seq.nth $t4@0 $t1@0) |inline$$1_Vector_pop_back'#0'$0$e@2|)))))))))))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@0|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 46244) 46398) anon29_Then_correct) (=> (= (ControlFlow 0 46244) 46384) anon29_Else_correct)))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0) (= (ControlFlow 0 46242) 46244)) |inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|  (=> (not (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0)) (=> (and (= |inline$$1_Vector_pop_back'#0'$0$e@1| (seq.nth |inline$$1_Vector_pop_back'#0'$0$v@1| (- |inline$$1_Vector_pop_back'#0'$0$len@1| 1))) (= |inline$$1_Vector_pop_back'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| $t0@0) (|p#$Mutation_18299| $t0@0) (seq.extract |inline$$1_Vector_pop_back'#0'$0$v@1| 0 (- (- (seq.len |inline$$1_Vector_pop_back'#0'$0$v@1|) 1) 0))))) (=> (and (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@1|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 46194) 46398) anon29_Then_correct) (=> (= (ControlFlow 0 46194) 46384) anon29_Else_correct)))))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$v@1| (|v#$Mutation_18299| $t0@0)) (= |inline$$1_Vector_pop_back'#0'$0$len@1| (seq.len |inline$$1_Vector_pop_back'#0'$0$v@1|))) (and (=> (= (ControlFlow 0 46168) 46242) |inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 46168) 46194) |inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|)))))
(let ((anon25_Else_correct  (=> (and (not inline$$Lt$0$dst@1) (= (ControlFlow 0 46252) 46168)) |inline$$1_Vector_pop_back'#0'$0$anon0_correct|)))
(let ((anon24_Else$1_correct  (and (=> (= (ControlFlow 0 46059) 46577) anon25_Then_correct) (=> (= (ControlFlow 0 46059) 46252) anon25_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t1@0 inline$$Sub$0$dst@2)) (= (ControlFlow 0 46049) 46059)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $abort_flag@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@2)) (and (=> (= (ControlFlow 0 46055) (- 0 58190)) (and (<= _$t1 _$t1) (<= _$t1 inline$$Sub$0$dst@2))) (=> (and (<= _$t1 _$t1) (<= _$t1 inline$$Sub$0$dst@2)) (and (=> (= (ControlFlow 0 46055) (- 0 58203)) (= (+ inline$$Sub$0$dst@2 1) (seq.len (|v#$Mutation_18299| _$t0)))) (=> (= (+ inline$$Sub$0$dst@2 1) (seq.len (|v#$Mutation_18299| _$t0))) (and (=> (= (ControlFlow 0 46055) (- 0 58218)) (= (seq.extract (|v#$Mutation_18299| _$t0) (|lb#$Range| ($Range 0 _$t1)) (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1)))) (seq.extract $t9@0 (|lb#$Range| ($Range 0 _$t1)) (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1)))))) (=> (= (seq.extract (|v#$Mutation_18299| _$t0) (|lb#$Range| ($Range 0 _$t1)) (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1)))) (seq.extract $t9@0 (|lb#$Range| ($Range 0 _$t1)) (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))))) (and (=> (= (ControlFlow 0 46055) (- 0 58241)) (let (($range_0@@1 ($Range _$t1 _$t1)))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((k@@1 $i_1@@3))
(= (seq.nth (|v#$Mutation_18299| _$t0) k@@1) (seq.nth $t10@0 (+ k@@1 1)))))
 :qid |verifyvectorz3bpl.3469:50|
 :skolemid |52|
)))) (=> (let (($range_0@@1 ($Range _$t1 _$t1)))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@4) (let ((k@@1 $i_1@@4))
(= (seq.nth (|v#$Mutation_18299| _$t0) k@@1) (seq.nth $t10@0 (+ k@@1 1)))))
 :qid |verifyvectorz3bpl.3469:50|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 46055) (- 0 58283)) (let (($range_0@@2 ($Range (+ _$t1 1) (seq.len (|v#$Mutation_18299| _$t0)))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@5) (let ((k@@2 $i_1@@5))
(= (seq.nth (|v#$Mutation_18299| _$t0) k@@2) (seq.nth $t11@0 k@@2))))
 :qid |verifyvectorz3bpl.3475:78|
 :skolemid |53|
)))) (=> (let (($range_0@@2 ($Range (+ _$t1 1) (seq.len (|v#$Mutation_18299| _$t0)))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@6) (let ((k@@2 $i_1@@6))
(= (seq.nth (|v#$Mutation_18299| _$t0) k@@2) (seq.nth $t11@0 k@@2))))
 :qid |verifyvectorz3bpl.3475:78|
 :skolemid |53|
))) (and (=> (= (ControlFlow 0 46055) (- 0 58329)) (= (seq.nth (|v#$Mutation_18299| _$t0) _$t1) (seq.nth $t12@0 _$t1))) (=> (= (seq.nth (|v#$Mutation_18299| _$t0) _$t1) (seq.nth $t12@0 _$t1)) (=> (and (and (and (and (|$IsValid'u64'| $t1@0) (|$IsValid'u64'| $t25@0)) (and (|$IsValid'u64'| $t26@0) (|$IsValid'u64'| $t27@0))) (and (and (|$IsValid'u64'| $t28@0) (= $t0@0 ($Mutation_18299 (|l#$Mutation_18299| _$t0) (|p#$Mutation_18299| _$t0) |$temp_0'vec'#0''@1|))) (and (|$IsValid'vec'#0''| (|v#$Mutation_18299| $t0@0)) (not $abort_flag@0)))) (and (and (and (<= $t1@0 $t1@0) (<= $t1@0 inline$$Sub$0$dst@2)) (and (= (+ inline$$Sub$0$dst@2 1) (seq.len (|v#$Mutation_18299| $t0@0))) (= (seq.extract (|v#$Mutation_18299| $t0@0) (|lb#$Range| ($Range 0 $t1@0)) (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))) (seq.extract $t5@0 (|lb#$Range| ($Range 0 $t1@0)) (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))))))) (and (and (let (($range_0@@3 ($Range $t1@0 $t1@0)))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@7) (let ((k@@3 $i_1@@7))
(= (seq.nth (|v#$Mutation_18299| $t0@0) k@@3) (seq.nth $t6@0 (+ k@@3 1)))))
 :qid |verifyvectorz3bpl.3529:55|
 :skolemid |54|
))) (let (($range_0@@4 ($Range (+ $t1@0 1) (seq.len (|v#$Mutation_18299| $t0@0)))))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@8) (let ((k@@4 $i_1@@8))
(= (seq.nth (|v#$Mutation_18299| $t0@0) k@@4) (seq.nth $t7@0 k@@4))))
 :qid |verifyvectorz3bpl.3534:83|
 :skolemid |55|
)))) (and (= (seq.nth (|v#$Mutation_18299| $t0@0) $t1@0) (seq.nth $t8@0 $t1@0)) (= (ControlFlow 0 46055) 46049))))) inline$$Lt$0$anon0_correct))))))))))))))))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 45605) 47210) anon24_Then_correct) (=> (= (ControlFlow 0 45605) 46055) anon24_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< |inline$$1_Vector_length'#0'$0$l@1| 1) (= (ControlFlow 0 45603) 45605)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= 1 |inline$$1_Vector_length'#0'$0$l@1|) (=> (and (and (= inline$$Sub$0$dst@1 (- |inline$$1_Vector_length'#0'$0$l@1| 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 45555) 47210) anon24_Then_correct) (=> (= (ControlFlow 0 45555) 46055) anon24_Else_correct))))))
(let ((anon23_Else_correct  (=> (and (not inline$$Ge$0$dst@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 45611) 45603) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 45611) 45555) inline$$Sub$0$anon3_Else_correct)))))
(let ((inline$$Ge$0$anon0_correct  (=> (= inline$$Ge$0$dst@1 (>= _$t1 |inline$$1_Vector_length'#0'$0$l@1|)) (and (=> (= (ControlFlow 0 45454) 47230) anon23_Then_correct) (=> (= (ControlFlow 0 45454) 45611) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'#0'$0$l@1| |inline$$1_Vector_length'#0'$0$l@1|)) (and (= _$t1 _$t1) (= (ControlFlow 0 45460) 45454))) inline$$Ge$0$anon0_correct)))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (seq.len $t17@0)) (and (=> (= (ControlFlow 0 45384) 47244) anon22_Then_correct) (=> (= (ControlFlow 0 45384) 45460) anon22_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_18299| _$t0) ($Param 0)) (=> (and (and (|$IsValid'vec'#0''| (|v#$Mutation_18299| _$t0)) (|$IsValid'u64'| _$t1)) (and (= $t4@0 (|v#$Mutation_18299| _$t0)) (= $t5@0 (|v#$Mutation_18299| _$t0)))) (=> (and (and (and (and (= $t6@0 (|v#$Mutation_18299| _$t0)) (= $t7@0 (|v#$Mutation_18299| _$t0))) (and (= $t8@0 (|v#$Mutation_18299| _$t0)) (= $t9@0 (|v#$Mutation_18299| _$t0)))) (and (and (= $t10@0 (|v#$Mutation_18299| _$t0)) (= $t11@0 (|v#$Mutation_18299| _$t0))) (and (= $t12@0 (|v#$Mutation_18299| _$t0)) (= $t13@0 (|v#$Mutation_18299| _$t0))))) (and (and (and (= $t14@0 (|v#$Mutation_18299| _$t0)) (= $t15@0 (|v#$Mutation_18299| _$t0))) (and (= $t16@0 (|v#$Mutation_18299| _$t0)) (= |$temp_0'vec'#0''@0| (|v#$Mutation_18299| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|) (= _$t1 _$t1)) (and (= $t17@0 (|v#$Mutation_18299| _$t0)) (= (ControlFlow 0 45390) 45384))))) |inline$$1_Vector_length'#0'$0$anon0_correct|)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 57610) 45390) anon0$1_correct)))
anon0_correct)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(pop 1)
; Timed out
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Timed out

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$Sub$1$dst@2 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@2| () T@$Mutation_18299)
(declare-fun $t11@0 () (Seq |T@#0|))
(declare-fun $t12@0 () (Seq |T@#0|))
(declare-fun $t13@0 () (Seq |T@#0|))
(declare-fun inline$$Sub$1$dst@0 () Int)
(declare-fun $t21@0 () Int)
(declare-fun inline$$Sub$1$dst@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t19@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@0| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_swap'#0'$0$v@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun $t0@0 () T@$Mutation_18299)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t0@1 () T@$Mutation_18299)
(declare-fun $t4@0 () (Seq |T@#0|))
(declare-fun |$temp_0'vec'#0''@3| () (Seq |T@#0|))
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun _$t0 () T@$Mutation_18299)
(declare-fun $t8@0 () (Seq |T@#0|))
(declare-fun $t9@0 () (Seq |T@#0|))
(declare-fun $t10@0 () (Seq |T@#0|))
(declare-fun $t23@0 () Int)
(declare-fun $t24@0 () Int)
(declare-fun $t25@0 () Int)
(declare-fun $t26@0 () Int)
(declare-fun |$temp_0'vec'#0''@2| () (Seq |T@#0|))
(declare-fun $t5@0 () (Seq |T@#0|))
(declare-fun $t6@0 () (Seq |T@#0|))
(declare-fun $t7@0 () (Seq |T@#0|))
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t18@0 () Bool)
(declare-fun |$temp_0'vec'#0''@1| () (Seq |T@#0|))
(declare-fun $t14@0 () (Seq |T@#0|))
(declare-fun |$temp_0'vec'#0''@0| () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_reverse$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 59361) (let ((L9_correct  (=> (= (ControlFlow 0 49142) (- 0 60838)) false)))
(let ((anon26_Then_correct  (=> $abort_flag@3 (=> (and (= $abort_code@4 $abort_code@4) (= (ControlFlow 0 49132) 49142)) L9_correct))))
(let ((anon25_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 49156) 49142)) L9_correct))))
(let ((anon24_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 49170) 49142)) L9_correct))))
(let ((anon22_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 49184) 49142)) L9_correct))))
(let ((anon26_Else_correct  (=> (and (not $abort_flag@3) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@2)) (and (=> (= (ControlFlow 0 49118) (- 0 60677)) (= (+ inline$$AddU64$0$dst@2 inline$$Sub$1$dst@2) (- |inline$$1_Vector_length'#0'$0$l@1| 1))) (=> (= (+ inline$$AddU64$0$dst@2 inline$$Sub$1$dst@2) (- |inline$$1_Vector_length'#0'$0$l@1| 1)) (and (=> (= (ControlFlow 0 49118) (- 0 60691)) (let (($range_0 ($Range 0 inline$$AddU64$0$dst@2)))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i@@9 $i_1))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) i@@9) (seq.nth $t11@0 (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@9)))))
 :qid |verifyvectorz3bpl.4045:49|
 :skolemid |64|
)))) (=> (let (($range_0 ($Range 0 inline$$AddU64$0$dst@2)))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0 $i_1@@0) (let ((i@@9 $i_1@@0))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) i@@9) (seq.nth $t11@0 (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@9)))))
 :qid |verifyvectorz3bpl.4045:49|
 :skolemid |64|
))) (and (=> (= (ControlFlow 0 49118) (- 0 60737)) (let (($range_0@@0 ($Range 0 inline$$AddU64$0$dst@2)))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((i@@10 $i_1@@1))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@10)) (seq.nth $t12@0 i@@10))))
 :qid |verifyvectorz3bpl.4051:49|
 :skolemid |65|
)))) (=> (let (($range_0@@0 ($Range 0 inline$$AddU64$0$dst@2)))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@2) (let ((i@@10 $i_1@@2))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@10)) (seq.nth $t12@0 i@@10))))
 :qid |verifyvectorz3bpl.4051:49|
 :skolemid |65|
))) (and (=> (= (ControlFlow 0 49118) (- 0 60783)) (let (($range_0@@1 ($Range inline$$AddU64$0$dst@2 (+ inline$$Sub$1$dst@2 1))))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((j@@1 $i_1@@3))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) j@@1) (seq.nth $t13@0 j@@1))))
 :qid |verifyvectorz3bpl.4057:58|
 :skolemid |66|
)))) (=> (let (($range_0@@1 ($Range inline$$AddU64$0$dst@2 (+ inline$$Sub$1$dst@2 1))))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@4) (let ((j@@1 $i_1@@4))
(= (seq.nth (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) j@@1) (seq.nth $t13@0 j@@1))))
 :qid |verifyvectorz3bpl.4057:58|
 :skolemid |66|
))) (=> (= (ControlFlow 0 49118) (- 0 60825)) (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|)) |inline$$1_Vector_length'#0'$0$l@1|)))))))))))))
(let ((inline$$Sub$1$anon3_Then$1_correct  (=> (= $abort_code@4 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@3 true) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@0)) (and (=> (= (ControlFlow 0 48925) 49132) anon26_Then_correct) (=> (= (ControlFlow 0 48925) 49118) anon26_Else_correct))))))
(let ((inline$$Sub$1$anon3_Then_correct  (=> (and (< $t21@0 1) (= (ControlFlow 0 48923) 48925)) inline$$Sub$1$anon3_Then$1_correct)))
(let ((inline$$Sub$1$anon3_Else_correct  (=> (<= 1 $t21@0) (=> (and (and (= inline$$Sub$1$dst@1 (- $t21@0 1)) (= $abort_code@4 $abort_code@3)) (and (= $abort_flag@3 $abort_flag@2) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@1))) (and (=> (= (ControlFlow 0 48875) 49132) anon26_Then_correct) (=> (= (ControlFlow 0 48875) 49118) anon26_Else_correct))))))
(let ((anon25_Else_correct  (=> (not $abort_flag@2) (=> (and (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 48931) 48923) inline$$Sub$1$anon3_Then_correct) (=> (= (ControlFlow 0 48931) 48875) inline$$Sub$1$anon3_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 48766) 49156) anon25_Then_correct) (=> (= (ControlFlow 0 48766) 48931) anon25_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t19@0 1) $MAX_U64) (= (ControlFlow 0 48764) 48766)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t19@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t19@0 1)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 48712) 49156) anon25_Then_correct) (=> (= (ControlFlow 0 48712) 48931) anon25_Else_correct))))))
(let ((anon24_Else_correct  (=> (and (not $abort_flag@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 48772) 48764) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 48772) 48712) inline$$AddU64$0$anon3_Else_correct)))))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@0|)) (and (=> (= (ControlFlow 0 48597) 49170) anon24_Then_correct) (=> (= (ControlFlow 0 48597) 48772) anon24_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then_correct|  (=> (and (or (not (and (>= $t19@0 0) (< $t19@0 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|)))) (not (and (>= $t21@0 0) (< $t21@0 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|))))) (= (ControlFlow 0 48595) 48597)) |inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Else_correct|  (=> (not (or (not (and (>= $t19@0 0) (< $t19@0 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|)))) (not (and (>= $t21@0 0) (< $t21@0 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| $t0@0) (|p#$Mutation_18299| $t0@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| 0 (- $t21@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| $t19@0)) (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| (+ $t21@0 1) (- (seq.len |inline$$1_Vector_swap'#0'$0$v@1|) (+ $t21@0 1)))) 0 (- $t19@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| $t21@0)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| 0 (- $t21@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| $t19@0)) (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| (+ $t21@0 1) (- (seq.len |inline$$1_Vector_swap'#0'$0$v@1|) (+ $t21@0 1)))) (+ $t19@0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| 0 (- $t21@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| $t19@0)) (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| (+ $t21@0 1) (- (seq.len |inline$$1_Vector_swap'#0'$0$v@1|) (+ $t21@0 1))))) (+ $t19@0 1)))))) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 48535) 49170) anon24_Then_correct) (=> (= (ControlFlow 0 48535) 48772) anon24_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'#0'$0$v@1| (|v#$Mutation_18299| $t0@0)) (and (=> (= (ControlFlow 0 48501) 48595) |inline$$1_Vector_swap'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 48501) 48535) |inline$$1_Vector_swap'#0'$0$anon3_Else_correct|)))))
(let ((anon23_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 48603) 48501)) |inline$$1_Vector_swap'#0'$0$anon0_correct|)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 48385) (- 0 60292)) (not false)) (=> (not false) (=> (= (ControlFlow 0 48385) (- 0 60299)) (let (($range_0@@2 ($Range 0 (seq.len (|v#$Mutation_18299| $t0@1)))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@5) (let ((i@@11 $i_1@@5))
(= (seq.nth (|v#$Mutation_18299| $t0@1) i@@11) (seq.nth $t4@0 (- (- (seq.len (|v#$Mutation_18299| $t0@1)) 1) i@@11)))))
 :qid |verifyvectorz3bpl.4081:70|
 :skolemid |67|
))))))))
(let ((anon23_Else_correct  (=> (not inline$$Lt$0$dst@1) (=> (and (and (= |$temp_0'vec'#0''@3| (|v#$Mutation_18299| $t0@0)) (= |$temp_0'vec'#0''@3| |$temp_0'vec'#0''@3|)) (and (= $t0@1 $t0@0) (= (ControlFlow 0 48318) 48385))) L8_correct))))
(let ((anon22_Else$1_correct  (and (=> (= (ControlFlow 0 48302) 48603) anon23_Then_correct) (=> (= (ControlFlow 0 48302) 48318) anon23_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t19@0 $t21@0)) (= (ControlFlow 0 48292) 48302)) anon22_Else$1_correct)))
(let ((anon22_Else_correct  (=> (and (not $abort_flag@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@2)) (and (=> (= (ControlFlow 0 48298) (- 0 59859)) (= (+ 0 inline$$Sub$0$dst@2) (- |inline$$1_Vector_length'#0'$0$l@1| 1))) (=> (= (+ 0 inline$$Sub$0$dst@2) (- |inline$$1_Vector_length'#0'$0$l@1| 1)) (and (=> (= (ControlFlow 0 48298) (- 0 59873)) (let (($range_0@@3 ($Range 0 0)))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@6) (let ((i@@12 $i_1@@6))
(= (seq.nth (|v#$Mutation_18299| _$t0) i@@12) (seq.nth $t8@0 (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@12)))))
 :qid |verifyvectorz3bpl.3877:49|
 :skolemid |58|
)))) (=> (let (($range_0@@3 ($Range 0 0)))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@7) (let ((i@@12 $i_1@@7))
(= (seq.nth (|v#$Mutation_18299| _$t0) i@@12) (seq.nth $t8@0 (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@12)))))
 :qid |verifyvectorz3bpl.3877:49|
 :skolemid |58|
))) (and (=> (= (ControlFlow 0 48298) (- 0 59919)) (let (($range_0@@4 ($Range 0 0)))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@8) (let ((i@@13 $i_1@@8))
(= (seq.nth (|v#$Mutation_18299| _$t0) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@13)) (seq.nth $t9@0 i@@13))))
 :qid |verifyvectorz3bpl.3883:49|
 :skolemid |59|
)))) (=> (let (($range_0@@4 ($Range 0 0)))
(forall (($i_1@@9 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@9) (let ((i@@13 $i_1@@9))
(= (seq.nth (|v#$Mutation_18299| _$t0) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@13)) (seq.nth $t9@0 i@@13))))
 :qid |verifyvectorz3bpl.3883:49|
 :skolemid |59|
))) (and (=> (= (ControlFlow 0 48298) (- 0 59965)) (let (($range_0@@5 ($Range 0 (+ inline$$Sub$0$dst@2 1))))
(forall (($i_1@@10 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@10) (let ((j@@2 $i_1@@10))
(= (seq.nth (|v#$Mutation_18299| _$t0) j@@2) (seq.nth $t10@0 j@@2))))
 :qid |verifyvectorz3bpl.3889:58|
 :skolemid |60|
)))) (=> (let (($range_0@@5 ($Range 0 (+ inline$$Sub$0$dst@2 1))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@11) (let ((j@@2 $i_1@@11))
(= (seq.nth (|v#$Mutation_18299| _$t0) j@@2) (seq.nth $t10@0 j@@2))))
 :qid |verifyvectorz3bpl.3889:58|
 :skolemid |60|
))) (and (=> (= (ControlFlow 0 48298) (- 0 60007)) (= (seq.len (|v#$Mutation_18299| _$t0)) |inline$$1_Vector_length'#0'$0$l@1|)) (=> (= (seq.len (|v#$Mutation_18299| _$t0)) |inline$$1_Vector_length'#0'$0$l@1|) (=> (|$IsValid'u64'| $t21@0) (=> (and (|$IsValid'u64'| $t19@0) (|$IsValid'u64'| $t23@0)) (=> (and (and (|$IsValid'u64'| $t24@0) (|$IsValid'u64'| $t25@0)) (and (|$IsValid'u64'| $t26@0) (= $t0@0 ($Mutation_18299 (|l#$Mutation_18299| _$t0) (|p#$Mutation_18299| _$t0) |$temp_0'vec'#0''@2|)))) (=> (and (and (and (|$IsValid'vec'#0''| (|v#$Mutation_18299| $t0@0)) (not $abort_flag@0)) (and (= (+ $t19@0 $t21@0) (- |inline$$1_Vector_length'#0'$0$l@1| 1)) (let (($range_0@@6 ($Range 0 $t19@0)))
(forall (($i_1@@12 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@12) (let ((i@@14 $i_1@@12))
(= (seq.nth (|v#$Mutation_18299| $t0@0) i@@14) (seq.nth $t5@0 (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@14)))))
 :qid |verifyvectorz3bpl.3939:54|
 :skolemid |61|
))))) (and (and (let (($range_0@@7 ($Range 0 $t19@0)))
(forall (($i_1@@13 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@13) (let ((i@@15 $i_1@@13))
(= (seq.nth (|v#$Mutation_18299| $t0@0) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@15)) (seq.nth $t6@0 i@@15))))
 :qid |verifyvectorz3bpl.3944:54|
 :skolemid |62|
))) (let (($range_0@@8 ($Range $t19@0 (+ $t21@0 1))))
(forall (($i_1@@14 Int) ) (!  (=> ($InRange $range_0@@8 $i_1@@14) (let ((j@@3 $i_1@@14))
(= (seq.nth (|v#$Mutation_18299| $t0@0) j@@3) (seq.nth $t7@0 j@@3))))
 :qid |verifyvectorz3bpl.3949:63|
 :skolemid |63|
)))) (and (= (seq.len (|v#$Mutation_18299| $t0@0)) |inline$$1_Vector_length'#0'$0$l@1|) (= (ControlFlow 0 48298) 48292)))) inline$$Lt$0$anon0_correct)))))))))))))))))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 47842) 49184) anon22_Then_correct) (=> (= (ControlFlow 0 47842) 48298) anon22_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< |inline$$1_Vector_length'#0'$0$l@1| 1) (= (ControlFlow 0 47840) 47842)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= 1 |inline$$1_Vector_length'#0'$0$l@1|) (=> (and (and (= inline$$Sub$0$dst@1 (- |inline$$1_Vector_length'#0'$0$l@1| 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 47792) 49184) anon22_Then_correct) (=> (= (ControlFlow 0 47792) 48298) anon22_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (and (not $t18@0) (|$IsValid'u64'| 0)) (and (= 0 0) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 47848) 47840) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 47848) 47792) inline$$Sub$0$anon3_Else_correct)))))
(let ((anon21_Then_correct  (=> $t18@0 (=> (and (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18299| _$t0)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|)) (and (= $t0@1 _$t0) (= (ControlFlow 0 49198) 48385))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'#0'$0$l@1| |inline$$1_Vector_length'#0'$0$l@1|)) (and (|$IsValid'u64'| 0) (= $t18@0 (= |inline$$1_Vector_length'#0'$0$l@1| 0)))) (and (=> (= (ControlFlow 0 47685) 49198) anon21_Then_correct) (=> (= (ControlFlow 0 47685) 47848) anon21_Else_correct)))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (seq.len $t14@0)) (and (=> (= (ControlFlow 0 47651) 49212) anon20_Then_correct) (=> (= (ControlFlow 0 47651) 47685) anon20_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (and (and (= (|l#$Mutation_18299| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18299| _$t0))) (and (= $t4@0 (|v#$Mutation_18299| _$t0)) (= $t5@0 (|v#$Mutation_18299| _$t0)))) (and (and (= $t6@0 (|v#$Mutation_18299| _$t0)) (= $t7@0 (|v#$Mutation_18299| _$t0))) (and (= $t8@0 (|v#$Mutation_18299| _$t0)) (= $t9@0 (|v#$Mutation_18299| _$t0))))) (and (and (and (= $t10@0 (|v#$Mutation_18299| _$t0)) (= $t11@0 (|v#$Mutation_18299| _$t0))) (and (= $t12@0 (|v#$Mutation_18299| _$t0)) (= $t13@0 (|v#$Mutation_18299| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| (|v#$Mutation_18299| _$t0)) (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|)) (and (= $t14@0 (|v#$Mutation_18299| _$t0)) (= (ControlFlow 0 47657) 47651))))) |inline$$1_Vector_length'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 59361) 47657) anon0$1_correct)))
anon0_correct)))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(pop 1)
; Timed out
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Timed out

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_push_back'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun _$t0 () |T@#0|)
(declare-fun $t3@0 () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_empty'#0'$0$v@1| () (Seq |T@#0|))
(declare-fun $t3 () T@$Mutation_18299)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_singleton$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 60858) (let ((anon7_Else_correct  (=> (not false) (=> (and (= $t1@0 (|v#$Mutation_18299| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (= $t1@0 $t1@0)) (and (=> (= (ControlFlow 0 49642) (- 0 61046)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 49642) (- 0 61053)) (= (seq.len $t1@0) 1)) (=> (= (seq.len $t1@0) 1) (=> (= (ControlFlow 0 49642) (- 0 61063)) (= (seq.nth $t1@0 0) _$t0))))))))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_Vector_push_back'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| $t3@0) (|p#$Mutation_18299| $t3@0) (seq.++ (|v#$Mutation_18299| $t3@0) (seq.unit _$t0)))) (and (=> (= (ControlFlow 0 49582) 49656) anon7_Then_correct) (=> (= (ControlFlow 0 49582) 49642) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_empty'#0'$0$v@1| |inline$$1_Vector_empty'#0'$0$v@1|)) (and (= $t3@0 ($Mutation_18299 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'#0'$0$v@1|)) (= (ControlFlow 0 49588) 49582))) |inline$$1_Vector_push_back'#0'$0$anon0_correct|)))
(let ((anon6_Then_correct true))
(let ((|inline$$1_Vector_empty'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'#0'$0$v@1| (as seq.empty (Seq |T@#0|))) (and (=> (= (ControlFlow 0 49499) 49680) anon6_Then_correct) (=> (= (ControlFlow 0 49499) 49588) anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= (ControlFlow 0 49505) 49499)) |inline$$1_Vector_empty'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_18299| $t3)) 0) (= (ControlFlow 0 49461) 49505)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 60858) 49461) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
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
 :qid |verifyvectorz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectorz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectorz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectorz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectorz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectorz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectorz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |verifyvectorz3bpl.590:13|
 :skolemid |15|
))))
 :qid |verifyvectorz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |verifyvectorz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |verifyvectorz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |verifyvectorz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |verifyvectorz3bpl.770:13|
 :skolemid |20|
))))
 :qid |verifyvectorz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |verifyvectorz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |verifyvectorz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |verifyvectorz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |verifyvectorz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |verifyvectorz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectorz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectorz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq |T@#0|)) ) (! (let ((r@@0 (ReverseVec_14622 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14622 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4388 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |verifyvectorz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |verifyvectorz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |verifyvectorz3bpl.245:54|
 :skolemid |68|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t1 () Int)
(declare-fun $t3@0 () (Seq |T@#0|))
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@2| () |T@#0|)
(declare-fun |$temp_0'vec'#0''@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@2| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@0| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@0| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@1| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$v@1| () (Seq |T@#0|))
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@2| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@0| () T@$Mutation_18299)
(declare-fun |inline$$1_Vector_swap'#0'$0$v@1| () (Seq |T@#0|))
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@1| () T@$Mutation_18299)
(declare-fun _$t0 () T@$Mutation_18299)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t4@0 () (Seq |T@#0|))
(declare-fun |$temp_0'vec'#0''@0| () (Seq |T@#0|))
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_swap_remove$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 61096) (let ((L2_correct  (=> (= (ControlFlow 0 50615) (- 0 61779)) (>= _$t1 (seq.len $t3@0)))))
(let ((anon13_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 50599) 50615)) L2_correct))))
(let ((anon12_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 50629) 50615)) L2_correct))))
(let ((anon11_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 50643) 50615)) L2_correct))))
(let ((anon13_Else_correct  (=> (and (and (not $abort_flag@2) (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@2|)) (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|))) (and (=> (= (ControlFlow 0 50585) (- 0 61702)) (not (>= _$t1 (seq.len $t3@0)))) (=> (not (>= _$t1 (seq.len $t3@0))) (and (=> (= (ControlFlow 0 50585) (- 0 61713)) (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (- (seq.len $t3@0) 1))) (=> (= (seq.len (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (- (seq.len $t3@0) 1)) (and (=> (= (ControlFlow 0 50585) (- 0 61730)) (= (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|) (seq.extract (seq.++ (seq.extract $t3@0 0 (- _$t1 0)) (seq.unit (seq.nth $t3@0 (- (seq.len $t3@0) 1))) (seq.extract $t3@0 (+ _$t1 1) (- (seq.len $t3@0) (+ _$t1 1)))) (|lb#$Range| ($Range 0 (- (seq.len $t3@0) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t3@0) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t3@0) 1))))))) (=> (= (|v#$Mutation_18299| |inline$$1_Vector_pop_back'#0'$0$m'@2|) (seq.extract (seq.++ (seq.extract $t3@0 0 (- _$t1 0)) (seq.unit (seq.nth $t3@0 (- (seq.len $t3@0) 1))) (seq.extract $t3@0 (+ _$t1 1) (- (seq.len $t3@0) (+ _$t1 1)))) (|lb#$Range| ($Range 0 (- (seq.len $t3@0) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t3@0) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t3@0) 1)))))) (=> (= (ControlFlow 0 50585) (- 0 61765)) (= (seq.nth $t3@0 _$t1) |inline$$1_Vector_pop_back'#0'$0$e@2|)))))))))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@0|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 50465) 50599) anon13_Then_correct) (=> (= (ControlFlow 0 50465) 50585) anon13_Else_correct)))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0) (= (ControlFlow 0 50463) 50465)) |inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|  (=> (not (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0)) (=> (and (= |inline$$1_Vector_pop_back'#0'$0$e@1| (seq.nth |inline$$1_Vector_pop_back'#0'$0$v@1| (- |inline$$1_Vector_pop_back'#0'$0$len@1| 1))) (= |inline$$1_Vector_pop_back'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) (|p#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|) (seq.extract |inline$$1_Vector_pop_back'#0'$0$v@1| 0 (- (- (seq.len |inline$$1_Vector_pop_back'#0'$0$v@1|) 1) 0))))) (=> (and (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@1|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 50415) 50599) anon13_Then_correct) (=> (= (ControlFlow 0 50415) 50585) anon13_Else_correct)))))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$v@1| (|v#$Mutation_18299| |inline$$1_Vector_swap'#0'$0$m'@2|)) (= |inline$$1_Vector_pop_back'#0'$0$len@1| (seq.len |inline$$1_Vector_pop_back'#0'$0$v@1|))) (and (=> (= (ControlFlow 0 50389) 50463) |inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 50389) 50415) |inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|)))))
(let ((anon12_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 50473) 50389)) |inline$$1_Vector_pop_back'#0'$0$anon0_correct|)))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@0|)) (and (=> (= (ControlFlow 0 50270) 50629) anon12_Then_correct) (=> (= (ControlFlow 0 50270) 50473) anon12_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then_correct|  (=> (and (or (not (and (>= _$t1 0) (< _$t1 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|)))) (not (and (>= inline$$Sub$0$dst@2 0) (< inline$$Sub$0$dst@2 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|))))) (= (ControlFlow 0 50268) 50270)) |inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Else_correct|  (=> (not (or (not (and (>= _$t1 0) (< _$t1 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|)))) (not (and (>= inline$$Sub$0$dst@2 0) (< inline$$Sub$0$dst@2 (seq.len |inline$$1_Vector_swap'#0'$0$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'#0'$0$m'@1| ($Mutation_18299 (|l#$Mutation_18299| _$t0) (|p#$Mutation_18299| _$t0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| 0 (- inline$$Sub$0$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| _$t1)) (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| (+ inline$$Sub$0$dst@2 1) (- (seq.len |inline$$1_Vector_swap'#0'$0$v@1|) (+ inline$$Sub$0$dst@2 1)))) 0 (- _$t1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| inline$$Sub$0$dst@2)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| 0 (- inline$$Sub$0$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| _$t1)) (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| (+ inline$$Sub$0$dst@2 1) (- (seq.len |inline$$1_Vector_swap'#0'$0$v@1|) (+ inline$$Sub$0$dst@2 1)))) (+ _$t1 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| 0 (- inline$$Sub$0$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'#0'$0$v@1| _$t1)) (seq.extract |inline$$1_Vector_swap'#0'$0$v@1| (+ inline$$Sub$0$dst@2 1) (- (seq.len |inline$$1_Vector_swap'#0'$0$v@1|) (+ inline$$Sub$0$dst@2 1))))) (+ _$t1 1)))))) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 50208) 50629) anon12_Then_correct) (=> (= (ControlFlow 0 50208) 50473) anon12_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'#0'$0$v@1| (|v#$Mutation_18299| _$t0)) (and (=> (= (ControlFlow 0 50174) 50268) |inline$$1_Vector_swap'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 50174) 50208) |inline$$1_Vector_swap'#0'$0$anon3_Else_correct|)))))
(let ((anon11_Else_correct  (=> (not $abort_flag@0) (=> (and (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@2) (= (ControlFlow 0 50276) 50174)) |inline$$1_Vector_swap'#0'$0$anon0_correct|))))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 50040) 50643) anon11_Then_correct) (=> (= (ControlFlow 0 50040) 50276) anon11_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< |inline$$1_Vector_length'#0'$0$l@1| 1) (= (ControlFlow 0 50038) 50040)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= 1 |inline$$1_Vector_length'#0'$0$l@1|) (=> (and (and (= inline$$Sub$0$dst@1 (- |inline$$1_Vector_length'#0'$0$l@1| 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 49990) 50643) anon11_Then_correct) (=> (= (ControlFlow 0 49990) 50276) anon11_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 50046) 50038) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 50046) 49990) inline$$Sub$0$anon3_Else_correct)))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (seq.len $t4@0)) (and (=> (= (ControlFlow 0 49889) 50657) anon10_Then_correct) (=> (= (ControlFlow 0 49889) 50046) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_18299| _$t0) ($Param 0)) (=> (and (and (and (|$IsValid'vec'#0''| (|v#$Mutation_18299| _$t0)) (|$IsValid'u64'| _$t1)) (and (= $t3@0 (|v#$Mutation_18299| _$t0)) (= |$temp_0'vec'#0''@0| (|v#$Mutation_18299| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|) (= _$t1 _$t1)) (and (= $t4@0 (|v#$Mutation_18299| _$t0)) (= (ControlFlow 0 49895) 49889)))) |inline$$1_Vector_length'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 61096) 49895) anon0$1_correct)))
anon0_correct))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(pop 1)
; Timed out
