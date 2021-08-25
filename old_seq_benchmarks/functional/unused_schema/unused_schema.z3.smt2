(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_31375 0)) ((($Memory_31375 (|domain#$Memory_31375| |T@[Int]Bool|) (|contents#$Memory_31375| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_32881 0)) ((($Memory_32881 (|domain#$Memory_32881| |T@[Int]Bool|) (|contents#$Memory_32881| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_32750 0)) ((($Memory_32750 (|domain#$Memory_32750| |T@[Int]Bool|) (|contents#$Memory_32750| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_32642 0)) ((($Memory_32642 (|domain#$Memory_32642| |T@[Int]Bool|) (|contents#$Memory_32642| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_32534 0)) ((($Memory_32534 (|domain#$Memory_32534| |T@[Int]Bool|) (|contents#$Memory_32534| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_17733 0)) (((Multiset_17733 (|v#Multiset_17733| |T@[$EventRep]Int|) (|l#Multiset_17733| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_17733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_17733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_33697 0)) ((($Mutation_33697 (|l#$Mutation_33697| T@$Location) (|p#$Mutation_33697| (Seq Int)) (|v#$Mutation_33697| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_32006 0)) ((($Mutation_32006 (|l#$Mutation_32006| T@$Location) (|p#$Mutation_32006| (Seq Int)) (|v#$Mutation_32006| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7877 0)) ((($Mutation_7877 (|l#$Mutation_7877| T@$Location) (|p#$Mutation_7877| (Seq Int)) (|v#$Mutation_7877| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6804 0)) ((($Mutation_6804 (|l#$Mutation_6804| T@$Location) (|p#$Mutation_6804| (Seq Int)) (|v#$Mutation_6804| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_25654 0)) ((($Mutation_25654 (|l#$Mutation_25654| T@$Location) (|p#$Mutation_25654| (Seq Int)) (|v#$Mutation_25654| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_24328 0)) ((($Mutation_24328 (|l#$Mutation_24328| T@$Location) (|p#$Mutation_24328| (Seq Int)) (|v#$Mutation_24328| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_23582 0)) ((($Mutation_23582 (|l#$Mutation_23582| T@$Location) (|p#$Mutation_23582| (Seq Int)) (|v#$Mutation_23582| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_22142 0)) ((($Mutation_22142 (|l#$Mutation_22142| T@$Location) (|p#$Mutation_22142| (Seq Int)) (|v#$Mutation_22142| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_21396 0)) ((($Mutation_21396 (|l#$Mutation_21396| T@$Location) (|p#$Mutation_21396| (Seq Int)) (|v#$Mutation_21396| (Seq |T@$42_TestMonomorphization_R'u64'|)) ) ) ))
(declare-datatypes ((T@$Mutation_19918 0)) ((($Mutation_19918 (|l#$Mutation_19918| T@$Location) (|p#$Mutation_19918| (Seq Int)) (|v#$Mutation_19918| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19172 0)) ((($Mutation_19172 (|l#$Mutation_19172| T@$Location) (|p#$Mutation_19172| (Seq Int)) (|v#$Mutation_19172| (Seq |T@$42_TestMonomorphization_R'address'|)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| ((Seq |T@$42_TestMonomorphization_R'address'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| ((Seq |T@$42_TestMonomorphization_R'address'|) |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| ((Seq |T@$42_TestMonomorphization_R'u64'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| ((Seq |T@$42_TestMonomorphization_R'u64'|) |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsValid'vec'vec'u64'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u64''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle) T@Multiset_17733)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun ReverseVec_14952 ((Seq |T@$42_TestMonomorphization_R'address'|)) (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun ReverseVec_7730 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_15149 ((Seq |T@$42_TestMonomorphization_R'u64'|)) (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun ReverseVec_15346 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_6657 ((Seq Bool)) (Seq Bool))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_17733| |T@[$1_Event_EventHandle]Multiset_17733|) |T@[$1_Event_EventHandle]Multiset_17733|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |unusedschemaz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |unusedschemaz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |unusedschemaz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |unusedschemaz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |unusedschemaz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |unusedschemaz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestMonomorphization_R'address''| (seq.nth v@@4 i@@0)))
 :qid |unusedschemaz3bpl.590:13|
 :skolemid |15|
))))
 :qid |unusedschemaz3bpl.588:61|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@$42_TestMonomorphization_R'address'|)) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |unusedschemaz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |unusedschemaz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |unusedschemaz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$42_TestMonomorphization_R'u64''| (seq.nth v@@6 i@@3)))
 :qid |unusedschemaz3bpl.770:13|
 :skolemid |20|
))))
 :qid |unusedschemaz3bpl.768:57|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 (Seq |T@$42_TestMonomorphization_R'u64'|)) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@4 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |unusedschemaz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |unusedschemaz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |unusedschemaz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'vec'u64''| (seq.nth v@@8 i@@6)))
 :qid |unusedschemaz3bpl.950:13|
 :skolemid |25|
))))
 :qid |unusedschemaz3bpl.948:34|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 (Seq (Seq Int))) (e@@1 (Seq Int)) ) (! (let ((i@@7 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |unusedschemaz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |unusedschemaz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |unusedschemaz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) true)
 :qid |unusedschemaz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |unusedschemaz3bpl.1128:30|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 (Seq Bool)) (e@@2 Bool) ) (! (let ((i@@10 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |unusedschemaz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |unusedschemaz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |unusedschemaz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |unusedschemaz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |unusedschemaz3bpl.1308:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |unusedschemaz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |unusedschemaz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |unusedschemaz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u64'| (seq.nth v@@14 i@@15)))
 :qid |unusedschemaz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |unusedschemaz3bpl.1488:29|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |unusedschemaz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |unusedschemaz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |unusedschemaz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |unusedschemaz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |unusedschemaz3bpl.1668:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |unusedschemaz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |unusedschemaz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |unusedschemaz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |unusedschemaz3bpl.1856:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |unusedschemaz3bpl.1872:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |unusedschemaz3bpl.1939:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |unusedschemaz3bpl.1942:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |unusedschemaz3bpl.1969:15|
 :skolemid |54|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |unusedschemaz3bpl.1974:15|
 :skolemid |55|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |unusedschemaz3bpl.1996:15|
 :skolemid |56|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |unusedschemaz3bpl.2001:15|
 :skolemid |57|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |unusedschemaz3bpl.2015:15|
 :skolemid |58|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_17733| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream) v@@21) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |unusedschemaz3bpl.2103:69|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@3 T@$42_TestMonomorphization_E) (v2@@3 T@$42_TestMonomorphization_E) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3)))
 :qid |unusedschemaz3bpl.2109:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |unusedschemaz3bpl.2163:15|
 :skolemid |63|
)))
(assert (forall ((addr Int) ) (! true
 :qid |unusedschemaz3bpl.2167:15|
 :skolemid |64|
)))
(assert (forall ((s@@0 T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s@@0) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s@@0)))
 :qid |unusedschemaz3bpl.2182:47|
 :skolemid |65|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1)  (and true true))
 :qid |unusedschemaz3bpl.2198:53|
 :skolemid |66|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@2)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@2))))
 :qid |unusedschemaz3bpl.2216:52|
 :skolemid |67|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@3)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@3)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@3))))
 :qid |unusedschemaz3bpl.2234:56|
 :skolemid |68|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4)  (and true true))
 :qid |unusedschemaz3bpl.2252:51|
 :skolemid |69|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4))
)))
(assert (forall ((v@@22 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (let ((r@@3 (ReverseVec_14952 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@22 (- (- (seq.len v@@22) i@@21) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14952 v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@4 (ReverseVec_7730 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@23 (- (- (seq.len v@@23) i@@22) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7730 v@@23))
)))
(assert (forall ((v@@24 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (let ((r@@5 (ReverseVec_15149 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@5))) (= (seq.nth r@@5 i@@23) (seq.nth v@@24 (- (- (seq.len v@@24) i@@23) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@23))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15149 v@@24))
)))
(assert (forall ((v@@25 (Seq (Seq Int))) ) (! (let ((r@@6 (ReverseVec_15346 v@@25)))
 (and (= (seq.len r@@6) (seq.len v@@25)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@6))) (= (seq.nth r@@6 i@@24) (seq.nth v@@25 (- (- (seq.len v@@25) i@@24) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@24))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15346 v@@25))
)))
(assert (forall ((v@@26 (Seq Bool)) ) (! (let ((r@@7 (ReverseVec_6657 v@@26)))
 (and (= (seq.len r@@7) (seq.len v@@26)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@7))) (= (seq.nth r@@7 i@@25) (seq.nth v@@26 (- (- (seq.len v@@26) i@@25) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@25))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6657 v@@26))
)))
(assert (forall ((|l#0| Bool) (i@@26 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26) |l#0|)
 :qid |unusedschemaz3bpl.245:54|
 :skolemid |73|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_17733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_17733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))))
(Multiset_17733 (|lambda#3| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0)) (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |unusedschemaz3bpl.2072:13|
 :skolemid |74|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@27)))
 :qid |unusedschemaz3bpl.124:29|
 :skolemid |75|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$42_TestMonomorphization_R'u64'_$memory| () T@$Memory_32642)
(declare-fun _$t0 () T@$signer)
(declare-fun |$42_TestMonomorphization_R'u64'_$memory@1| () T@$Memory_32642)
(declare-fun $abort_code@1 () Int)
(declare-fun |$42_TestMonomorphization_R'u64'_$memory@0| () T@$Memory_32642)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestMonomorphization_R'u64'|) ( ?x1 Int) ( ?x2 |T@$42_TestMonomorphization_R'u64'|)) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|Store__T@[Int]$42_TestMonomorphization_R'u64'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestMonomorphization_R'u64'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$42_TestMonomorphization_R'u64'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|Store__T@[Int]$42_TestMonomorphization_R'u64'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t3@0 () |T@$42_TestMonomorphization_R'u64'|)
(declare-fun $abort_code@0 () Int)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_create_R$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 40879) (let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 37520) (- 0 41094)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_32642| |$42_TestMonomorphization_R'u64'_$memory|) (|$addr#$signer| _$t0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_32642| |$42_TestMonomorphization_R'u64'_$memory|) (|$addr#$signer| _$t0))) (=> (= (ControlFlow 0 37520) (- 0 41105)) (|Select__T@[Int]Bool_| (|domain#$Memory_32642| |$42_TestMonomorphization_R'u64'_$memory@1|) (|$addr#$signer| _$t0))))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 37548) (- 0 41074))) (|Select__T@[Int]Bool_| (|domain#$Memory_32642| |$42_TestMonomorphization_R'u64'_$memory|) (|$addr#$signer| _$t0))))))
(let ((anon7_Then$1_correct  (=> (= |$42_TestMonomorphization_R'u64'_$memory@1| |$42_TestMonomorphization_R'u64'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 37600) 37548) anon8_Then_correct) (=> (= (ControlFlow 0 37600) 37520) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_32642| |$42_TestMonomorphization_R'u64'_$memory|) (|$addr#$signer| _$t0)) (= (ControlFlow 0 37598) 37600)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_32642| |$42_TestMonomorphization_R'u64'_$memory|) (|$addr#$signer| _$t0))) (=> (and (and (= |$42_TestMonomorphization_R'u64'_$memory@0| ($Memory_32642 (|Store__T@[Int]Bool_| (|domain#$Memory_32642| |$42_TestMonomorphization_R'u64'_$memory|) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$42_TestMonomorphization_R'u64'_| (|contents#$Memory_32642| |$42_TestMonomorphization_R'u64'_$memory|) (|$addr#$signer| _$t0) $t3@0))) (= |$42_TestMonomorphization_R'u64'_$memory@1| |$42_TestMonomorphization_R'u64'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 37488) 37548) anon8_Then_correct) (=> (= (ControlFlow 0 37488) 37520) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|contents#$Memory_32642| |$42_TestMonomorphization_R'u64'_$memory|) $a_0)))
(|$IsValid'$42_TestMonomorphization_R'u64''| $rsc))
 :qid |unusedschemaz3bpl.2283:20|
 :skolemid |70|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|contents#$Memory_32642| |$42_TestMonomorphization_R'u64'_$memory|) $a_0))
))) (=> (and (and (= _$t0 _$t0) (|$IsValid'u64'| 1)) (and (|$IsValid'u64'| 2) (= $t3@0 (|$42_TestMonomorphization_R'u64'| 1 2)))) (and (=> (= (ControlFlow 0 37466) 37598) anon7_Then_correct) (=> (= (ControlFlow 0 37466) 37488) anon7_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_17733| stream@@0) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@0) v@@28) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
))) (= (ControlFlow 0 37398) 37466)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 40879) 37398) inline$$InitEventStore$0$anon0_correct)))
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
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_31375 0)) ((($Memory_31375 (|domain#$Memory_31375| |T@[Int]Bool|) (|contents#$Memory_31375| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_32881 0)) ((($Memory_32881 (|domain#$Memory_32881| |T@[Int]Bool|) (|contents#$Memory_32881| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_32750 0)) ((($Memory_32750 (|domain#$Memory_32750| |T@[Int]Bool|) (|contents#$Memory_32750| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_32642 0)) ((($Memory_32642 (|domain#$Memory_32642| |T@[Int]Bool|) (|contents#$Memory_32642| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_32534 0)) ((($Memory_32534 (|domain#$Memory_32534| |T@[Int]Bool|) (|contents#$Memory_32534| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_17733 0)) (((Multiset_17733 (|v#Multiset_17733| |T@[$EventRep]Int|) (|l#Multiset_17733| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_17733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_17733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_33697 0)) ((($Mutation_33697 (|l#$Mutation_33697| T@$Location) (|p#$Mutation_33697| (Seq Int)) (|v#$Mutation_33697| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_32006 0)) ((($Mutation_32006 (|l#$Mutation_32006| T@$Location) (|p#$Mutation_32006| (Seq Int)) (|v#$Mutation_32006| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7877 0)) ((($Mutation_7877 (|l#$Mutation_7877| T@$Location) (|p#$Mutation_7877| (Seq Int)) (|v#$Mutation_7877| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6804 0)) ((($Mutation_6804 (|l#$Mutation_6804| T@$Location) (|p#$Mutation_6804| (Seq Int)) (|v#$Mutation_6804| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_25654 0)) ((($Mutation_25654 (|l#$Mutation_25654| T@$Location) (|p#$Mutation_25654| (Seq Int)) (|v#$Mutation_25654| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_24328 0)) ((($Mutation_24328 (|l#$Mutation_24328| T@$Location) (|p#$Mutation_24328| (Seq Int)) (|v#$Mutation_24328| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_23582 0)) ((($Mutation_23582 (|l#$Mutation_23582| T@$Location) (|p#$Mutation_23582| (Seq Int)) (|v#$Mutation_23582| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_22142 0)) ((($Mutation_22142 (|l#$Mutation_22142| T@$Location) (|p#$Mutation_22142| (Seq Int)) (|v#$Mutation_22142| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_21396 0)) ((($Mutation_21396 (|l#$Mutation_21396| T@$Location) (|p#$Mutation_21396| (Seq Int)) (|v#$Mutation_21396| (Seq |T@$42_TestMonomorphization_R'u64'|)) ) ) ))
(declare-datatypes ((T@$Mutation_19918 0)) ((($Mutation_19918 (|l#$Mutation_19918| T@$Location) (|p#$Mutation_19918| (Seq Int)) (|v#$Mutation_19918| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19172 0)) ((($Mutation_19172 (|l#$Mutation_19172| T@$Location) (|p#$Mutation_19172| (Seq Int)) (|v#$Mutation_19172| (Seq |T@$42_TestMonomorphization_R'address'|)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| ((Seq |T@$42_TestMonomorphization_R'address'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| ((Seq |T@$42_TestMonomorphization_R'address'|) |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| ((Seq |T@$42_TestMonomorphization_R'u64'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| ((Seq |T@$42_TestMonomorphization_R'u64'|) |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsValid'vec'vec'u64'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u64''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle) T@Multiset_17733)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun ReverseVec_14952 ((Seq |T@$42_TestMonomorphization_R'address'|)) (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun ReverseVec_7730 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_15149 ((Seq |T@$42_TestMonomorphization_R'u64'|)) (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun ReverseVec_15346 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_6657 ((Seq Bool)) (Seq Bool))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_17733| |T@[$1_Event_EventHandle]Multiset_17733|) |T@[$1_Event_EventHandle]Multiset_17733|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |unusedschemaz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |unusedschemaz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |unusedschemaz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |unusedschemaz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |unusedschemaz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |unusedschemaz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestMonomorphization_R'address''| (seq.nth v@@4 i@@0)))
 :qid |unusedschemaz3bpl.590:13|
 :skolemid |15|
))))
 :qid |unusedschemaz3bpl.588:61|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@$42_TestMonomorphization_R'address'|)) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |unusedschemaz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |unusedschemaz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |unusedschemaz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$42_TestMonomorphization_R'u64''| (seq.nth v@@6 i@@3)))
 :qid |unusedschemaz3bpl.770:13|
 :skolemid |20|
))))
 :qid |unusedschemaz3bpl.768:57|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 (Seq |T@$42_TestMonomorphization_R'u64'|)) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@4 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |unusedschemaz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |unusedschemaz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |unusedschemaz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'vec'u64''| (seq.nth v@@8 i@@6)))
 :qid |unusedschemaz3bpl.950:13|
 :skolemid |25|
))))
 :qid |unusedschemaz3bpl.948:34|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 (Seq (Seq Int))) (e@@1 (Seq Int)) ) (! (let ((i@@7 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |unusedschemaz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |unusedschemaz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |unusedschemaz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) true)
 :qid |unusedschemaz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |unusedschemaz3bpl.1128:30|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 (Seq Bool)) (e@@2 Bool) ) (! (let ((i@@10 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |unusedschemaz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |unusedschemaz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |unusedschemaz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |unusedschemaz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |unusedschemaz3bpl.1308:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |unusedschemaz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |unusedschemaz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |unusedschemaz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u64'| (seq.nth v@@14 i@@15)))
 :qid |unusedschemaz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |unusedschemaz3bpl.1488:29|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |unusedschemaz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |unusedschemaz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |unusedschemaz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |unusedschemaz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |unusedschemaz3bpl.1668:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |unusedschemaz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |unusedschemaz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |unusedschemaz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |unusedschemaz3bpl.1856:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |unusedschemaz3bpl.1872:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |unusedschemaz3bpl.1939:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |unusedschemaz3bpl.1942:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |unusedschemaz3bpl.1969:15|
 :skolemid |54|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |unusedschemaz3bpl.1974:15|
 :skolemid |55|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |unusedschemaz3bpl.1996:15|
 :skolemid |56|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |unusedschemaz3bpl.2001:15|
 :skolemid |57|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |unusedschemaz3bpl.2015:15|
 :skolemid |58|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_17733| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream) v@@21) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |unusedschemaz3bpl.2103:69|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@3 T@$42_TestMonomorphization_E) (v2@@3 T@$42_TestMonomorphization_E) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3)))
 :qid |unusedschemaz3bpl.2109:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |unusedschemaz3bpl.2163:15|
 :skolemid |63|
)))
(assert (forall ((addr Int) ) (! true
 :qid |unusedschemaz3bpl.2167:15|
 :skolemid |64|
)))
(assert (forall ((s@@0 T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s@@0) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s@@0)))
 :qid |unusedschemaz3bpl.2182:47|
 :skolemid |65|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1)  (and true true))
 :qid |unusedschemaz3bpl.2198:53|
 :skolemid |66|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@2)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@2))))
 :qid |unusedschemaz3bpl.2216:52|
 :skolemid |67|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@3)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@3)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@3))))
 :qid |unusedschemaz3bpl.2234:56|
 :skolemid |68|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4)  (and true true))
 :qid |unusedschemaz3bpl.2252:51|
 :skolemid |69|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4))
)))
(assert (forall ((v@@22 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (let ((r@@3 (ReverseVec_14952 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@22 (- (- (seq.len v@@22) i@@21) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14952 v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@4 (ReverseVec_7730 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@23 (- (- (seq.len v@@23) i@@22) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7730 v@@23))
)))
(assert (forall ((v@@24 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (let ((r@@5 (ReverseVec_15149 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@5))) (= (seq.nth r@@5 i@@23) (seq.nth v@@24 (- (- (seq.len v@@24) i@@23) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@23))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15149 v@@24))
)))
(assert (forall ((v@@25 (Seq (Seq Int))) ) (! (let ((r@@6 (ReverseVec_15346 v@@25)))
 (and (= (seq.len r@@6) (seq.len v@@25)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@6))) (= (seq.nth r@@6 i@@24) (seq.nth v@@25 (- (- (seq.len v@@25) i@@24) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@24))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15346 v@@25))
)))
(assert (forall ((v@@26 (Seq Bool)) ) (! (let ((r@@7 (ReverseVec_6657 v@@26)))
 (and (= (seq.len r@@7) (seq.len v@@26)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@7))) (= (seq.nth r@@7 i@@25) (seq.nth v@@26 (- (- (seq.len v@@26) i@@25) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@25))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6657 v@@26))
)))
(assert (forall ((|l#0| Bool) (i@@26 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26) |l#0|)
 :qid |unusedschemaz3bpl.245:54|
 :skolemid |73|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_17733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_17733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))))
(Multiset_17733 (|lambda#3| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0)) (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |unusedschemaz3bpl.2072:13|
 :skolemid |74|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@27)))
 :qid |unusedschemaz3bpl.124:29|
 :skolemid |75|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$42_TestMonomorphization_R'#0'_$memory| () T@$Memory_32881)
(declare-fun _$t0 () T@$signer)
(declare-fun |$42_TestMonomorphization_R'#0'_$memory@1| () T@$Memory_32881)
(declare-fun $abort_code@1 () Int)
(declare-fun |$42_TestMonomorphization_R'#0'_$memory@0| () T@$Memory_32881)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestMonomorphization_R'#0'_| (|T@[Int]$42_TestMonomorphization_R'#0'| Int |T@$42_TestMonomorphization_R'#0'|) |T@[Int]$42_TestMonomorphization_R'#0'|)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'#0'_| (|T@[Int]$42_TestMonomorphization_R'#0'| Int) |T@$42_TestMonomorphization_R'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestMonomorphization_R'#0'|) ( ?x1 Int) ( ?x2 |T@$42_TestMonomorphization_R'#0'|)) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'#0'_| (|Store__T@[Int]$42_TestMonomorphization_R'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestMonomorphization_R'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$42_TestMonomorphization_R'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestMonomorphization_R'#0'_| (|Store__T@[Int]$42_TestMonomorphization_R'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestMonomorphization_R'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t3@0 () |T@$42_TestMonomorphization_R'#0'|)
(declare-fun $abort_code@0 () Int)
(declare-fun _$t1 () |T@#0|)
(declare-fun _$t2 () |T@#0|)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_create_R_generic$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 41156) (let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 37819) (- 0 41381)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_32881| |$42_TestMonomorphization_R'#0'_$memory|) (|$addr#$signer| _$t0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_32881| |$42_TestMonomorphization_R'#0'_$memory|) (|$addr#$signer| _$t0))) (=> (= (ControlFlow 0 37819) (- 0 41392)) (|Select__T@[Int]Bool_| (|domain#$Memory_32881| |$42_TestMonomorphization_R'#0'_$memory@1|) (|$addr#$signer| _$t0))))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 37847) (- 0 41361))) (|Select__T@[Int]Bool_| (|domain#$Memory_32881| |$42_TestMonomorphization_R'#0'_$memory|) (|$addr#$signer| _$t0))))))
(let ((anon7_Then$1_correct  (=> (= |$42_TestMonomorphization_R'#0'_$memory@1| |$42_TestMonomorphization_R'#0'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 37899) 37847) anon8_Then_correct) (=> (= (ControlFlow 0 37899) 37819) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_32881| |$42_TestMonomorphization_R'#0'_$memory|) (|$addr#$signer| _$t0)) (= (ControlFlow 0 37897) 37899)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_32881| |$42_TestMonomorphization_R'#0'_$memory|) (|$addr#$signer| _$t0))) (=> (and (and (= |$42_TestMonomorphization_R'#0'_$memory@0| ($Memory_32881 (|Store__T@[Int]Bool_| (|domain#$Memory_32881| |$42_TestMonomorphization_R'#0'_$memory|) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$42_TestMonomorphization_R'#0'_| (|contents#$Memory_32881| |$42_TestMonomorphization_R'#0'_$memory|) (|$addr#$signer| _$t0) $t3@0))) (= |$42_TestMonomorphization_R'#0'_$memory@1| |$42_TestMonomorphization_R'#0'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 37787) 37847) anon8_Then_correct) (=> (= (ControlFlow 0 37787) 37819) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestMonomorphization_R'#0'_| (|contents#$Memory_32881| |$42_TestMonomorphization_R'#0'_$memory|) $a_0)))
(|$IsValid'$42_TestMonomorphization_R'#0''| $rsc))
 :qid |unusedschemaz3bpl.2381:20|
 :skolemid |71|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'#0'_| (|contents#$Memory_32881| |$42_TestMonomorphization_R'#0'_$memory|) $a_0))
))) (=> (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t3@0 (|$42_TestMonomorphization_R'#0'| _$t1 _$t2)))) (and (=> (= (ControlFlow 0 37765) 37897) anon7_Then_correct) (=> (= (ControlFlow 0 37765) 37787) anon7_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_17733| stream@@0) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@0) v@@28) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
))) (= (ControlFlow 0 37689) 37765)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 41156) 37689) inline$$InitEventStore$0$anon0_correct)))
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
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_31375 0)) ((($Memory_31375 (|domain#$Memory_31375| |T@[Int]Bool|) (|contents#$Memory_31375| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_32881 0)) ((($Memory_32881 (|domain#$Memory_32881| |T@[Int]Bool|) (|contents#$Memory_32881| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_32750 0)) ((($Memory_32750 (|domain#$Memory_32750| |T@[Int]Bool|) (|contents#$Memory_32750| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_32642 0)) ((($Memory_32642 (|domain#$Memory_32642| |T@[Int]Bool|) (|contents#$Memory_32642| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_32534 0)) ((($Memory_32534 (|domain#$Memory_32534| |T@[Int]Bool|) (|contents#$Memory_32534| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_17733 0)) (((Multiset_17733 (|v#Multiset_17733| |T@[$EventRep]Int|) (|l#Multiset_17733| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_17733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_17733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_33697 0)) ((($Mutation_33697 (|l#$Mutation_33697| T@$Location) (|p#$Mutation_33697| (Seq Int)) (|v#$Mutation_33697| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_32006 0)) ((($Mutation_32006 (|l#$Mutation_32006| T@$Location) (|p#$Mutation_32006| (Seq Int)) (|v#$Mutation_32006| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7877 0)) ((($Mutation_7877 (|l#$Mutation_7877| T@$Location) (|p#$Mutation_7877| (Seq Int)) (|v#$Mutation_7877| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6804 0)) ((($Mutation_6804 (|l#$Mutation_6804| T@$Location) (|p#$Mutation_6804| (Seq Int)) (|v#$Mutation_6804| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_25654 0)) ((($Mutation_25654 (|l#$Mutation_25654| T@$Location) (|p#$Mutation_25654| (Seq Int)) (|v#$Mutation_25654| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_24328 0)) ((($Mutation_24328 (|l#$Mutation_24328| T@$Location) (|p#$Mutation_24328| (Seq Int)) (|v#$Mutation_24328| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_23582 0)) ((($Mutation_23582 (|l#$Mutation_23582| T@$Location) (|p#$Mutation_23582| (Seq Int)) (|v#$Mutation_23582| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_22142 0)) ((($Mutation_22142 (|l#$Mutation_22142| T@$Location) (|p#$Mutation_22142| (Seq Int)) (|v#$Mutation_22142| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_21396 0)) ((($Mutation_21396 (|l#$Mutation_21396| T@$Location) (|p#$Mutation_21396| (Seq Int)) (|v#$Mutation_21396| (Seq |T@$42_TestMonomorphization_R'u64'|)) ) ) ))
(declare-datatypes ((T@$Mutation_19918 0)) ((($Mutation_19918 (|l#$Mutation_19918| T@$Location) (|p#$Mutation_19918| (Seq Int)) (|v#$Mutation_19918| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19172 0)) ((($Mutation_19172 (|l#$Mutation_19172| T@$Location) (|p#$Mutation_19172| (Seq Int)) (|v#$Mutation_19172| (Seq |T@$42_TestMonomorphization_R'address'|)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| ((Seq |T@$42_TestMonomorphization_R'address'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| ((Seq |T@$42_TestMonomorphization_R'address'|) |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| ((Seq |T@$42_TestMonomorphization_R'u64'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| ((Seq |T@$42_TestMonomorphization_R'u64'|) |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsValid'vec'vec'u64'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u64''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle) T@Multiset_17733)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun ReverseVec_14952 ((Seq |T@$42_TestMonomorphization_R'address'|)) (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun ReverseVec_7730 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_15149 ((Seq |T@$42_TestMonomorphization_R'u64'|)) (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun ReverseVec_15346 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_6657 ((Seq Bool)) (Seq Bool))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_17733| |T@[$1_Event_EventHandle]Multiset_17733|) |T@[$1_Event_EventHandle]Multiset_17733|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |unusedschemaz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |unusedschemaz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |unusedschemaz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |unusedschemaz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |unusedschemaz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |unusedschemaz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestMonomorphization_R'address''| (seq.nth v@@4 i@@0)))
 :qid |unusedschemaz3bpl.590:13|
 :skolemid |15|
))))
 :qid |unusedschemaz3bpl.588:61|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@$42_TestMonomorphization_R'address'|)) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |unusedschemaz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |unusedschemaz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |unusedschemaz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$42_TestMonomorphization_R'u64''| (seq.nth v@@6 i@@3)))
 :qid |unusedschemaz3bpl.770:13|
 :skolemid |20|
))))
 :qid |unusedschemaz3bpl.768:57|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 (Seq |T@$42_TestMonomorphization_R'u64'|)) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@4 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |unusedschemaz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |unusedschemaz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |unusedschemaz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'vec'u64''| (seq.nth v@@8 i@@6)))
 :qid |unusedschemaz3bpl.950:13|
 :skolemid |25|
))))
 :qid |unusedschemaz3bpl.948:34|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 (Seq (Seq Int))) (e@@1 (Seq Int)) ) (! (let ((i@@7 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |unusedschemaz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |unusedschemaz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |unusedschemaz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) true)
 :qid |unusedschemaz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |unusedschemaz3bpl.1128:30|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 (Seq Bool)) (e@@2 Bool) ) (! (let ((i@@10 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |unusedschemaz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |unusedschemaz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |unusedschemaz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |unusedschemaz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |unusedschemaz3bpl.1308:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |unusedschemaz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |unusedschemaz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |unusedschemaz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u64'| (seq.nth v@@14 i@@15)))
 :qid |unusedschemaz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |unusedschemaz3bpl.1488:29|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |unusedschemaz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |unusedschemaz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |unusedschemaz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |unusedschemaz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |unusedschemaz3bpl.1668:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |unusedschemaz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |unusedschemaz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |unusedschemaz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |unusedschemaz3bpl.1856:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |unusedschemaz3bpl.1872:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |unusedschemaz3bpl.1939:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |unusedschemaz3bpl.1942:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |unusedschemaz3bpl.1969:15|
 :skolemid |54|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |unusedschemaz3bpl.1974:15|
 :skolemid |55|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |unusedschemaz3bpl.1996:15|
 :skolemid |56|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |unusedschemaz3bpl.2001:15|
 :skolemid |57|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |unusedschemaz3bpl.2015:15|
 :skolemid |58|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_17733| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream) v@@21) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |unusedschemaz3bpl.2103:69|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@3 T@$42_TestMonomorphization_E) (v2@@3 T@$42_TestMonomorphization_E) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3)))
 :qid |unusedschemaz3bpl.2109:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |unusedschemaz3bpl.2163:15|
 :skolemid |63|
)))
(assert (forall ((addr Int) ) (! true
 :qid |unusedschemaz3bpl.2167:15|
 :skolemid |64|
)))
(assert (forall ((s@@0 T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s@@0) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s@@0)))
 :qid |unusedschemaz3bpl.2182:47|
 :skolemid |65|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1)  (and true true))
 :qid |unusedschemaz3bpl.2198:53|
 :skolemid |66|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@2)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@2))))
 :qid |unusedschemaz3bpl.2216:52|
 :skolemid |67|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@3)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@3)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@3))))
 :qid |unusedschemaz3bpl.2234:56|
 :skolemid |68|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4)  (and true true))
 :qid |unusedschemaz3bpl.2252:51|
 :skolemid |69|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4))
)))
(assert (forall ((v@@22 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (let ((r@@3 (ReverseVec_14952 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@22 (- (- (seq.len v@@22) i@@21) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14952 v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@4 (ReverseVec_7730 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@23 (- (- (seq.len v@@23) i@@22) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7730 v@@23))
)))
(assert (forall ((v@@24 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (let ((r@@5 (ReverseVec_15149 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@5))) (= (seq.nth r@@5 i@@23) (seq.nth v@@24 (- (- (seq.len v@@24) i@@23) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@23))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15149 v@@24))
)))
(assert (forall ((v@@25 (Seq (Seq Int))) ) (! (let ((r@@6 (ReverseVec_15346 v@@25)))
 (and (= (seq.len r@@6) (seq.len v@@25)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@6))) (= (seq.nth r@@6 i@@24) (seq.nth v@@25 (- (- (seq.len v@@25) i@@24) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@24))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15346 v@@25))
)))
(assert (forall ((v@@26 (Seq Bool)) ) (! (let ((r@@7 (ReverseVec_6657 v@@26)))
 (and (= (seq.len r@@7) (seq.len v@@26)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@7))) (= (seq.nth r@@7 i@@25) (seq.nth v@@26 (- (- (seq.len v@@26) i@@25) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@25))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6657 v@@26))
)))
(assert (forall ((|l#0| Bool) (i@@26 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26) |l#0|)
 :qid |unusedschemaz3bpl.245:54|
 :skolemid |73|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_17733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_17733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))))
(Multiset_17733 (|lambda#3| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0)) (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |unusedschemaz3bpl.2072:13|
 :skolemid |74|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@27)))
 :qid |unusedschemaz3bpl.124:29|
 :skolemid |75|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t4@0 () T@$Mutation_6804)
(declare-fun $t2@1 () T@$Mutation_33697)
(declare-fun $t4@1 () T@$Mutation_6804)
(declare-fun $t2@2 () T@$Mutation_33697)
(declare-fun |$42_TestMonomorphization_R'bool'_$memory@0| () T@$Memory_32534)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |$42_TestMonomorphization_R'bool'_$memory| () T@$Memory_32534)
(declare-fun |Store__T@[Int]$42_TestMonomorphization_R'bool'_| (|T@[Int]$42_TestMonomorphization_R'bool'| Int |T@$42_TestMonomorphization_R'bool'|) |T@[Int]$42_TestMonomorphization_R'bool'|)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|T@[Int]$42_TestMonomorphization_R'bool'| Int) |T@$42_TestMonomorphization_R'bool'|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestMonomorphization_R'bool'|) ( ?x1 Int) ( ?x2 |T@$42_TestMonomorphization_R'bool'|)) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|Store__T@[Int]$42_TestMonomorphization_R'bool'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestMonomorphization_R'bool'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$42_TestMonomorphization_R'bool'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|Store__T@[Int]$42_TestMonomorphization_R'bool'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () Int)
(declare-fun $t2 () T@$Mutation_33697)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2@0 () T@$Mutation_33697)
(declare-fun $abort_code@0 () Int)
(declare-fun $es () T@$EventStore)
(declare-fun $t4 () T@$Mutation_6804)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_mutate_R$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 41406) (let ((anon8_Else_correct  (=> (and (not $abort_flag@0) (= $t4@0 ($Mutation_6804 (|l#$Mutation_33697| $t2@1) (seq.++ (|p#$Mutation_33697| $t2@1) (seq.unit 1)) (|$y#$42_TestMonomorphization_R'bool'| (|v#$Mutation_33697| $t2@1))))) (=> (and (and (= $t4@1 ($Mutation_6804 (|l#$Mutation_6804| $t4@0) (|p#$Mutation_6804| $t4@0) false)) (= $t2@2 ($Mutation_33697 (|l#$Mutation_33697| $t2@1) (|p#$Mutation_33697| $t2@1) (|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| (|v#$Mutation_33697| $t2@1)) (|v#$Mutation_6804| $t4@1))))) (and (= |$42_TestMonomorphization_R'bool'_$memory@0| ($Memory_32534 (|Store__T@[Int]Bool_| (|domain#$Memory_32534| |$42_TestMonomorphization_R'bool'_$memory|) (|a#$Global| (|l#$Mutation_33697| $t2@2)) true) (|Store__T@[Int]$42_TestMonomorphization_R'bool'_| (|contents#$Memory_32534| |$42_TestMonomorphization_R'bool'_$memory|) (|a#$Global| (|l#$Mutation_33697| $t2@2)) (|v#$Mutation_33697| $t2@2)))) (= (ControlFlow 0 38166) (- 0 41671)))) (= (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|contents#$Memory_32534| |$42_TestMonomorphization_R'bool'_$memory@0|) _$t0) (|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|contents#$Memory_32534| |$42_TestMonomorphization_R'bool'_$memory|) _$t0)) false))))))
(let ((anon8_Then_correct true))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 38236) 38184) anon8_Then_correct) (=> (= (ControlFlow 0 38236) 38166) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_32534| |$42_TestMonomorphization_R'bool'_$memory|) _$t0)) (= (ControlFlow 0 38234) 38236)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_32534| |$42_TestMonomorphization_R'bool'_$memory|) _$t0) (=> (and (and (= $t2@0 ($Mutation_33697 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|contents#$Memory_32534| |$42_TestMonomorphization_R'bool'_$memory|) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 38092) 38184) anon8_Then_correct) (=> (= (ControlFlow 0 38092) 38166) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|contents#$Memory_32534| |$42_TestMonomorphization_R'bool'_$memory|) $a_0)))
(|$IsValid'$42_TestMonomorphization_R'bool''| $rsc))
 :qid |unusedschemaz3bpl.2470:20|
 :skolemid |72|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|contents#$Memory_32534| |$42_TestMonomorphization_R'bool'_$memory|) $a_0))
)) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 38070) 38234) anon7_Then_correct) (=> (= (ControlFlow 0 38070) 38092) anon7_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_17733| stream@@0) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@0) v@@28) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
))) (= (ControlFlow 0 38014) 38070)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_33697| $t2)) 0) (=> (and (= (seq.len (|p#$Mutation_6804| $t4)) 0) (= (ControlFlow 0 38024) 38014)) inline$$InitEventStore$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 41406) 38024) anon0_correct)))
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
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_31375 0)) ((($Memory_31375 (|domain#$Memory_31375| |T@[Int]Bool|) (|contents#$Memory_31375| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_32881 0)) ((($Memory_32881 (|domain#$Memory_32881| |T@[Int]Bool|) (|contents#$Memory_32881| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_32750 0)) ((($Memory_32750 (|domain#$Memory_32750| |T@[Int]Bool|) (|contents#$Memory_32750| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_32642 0)) ((($Memory_32642 (|domain#$Memory_32642| |T@[Int]Bool|) (|contents#$Memory_32642| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_32534 0)) ((($Memory_32534 (|domain#$Memory_32534| |T@[Int]Bool|) (|contents#$Memory_32534| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_17733 0)) (((Multiset_17733 (|v#Multiset_17733| |T@[$EventRep]Int|) (|l#Multiset_17733| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_17733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_17733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_33697 0)) ((($Mutation_33697 (|l#$Mutation_33697| T@$Location) (|p#$Mutation_33697| (Seq Int)) (|v#$Mutation_33697| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_32006 0)) ((($Mutation_32006 (|l#$Mutation_32006| T@$Location) (|p#$Mutation_32006| (Seq Int)) (|v#$Mutation_32006| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7877 0)) ((($Mutation_7877 (|l#$Mutation_7877| T@$Location) (|p#$Mutation_7877| (Seq Int)) (|v#$Mutation_7877| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6804 0)) ((($Mutation_6804 (|l#$Mutation_6804| T@$Location) (|p#$Mutation_6804| (Seq Int)) (|v#$Mutation_6804| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_25654 0)) ((($Mutation_25654 (|l#$Mutation_25654| T@$Location) (|p#$Mutation_25654| (Seq Int)) (|v#$Mutation_25654| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_24328 0)) ((($Mutation_24328 (|l#$Mutation_24328| T@$Location) (|p#$Mutation_24328| (Seq Int)) (|v#$Mutation_24328| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_23582 0)) ((($Mutation_23582 (|l#$Mutation_23582| T@$Location) (|p#$Mutation_23582| (Seq Int)) (|v#$Mutation_23582| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_22142 0)) ((($Mutation_22142 (|l#$Mutation_22142| T@$Location) (|p#$Mutation_22142| (Seq Int)) (|v#$Mutation_22142| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_21396 0)) ((($Mutation_21396 (|l#$Mutation_21396| T@$Location) (|p#$Mutation_21396| (Seq Int)) (|v#$Mutation_21396| (Seq |T@$42_TestMonomorphization_R'u64'|)) ) ) ))
(declare-datatypes ((T@$Mutation_19918 0)) ((($Mutation_19918 (|l#$Mutation_19918| T@$Location) (|p#$Mutation_19918| (Seq Int)) (|v#$Mutation_19918| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19172 0)) ((($Mutation_19172 (|l#$Mutation_19172| T@$Location) (|p#$Mutation_19172| (Seq Int)) (|v#$Mutation_19172| (Seq |T@$42_TestMonomorphization_R'address'|)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| ((Seq |T@$42_TestMonomorphization_R'address'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| ((Seq |T@$42_TestMonomorphization_R'address'|) |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| ((Seq |T@$42_TestMonomorphization_R'u64'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| ((Seq |T@$42_TestMonomorphization_R'u64'|) |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsValid'vec'vec'u64'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u64''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle) T@Multiset_17733)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun ReverseVec_14952 ((Seq |T@$42_TestMonomorphization_R'address'|)) (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun ReverseVec_7730 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_15149 ((Seq |T@$42_TestMonomorphization_R'u64'|)) (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun ReverseVec_15346 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_6657 ((Seq Bool)) (Seq Bool))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_17733| |T@[$1_Event_EventHandle]Multiset_17733|) |T@[$1_Event_EventHandle]Multiset_17733|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |unusedschemaz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |unusedschemaz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |unusedschemaz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |unusedschemaz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |unusedschemaz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |unusedschemaz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestMonomorphization_R'address''| (seq.nth v@@4 i@@0)))
 :qid |unusedschemaz3bpl.590:13|
 :skolemid |15|
))))
 :qid |unusedschemaz3bpl.588:61|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@$42_TestMonomorphization_R'address'|)) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |unusedschemaz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |unusedschemaz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |unusedschemaz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$42_TestMonomorphization_R'u64''| (seq.nth v@@6 i@@3)))
 :qid |unusedschemaz3bpl.770:13|
 :skolemid |20|
))))
 :qid |unusedschemaz3bpl.768:57|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 (Seq |T@$42_TestMonomorphization_R'u64'|)) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@4 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |unusedschemaz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |unusedschemaz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |unusedschemaz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'vec'u64''| (seq.nth v@@8 i@@6)))
 :qid |unusedschemaz3bpl.950:13|
 :skolemid |25|
))))
 :qid |unusedschemaz3bpl.948:34|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 (Seq (Seq Int))) (e@@1 (Seq Int)) ) (! (let ((i@@7 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |unusedschemaz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |unusedschemaz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |unusedschemaz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) true)
 :qid |unusedschemaz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |unusedschemaz3bpl.1128:30|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 (Seq Bool)) (e@@2 Bool) ) (! (let ((i@@10 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |unusedschemaz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |unusedschemaz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |unusedschemaz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |unusedschemaz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |unusedschemaz3bpl.1308:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |unusedschemaz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |unusedschemaz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |unusedschemaz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u64'| (seq.nth v@@14 i@@15)))
 :qid |unusedschemaz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |unusedschemaz3bpl.1488:29|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |unusedschemaz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |unusedschemaz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |unusedschemaz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |unusedschemaz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |unusedschemaz3bpl.1668:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |unusedschemaz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |unusedschemaz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |unusedschemaz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |unusedschemaz3bpl.1856:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |unusedschemaz3bpl.1872:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |unusedschemaz3bpl.1939:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |unusedschemaz3bpl.1942:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |unusedschemaz3bpl.1969:15|
 :skolemid |54|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |unusedschemaz3bpl.1974:15|
 :skolemid |55|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |unusedschemaz3bpl.1996:15|
 :skolemid |56|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |unusedschemaz3bpl.2001:15|
 :skolemid |57|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |unusedschemaz3bpl.2015:15|
 :skolemid |58|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_17733| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream) v@@21) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |unusedschemaz3bpl.2103:69|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@3 T@$42_TestMonomorphization_E) (v2@@3 T@$42_TestMonomorphization_E) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3)))
 :qid |unusedschemaz3bpl.2109:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |unusedschemaz3bpl.2163:15|
 :skolemid |63|
)))
(assert (forall ((addr Int) ) (! true
 :qid |unusedschemaz3bpl.2167:15|
 :skolemid |64|
)))
(assert (forall ((s@@0 T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s@@0) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s@@0)))
 :qid |unusedschemaz3bpl.2182:47|
 :skolemid |65|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1)  (and true true))
 :qid |unusedschemaz3bpl.2198:53|
 :skolemid |66|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@2)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@2))))
 :qid |unusedschemaz3bpl.2216:52|
 :skolemid |67|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@3)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@3)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@3))))
 :qid |unusedschemaz3bpl.2234:56|
 :skolemid |68|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4)  (and true true))
 :qid |unusedschemaz3bpl.2252:51|
 :skolemid |69|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4))
)))
(assert (forall ((v@@22 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (let ((r@@3 (ReverseVec_14952 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@22 (- (- (seq.len v@@22) i@@21) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14952 v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@4 (ReverseVec_7730 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@23 (- (- (seq.len v@@23) i@@22) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7730 v@@23))
)))
(assert (forall ((v@@24 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (let ((r@@5 (ReverseVec_15149 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@5))) (= (seq.nth r@@5 i@@23) (seq.nth v@@24 (- (- (seq.len v@@24) i@@23) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@23))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15149 v@@24))
)))
(assert (forall ((v@@25 (Seq (Seq Int))) ) (! (let ((r@@6 (ReverseVec_15346 v@@25)))
 (and (= (seq.len r@@6) (seq.len v@@25)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@6))) (= (seq.nth r@@6 i@@24) (seq.nth v@@25 (- (- (seq.len v@@25) i@@24) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@24))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15346 v@@25))
)))
(assert (forall ((v@@26 (Seq Bool)) ) (! (let ((r@@7 (ReverseVec_6657 v@@26)))
 (and (= (seq.len r@@7) (seq.len v@@26)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@7))) (= (seq.nth r@@7 i@@25) (seq.nth v@@26 (- (- (seq.len v@@26) i@@25) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@25))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6657 v@@26))
)))
(assert (forall ((|l#0| Bool) (i@@26 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26) |l#0|)
 :qid |unusedschemaz3bpl.245:54|
 :skolemid |73|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_17733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_17733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))))
(Multiset_17733 (|lambda#3| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0)) (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |unusedschemaz3bpl.2072:13|
 :skolemid |74|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@27)))
 :qid |unusedschemaz3bpl.124:29|
 :skolemid |75|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@0 () |T@$42_TestMonomorphization_R'u64'|)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_pack_R$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 41689) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| 2) (= $t2@0 (|$42_TestMonomorphization_R'u64'| 1 2))) (and (= $t2@0 $t2@0) (= (ControlFlow 0 38368) (- 0 41756)))) (= $t2@0 (|$42_TestMonomorphization_R'u64'| 1 2))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_17733| stream@@0) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@0) v@@28) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
))) (= (ControlFlow 0 38318) 38368)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 41689) 38318) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))
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
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_31375 0)) ((($Memory_31375 (|domain#$Memory_31375| |T@[Int]Bool|) (|contents#$Memory_31375| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_32881 0)) ((($Memory_32881 (|domain#$Memory_32881| |T@[Int]Bool|) (|contents#$Memory_32881| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_32750 0)) ((($Memory_32750 (|domain#$Memory_32750| |T@[Int]Bool|) (|contents#$Memory_32750| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_32642 0)) ((($Memory_32642 (|domain#$Memory_32642| |T@[Int]Bool|) (|contents#$Memory_32642| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_32534 0)) ((($Memory_32534 (|domain#$Memory_32534| |T@[Int]Bool|) (|contents#$Memory_32534| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_17733 0)) (((Multiset_17733 (|v#Multiset_17733| |T@[$EventRep]Int|) (|l#Multiset_17733| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_17733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_17733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_33697 0)) ((($Mutation_33697 (|l#$Mutation_33697| T@$Location) (|p#$Mutation_33697| (Seq Int)) (|v#$Mutation_33697| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_32006 0)) ((($Mutation_32006 (|l#$Mutation_32006| T@$Location) (|p#$Mutation_32006| (Seq Int)) (|v#$Mutation_32006| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7877 0)) ((($Mutation_7877 (|l#$Mutation_7877| T@$Location) (|p#$Mutation_7877| (Seq Int)) (|v#$Mutation_7877| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6804 0)) ((($Mutation_6804 (|l#$Mutation_6804| T@$Location) (|p#$Mutation_6804| (Seq Int)) (|v#$Mutation_6804| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_25654 0)) ((($Mutation_25654 (|l#$Mutation_25654| T@$Location) (|p#$Mutation_25654| (Seq Int)) (|v#$Mutation_25654| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_24328 0)) ((($Mutation_24328 (|l#$Mutation_24328| T@$Location) (|p#$Mutation_24328| (Seq Int)) (|v#$Mutation_24328| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_23582 0)) ((($Mutation_23582 (|l#$Mutation_23582| T@$Location) (|p#$Mutation_23582| (Seq Int)) (|v#$Mutation_23582| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_22142 0)) ((($Mutation_22142 (|l#$Mutation_22142| T@$Location) (|p#$Mutation_22142| (Seq Int)) (|v#$Mutation_22142| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_21396 0)) ((($Mutation_21396 (|l#$Mutation_21396| T@$Location) (|p#$Mutation_21396| (Seq Int)) (|v#$Mutation_21396| (Seq |T@$42_TestMonomorphization_R'u64'|)) ) ) ))
(declare-datatypes ((T@$Mutation_19918 0)) ((($Mutation_19918 (|l#$Mutation_19918| T@$Location) (|p#$Mutation_19918| (Seq Int)) (|v#$Mutation_19918| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19172 0)) ((($Mutation_19172 (|l#$Mutation_19172| T@$Location) (|p#$Mutation_19172| (Seq Int)) (|v#$Mutation_19172| (Seq |T@$42_TestMonomorphization_R'address'|)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| ((Seq |T@$42_TestMonomorphization_R'address'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| ((Seq |T@$42_TestMonomorphization_R'address'|) |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| ((Seq |T@$42_TestMonomorphization_R'u64'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| ((Seq |T@$42_TestMonomorphization_R'u64'|) |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsValid'vec'vec'u64'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u64''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle) T@Multiset_17733)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun ReverseVec_14952 ((Seq |T@$42_TestMonomorphization_R'address'|)) (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun ReverseVec_7730 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_15149 ((Seq |T@$42_TestMonomorphization_R'u64'|)) (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun ReverseVec_15346 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_6657 ((Seq Bool)) (Seq Bool))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_17733| |T@[$1_Event_EventHandle]Multiset_17733|) |T@[$1_Event_EventHandle]Multiset_17733|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |unusedschemaz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |unusedschemaz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |unusedschemaz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |unusedschemaz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |unusedschemaz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |unusedschemaz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestMonomorphization_R'address''| (seq.nth v@@4 i@@0)))
 :qid |unusedschemaz3bpl.590:13|
 :skolemid |15|
))))
 :qid |unusedschemaz3bpl.588:61|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@$42_TestMonomorphization_R'address'|)) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |unusedschemaz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |unusedschemaz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |unusedschemaz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$42_TestMonomorphization_R'u64''| (seq.nth v@@6 i@@3)))
 :qid |unusedschemaz3bpl.770:13|
 :skolemid |20|
))))
 :qid |unusedschemaz3bpl.768:57|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 (Seq |T@$42_TestMonomorphization_R'u64'|)) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@4 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |unusedschemaz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |unusedschemaz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |unusedschemaz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'vec'u64''| (seq.nth v@@8 i@@6)))
 :qid |unusedschemaz3bpl.950:13|
 :skolemid |25|
))))
 :qid |unusedschemaz3bpl.948:34|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 (Seq (Seq Int))) (e@@1 (Seq Int)) ) (! (let ((i@@7 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |unusedschemaz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |unusedschemaz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |unusedschemaz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) true)
 :qid |unusedschemaz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |unusedschemaz3bpl.1128:30|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 (Seq Bool)) (e@@2 Bool) ) (! (let ((i@@10 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |unusedschemaz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |unusedschemaz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |unusedschemaz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |unusedschemaz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |unusedschemaz3bpl.1308:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |unusedschemaz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |unusedschemaz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |unusedschemaz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u64'| (seq.nth v@@14 i@@15)))
 :qid |unusedschemaz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |unusedschemaz3bpl.1488:29|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |unusedschemaz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |unusedschemaz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |unusedschemaz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |unusedschemaz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |unusedschemaz3bpl.1668:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |unusedschemaz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |unusedschemaz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |unusedschemaz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |unusedschemaz3bpl.1856:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |unusedschemaz3bpl.1872:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |unusedschemaz3bpl.1939:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |unusedschemaz3bpl.1942:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |unusedschemaz3bpl.1969:15|
 :skolemid |54|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |unusedschemaz3bpl.1974:15|
 :skolemid |55|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |unusedschemaz3bpl.1996:15|
 :skolemid |56|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |unusedschemaz3bpl.2001:15|
 :skolemid |57|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |unusedschemaz3bpl.2015:15|
 :skolemid |58|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_17733| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream) v@@21) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |unusedschemaz3bpl.2103:69|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@3 T@$42_TestMonomorphization_E) (v2@@3 T@$42_TestMonomorphization_E) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3)))
 :qid |unusedschemaz3bpl.2109:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |unusedschemaz3bpl.2163:15|
 :skolemid |63|
)))
(assert (forall ((addr Int) ) (! true
 :qid |unusedschemaz3bpl.2167:15|
 :skolemid |64|
)))
(assert (forall ((s@@0 T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s@@0) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s@@0)))
 :qid |unusedschemaz3bpl.2182:47|
 :skolemid |65|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1)  (and true true))
 :qid |unusedschemaz3bpl.2198:53|
 :skolemid |66|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@2)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@2))))
 :qid |unusedschemaz3bpl.2216:52|
 :skolemid |67|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@3)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@3)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@3))))
 :qid |unusedschemaz3bpl.2234:56|
 :skolemid |68|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4)  (and true true))
 :qid |unusedschemaz3bpl.2252:51|
 :skolemid |69|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4))
)))
(assert (forall ((v@@22 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (let ((r@@3 (ReverseVec_14952 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@22 (- (- (seq.len v@@22) i@@21) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14952 v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@4 (ReverseVec_7730 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@23 (- (- (seq.len v@@23) i@@22) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7730 v@@23))
)))
(assert (forall ((v@@24 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (let ((r@@5 (ReverseVec_15149 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@5))) (= (seq.nth r@@5 i@@23) (seq.nth v@@24 (- (- (seq.len v@@24) i@@23) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@23))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15149 v@@24))
)))
(assert (forall ((v@@25 (Seq (Seq Int))) ) (! (let ((r@@6 (ReverseVec_15346 v@@25)))
 (and (= (seq.len r@@6) (seq.len v@@25)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@6))) (= (seq.nth r@@6 i@@24) (seq.nth v@@25 (- (- (seq.len v@@25) i@@24) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@24))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15346 v@@25))
)))
(assert (forall ((v@@26 (Seq Bool)) ) (! (let ((r@@7 (ReverseVec_6657 v@@26)))
 (and (= (seq.len r@@7) (seq.len v@@26)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@7))) (= (seq.nth r@@7 i@@25) (seq.nth v@@26 (- (- (seq.len v@@26) i@@25) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@25))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6657 v@@26))
)))
(assert (forall ((|l#0| Bool) (i@@26 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26) |l#0|)
 :qid |unusedschemaz3bpl.245:54|
 :skolemid |73|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_17733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_17733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))))
(Multiset_17733 (|lambda#3| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0)) (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |unusedschemaz3bpl.2072:13|
 :skolemid |74|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@27)))
 :qid |unusedschemaz3bpl.124:29|
 :skolemid |75|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun call1formal@res@0 () (Seq Int))
(declare-fun call1formal@res@0@@0 () (Seq Int))
(declare-fun _$t0 () |T@#0|)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_use_bcs$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 41773) (let ((anon7_Else_correct  (=> (not false) (=> (and (= call1formal@res@0 call1formal@res@0) (= call1formal@res@0@@0 call1formal@res@0@@0)) (and (=> (= (ControlFlow 0 38527) (- 0 41966)) (= call1formal@res@0 (|$1_BCS_serialize'#0'| _$t0))) (=> (= call1formal@res@0 (|$1_BCS_serialize'#0'| _$t0)) (=> (= (ControlFlow 0 38527) (- 0 41975)) (= call1formal@res@0@@0 (|$1_BCS_serialize'address'| 2)))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Else_correct  (=> (not false) (=> (and (and (= call1formal@res@0 call1formal@res@0) (|$IsValid'address'| 2)) (and (= 2 2) (= call1formal@res@0@@0 (|$1_BCS_serialize'address'| 2)))) (and (=> (= (ControlFlow 0 38483) 38541) anon7_Then_correct) (=> (= (ControlFlow 0 38483) 38527) anon7_Else_correct))))))
(let ((anon6_Then_correct true))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= call1formal@res@0 (|$1_BCS_serialize'#0'| _$t0))) (and (=> (= (ControlFlow 0 38459) 38561) anon6_Then_correct) (=> (= (ControlFlow 0 38459) 38483) anon6_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_17733| stream@@0) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@0) v@@28) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
))) (= (ControlFlow 0 38431) 38459)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 41773) 38431) inline$$InitEventStore$0$anon0_correct)))
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
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_31375 0)) ((($Memory_31375 (|domain#$Memory_31375| |T@[Int]Bool|) (|contents#$Memory_31375| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_32881 0)) ((($Memory_32881 (|domain#$Memory_32881| |T@[Int]Bool|) (|contents#$Memory_32881| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_32750 0)) ((($Memory_32750 (|domain#$Memory_32750| |T@[Int]Bool|) (|contents#$Memory_32750| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_32642 0)) ((($Memory_32642 (|domain#$Memory_32642| |T@[Int]Bool|) (|contents#$Memory_32642| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_32534 0)) ((($Memory_32534 (|domain#$Memory_32534| |T@[Int]Bool|) (|contents#$Memory_32534| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_17733 0)) (((Multiset_17733 (|v#Multiset_17733| |T@[$EventRep]Int|) (|l#Multiset_17733| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_17733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_17733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_33697 0)) ((($Mutation_33697 (|l#$Mutation_33697| T@$Location) (|p#$Mutation_33697| (Seq Int)) (|v#$Mutation_33697| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_32006 0)) ((($Mutation_32006 (|l#$Mutation_32006| T@$Location) (|p#$Mutation_32006| (Seq Int)) (|v#$Mutation_32006| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7877 0)) ((($Mutation_7877 (|l#$Mutation_7877| T@$Location) (|p#$Mutation_7877| (Seq Int)) (|v#$Mutation_7877| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6804 0)) ((($Mutation_6804 (|l#$Mutation_6804| T@$Location) (|p#$Mutation_6804| (Seq Int)) (|v#$Mutation_6804| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_25654 0)) ((($Mutation_25654 (|l#$Mutation_25654| T@$Location) (|p#$Mutation_25654| (Seq Int)) (|v#$Mutation_25654| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_24328 0)) ((($Mutation_24328 (|l#$Mutation_24328| T@$Location) (|p#$Mutation_24328| (Seq Int)) (|v#$Mutation_24328| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_23582 0)) ((($Mutation_23582 (|l#$Mutation_23582| T@$Location) (|p#$Mutation_23582| (Seq Int)) (|v#$Mutation_23582| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_22142 0)) ((($Mutation_22142 (|l#$Mutation_22142| T@$Location) (|p#$Mutation_22142| (Seq Int)) (|v#$Mutation_22142| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_21396 0)) ((($Mutation_21396 (|l#$Mutation_21396| T@$Location) (|p#$Mutation_21396| (Seq Int)) (|v#$Mutation_21396| (Seq |T@$42_TestMonomorphization_R'u64'|)) ) ) ))
(declare-datatypes ((T@$Mutation_19918 0)) ((($Mutation_19918 (|l#$Mutation_19918| T@$Location) (|p#$Mutation_19918| (Seq Int)) (|v#$Mutation_19918| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19172 0)) ((($Mutation_19172 (|l#$Mutation_19172| T@$Location) (|p#$Mutation_19172| (Seq Int)) (|v#$Mutation_19172| (Seq |T@$42_TestMonomorphization_R'address'|)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| ((Seq |T@$42_TestMonomorphization_R'address'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| ((Seq |T@$42_TestMonomorphization_R'address'|) |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| ((Seq |T@$42_TestMonomorphization_R'u64'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| ((Seq |T@$42_TestMonomorphization_R'u64'|) |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsValid'vec'vec'u64'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u64''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle) T@Multiset_17733)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun ReverseVec_14952 ((Seq |T@$42_TestMonomorphization_R'address'|)) (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun ReverseVec_7730 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_15149 ((Seq |T@$42_TestMonomorphization_R'u64'|)) (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun ReverseVec_15346 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_6657 ((Seq Bool)) (Seq Bool))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_17733| |T@[$1_Event_EventHandle]Multiset_17733|) |T@[$1_Event_EventHandle]Multiset_17733|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |unusedschemaz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |unusedschemaz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |unusedschemaz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |unusedschemaz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |unusedschemaz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |unusedschemaz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestMonomorphization_R'address''| (seq.nth v@@4 i@@0)))
 :qid |unusedschemaz3bpl.590:13|
 :skolemid |15|
))))
 :qid |unusedschemaz3bpl.588:61|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@$42_TestMonomorphization_R'address'|)) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |unusedschemaz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |unusedschemaz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |unusedschemaz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$42_TestMonomorphization_R'u64''| (seq.nth v@@6 i@@3)))
 :qid |unusedschemaz3bpl.770:13|
 :skolemid |20|
))))
 :qid |unusedschemaz3bpl.768:57|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 (Seq |T@$42_TestMonomorphization_R'u64'|)) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@4 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |unusedschemaz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |unusedschemaz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |unusedschemaz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'vec'u64''| (seq.nth v@@8 i@@6)))
 :qid |unusedschemaz3bpl.950:13|
 :skolemid |25|
))))
 :qid |unusedschemaz3bpl.948:34|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 (Seq (Seq Int))) (e@@1 (Seq Int)) ) (! (let ((i@@7 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |unusedschemaz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |unusedschemaz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |unusedschemaz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) true)
 :qid |unusedschemaz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |unusedschemaz3bpl.1128:30|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 (Seq Bool)) (e@@2 Bool) ) (! (let ((i@@10 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |unusedschemaz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |unusedschemaz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |unusedschemaz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |unusedschemaz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |unusedschemaz3bpl.1308:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |unusedschemaz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |unusedschemaz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |unusedschemaz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u64'| (seq.nth v@@14 i@@15)))
 :qid |unusedschemaz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |unusedschemaz3bpl.1488:29|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |unusedschemaz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |unusedschemaz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |unusedschemaz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |unusedschemaz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |unusedschemaz3bpl.1668:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |unusedschemaz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |unusedschemaz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |unusedschemaz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |unusedschemaz3bpl.1856:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |unusedschemaz3bpl.1872:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |unusedschemaz3bpl.1939:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |unusedschemaz3bpl.1942:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |unusedschemaz3bpl.1969:15|
 :skolemid |54|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |unusedschemaz3bpl.1974:15|
 :skolemid |55|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |unusedschemaz3bpl.1996:15|
 :skolemid |56|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |unusedschemaz3bpl.2001:15|
 :skolemid |57|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |unusedschemaz3bpl.2015:15|
 :skolemid |58|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_17733| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream) v@@21) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |unusedschemaz3bpl.2103:69|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@3 T@$42_TestMonomorphization_E) (v2@@3 T@$42_TestMonomorphization_E) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3)))
 :qid |unusedschemaz3bpl.2109:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |unusedschemaz3bpl.2163:15|
 :skolemid |63|
)))
(assert (forall ((addr Int) ) (! true
 :qid |unusedschemaz3bpl.2167:15|
 :skolemid |64|
)))
(assert (forall ((s@@0 T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s@@0) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s@@0)))
 :qid |unusedschemaz3bpl.2182:47|
 :skolemid |65|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1)  (and true true))
 :qid |unusedschemaz3bpl.2198:53|
 :skolemid |66|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@2)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@2))))
 :qid |unusedschemaz3bpl.2216:52|
 :skolemid |67|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@3)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@3)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@3))))
 :qid |unusedschemaz3bpl.2234:56|
 :skolemid |68|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4)  (and true true))
 :qid |unusedschemaz3bpl.2252:51|
 :skolemid |69|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4))
)))
(assert (forall ((v@@22 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (let ((r@@3 (ReverseVec_14952 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@22 (- (- (seq.len v@@22) i@@21) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14952 v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@4 (ReverseVec_7730 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@23 (- (- (seq.len v@@23) i@@22) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7730 v@@23))
)))
(assert (forall ((v@@24 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (let ((r@@5 (ReverseVec_15149 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@5))) (= (seq.nth r@@5 i@@23) (seq.nth v@@24 (- (- (seq.len v@@24) i@@23) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@23))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15149 v@@24))
)))
(assert (forall ((v@@25 (Seq (Seq Int))) ) (! (let ((r@@6 (ReverseVec_15346 v@@25)))
 (and (= (seq.len r@@6) (seq.len v@@25)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@6))) (= (seq.nth r@@6 i@@24) (seq.nth v@@25 (- (- (seq.len v@@25) i@@24) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@24))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15346 v@@25))
)))
(assert (forall ((v@@26 (Seq Bool)) ) (! (let ((r@@7 (ReverseVec_6657 v@@26)))
 (and (= (seq.len r@@7) (seq.len v@@26)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@7))) (= (seq.nth r@@7 i@@25) (seq.nth v@@26 (- (- (seq.len v@@26) i@@25) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@25))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6657 v@@26))
)))
(assert (forall ((|l#0| Bool) (i@@26 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26) |l#0|)
 :qid |unusedschemaz3bpl.245:54|
 :skolemid |73|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_17733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_17733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))))
(Multiset_17733 (|lambda#3| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0)) (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |unusedschemaz3bpl.2072:13|
 :skolemid |74|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@27)))
 :qid |unusedschemaz3bpl.124:29|
 :skolemid |75|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@1| () T@$1_Event_EventHandle)
(declare-fun _$t0 () T@$Mutation_32006)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle T@Multiset_17733) |T@[$1_Event_EventHandle]Multiset_17733|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_17733|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_17733)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|Store__T@[$1_Event_EventHandle]Multiset_17733_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_17733|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_17733)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|Store__T@[$1_Event_EventHandle]Multiset_17733_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_17733_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Event_emit_event'$42_TestMonomorphization_E'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t2@0 () T@$42_TestMonomorphization_E)
(declare-fun |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@0| () T@$1_Event_EventHandle)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_use_event$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 42002) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@1| (|v#$Mutation_32006| _$t0)) (= |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@1| |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@1|)) (and (=> (= (ControlFlow 0 38856) (- 0 42186)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) (|v#$Mutation_32006| _$t0))))
(let ((stream_new (let ((len (|l#Multiset_17733| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@0) (|$ToEventRep'$42_TestMonomorphization_E'| ($42_TestMonomorphization_E 0)))))
(Multiset_17733 (|Store__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@0) (|$ToEventRep'$42_TestMonomorphization_E'| ($42_TestMonomorphization_E 0)) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) (|v#$Mutation_32006| _$t0) stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@28 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| expected) handle@@1)) v@@28) (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| actual) handle@@1)) v@@28))
 :qid |unusedschemaz3bpl.134:13|
 :skolemid |3|
)))
 :qid |unusedschemaz3bpl.2078:13|
 :skolemid |60|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) (|v#$Mutation_32006| _$t0))))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_17733| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@1) (|$ToEventRep'$42_TestMonomorphization_E'| ($42_TestMonomorphization_E 0)))))
(Multiset_17733 (|Store__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@1) (|$ToEventRep'$42_TestMonomorphization_E'| ($42_TestMonomorphization_E 0)) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) (|v#$Mutation_32006| _$t0) stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@29 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| expected@@0) handle@@2)) v@@29) (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| actual@@0) handle@@2)) v@@29))
 :qid |unusedschemaz3bpl.134:13|
 :skolemid |3|
)))
 :qid |unusedschemaz3bpl.2078:13|
 :skolemid |60|
))))) (=> (= (ControlFlow 0 38856) (- 0 42214)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) (|v#$Mutation_32006| _$t0))))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_17733| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@2) (|$ToEventRep'$42_TestMonomorphization_E'| ($42_TestMonomorphization_E 0)))))
(Multiset_17733 (|Store__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@2) (|$ToEventRep'$42_TestMonomorphization_E'| ($42_TestMonomorphization_E 0)) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) (|v#$Mutation_32006| _$t0) stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@30 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| actual@@1) handle@@3)) v@@30) (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| expected@@1) handle@@3)) v@@30))
 :qid |unusedschemaz3bpl.134:13|
 :skolemid |3|
)))
 :qid |unusedschemaz3bpl.2078:13|
 :skolemid |60|
))))))))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Event_emit_event'$42_TestMonomorphization_E'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$42_TestMonomorphization_E'$0$handle@1| (|v#$Mutation_32006| _$t0)) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$42_TestMonomorphization_E'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_17733| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@3) (|$ToEventRep'$42_TestMonomorphization_E'| $t2@0))))
(Multiset_17733 (|Store__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@3) (|$ToEventRep'$42_TestMonomorphization_E'| $t2@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$42_TestMonomorphization_E'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 38764) 38874) anon4_Then_correct) (=> (= (ControlFlow 0 38764) 38856) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_32006| _$t0) ($Param 0)) (=> (and (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (|v#$Mutation_32006| _$t0)) (= |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@0| (|v#$Mutation_32006| _$t0))) (=> (and (and (= |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@0| |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@0|) (|$IsValid'u64'| 0)) (and (= $t2@0 ($42_TestMonomorphization_E 0)) (= (ControlFlow 0 38770) 38764))) |inline$$1_Event_emit_event'$42_TestMonomorphization_E'$0$anon0_correct|)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_17733| stream@@4) 0) (forall ((v@@31 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@4) v@@31) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
))) (= (ControlFlow 0 38643) 38770)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 42002) 38643) inline$$InitEventStore$0$anon0_correct)))
anon0_correct)))))))
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
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_31375 0)) ((($Memory_31375 (|domain#$Memory_31375| |T@[Int]Bool|) (|contents#$Memory_31375| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_32881 0)) ((($Memory_32881 (|domain#$Memory_32881| |T@[Int]Bool|) (|contents#$Memory_32881| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_32750 0)) ((($Memory_32750 (|domain#$Memory_32750| |T@[Int]Bool|) (|contents#$Memory_32750| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_32642 0)) ((($Memory_32642 (|domain#$Memory_32642| |T@[Int]Bool|) (|contents#$Memory_32642| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_32534 0)) ((($Memory_32534 (|domain#$Memory_32534| |T@[Int]Bool|) (|contents#$Memory_32534| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_17733 0)) (((Multiset_17733 (|v#Multiset_17733| |T@[$EventRep]Int|) (|l#Multiset_17733| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_17733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_17733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_33697 0)) ((($Mutation_33697 (|l#$Mutation_33697| T@$Location) (|p#$Mutation_33697| (Seq Int)) (|v#$Mutation_33697| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_32006 0)) ((($Mutation_32006 (|l#$Mutation_32006| T@$Location) (|p#$Mutation_32006| (Seq Int)) (|v#$Mutation_32006| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7877 0)) ((($Mutation_7877 (|l#$Mutation_7877| T@$Location) (|p#$Mutation_7877| (Seq Int)) (|v#$Mutation_7877| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6804 0)) ((($Mutation_6804 (|l#$Mutation_6804| T@$Location) (|p#$Mutation_6804| (Seq Int)) (|v#$Mutation_6804| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_25654 0)) ((($Mutation_25654 (|l#$Mutation_25654| T@$Location) (|p#$Mutation_25654| (Seq Int)) (|v#$Mutation_25654| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_24328 0)) ((($Mutation_24328 (|l#$Mutation_24328| T@$Location) (|p#$Mutation_24328| (Seq Int)) (|v#$Mutation_24328| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_23582 0)) ((($Mutation_23582 (|l#$Mutation_23582| T@$Location) (|p#$Mutation_23582| (Seq Int)) (|v#$Mutation_23582| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_22142 0)) ((($Mutation_22142 (|l#$Mutation_22142| T@$Location) (|p#$Mutation_22142| (Seq Int)) (|v#$Mutation_22142| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_21396 0)) ((($Mutation_21396 (|l#$Mutation_21396| T@$Location) (|p#$Mutation_21396| (Seq Int)) (|v#$Mutation_21396| (Seq |T@$42_TestMonomorphization_R'u64'|)) ) ) ))
(declare-datatypes ((T@$Mutation_19918 0)) ((($Mutation_19918 (|l#$Mutation_19918| T@$Location) (|p#$Mutation_19918| (Seq Int)) (|v#$Mutation_19918| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19172 0)) ((($Mutation_19172 (|l#$Mutation_19172| T@$Location) (|p#$Mutation_19172| (Seq Int)) (|v#$Mutation_19172| (Seq |T@$42_TestMonomorphization_R'address'|)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| ((Seq |T@$42_TestMonomorphization_R'address'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| ((Seq |T@$42_TestMonomorphization_R'address'|) |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| ((Seq |T@$42_TestMonomorphization_R'u64'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| ((Seq |T@$42_TestMonomorphization_R'u64'|) |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsValid'vec'vec'u64'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u64''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle) T@Multiset_17733)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun ReverseVec_14952 ((Seq |T@$42_TestMonomorphization_R'address'|)) (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun ReverseVec_7730 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_15149 ((Seq |T@$42_TestMonomorphization_R'u64'|)) (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun ReverseVec_15346 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_6657 ((Seq Bool)) (Seq Bool))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_17733| |T@[$1_Event_EventHandle]Multiset_17733|) |T@[$1_Event_EventHandle]Multiset_17733|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |unusedschemaz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |unusedschemaz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |unusedschemaz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |unusedschemaz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |unusedschemaz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |unusedschemaz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestMonomorphization_R'address''| (seq.nth v@@4 i@@0)))
 :qid |unusedschemaz3bpl.590:13|
 :skolemid |15|
))))
 :qid |unusedschemaz3bpl.588:61|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@$42_TestMonomorphization_R'address'|)) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |unusedschemaz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |unusedschemaz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |unusedschemaz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$42_TestMonomorphization_R'u64''| (seq.nth v@@6 i@@3)))
 :qid |unusedschemaz3bpl.770:13|
 :skolemid |20|
))))
 :qid |unusedschemaz3bpl.768:57|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 (Seq |T@$42_TestMonomorphization_R'u64'|)) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@4 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |unusedschemaz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |unusedschemaz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |unusedschemaz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'vec'u64''| (seq.nth v@@8 i@@6)))
 :qid |unusedschemaz3bpl.950:13|
 :skolemid |25|
))))
 :qid |unusedschemaz3bpl.948:34|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 (Seq (Seq Int))) (e@@1 (Seq Int)) ) (! (let ((i@@7 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |unusedschemaz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |unusedschemaz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |unusedschemaz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) true)
 :qid |unusedschemaz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |unusedschemaz3bpl.1128:30|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 (Seq Bool)) (e@@2 Bool) ) (! (let ((i@@10 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |unusedschemaz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |unusedschemaz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |unusedschemaz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |unusedschemaz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |unusedschemaz3bpl.1308:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |unusedschemaz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |unusedschemaz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |unusedschemaz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u64'| (seq.nth v@@14 i@@15)))
 :qid |unusedschemaz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |unusedschemaz3bpl.1488:29|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |unusedschemaz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |unusedschemaz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |unusedschemaz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |unusedschemaz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |unusedschemaz3bpl.1668:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |unusedschemaz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |unusedschemaz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |unusedschemaz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |unusedschemaz3bpl.1856:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |unusedschemaz3bpl.1872:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |unusedschemaz3bpl.1939:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |unusedschemaz3bpl.1942:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |unusedschemaz3bpl.1969:15|
 :skolemid |54|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |unusedschemaz3bpl.1974:15|
 :skolemid |55|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |unusedschemaz3bpl.1996:15|
 :skolemid |56|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |unusedschemaz3bpl.2001:15|
 :skolemid |57|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |unusedschemaz3bpl.2015:15|
 :skolemid |58|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_17733| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream) v@@21) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |unusedschemaz3bpl.2103:69|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@3 T@$42_TestMonomorphization_E) (v2@@3 T@$42_TestMonomorphization_E) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3)))
 :qid |unusedschemaz3bpl.2109:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |unusedschemaz3bpl.2163:15|
 :skolemid |63|
)))
(assert (forall ((addr Int) ) (! true
 :qid |unusedschemaz3bpl.2167:15|
 :skolemid |64|
)))
(assert (forall ((s@@0 T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s@@0) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s@@0)))
 :qid |unusedschemaz3bpl.2182:47|
 :skolemid |65|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1)  (and true true))
 :qid |unusedschemaz3bpl.2198:53|
 :skolemid |66|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@2)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@2))))
 :qid |unusedschemaz3bpl.2216:52|
 :skolemid |67|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@3)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@3)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@3))))
 :qid |unusedschemaz3bpl.2234:56|
 :skolemid |68|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4)  (and true true))
 :qid |unusedschemaz3bpl.2252:51|
 :skolemid |69|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4))
)))
(assert (forall ((v@@22 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (let ((r@@3 (ReverseVec_14952 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@22 (- (- (seq.len v@@22) i@@21) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14952 v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@4 (ReverseVec_7730 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@23 (- (- (seq.len v@@23) i@@22) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7730 v@@23))
)))
(assert (forall ((v@@24 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (let ((r@@5 (ReverseVec_15149 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@5))) (= (seq.nth r@@5 i@@23) (seq.nth v@@24 (- (- (seq.len v@@24) i@@23) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@23))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15149 v@@24))
)))
(assert (forall ((v@@25 (Seq (Seq Int))) ) (! (let ((r@@6 (ReverseVec_15346 v@@25)))
 (and (= (seq.len r@@6) (seq.len v@@25)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@6))) (= (seq.nth r@@6 i@@24) (seq.nth v@@25 (- (- (seq.len v@@25) i@@24) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@24))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15346 v@@25))
)))
(assert (forall ((v@@26 (Seq Bool)) ) (! (let ((r@@7 (ReverseVec_6657 v@@26)))
 (and (= (seq.len r@@7) (seq.len v@@26)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@7))) (= (seq.nth r@@7 i@@25) (seq.nth v@@26 (- (- (seq.len v@@26) i@@25) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@25))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6657 v@@26))
)))
(assert (forall ((|l#0| Bool) (i@@26 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26) |l#0|)
 :qid |unusedschemaz3bpl.245:54|
 :skolemid |73|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_17733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_17733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))))
(Multiset_17733 (|lambda#3| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0)) (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |unusedschemaz3bpl.2072:13|
 :skolemid |74|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@27)))
 :qid |unusedschemaz3bpl.124:29|
 :skolemid |75|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_use_vec$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 42246) true)
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
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_31375 0)) ((($Memory_31375 (|domain#$Memory_31375| |T@[Int]Bool|) (|contents#$Memory_31375| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_32881 0)) ((($Memory_32881 (|domain#$Memory_32881| |T@[Int]Bool|) (|contents#$Memory_32881| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_32750 0)) ((($Memory_32750 (|domain#$Memory_32750| |T@[Int]Bool|) (|contents#$Memory_32750| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_32642 0)) ((($Memory_32642 (|domain#$Memory_32642| |T@[Int]Bool|) (|contents#$Memory_32642| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_32534 0)) ((($Memory_32534 (|domain#$Memory_32534| |T@[Int]Bool|) (|contents#$Memory_32534| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_17733 0)) (((Multiset_17733 (|v#Multiset_17733| |T@[$EventRep]Int|) (|l#Multiset_17733| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_17733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_17733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_33697 0)) ((($Mutation_33697 (|l#$Mutation_33697| T@$Location) (|p#$Mutation_33697| (Seq Int)) (|v#$Mutation_33697| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_32006 0)) ((($Mutation_32006 (|l#$Mutation_32006| T@$Location) (|p#$Mutation_32006| (Seq Int)) (|v#$Mutation_32006| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7877 0)) ((($Mutation_7877 (|l#$Mutation_7877| T@$Location) (|p#$Mutation_7877| (Seq Int)) (|v#$Mutation_7877| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6804 0)) ((($Mutation_6804 (|l#$Mutation_6804| T@$Location) (|p#$Mutation_6804| (Seq Int)) (|v#$Mutation_6804| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_25654 0)) ((($Mutation_25654 (|l#$Mutation_25654| T@$Location) (|p#$Mutation_25654| (Seq Int)) (|v#$Mutation_25654| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_24328 0)) ((($Mutation_24328 (|l#$Mutation_24328| T@$Location) (|p#$Mutation_24328| (Seq Int)) (|v#$Mutation_24328| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_23582 0)) ((($Mutation_23582 (|l#$Mutation_23582| T@$Location) (|p#$Mutation_23582| (Seq Int)) (|v#$Mutation_23582| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_22142 0)) ((($Mutation_22142 (|l#$Mutation_22142| T@$Location) (|p#$Mutation_22142| (Seq Int)) (|v#$Mutation_22142| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_21396 0)) ((($Mutation_21396 (|l#$Mutation_21396| T@$Location) (|p#$Mutation_21396| (Seq Int)) (|v#$Mutation_21396| (Seq |T@$42_TestMonomorphization_R'u64'|)) ) ) ))
(declare-datatypes ((T@$Mutation_19918 0)) ((($Mutation_19918 (|l#$Mutation_19918| T@$Location) (|p#$Mutation_19918| (Seq Int)) (|v#$Mutation_19918| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19172 0)) ((($Mutation_19172 (|l#$Mutation_19172| T@$Location) (|p#$Mutation_19172| (Seq Int)) (|v#$Mutation_19172| (Seq |T@$42_TestMonomorphization_R'address'|)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| ((Seq |T@$42_TestMonomorphization_R'address'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| ((Seq |T@$42_TestMonomorphization_R'address'|) |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| ((Seq |T@$42_TestMonomorphization_R'u64'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| ((Seq |T@$42_TestMonomorphization_R'u64'|) |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsValid'vec'vec'u64'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u64''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle) T@Multiset_17733)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun ReverseVec_14952 ((Seq |T@$42_TestMonomorphization_R'address'|)) (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun ReverseVec_7730 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_15149 ((Seq |T@$42_TestMonomorphization_R'u64'|)) (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun ReverseVec_15346 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_6657 ((Seq Bool)) (Seq Bool))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_17733| |T@[$1_Event_EventHandle]Multiset_17733|) |T@[$1_Event_EventHandle]Multiset_17733|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |unusedschemaz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |unusedschemaz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |unusedschemaz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |unusedschemaz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |unusedschemaz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |unusedschemaz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestMonomorphization_R'address''| (seq.nth v@@4 i@@0)))
 :qid |unusedschemaz3bpl.590:13|
 :skolemid |15|
))))
 :qid |unusedschemaz3bpl.588:61|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@$42_TestMonomorphization_R'address'|)) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |unusedschemaz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |unusedschemaz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |unusedschemaz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$42_TestMonomorphization_R'u64''| (seq.nth v@@6 i@@3)))
 :qid |unusedschemaz3bpl.770:13|
 :skolemid |20|
))))
 :qid |unusedschemaz3bpl.768:57|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 (Seq |T@$42_TestMonomorphization_R'u64'|)) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@4 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |unusedschemaz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |unusedschemaz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |unusedschemaz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'vec'u64''| (seq.nth v@@8 i@@6)))
 :qid |unusedschemaz3bpl.950:13|
 :skolemid |25|
))))
 :qid |unusedschemaz3bpl.948:34|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 (Seq (Seq Int))) (e@@1 (Seq Int)) ) (! (let ((i@@7 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |unusedschemaz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |unusedschemaz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |unusedschemaz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) true)
 :qid |unusedschemaz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |unusedschemaz3bpl.1128:30|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 (Seq Bool)) (e@@2 Bool) ) (! (let ((i@@10 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |unusedschemaz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |unusedschemaz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |unusedschemaz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |unusedschemaz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |unusedschemaz3bpl.1308:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |unusedschemaz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |unusedschemaz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |unusedschemaz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u64'| (seq.nth v@@14 i@@15)))
 :qid |unusedschemaz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |unusedschemaz3bpl.1488:29|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |unusedschemaz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |unusedschemaz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |unusedschemaz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |unusedschemaz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |unusedschemaz3bpl.1668:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |unusedschemaz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |unusedschemaz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |unusedschemaz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |unusedschemaz3bpl.1856:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |unusedschemaz3bpl.1872:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |unusedschemaz3bpl.1939:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |unusedschemaz3bpl.1942:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |unusedschemaz3bpl.1969:15|
 :skolemid |54|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |unusedschemaz3bpl.1974:15|
 :skolemid |55|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |unusedschemaz3bpl.1996:15|
 :skolemid |56|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |unusedschemaz3bpl.2001:15|
 :skolemid |57|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |unusedschemaz3bpl.2015:15|
 :skolemid |58|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_17733| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream) v@@21) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |unusedschemaz3bpl.2103:69|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@3 T@$42_TestMonomorphization_E) (v2@@3 T@$42_TestMonomorphization_E) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3)))
 :qid |unusedschemaz3bpl.2109:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |unusedschemaz3bpl.2163:15|
 :skolemid |63|
)))
(assert (forall ((addr Int) ) (! true
 :qid |unusedschemaz3bpl.2167:15|
 :skolemid |64|
)))
(assert (forall ((s@@0 T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s@@0) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s@@0)))
 :qid |unusedschemaz3bpl.2182:47|
 :skolemid |65|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1)  (and true true))
 :qid |unusedschemaz3bpl.2198:53|
 :skolemid |66|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@2)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@2))))
 :qid |unusedschemaz3bpl.2216:52|
 :skolemid |67|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@3)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@3)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@3))))
 :qid |unusedschemaz3bpl.2234:56|
 :skolemid |68|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4)  (and true true))
 :qid |unusedschemaz3bpl.2252:51|
 :skolemid |69|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4))
)))
(assert (forall ((v@@22 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (let ((r@@3 (ReverseVec_14952 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@22 (- (- (seq.len v@@22) i@@21) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14952 v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@4 (ReverseVec_7730 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@23 (- (- (seq.len v@@23) i@@22) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7730 v@@23))
)))
(assert (forall ((v@@24 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (let ((r@@5 (ReverseVec_15149 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@5))) (= (seq.nth r@@5 i@@23) (seq.nth v@@24 (- (- (seq.len v@@24) i@@23) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@23))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15149 v@@24))
)))
(assert (forall ((v@@25 (Seq (Seq Int))) ) (! (let ((r@@6 (ReverseVec_15346 v@@25)))
 (and (= (seq.len r@@6) (seq.len v@@25)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@6))) (= (seq.nth r@@6 i@@24) (seq.nth v@@25 (- (- (seq.len v@@25) i@@24) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@24))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15346 v@@25))
)))
(assert (forall ((v@@26 (Seq Bool)) ) (! (let ((r@@7 (ReverseVec_6657 v@@26)))
 (and (= (seq.len r@@7) (seq.len v@@26)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@7))) (= (seq.nth r@@7 i@@25) (seq.nth v@@26 (- (- (seq.len v@@26) i@@25) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@25))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6657 v@@26))
)))
(assert (forall ((|l#0| Bool) (i@@26 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26) |l#0|)
 :qid |unusedschemaz3bpl.245:54|
 :skolemid |73|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_17733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_17733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))))
(Multiset_17733 (|lambda#3| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0)) (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |unusedschemaz3bpl.2072:13|
 :skolemid |74|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@27)))
 :qid |unusedschemaz3bpl.124:29|
 :skolemid |75|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'address'$0$m'@1| () T@$Mutation_24328)
(declare-fun $t1@0 () T@$Mutation_24328)
(declare-fun _$t0 () (Seq Int))
(declare-fun $es () T@$EventStore)
(declare-fun $t1 () T@$Mutation_24328)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_vec_addr$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 42297) (let ((anon4_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_24328| |inline$$1_Vector_push_back'address'$0$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 39218) (- 0 42452)))) (not (= (seq.nth $t0@0 0) 1)))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_push_back'address'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'address'$0$m'@1| ($Mutation_24328 (|l#$Mutation_24328| $t1@0) (|p#$Mutation_24328| $t1@0) (seq.++ (|v#$Mutation_24328| $t1@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 39176) 39236) anon4_Then_correct) (=> (= (ControlFlow 0 39176) 39218) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'address''| _$t0) (=> (and (and (= _$t0 _$t0) (= $t1@0 ($Mutation_24328 ($Local 0) (as seq.empty (Seq Int)) _$t0))) (and (|$IsValid'address'| 1) (= (ControlFlow 0 39182) 39176))) |inline$$1_Vector_push_back'address'$0$anon0_correct|))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_17733| stream@@0) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@0) v@@28) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
))) (= (ControlFlow 0 39083) 39182)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_24328| $t1)) 0) (= (ControlFlow 0 39093) 39083)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 42297) 39093) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 42297)))
(get-value ((ControlFlow 0 39093)))
(get-value ((ControlFlow 0 39083)))
(get-value ((ControlFlow 0 39182)))
(get-value ((ControlFlow 0 39176)))
(get-value ((ControlFlow 0 39218)))
(assert (not (= (ControlFlow 0 39218) (- 42452))))
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
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_31375 0)) ((($Memory_31375 (|domain#$Memory_31375| |T@[Int]Bool|) (|contents#$Memory_31375| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_32881 0)) ((($Memory_32881 (|domain#$Memory_32881| |T@[Int]Bool|) (|contents#$Memory_32881| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_32750 0)) ((($Memory_32750 (|domain#$Memory_32750| |T@[Int]Bool|) (|contents#$Memory_32750| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_32642 0)) ((($Memory_32642 (|domain#$Memory_32642| |T@[Int]Bool|) (|contents#$Memory_32642| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_32534 0)) ((($Memory_32534 (|domain#$Memory_32534| |T@[Int]Bool|) (|contents#$Memory_32534| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_17733 0)) (((Multiset_17733 (|v#Multiset_17733| |T@[$EventRep]Int|) (|l#Multiset_17733| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_17733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_17733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_33697 0)) ((($Mutation_33697 (|l#$Mutation_33697| T@$Location) (|p#$Mutation_33697| (Seq Int)) (|v#$Mutation_33697| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_32006 0)) ((($Mutation_32006 (|l#$Mutation_32006| T@$Location) (|p#$Mutation_32006| (Seq Int)) (|v#$Mutation_32006| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7877 0)) ((($Mutation_7877 (|l#$Mutation_7877| T@$Location) (|p#$Mutation_7877| (Seq Int)) (|v#$Mutation_7877| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6804 0)) ((($Mutation_6804 (|l#$Mutation_6804| T@$Location) (|p#$Mutation_6804| (Seq Int)) (|v#$Mutation_6804| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_25654 0)) ((($Mutation_25654 (|l#$Mutation_25654| T@$Location) (|p#$Mutation_25654| (Seq Int)) (|v#$Mutation_25654| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_24328 0)) ((($Mutation_24328 (|l#$Mutation_24328| T@$Location) (|p#$Mutation_24328| (Seq Int)) (|v#$Mutation_24328| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_23582 0)) ((($Mutation_23582 (|l#$Mutation_23582| T@$Location) (|p#$Mutation_23582| (Seq Int)) (|v#$Mutation_23582| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_22142 0)) ((($Mutation_22142 (|l#$Mutation_22142| T@$Location) (|p#$Mutation_22142| (Seq Int)) (|v#$Mutation_22142| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_21396 0)) ((($Mutation_21396 (|l#$Mutation_21396| T@$Location) (|p#$Mutation_21396| (Seq Int)) (|v#$Mutation_21396| (Seq |T@$42_TestMonomorphization_R'u64'|)) ) ) ))
(declare-datatypes ((T@$Mutation_19918 0)) ((($Mutation_19918 (|l#$Mutation_19918| T@$Location) (|p#$Mutation_19918| (Seq Int)) (|v#$Mutation_19918| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19172 0)) ((($Mutation_19172 (|l#$Mutation_19172| T@$Location) (|p#$Mutation_19172| (Seq Int)) (|v#$Mutation_19172| (Seq |T@$42_TestMonomorphization_R'address'|)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| ((Seq |T@$42_TestMonomorphization_R'address'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| ((Seq |T@$42_TestMonomorphization_R'address'|) |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| ((Seq |T@$42_TestMonomorphization_R'u64'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| ((Seq |T@$42_TestMonomorphization_R'u64'|) |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsValid'vec'vec'u64'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u64''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle) T@Multiset_17733)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun ReverseVec_14952 ((Seq |T@$42_TestMonomorphization_R'address'|)) (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun ReverseVec_7730 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_15149 ((Seq |T@$42_TestMonomorphization_R'u64'|)) (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun ReverseVec_15346 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_6657 ((Seq Bool)) (Seq Bool))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_17733| |T@[$1_Event_EventHandle]Multiset_17733|) |T@[$1_Event_EventHandle]Multiset_17733|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |unusedschemaz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |unusedschemaz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |unusedschemaz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |unusedschemaz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |unusedschemaz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |unusedschemaz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestMonomorphization_R'address''| (seq.nth v@@4 i@@0)))
 :qid |unusedschemaz3bpl.590:13|
 :skolemid |15|
))))
 :qid |unusedschemaz3bpl.588:61|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@$42_TestMonomorphization_R'address'|)) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |unusedschemaz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |unusedschemaz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |unusedschemaz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$42_TestMonomorphization_R'u64''| (seq.nth v@@6 i@@3)))
 :qid |unusedschemaz3bpl.770:13|
 :skolemid |20|
))))
 :qid |unusedschemaz3bpl.768:57|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 (Seq |T@$42_TestMonomorphization_R'u64'|)) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@4 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |unusedschemaz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |unusedschemaz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |unusedschemaz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'vec'u64''| (seq.nth v@@8 i@@6)))
 :qid |unusedschemaz3bpl.950:13|
 :skolemid |25|
))))
 :qid |unusedschemaz3bpl.948:34|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 (Seq (Seq Int))) (e@@1 (Seq Int)) ) (! (let ((i@@7 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |unusedschemaz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |unusedschemaz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |unusedschemaz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) true)
 :qid |unusedschemaz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |unusedschemaz3bpl.1128:30|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 (Seq Bool)) (e@@2 Bool) ) (! (let ((i@@10 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |unusedschemaz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |unusedschemaz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |unusedschemaz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |unusedschemaz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |unusedschemaz3bpl.1308:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |unusedschemaz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |unusedschemaz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |unusedschemaz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u64'| (seq.nth v@@14 i@@15)))
 :qid |unusedschemaz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |unusedschemaz3bpl.1488:29|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |unusedschemaz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |unusedschemaz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |unusedschemaz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |unusedschemaz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |unusedschemaz3bpl.1668:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |unusedschemaz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |unusedschemaz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |unusedschemaz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |unusedschemaz3bpl.1856:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |unusedschemaz3bpl.1872:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |unusedschemaz3bpl.1939:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |unusedschemaz3bpl.1942:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |unusedschemaz3bpl.1969:15|
 :skolemid |54|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |unusedschemaz3bpl.1974:15|
 :skolemid |55|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |unusedschemaz3bpl.1996:15|
 :skolemid |56|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |unusedschemaz3bpl.2001:15|
 :skolemid |57|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |unusedschemaz3bpl.2015:15|
 :skolemid |58|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_17733| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream) v@@21) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |unusedschemaz3bpl.2103:69|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@3 T@$42_TestMonomorphization_E) (v2@@3 T@$42_TestMonomorphization_E) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3)))
 :qid |unusedschemaz3bpl.2109:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |unusedschemaz3bpl.2163:15|
 :skolemid |63|
)))
(assert (forall ((addr Int) ) (! true
 :qid |unusedschemaz3bpl.2167:15|
 :skolemid |64|
)))
(assert (forall ((s@@0 T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s@@0) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s@@0)))
 :qid |unusedschemaz3bpl.2182:47|
 :skolemid |65|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1)  (and true true))
 :qid |unusedschemaz3bpl.2198:53|
 :skolemid |66|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@2)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@2))))
 :qid |unusedschemaz3bpl.2216:52|
 :skolemid |67|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@3)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@3)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@3))))
 :qid |unusedschemaz3bpl.2234:56|
 :skolemid |68|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4)  (and true true))
 :qid |unusedschemaz3bpl.2252:51|
 :skolemid |69|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4))
)))
(assert (forall ((v@@22 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (let ((r@@3 (ReverseVec_14952 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@22 (- (- (seq.len v@@22) i@@21) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14952 v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@4 (ReverseVec_7730 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@23 (- (- (seq.len v@@23) i@@22) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7730 v@@23))
)))
(assert (forall ((v@@24 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (let ((r@@5 (ReverseVec_15149 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@5))) (= (seq.nth r@@5 i@@23) (seq.nth v@@24 (- (- (seq.len v@@24) i@@23) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@23))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15149 v@@24))
)))
(assert (forall ((v@@25 (Seq (Seq Int))) ) (! (let ((r@@6 (ReverseVec_15346 v@@25)))
 (and (= (seq.len r@@6) (seq.len v@@25)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@6))) (= (seq.nth r@@6 i@@24) (seq.nth v@@25 (- (- (seq.len v@@25) i@@24) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@24))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15346 v@@25))
)))
(assert (forall ((v@@26 (Seq Bool)) ) (! (let ((r@@7 (ReverseVec_6657 v@@26)))
 (and (= (seq.len r@@7) (seq.len v@@26)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@7))) (= (seq.nth r@@7 i@@25) (seq.nth v@@26 (- (- (seq.len v@@26) i@@25) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@25))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6657 v@@26))
)))
(assert (forall ((|l#0| Bool) (i@@26 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26) |l#0|)
 :qid |unusedschemaz3bpl.245:54|
 :skolemid |73|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_17733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_17733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))))
(Multiset_17733 (|lambda#3| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0)) (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |unusedschemaz3bpl.2072:13|
 :skolemid |74|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@27)))
 :qid |unusedschemaz3bpl.124:29|
 :skolemid |75|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () (Seq Bool))
(declare-fun |inline$$1_Vector_push_back'bool'$0$m'@1| () T@$Mutation_25654)
(declare-fun $t1@0 () T@$Mutation_25654)
(declare-fun _$t0 () (Seq Bool))
(declare-fun $es () T@$EventStore)
(declare-fun $t1 () T@$Mutation_25654)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_vec_bool$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 42475) (let ((anon4_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_25654| |inline$$1_Vector_push_back'bool'$0$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 39465) (- 0 42630)))) (not (= (seq.nth $t0@0 0) true)))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_push_back'bool'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'bool'$0$m'@1| ($Mutation_25654 (|l#$Mutation_25654| $t1@0) (|p#$Mutation_25654| $t1@0) (seq.++ (|v#$Mutation_25654| $t1@0) (seq.unit true)))) (and (=> (= (ControlFlow 0 39423) 39483) anon4_Then_correct) (=> (= (ControlFlow 0 39423) 39465) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'bool''| _$t0) (= _$t0 _$t0)) (and (= $t1@0 ($Mutation_25654 ($Local 0) (as seq.empty (Seq Int)) _$t0)) (= (ControlFlow 0 39429) 39423))) |inline$$1_Vector_push_back'bool'$0$anon0_correct|)))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_17733| stream@@0) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@0) v@@28) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
))) (= (ControlFlow 0 39330) 39429)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_25654| $t1)) 0) (= (ControlFlow 0 39340) 39330)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 42475) 39340) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 42475)))
(get-value ((ControlFlow 0 39340)))
(get-value ((ControlFlow 0 39330)))
(get-value ((ControlFlow 0 39429)))
(get-value ((ControlFlow 0 39423)))
(get-value ((ControlFlow 0 39465)))
(assert (not (= (ControlFlow 0 39465) (- 42630))))
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
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_31375 0)) ((($Memory_31375 (|domain#$Memory_31375| |T@[Int]Bool|) (|contents#$Memory_31375| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_32881 0)) ((($Memory_32881 (|domain#$Memory_32881| |T@[Int]Bool|) (|contents#$Memory_32881| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_32750 0)) ((($Memory_32750 (|domain#$Memory_32750| |T@[Int]Bool|) (|contents#$Memory_32750| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_32642 0)) ((($Memory_32642 (|domain#$Memory_32642| |T@[Int]Bool|) (|contents#$Memory_32642| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_32534 0)) ((($Memory_32534 (|domain#$Memory_32534| |T@[Int]Bool|) (|contents#$Memory_32534| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_17733 0)) (((Multiset_17733 (|v#Multiset_17733| |T@[$EventRep]Int|) (|l#Multiset_17733| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_17733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_17733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_33697 0)) ((($Mutation_33697 (|l#$Mutation_33697| T@$Location) (|p#$Mutation_33697| (Seq Int)) (|v#$Mutation_33697| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_32006 0)) ((($Mutation_32006 (|l#$Mutation_32006| T@$Location) (|p#$Mutation_32006| (Seq Int)) (|v#$Mutation_32006| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7877 0)) ((($Mutation_7877 (|l#$Mutation_7877| T@$Location) (|p#$Mutation_7877| (Seq Int)) (|v#$Mutation_7877| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6804 0)) ((($Mutation_6804 (|l#$Mutation_6804| T@$Location) (|p#$Mutation_6804| (Seq Int)) (|v#$Mutation_6804| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_25654 0)) ((($Mutation_25654 (|l#$Mutation_25654| T@$Location) (|p#$Mutation_25654| (Seq Int)) (|v#$Mutation_25654| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_24328 0)) ((($Mutation_24328 (|l#$Mutation_24328| T@$Location) (|p#$Mutation_24328| (Seq Int)) (|v#$Mutation_24328| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_23582 0)) ((($Mutation_23582 (|l#$Mutation_23582| T@$Location) (|p#$Mutation_23582| (Seq Int)) (|v#$Mutation_23582| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_22142 0)) ((($Mutation_22142 (|l#$Mutation_22142| T@$Location) (|p#$Mutation_22142| (Seq Int)) (|v#$Mutation_22142| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_21396 0)) ((($Mutation_21396 (|l#$Mutation_21396| T@$Location) (|p#$Mutation_21396| (Seq Int)) (|v#$Mutation_21396| (Seq |T@$42_TestMonomorphization_R'u64'|)) ) ) ))
(declare-datatypes ((T@$Mutation_19918 0)) ((($Mutation_19918 (|l#$Mutation_19918| T@$Location) (|p#$Mutation_19918| (Seq Int)) (|v#$Mutation_19918| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19172 0)) ((($Mutation_19172 (|l#$Mutation_19172| T@$Location) (|p#$Mutation_19172| (Seq Int)) (|v#$Mutation_19172| (Seq |T@$42_TestMonomorphization_R'address'|)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| ((Seq |T@$42_TestMonomorphization_R'address'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| ((Seq |T@$42_TestMonomorphization_R'address'|) |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| ((Seq |T@$42_TestMonomorphization_R'u64'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| ((Seq |T@$42_TestMonomorphization_R'u64'|) |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsValid'vec'vec'u64'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u64''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle) T@Multiset_17733)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun ReverseVec_14952 ((Seq |T@$42_TestMonomorphization_R'address'|)) (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun ReverseVec_7730 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_15149 ((Seq |T@$42_TestMonomorphization_R'u64'|)) (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun ReverseVec_15346 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_6657 ((Seq Bool)) (Seq Bool))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_17733| |T@[$1_Event_EventHandle]Multiset_17733|) |T@[$1_Event_EventHandle]Multiset_17733|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |unusedschemaz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |unusedschemaz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |unusedschemaz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |unusedschemaz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |unusedschemaz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |unusedschemaz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestMonomorphization_R'address''| (seq.nth v@@4 i@@0)))
 :qid |unusedschemaz3bpl.590:13|
 :skolemid |15|
))))
 :qid |unusedschemaz3bpl.588:61|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@$42_TestMonomorphization_R'address'|)) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |unusedschemaz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |unusedschemaz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |unusedschemaz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$42_TestMonomorphization_R'u64''| (seq.nth v@@6 i@@3)))
 :qid |unusedschemaz3bpl.770:13|
 :skolemid |20|
))))
 :qid |unusedschemaz3bpl.768:57|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 (Seq |T@$42_TestMonomorphization_R'u64'|)) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@4 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |unusedschemaz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |unusedschemaz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |unusedschemaz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'vec'u64''| (seq.nth v@@8 i@@6)))
 :qid |unusedschemaz3bpl.950:13|
 :skolemid |25|
))))
 :qid |unusedschemaz3bpl.948:34|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 (Seq (Seq Int))) (e@@1 (Seq Int)) ) (! (let ((i@@7 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |unusedschemaz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |unusedschemaz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |unusedschemaz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) true)
 :qid |unusedschemaz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |unusedschemaz3bpl.1128:30|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 (Seq Bool)) (e@@2 Bool) ) (! (let ((i@@10 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |unusedschemaz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |unusedschemaz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |unusedschemaz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |unusedschemaz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |unusedschemaz3bpl.1308:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |unusedschemaz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |unusedschemaz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |unusedschemaz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u64'| (seq.nth v@@14 i@@15)))
 :qid |unusedschemaz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |unusedschemaz3bpl.1488:29|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |unusedschemaz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |unusedschemaz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |unusedschemaz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |unusedschemaz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |unusedschemaz3bpl.1668:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |unusedschemaz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |unusedschemaz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |unusedschemaz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |unusedschemaz3bpl.1856:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |unusedschemaz3bpl.1872:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |unusedschemaz3bpl.1939:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |unusedschemaz3bpl.1942:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |unusedschemaz3bpl.1969:15|
 :skolemid |54|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |unusedschemaz3bpl.1974:15|
 :skolemid |55|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |unusedschemaz3bpl.1996:15|
 :skolemid |56|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |unusedschemaz3bpl.2001:15|
 :skolemid |57|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |unusedschemaz3bpl.2015:15|
 :skolemid |58|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_17733| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream) v@@21) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |unusedschemaz3bpl.2103:69|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@3 T@$42_TestMonomorphization_E) (v2@@3 T@$42_TestMonomorphization_E) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3)))
 :qid |unusedschemaz3bpl.2109:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |unusedschemaz3bpl.2163:15|
 :skolemid |63|
)))
(assert (forall ((addr Int) ) (! true
 :qid |unusedschemaz3bpl.2167:15|
 :skolemid |64|
)))
(assert (forall ((s@@0 T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s@@0) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s@@0)))
 :qid |unusedschemaz3bpl.2182:47|
 :skolemid |65|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1)  (and true true))
 :qid |unusedschemaz3bpl.2198:53|
 :skolemid |66|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@2)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@2))))
 :qid |unusedschemaz3bpl.2216:52|
 :skolemid |67|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@3)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@3)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@3))))
 :qid |unusedschemaz3bpl.2234:56|
 :skolemid |68|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4)  (and true true))
 :qid |unusedschemaz3bpl.2252:51|
 :skolemid |69|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4))
)))
(assert (forall ((v@@22 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (let ((r@@3 (ReverseVec_14952 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@22 (- (- (seq.len v@@22) i@@21) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14952 v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@4 (ReverseVec_7730 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@23 (- (- (seq.len v@@23) i@@22) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7730 v@@23))
)))
(assert (forall ((v@@24 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (let ((r@@5 (ReverseVec_15149 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@5))) (= (seq.nth r@@5 i@@23) (seq.nth v@@24 (- (- (seq.len v@@24) i@@23) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@23))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15149 v@@24))
)))
(assert (forall ((v@@25 (Seq (Seq Int))) ) (! (let ((r@@6 (ReverseVec_15346 v@@25)))
 (and (= (seq.len r@@6) (seq.len v@@25)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@6))) (= (seq.nth r@@6 i@@24) (seq.nth v@@25 (- (- (seq.len v@@25) i@@24) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@24))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15346 v@@25))
)))
(assert (forall ((v@@26 (Seq Bool)) ) (! (let ((r@@7 (ReverseVec_6657 v@@26)))
 (and (= (seq.len r@@7) (seq.len v@@26)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@7))) (= (seq.nth r@@7 i@@25) (seq.nth v@@26 (- (- (seq.len v@@26) i@@25) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@25))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6657 v@@26))
)))
(assert (forall ((|l#0| Bool) (i@@26 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26) |l#0|)
 :qid |unusedschemaz3bpl.245:54|
 :skolemid |73|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_17733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_17733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))))
(Multiset_17733 (|lambda#3| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0)) (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |unusedschemaz3bpl.2072:13|
 :skolemid |74|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@27)))
 :qid |unusedschemaz3bpl.124:29|
 :skolemid |75|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_24328)
(declare-fun $t1@0 () T@$Mutation_24328)
(declare-fun _$t0 () (Seq Int))
(declare-fun $es () T@$EventStore)
(declare-fun $t1 () T@$Mutation_24328)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_vec_int$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 42653) (let ((anon4_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_24328| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 39712) (- 0 42808)))) (not (= (seq.nth $t0@0 0) 1)))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_24328 (|l#$Mutation_24328| $t1@0) (|p#$Mutation_24328| $t1@0) (seq.++ (|v#$Mutation_24328| $t1@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 39670) 39730) anon4_Then_correct) (=> (= (ControlFlow 0 39670) 39712) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (and (= _$t0 _$t0) (= $t1@0 ($Mutation_24328 ($Local 0) (as seq.empty (Seq Int)) _$t0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 39676) 39670))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_17733| stream@@0) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@0) v@@28) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
))) (= (ControlFlow 0 39577) 39676)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_24328| $t1)) 0) (= (ControlFlow 0 39587) 39577)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 42653) 39587) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 42653)))
(get-value ((ControlFlow 0 39587)))
(get-value ((ControlFlow 0 39577)))
(get-value ((ControlFlow 0 39676)))
(get-value ((ControlFlow 0 39670)))
(get-value ((ControlFlow 0 39712)))
(assert (not (= (ControlFlow 0 39712) (- 42808))))
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
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_31375 0)) ((($Memory_31375 (|domain#$Memory_31375| |T@[Int]Bool|) (|contents#$Memory_31375| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_32881 0)) ((($Memory_32881 (|domain#$Memory_32881| |T@[Int]Bool|) (|contents#$Memory_32881| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_32750 0)) ((($Memory_32750 (|domain#$Memory_32750| |T@[Int]Bool|) (|contents#$Memory_32750| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_32642 0)) ((($Memory_32642 (|domain#$Memory_32642| |T@[Int]Bool|) (|contents#$Memory_32642| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_32534 0)) ((($Memory_32534 (|domain#$Memory_32534| |T@[Int]Bool|) (|contents#$Memory_32534| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_17733 0)) (((Multiset_17733 (|v#Multiset_17733| |T@[$EventRep]Int|) (|l#Multiset_17733| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_17733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_17733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_33697 0)) ((($Mutation_33697 (|l#$Mutation_33697| T@$Location) (|p#$Mutation_33697| (Seq Int)) (|v#$Mutation_33697| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_32006 0)) ((($Mutation_32006 (|l#$Mutation_32006| T@$Location) (|p#$Mutation_32006| (Seq Int)) (|v#$Mutation_32006| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7877 0)) ((($Mutation_7877 (|l#$Mutation_7877| T@$Location) (|p#$Mutation_7877| (Seq Int)) (|v#$Mutation_7877| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6804 0)) ((($Mutation_6804 (|l#$Mutation_6804| T@$Location) (|p#$Mutation_6804| (Seq Int)) (|v#$Mutation_6804| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_25654 0)) ((($Mutation_25654 (|l#$Mutation_25654| T@$Location) (|p#$Mutation_25654| (Seq Int)) (|v#$Mutation_25654| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_24328 0)) ((($Mutation_24328 (|l#$Mutation_24328| T@$Location) (|p#$Mutation_24328| (Seq Int)) (|v#$Mutation_24328| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_23582 0)) ((($Mutation_23582 (|l#$Mutation_23582| T@$Location) (|p#$Mutation_23582| (Seq Int)) (|v#$Mutation_23582| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_22142 0)) ((($Mutation_22142 (|l#$Mutation_22142| T@$Location) (|p#$Mutation_22142| (Seq Int)) (|v#$Mutation_22142| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_21396 0)) ((($Mutation_21396 (|l#$Mutation_21396| T@$Location) (|p#$Mutation_21396| (Seq Int)) (|v#$Mutation_21396| (Seq |T@$42_TestMonomorphization_R'u64'|)) ) ) ))
(declare-datatypes ((T@$Mutation_19918 0)) ((($Mutation_19918 (|l#$Mutation_19918| T@$Location) (|p#$Mutation_19918| (Seq Int)) (|v#$Mutation_19918| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19172 0)) ((($Mutation_19172 (|l#$Mutation_19172| T@$Location) (|p#$Mutation_19172| (Seq Int)) (|v#$Mutation_19172| (Seq |T@$42_TestMonomorphization_R'address'|)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| ((Seq |T@$42_TestMonomorphization_R'address'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| ((Seq |T@$42_TestMonomorphization_R'address'|) |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| ((Seq |T@$42_TestMonomorphization_R'u64'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| ((Seq |T@$42_TestMonomorphization_R'u64'|) |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsValid'vec'vec'u64'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u64''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle) T@Multiset_17733)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun ReverseVec_14952 ((Seq |T@$42_TestMonomorphization_R'address'|)) (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun ReverseVec_7730 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_15149 ((Seq |T@$42_TestMonomorphization_R'u64'|)) (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun ReverseVec_15346 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_6657 ((Seq Bool)) (Seq Bool))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_17733| |T@[$1_Event_EventHandle]Multiset_17733|) |T@[$1_Event_EventHandle]Multiset_17733|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |unusedschemaz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |unusedschemaz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |unusedschemaz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |unusedschemaz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |unusedschemaz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |unusedschemaz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestMonomorphization_R'address''| (seq.nth v@@4 i@@0)))
 :qid |unusedschemaz3bpl.590:13|
 :skolemid |15|
))))
 :qid |unusedschemaz3bpl.588:61|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@$42_TestMonomorphization_R'address'|)) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |unusedschemaz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |unusedschemaz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |unusedschemaz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$42_TestMonomorphization_R'u64''| (seq.nth v@@6 i@@3)))
 :qid |unusedschemaz3bpl.770:13|
 :skolemid |20|
))))
 :qid |unusedschemaz3bpl.768:57|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 (Seq |T@$42_TestMonomorphization_R'u64'|)) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@4 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |unusedschemaz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |unusedschemaz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |unusedschemaz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'vec'u64''| (seq.nth v@@8 i@@6)))
 :qid |unusedschemaz3bpl.950:13|
 :skolemid |25|
))))
 :qid |unusedschemaz3bpl.948:34|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 (Seq (Seq Int))) (e@@1 (Seq Int)) ) (! (let ((i@@7 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |unusedschemaz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |unusedschemaz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |unusedschemaz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) true)
 :qid |unusedschemaz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |unusedschemaz3bpl.1128:30|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 (Seq Bool)) (e@@2 Bool) ) (! (let ((i@@10 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |unusedschemaz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |unusedschemaz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |unusedschemaz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |unusedschemaz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |unusedschemaz3bpl.1308:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |unusedschemaz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |unusedschemaz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |unusedschemaz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u64'| (seq.nth v@@14 i@@15)))
 :qid |unusedschemaz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |unusedschemaz3bpl.1488:29|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |unusedschemaz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |unusedschemaz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |unusedschemaz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |unusedschemaz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |unusedschemaz3bpl.1668:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |unusedschemaz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |unusedschemaz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |unusedschemaz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |unusedschemaz3bpl.1856:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |unusedschemaz3bpl.1872:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |unusedschemaz3bpl.1939:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |unusedschemaz3bpl.1942:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |unusedschemaz3bpl.1969:15|
 :skolemid |54|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |unusedschemaz3bpl.1974:15|
 :skolemid |55|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |unusedschemaz3bpl.1996:15|
 :skolemid |56|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |unusedschemaz3bpl.2001:15|
 :skolemid |57|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |unusedschemaz3bpl.2015:15|
 :skolemid |58|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_17733| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream) v@@21) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |unusedschemaz3bpl.2103:69|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@3 T@$42_TestMonomorphization_E) (v2@@3 T@$42_TestMonomorphization_E) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3)))
 :qid |unusedschemaz3bpl.2109:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |unusedschemaz3bpl.2163:15|
 :skolemid |63|
)))
(assert (forall ((addr Int) ) (! true
 :qid |unusedschemaz3bpl.2167:15|
 :skolemid |64|
)))
(assert (forall ((s@@0 T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s@@0) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s@@0)))
 :qid |unusedschemaz3bpl.2182:47|
 :skolemid |65|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1)  (and true true))
 :qid |unusedschemaz3bpl.2198:53|
 :skolemid |66|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@2)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@2))))
 :qid |unusedschemaz3bpl.2216:52|
 :skolemid |67|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@3)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@3)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@3))))
 :qid |unusedschemaz3bpl.2234:56|
 :skolemid |68|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4)  (and true true))
 :qid |unusedschemaz3bpl.2252:51|
 :skolemid |69|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4))
)))
(assert (forall ((v@@22 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (let ((r@@3 (ReverseVec_14952 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@22 (- (- (seq.len v@@22) i@@21) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14952 v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@4 (ReverseVec_7730 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@23 (- (- (seq.len v@@23) i@@22) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7730 v@@23))
)))
(assert (forall ((v@@24 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (let ((r@@5 (ReverseVec_15149 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@5))) (= (seq.nth r@@5 i@@23) (seq.nth v@@24 (- (- (seq.len v@@24) i@@23) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@23))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15149 v@@24))
)))
(assert (forall ((v@@25 (Seq (Seq Int))) ) (! (let ((r@@6 (ReverseVec_15346 v@@25)))
 (and (= (seq.len r@@6) (seq.len v@@25)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@6))) (= (seq.nth r@@6 i@@24) (seq.nth v@@25 (- (- (seq.len v@@25) i@@24) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@24))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15346 v@@25))
)))
(assert (forall ((v@@26 (Seq Bool)) ) (! (let ((r@@7 (ReverseVec_6657 v@@26)))
 (and (= (seq.len r@@7) (seq.len v@@26)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@7))) (= (seq.nth r@@7 i@@25) (seq.nth v@@26 (- (- (seq.len v@@26) i@@25) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@25))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6657 v@@26))
)))
(assert (forall ((|l#0| Bool) (i@@26 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26) |l#0|)
 :qid |unusedschemaz3bpl.245:54|
 :skolemid |73|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_17733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_17733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))))
(Multiset_17733 (|lambda#3| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0)) (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |unusedschemaz3bpl.2072:13|
 :skolemid |74|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@27)))
 :qid |unusedschemaz3bpl.124:29|
 :skolemid |75|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun |inline$$1_Vector_push_back'$42_TestMonomorphization_R'address''$0$m'@1| () T@$Mutation_19172)
(declare-fun $t1@0 () T@$Mutation_19172)
(declare-fun $t4@0 () |T@$42_TestMonomorphization_R'address'|)
(declare-fun _$t0 () (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun $es () T@$EventStore)
(declare-fun $t1 () T@$Mutation_19172)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_vec_struct_addr$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 42831) (let ((anon4_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_19172| |inline$$1_Vector_push_back'$42_TestMonomorphization_R'address''$0$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 39973) (- 0 43006)))) (not (= (|$x#$42_TestMonomorphization_R'address'| (seq.nth $t0@0 0)) 1)))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_push_back'$42_TestMonomorphization_R'address''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$42_TestMonomorphization_R'address''$0$m'@1| ($Mutation_19172 (|l#$Mutation_19172| $t1@0) (|p#$Mutation_19172| $t1@0) (seq.++ (|v#$Mutation_19172| $t1@0) (seq.unit $t4@0)))) (and (=> (= (ControlFlow 0 39929) 39991) anon4_Then_correct) (=> (= (ControlFlow 0 39929) 39973) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'$42_TestMonomorphization_R'address'''| _$t0) (=> (and (= _$t0 _$t0) (= $t1@0 ($Mutation_19172 ($Local 0) (as seq.empty (Seq Int)) _$t0))) (=> (and (and (|$IsValid'address'| 1) (|$IsValid'address'| 2)) (and (= $t4@0 (|$42_TestMonomorphization_R'address'| 1 2)) (= (ControlFlow 0 39935) 39929))) |inline$$1_Vector_push_back'$42_TestMonomorphization_R'address''$0$anon0_correct|)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_17733| stream@@0) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@0) v@@28) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
))) (= (ControlFlow 0 39824) 39935)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_19172| $t1)) 0) (= (ControlFlow 0 39834) 39824)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 42831) 39834) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 42831)))
(get-value ((ControlFlow 0 39834)))
(get-value ((ControlFlow 0 39824)))
(get-value ((ControlFlow 0 39935)))
(get-value ((ControlFlow 0 39929)))
(get-value ((ControlFlow 0 39973)))
(assert (not (= (ControlFlow 0 39973) (- 43006))))
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
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_31375 0)) ((($Memory_31375 (|domain#$Memory_31375| |T@[Int]Bool|) (|contents#$Memory_31375| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_32881 0)) ((($Memory_32881 (|domain#$Memory_32881| |T@[Int]Bool|) (|contents#$Memory_32881| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_32750 0)) ((($Memory_32750 (|domain#$Memory_32750| |T@[Int]Bool|) (|contents#$Memory_32750| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_32642 0)) ((($Memory_32642 (|domain#$Memory_32642| |T@[Int]Bool|) (|contents#$Memory_32642| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_32534 0)) ((($Memory_32534 (|domain#$Memory_32534| |T@[Int]Bool|) (|contents#$Memory_32534| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_17733 0)) (((Multiset_17733 (|v#Multiset_17733| |T@[$EventRep]Int|) (|l#Multiset_17733| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_17733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_17733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_33697 0)) ((($Mutation_33697 (|l#$Mutation_33697| T@$Location) (|p#$Mutation_33697| (Seq Int)) (|v#$Mutation_33697| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_32006 0)) ((($Mutation_32006 (|l#$Mutation_32006| T@$Location) (|p#$Mutation_32006| (Seq Int)) (|v#$Mutation_32006| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7877 0)) ((($Mutation_7877 (|l#$Mutation_7877| T@$Location) (|p#$Mutation_7877| (Seq Int)) (|v#$Mutation_7877| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6804 0)) ((($Mutation_6804 (|l#$Mutation_6804| T@$Location) (|p#$Mutation_6804| (Seq Int)) (|v#$Mutation_6804| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_25654 0)) ((($Mutation_25654 (|l#$Mutation_25654| T@$Location) (|p#$Mutation_25654| (Seq Int)) (|v#$Mutation_25654| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_24328 0)) ((($Mutation_24328 (|l#$Mutation_24328| T@$Location) (|p#$Mutation_24328| (Seq Int)) (|v#$Mutation_24328| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_23582 0)) ((($Mutation_23582 (|l#$Mutation_23582| T@$Location) (|p#$Mutation_23582| (Seq Int)) (|v#$Mutation_23582| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_22142 0)) ((($Mutation_22142 (|l#$Mutation_22142| T@$Location) (|p#$Mutation_22142| (Seq Int)) (|v#$Mutation_22142| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_21396 0)) ((($Mutation_21396 (|l#$Mutation_21396| T@$Location) (|p#$Mutation_21396| (Seq Int)) (|v#$Mutation_21396| (Seq |T@$42_TestMonomorphization_R'u64'|)) ) ) ))
(declare-datatypes ((T@$Mutation_19918 0)) ((($Mutation_19918 (|l#$Mutation_19918| T@$Location) (|p#$Mutation_19918| (Seq Int)) (|v#$Mutation_19918| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19172 0)) ((($Mutation_19172 (|l#$Mutation_19172| T@$Location) (|p#$Mutation_19172| (Seq Int)) (|v#$Mutation_19172| (Seq |T@$42_TestMonomorphization_R'address'|)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| ((Seq |T@$42_TestMonomorphization_R'address'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| ((Seq |T@$42_TestMonomorphization_R'address'|) |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| ((Seq |T@$42_TestMonomorphization_R'u64'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| ((Seq |T@$42_TestMonomorphization_R'u64'|) |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsValid'vec'vec'u64'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u64''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle) T@Multiset_17733)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun ReverseVec_14952 ((Seq |T@$42_TestMonomorphization_R'address'|)) (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun ReverseVec_7730 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_15149 ((Seq |T@$42_TestMonomorphization_R'u64'|)) (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun ReverseVec_15346 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_6657 ((Seq Bool)) (Seq Bool))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_17733| |T@[$1_Event_EventHandle]Multiset_17733|) |T@[$1_Event_EventHandle]Multiset_17733|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |unusedschemaz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |unusedschemaz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |unusedschemaz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |unusedschemaz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |unusedschemaz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |unusedschemaz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestMonomorphization_R'address''| (seq.nth v@@4 i@@0)))
 :qid |unusedschemaz3bpl.590:13|
 :skolemid |15|
))))
 :qid |unusedschemaz3bpl.588:61|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@$42_TestMonomorphization_R'address'|)) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |unusedschemaz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |unusedschemaz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |unusedschemaz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$42_TestMonomorphization_R'u64''| (seq.nth v@@6 i@@3)))
 :qid |unusedschemaz3bpl.770:13|
 :skolemid |20|
))))
 :qid |unusedschemaz3bpl.768:57|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 (Seq |T@$42_TestMonomorphization_R'u64'|)) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@4 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |unusedschemaz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |unusedschemaz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |unusedschemaz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'vec'u64''| (seq.nth v@@8 i@@6)))
 :qid |unusedschemaz3bpl.950:13|
 :skolemid |25|
))))
 :qid |unusedschemaz3bpl.948:34|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 (Seq (Seq Int))) (e@@1 (Seq Int)) ) (! (let ((i@@7 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |unusedschemaz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |unusedschemaz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |unusedschemaz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) true)
 :qid |unusedschemaz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |unusedschemaz3bpl.1128:30|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 (Seq Bool)) (e@@2 Bool) ) (! (let ((i@@10 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |unusedschemaz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |unusedschemaz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |unusedschemaz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |unusedschemaz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |unusedschemaz3bpl.1308:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |unusedschemaz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |unusedschemaz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |unusedschemaz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u64'| (seq.nth v@@14 i@@15)))
 :qid |unusedschemaz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |unusedschemaz3bpl.1488:29|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |unusedschemaz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |unusedschemaz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |unusedschemaz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |unusedschemaz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |unusedschemaz3bpl.1668:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |unusedschemaz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |unusedschemaz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |unusedschemaz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |unusedschemaz3bpl.1856:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |unusedschemaz3bpl.1872:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |unusedschemaz3bpl.1939:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |unusedschemaz3bpl.1942:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |unusedschemaz3bpl.1969:15|
 :skolemid |54|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |unusedschemaz3bpl.1974:15|
 :skolemid |55|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |unusedschemaz3bpl.1996:15|
 :skolemid |56|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |unusedschemaz3bpl.2001:15|
 :skolemid |57|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |unusedschemaz3bpl.2015:15|
 :skolemid |58|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_17733| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream) v@@21) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |unusedschemaz3bpl.2103:69|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@3 T@$42_TestMonomorphization_E) (v2@@3 T@$42_TestMonomorphization_E) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3)))
 :qid |unusedschemaz3bpl.2109:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |unusedschemaz3bpl.2163:15|
 :skolemid |63|
)))
(assert (forall ((addr Int) ) (! true
 :qid |unusedschemaz3bpl.2167:15|
 :skolemid |64|
)))
(assert (forall ((s@@0 T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s@@0) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s@@0)))
 :qid |unusedschemaz3bpl.2182:47|
 :skolemid |65|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1)  (and true true))
 :qid |unusedschemaz3bpl.2198:53|
 :skolemid |66|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@2)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@2))))
 :qid |unusedschemaz3bpl.2216:52|
 :skolemid |67|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@3)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@3)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@3))))
 :qid |unusedschemaz3bpl.2234:56|
 :skolemid |68|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4)  (and true true))
 :qid |unusedschemaz3bpl.2252:51|
 :skolemid |69|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4))
)))
(assert (forall ((v@@22 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (let ((r@@3 (ReverseVec_14952 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@22 (- (- (seq.len v@@22) i@@21) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14952 v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@4 (ReverseVec_7730 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@23 (- (- (seq.len v@@23) i@@22) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7730 v@@23))
)))
(assert (forall ((v@@24 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (let ((r@@5 (ReverseVec_15149 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@5))) (= (seq.nth r@@5 i@@23) (seq.nth v@@24 (- (- (seq.len v@@24) i@@23) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@23))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15149 v@@24))
)))
(assert (forall ((v@@25 (Seq (Seq Int))) ) (! (let ((r@@6 (ReverseVec_15346 v@@25)))
 (and (= (seq.len r@@6) (seq.len v@@25)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@6))) (= (seq.nth r@@6 i@@24) (seq.nth v@@25 (- (- (seq.len v@@25) i@@24) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@24))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15346 v@@25))
)))
(assert (forall ((v@@26 (Seq Bool)) ) (! (let ((r@@7 (ReverseVec_6657 v@@26)))
 (and (= (seq.len r@@7) (seq.len v@@26)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@7))) (= (seq.nth r@@7 i@@25) (seq.nth v@@26 (- (- (seq.len v@@26) i@@25) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@25))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6657 v@@26))
)))
(assert (forall ((|l#0| Bool) (i@@26 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26) |l#0|)
 :qid |unusedschemaz3bpl.245:54|
 :skolemid |73|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_17733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_17733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))))
(Multiset_17733 (|lambda#3| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0)) (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |unusedschemaz3bpl.2072:13|
 :skolemid |74|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@27)))
 :qid |unusedschemaz3bpl.124:29|
 :skolemid |75|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun |inline$$1_Vector_push_back'$42_TestMonomorphization_R'u64''$0$m'@1| () T@$Mutation_21396)
(declare-fun $t1@0 () T@$Mutation_21396)
(declare-fun $t4@0 () |T@$42_TestMonomorphization_R'u64'|)
(declare-fun _$t0 () (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun $es () T@$EventStore)
(declare-fun $t1 () T@$Mutation_21396)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_vec_struct_int$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 43031) (let ((anon4_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_21396| |inline$$1_Vector_push_back'$42_TestMonomorphization_R'u64''$0$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 40260) (- 0 43206)))) (not (= (|$x#$42_TestMonomorphization_R'u64'| (seq.nth $t0@0 0)) 1)))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_push_back'$42_TestMonomorphization_R'u64''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$42_TestMonomorphization_R'u64''$0$m'@1| ($Mutation_21396 (|l#$Mutation_21396| $t1@0) (|p#$Mutation_21396| $t1@0) (seq.++ (|v#$Mutation_21396| $t1@0) (seq.unit $t4@0)))) (and (=> (= (ControlFlow 0 40216) 40278) anon4_Then_correct) (=> (= (ControlFlow 0 40216) 40260) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| _$t0) (=> (and (= _$t0 _$t0) (= $t1@0 ($Mutation_21396 ($Local 0) (as seq.empty (Seq Int)) _$t0))) (=> (and (and (|$IsValid'u64'| 1) (|$IsValid'u64'| 1)) (and (= $t4@0 (|$42_TestMonomorphization_R'u64'| 1 1)) (= (ControlFlow 0 40222) 40216))) |inline$$1_Vector_push_back'$42_TestMonomorphization_R'u64''$0$anon0_correct|)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_17733| stream@@0) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@0) v@@28) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
))) (= (ControlFlow 0 40111) 40222)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_21396| $t1)) 0) (= (ControlFlow 0 40121) 40111)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 43031) 40121) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 43031)))
(get-value ((ControlFlow 0 40121)))
(get-value ((ControlFlow 0 40111)))
(get-value ((ControlFlow 0 40222)))
(get-value ((ControlFlow 0 40216)))
(get-value ((ControlFlow 0 40260)))
(assert (not (= (ControlFlow 0 40260) (- 43206))))
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
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_31375 0)) ((($Memory_31375 (|domain#$Memory_31375| |T@[Int]Bool|) (|contents#$Memory_31375| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_32881 0)) ((($Memory_32881 (|domain#$Memory_32881| |T@[Int]Bool|) (|contents#$Memory_32881| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_32750 0)) ((($Memory_32750 (|domain#$Memory_32750| |T@[Int]Bool|) (|contents#$Memory_32750| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_32642 0)) ((($Memory_32642 (|domain#$Memory_32642| |T@[Int]Bool|) (|contents#$Memory_32642| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_32534 0)) ((($Memory_32534 (|domain#$Memory_32534| |T@[Int]Bool|) (|contents#$Memory_32534| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_17733 0)) (((Multiset_17733 (|v#Multiset_17733| |T@[$EventRep]Int|) (|l#Multiset_17733| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_17733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_17733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_33697 0)) ((($Mutation_33697 (|l#$Mutation_33697| T@$Location) (|p#$Mutation_33697| (Seq Int)) (|v#$Mutation_33697| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_32006 0)) ((($Mutation_32006 (|l#$Mutation_32006| T@$Location) (|p#$Mutation_32006| (Seq Int)) (|v#$Mutation_32006| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7877 0)) ((($Mutation_7877 (|l#$Mutation_7877| T@$Location) (|p#$Mutation_7877| (Seq Int)) (|v#$Mutation_7877| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6804 0)) ((($Mutation_6804 (|l#$Mutation_6804| T@$Location) (|p#$Mutation_6804| (Seq Int)) (|v#$Mutation_6804| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_25654 0)) ((($Mutation_25654 (|l#$Mutation_25654| T@$Location) (|p#$Mutation_25654| (Seq Int)) (|v#$Mutation_25654| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_24328 0)) ((($Mutation_24328 (|l#$Mutation_24328| T@$Location) (|p#$Mutation_24328| (Seq Int)) (|v#$Mutation_24328| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_23582 0)) ((($Mutation_23582 (|l#$Mutation_23582| T@$Location) (|p#$Mutation_23582| (Seq Int)) (|v#$Mutation_23582| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_22142 0)) ((($Mutation_22142 (|l#$Mutation_22142| T@$Location) (|p#$Mutation_22142| (Seq Int)) (|v#$Mutation_22142| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_21396 0)) ((($Mutation_21396 (|l#$Mutation_21396| T@$Location) (|p#$Mutation_21396| (Seq Int)) (|v#$Mutation_21396| (Seq |T@$42_TestMonomorphization_R'u64'|)) ) ) ))
(declare-datatypes ((T@$Mutation_19918 0)) ((($Mutation_19918 (|l#$Mutation_19918| T@$Location) (|p#$Mutation_19918| (Seq Int)) (|v#$Mutation_19918| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19172 0)) ((($Mutation_19172 (|l#$Mutation_19172| T@$Location) (|p#$Mutation_19172| (Seq Int)) (|v#$Mutation_19172| (Seq |T@$42_TestMonomorphization_R'address'|)) ) ) ))
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
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| ((Seq |T@$42_TestMonomorphization_R'address'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| ((Seq |T@$42_TestMonomorphization_R'address'|) |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| ((Seq |T@$42_TestMonomorphization_R'u64'|)) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| ((Seq |T@$42_TestMonomorphization_R'u64'|) |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsValid'vec'vec'u64'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u64''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_17733_| (|T@[$1_Event_EventHandle]Multiset_17733| T@$1_Event_EventHandle) T@Multiset_17733)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun ReverseVec_14952 ((Seq |T@$42_TestMonomorphization_R'address'|)) (Seq |T@$42_TestMonomorphization_R'address'|))
(declare-fun ReverseVec_7730 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_15149 ((Seq |T@$42_TestMonomorphization_R'u64'|)) (Seq |T@$42_TestMonomorphization_R'u64'|))
(declare-fun ReverseVec_15346 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_6657 ((Seq Bool)) (Seq Bool))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_17733| |T@[$1_Event_EventHandle]Multiset_17733|) |T@[$1_Event_EventHandle]Multiset_17733|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |unusedschemaz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |unusedschemaz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |unusedschemaz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |unusedschemaz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |unusedschemaz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |unusedschemaz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |unusedschemaz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$42_TestMonomorphization_R'address''| (seq.nth v@@4 i@@0)))
 :qid |unusedschemaz3bpl.590:13|
 :skolemid |15|
))))
 :qid |unusedschemaz3bpl.588:61|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@$42_TestMonomorphization_R'address'|)) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@1 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |unusedschemaz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |unusedschemaz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |unusedschemaz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$42_TestMonomorphization_R'u64''| (seq.nth v@@6 i@@3)))
 :qid |unusedschemaz3bpl.770:13|
 :skolemid |20|
))))
 :qid |unusedschemaz3bpl.768:57|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 (Seq |T@$42_TestMonomorphization_R'u64'|)) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@4 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |unusedschemaz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |unusedschemaz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |unusedschemaz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'vec'u64''| (seq.nth v@@8 i@@6)))
 :qid |unusedschemaz3bpl.950:13|
 :skolemid |25|
))))
 :qid |unusedschemaz3bpl.948:34|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 (Seq (Seq Int))) (e@@1 (Seq Int)) ) (! (let ((i@@7 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |unusedschemaz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |unusedschemaz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |unusedschemaz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) true)
 :qid |unusedschemaz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |unusedschemaz3bpl.1128:30|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 (Seq Bool)) (e@@2 Bool) ) (! (let ((i@@10 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |unusedschemaz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |unusedschemaz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |unusedschemaz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |unusedschemaz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |unusedschemaz3bpl.1308:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |unusedschemaz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |unusedschemaz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |unusedschemaz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u64'| (seq.nth v@@14 i@@15)))
 :qid |unusedschemaz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |unusedschemaz3bpl.1488:29|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |unusedschemaz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |unusedschemaz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |unusedschemaz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |unusedschemaz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |unusedschemaz3bpl.1668:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |unusedschemaz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |unusedschemaz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |unusedschemaz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |unusedschemaz3bpl.1856:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |unusedschemaz3bpl.1872:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |unusedschemaz3bpl.1939:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |unusedschemaz3bpl.1942:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |unusedschemaz3bpl.1969:15|
 :skolemid |54|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |unusedschemaz3bpl.1974:15|
 :skolemid |55|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |unusedschemaz3bpl.1996:15|
 :skolemid |56|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |unusedschemaz3bpl.2001:15|
 :skolemid |57|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |unusedschemaz3bpl.2015:15|
 :skolemid |58|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_17733| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream) v@@21) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |unusedschemaz3bpl.2103:69|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@3 T@$42_TestMonomorphization_E) (v2@@3 T@$42_TestMonomorphization_E) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3)))
 :qid |unusedschemaz3bpl.2109:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@3) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@3))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |unusedschemaz3bpl.2163:15|
 :skolemid |63|
)))
(assert (forall ((addr Int) ) (! true
 :qid |unusedschemaz3bpl.2167:15|
 :skolemid |64|
)))
(assert (forall ((s@@0 T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s@@0) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s@@0)))
 :qid |unusedschemaz3bpl.2182:47|
 :skolemid |65|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1)  (and true true))
 :qid |unusedschemaz3bpl.2198:53|
 :skolemid |66|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@2)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@2))))
 :qid |unusedschemaz3bpl.2216:52|
 :skolemid |67|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@3)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@3)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@3))))
 :qid |unusedschemaz3bpl.2234:56|
 :skolemid |68|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4)  (and true true))
 :qid |unusedschemaz3bpl.2252:51|
 :skolemid |69|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@4))
)))
(assert (forall ((v@@22 (Seq |T@$42_TestMonomorphization_R'address'|)) ) (! (let ((r@@3 (ReverseVec_14952 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@22 (- (- (seq.len v@@22) i@@21) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14952 v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@4 (ReverseVec_7730 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@23 (- (- (seq.len v@@23) i@@22) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7730 v@@23))
)))
(assert (forall ((v@@24 (Seq |T@$42_TestMonomorphization_R'u64'|)) ) (! (let ((r@@5 (ReverseVec_15149 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@5))) (= (seq.nth r@@5 i@@23) (seq.nth v@@24 (- (- (seq.len v@@24) i@@23) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@23))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15149 v@@24))
)))
(assert (forall ((v@@25 (Seq (Seq Int))) ) (! (let ((r@@6 (ReverseVec_15346 v@@25)))
 (and (= (seq.len r@@6) (seq.len v@@25)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@6))) (= (seq.nth r@@6 i@@24) (seq.nth v@@25 (- (- (seq.len v@@25) i@@24) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@24))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_15346 v@@25))
)))
(assert (forall ((v@@26 (Seq Bool)) ) (! (let ((r@@7 (ReverseVec_6657 v@@26)))
 (and (= (seq.len r@@7) (seq.len v@@26)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@7))) (= (seq.nth r@@7 i@@25) (seq.nth v@@26 (- (- (seq.len v@@26) i@@25) 1))))
 :qid |unusedschemaz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@25))
))))
 :qid |unusedschemaz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6657 v@@26))
)))
(assert (forall ((|l#0| Bool) (i@@26 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26) |l#0|)
 :qid |unusedschemaz3bpl.245:54|
 :skolemid |73|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@26))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_17733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_17733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))))
(Multiset_17733 (|lambda#3| (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#0@@0| handle@@0)) (|v#Multiset_17733| (|Select__T@[$1_Event_EventHandle]Multiset_17733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |unusedschemaz3bpl.2072:13|
 :skolemid |74|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@27)))
 :qid |unusedschemaz3bpl.124:29|
 :skolemid |75|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@27))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () (Seq (Seq Int)))
(declare-fun |inline$$1_Vector_push_back'vec'u64''$0$m'@1| () T@$Mutation_23582)
(declare-fun $t1@0 () T@$Mutation_23582)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun _$t0 () (Seq (Seq Int)))
(declare-fun $es () T@$EventStore)
(declare-fun $t1 () T@$Mutation_23582)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_vec_vec$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 43231) (let ((anon7_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_23582| |inline$$1_Vector_push_back'vec'u64''$0$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 40567) (- 0 43412)))) (not (= (seq.len (seq.nth $t0@0 0)) 0)))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_Vector_push_back'vec'u64''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'vec'u64''$0$m'@1| ($Mutation_23582 (|l#$Mutation_23582| $t1@0) (|p#$Mutation_23582| $t1@0) (seq.++ (|v#$Mutation_23582| $t1@0) (seq.unit |inline$$1_Vector_empty'u64'$0$v@1|)))) (and (=> (= (ControlFlow 0 40521) 40581) anon7_Then_correct) (=> (= (ControlFlow 0 40521) 40567) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (and (not false) (= (ControlFlow 0 40527) 40521)) |inline$$1_Vector_push_back'vec'u64''$0$anon0_correct|)))
(let ((anon6_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 40456) 40601) anon6_Then_correct) (=> (= (ControlFlow 0 40456) 40527) anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'vec'u64'''| _$t0) (= _$t0 _$t0)) (and (= $t1@0 ($Mutation_23582 ($Local 0) (as seq.empty (Seq Int)) _$t0)) (= (ControlFlow 0 40462) 40456))) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_17733_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_17733| stream@@0) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_17733| stream@@0) v@@28) 0)
 :qid |unusedschemaz3bpl.129:13|
 :skolemid |2|
))))
 :qid |unusedschemaz3bpl.2062:13|
 :skolemid |59|
))) (= (ControlFlow 0 40398) 40462)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_23582| $t1)) 0) (= (ControlFlow 0 40408) 40398)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 43231) 40408) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 43231)))
(get-value ((ControlFlow 0 40408)))
(get-value ((ControlFlow 0 40398)))
(get-value ((ControlFlow 0 40462)))
(get-value ((ControlFlow 0 40456)))
(get-value ((ControlFlow 0 40527)))
(get-value ((ControlFlow 0 40521)))
(get-value ((ControlFlow 0 40567)))
(assert (not (= (ControlFlow 0 40567) (- 43412))))
(check-sat)
(pop 1)
; Invalid
