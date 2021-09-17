(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-option :ee-mode central)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$1_BitVector_BitVector 0)) ((($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| Int) (|$bit_field#$1_BitVector_BitVector| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$1_CRSN_CRSN 0)) ((($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| Int) (|$size#$1_CRSN_CRSN| Int) (|$slots#$1_CRSN_CRSN| T@$1_BitVector_BitVector) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$1_CRSN_CRSN| 0)
(declare-datatypes ((T@$Memory_24243 0)) ((($Memory_24243 (|domain#$Memory_24243| |T@[Int]Bool|) (|contents#$Memory_24243| |T@[Int]$1_CRSN_CRSN|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25311 0)) ((($Mutation_25311 (|l#$Mutation_25311| T@$Location) (|p#$Mutation_25311| (Seq Int)) (|v#$Mutation_25311| T@$1_CRSN_CRSN) ) ) ))
(declare-datatypes ((T@$Mutation_20392 0)) ((($Mutation_20392 (|l#$Mutation_20392| T@$Location) (|p#$Mutation_20392| (Seq Int)) (|v#$Mutation_20392| T@$1_BitVector_BitVector) ) ) ))
(declare-datatypes ((T@$Mutation_4512 0)) ((($Mutation_4512 (|l#$Mutation_4512| T@$Location) (|p#$Mutation_4512| (Seq Int)) (|v#$Mutation_4512| Int) ) ) ))
(declare-datatypes ((T@$Mutation_18584 0)) ((($Mutation_18584 (|l#$Mutation_18584| T@$Location) (|p#$Mutation_18584| (Seq Int)) (|v#$Mutation_18584| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_3439 0)) ((($Mutation_3439 (|l#$Mutation_3439| T@$Location) (|p#$Mutation_3439| (Seq Int)) (|v#$Mutation_3439| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_17005 0)) ((($Mutation_17005 (|l#$Mutation_17005| T@$Location) (|p#$Mutation_17005| (Seq Int)) (|v#$Mutation_17005| (Seq Bool)) ) ) ))
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
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$1_BitVector_BitVector'| (T@$1_BitVector_BitVector) Bool)
(declare-fun |$IsValid'$1_CRSN_CRSN'| (T@$1_CRSN_CRSN) Bool)
(declare-fun ReverseVec_3292 ((Seq Bool)) (Seq Bool))
(declare-fun ReverseVec_4365 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |CRSNbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |CRSNbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |CRSNbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |CRSNbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |CRSNbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |CRSNbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |CRSNbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |CRSNbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |CRSNbpl.595:13|
 :skolemid |15|
))))
 :qid |CRSNbpl.593:30|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'bool''| v@@4))
)))
(assert (forall ((v@@5 (Seq Bool)) (e Bool) ) (! (let ((i@@1 (|$IndexOfVec'bool'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |CRSNbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |CRSNbpl.608:17|
 :skolemid |18|
)))))
 :qid |CRSNbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'bool'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |CRSNbpl.775:13|
 :skolemid |20|
))))
 :qid |CRSNbpl.773:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |CRSNbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |CRSNbpl.788:17|
 :skolemid |23|
)))))
 :qid |CRSNbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |CRSNbpl.961:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |CRSNbpl.977:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |CRSNbpl.1048:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |CRSNbpl.1051:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_BitVector_BitVector) ) (! (= (|$IsValid'$1_BitVector_BitVector'| s)  (and (|$IsValid'u64'| (|$length#$1_BitVector_BitVector| s)) (|$IsValid'vec'bool''| (|$bit_field#$1_BitVector_BitVector| s))))
 :qid |CRSNbpl.1103:43|
 :skolemid |29|
 :pattern ( (|$IsValid'$1_BitVector_BitVector'| s))
)))
(assert (forall ((s@@0 T@$1_CRSN_CRSN) ) (! (= (|$IsValid'$1_CRSN_CRSN'| s@@0)  (and (and (|$IsValid'u64'| (|$min_nonce#$1_CRSN_CRSN| s@@0)) (|$IsValid'u64'| (|$size#$1_CRSN_CRSN| s@@0))) (|$IsValid'$1_BitVector_BitVector'| (|$slots#$1_CRSN_CRSN| s@@0))))
 :qid |CRSNbpl.2731:33|
 :skolemid |30|
 :pattern ( (|$IsValid'$1_CRSN_CRSN'| s@@0))
)))
(assert (forall ((v@@8 (Seq Bool)) ) (! (let ((r@@0 (ReverseVec_3292 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |CRSNbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |CRSNbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3292 v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4365 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@1))) (= (seq.nth r@@1 i@@7) (seq.nth v@@9 (- (- (seq.len v@@9) i@@7) 1))))
 :qid |CRSNbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@7))
))))
 :qid |CRSNbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4365 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |CRSNbpl.250:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t2 () Int)
(declare-fun inline$$1_BitVector_new$0$$t5@2 () (Seq Bool))
(declare-fun $abort_flag@2 () Bool)
(declare-fun $1_CRSN_CRSN_$memory () T@$Memory_24243)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_CRSN_CRSN_$memory@1 () T@$Memory_24243)
(declare-fun $t11@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun $1_CRSN_CRSN_$memory@0 () T@$Memory_24243)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_CRSN_CRSN_| (|T@[Int]$1_CRSN_CRSN| Int T@$1_CRSN_CRSN) |T@[Int]$1_CRSN_CRSN|)
(declare-fun |Select__T@[Int]$1_CRSN_CRSN_| (|T@[Int]$1_CRSN_CRSN| Int) T@$1_CRSN_CRSN)
(assert (forall ( ( ?x0 |T@[Int]$1_CRSN_CRSN|) ( ?x1 Int) ( ?x2 T@$1_CRSN_CRSN)) (! (= (|Select__T@[Int]$1_CRSN_CRSN_| (|Store__T@[Int]$1_CRSN_CRSN_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_CRSN_CRSN|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_CRSN_CRSN)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_CRSN_CRSN_| (|Store__T@[Int]$1_CRSN_CRSN_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_CRSN_CRSN_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@0 () T@$1_CRSN_CRSN)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun _$t1 () Int)
(declare-fun inline$$1_BitVector_new$0$$ret0@1 () T@$1_BitVector_BitVector)
(declare-fun inline$$Lt$1$dst@1 () Bool)
(declare-fun inline$$1_BitVector_new$0$$t16@1 () Int)
(declare-fun inline$$1_BitVector_new$0$$t5@1 () (Seq Bool))
(declare-fun inline$$1_BitVector_new$0$$t23@1 () T@$1_BitVector_BitVector)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_BitVector_new$0$$t11@1 () Int)
(declare-fun inline$$1_BitVector_new$0$$ret0@0 () T@$1_BitVector_BitVector)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun |inline$$1_Vector_push_back'bool'$0$m'@1| () T@$Mutation_17005)
(declare-fun inline$$1_BitVector_new$0$$t21@2 () T@$Mutation_17005)
(declare-fun |inline$$1_Vector_empty'bool'$0$v@1| () (Seq Bool))
(declare-fun inline$$1_BitVector_new$0$$t19@1 () Int)
(declare-fun inline$$1_BitVector_new$0$$t20@1 () Int)
(declare-fun inline$$1_BitVector_new$0$$t21@1 () T@$Mutation_17005)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun inline$$1_BitVector_new$0$$t15@0 () Int)
(declare-fun inline$$Gt$1$dst@1 () Bool)
(declare-fun inline$$1_BitVector_new$0$$t10@0 () Int)
(declare-fun inline$$1_BitVector_new$0$$t21@0 () T@$Mutation_17005)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $t22 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t18 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t14 () Int)
(declare-fun inline$$1_CRSN_has_crsn$0$$t1@1 () Bool)
(declare-fun $t9 () Int)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
; Valid
(declare-fun $t5@0 () Bool)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun _$t1@@0 () Int)
(declare-fun $t9@@0 () T@$1_CRSN_CRSN)
(declare-fun $t10 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun inline$$1_BitVector_is_index_set$0$$ret0@1 () Bool)
(declare-fun $abort_flag@9 () Bool)
(declare-fun $t4@0 () Bool)
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@9 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun |inline$$1_Vector_borrow'bool'$0$dst@2| () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun inline$$1_BitVector_is_index_set$0$$t6@1 () Int)
(declare-fun inline$$1_BitVector_is_index_set$0$$ret0@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'bool'$0$dst@0| () Bool)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun inline$$1_BitVector_is_index_set$0$$t10@1 () (Seq Bool))
(declare-fun |inline$$1_Vector_borrow'bool'$0$dst@1| () Bool)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun inline$$Lt$1$dst@1@@0 () Bool)
(declare-fun $t31@0 () T@$1_BitVector_BitVector)
(declare-fun inline$$1_BitVector_is_index_set$0$$t9@0 () Int)
(declare-fun |inline$$1_Vector_length'bool'$1$l@1| () Int)
(declare-fun inline$$1_BitVector_is_index_set$0$$t4@1 () (Seq Bool))
(declare-fun $t16@1 () T@$Mutation_25311)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun $t29@0 () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun inline$$CastU128$0$dst@1 () Int)
(declare-fun inline$$AddU128$0$dst@2 () Int)
(declare-fun inline$$Lt$0$dst@1@@0 () Bool)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$AddU128$0$dst@0 () Int)
(declare-fun inline$$CastU128$1$dst@1 () Int)
(declare-fun inline$$CastU128$2$dst@1 () Int)
(declare-fun inline$$AddU128$0$dst@1 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$CastU128$2$dst@0 () Int)
(declare-fun inline$$1_BitVector_length$0$$ret0@1 () Int)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun |inline$$1_Vector_length'bool'$0$l@1| () Int)
(declare-fun inline$$1_BitVector_length$0$$ret0@0 () Int)
(declare-fun inline$$1_BitVector_length$0$$t1@1 () (Seq Bool))
(declare-fun $t23@0 () T@$1_BitVector_BitVector)
(declare-fun inline$$CastU128$1$dst@0 () Int)
(declare-fun $t21@0 () Int)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun inline$$CastU128$0$dst@0 () Int)
(declare-fun $t17@0 () Int)
(declare-fun |$temp_0'$1_CRSN_CRSN'@0| () T@$1_CRSN_CRSN)
(declare-fun $t16 () T@$Mutation_25311)
(declare-fun $t11 () Int)
(declare-fun $t16@0 () T@$Mutation_25311)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$1_CRSN_has_crsn$0$$t1@1@@0 () Bool)
(declare-fun $t15 () Int)
(declare-fun $t7 () T@$Mutation_25311)
; Valid
(push 1)
(set-info :boogie-vc-id $1_CRSN_force_expire$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 80668) true)
))
(check-sat)
(pop 1)
; Valid
