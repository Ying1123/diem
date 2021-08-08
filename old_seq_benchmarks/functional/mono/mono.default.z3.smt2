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
(declare-datatypes ((T@$Memory_35237 0)) ((($Memory_35237 (|domain#$Memory_35237| |T@[Int]Bool|) (|contents#$Memory_35237| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@Vec_6459 0)) (((Vec_6459 (|v#Vec_6459| |T@[Int]Bool|) (|l#Vec_6459| Int) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Vec_1349| 0)
(declare-datatypes ((T@Vec_24551 0)) (((Vec_24551 (|v#Vec_24551| |T@[Int]Vec_1349|) (|l#Vec_24551| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_36699 0)) ((($Memory_36699 (|domain#$Memory_36699| |T@[Int]Bool|) (|contents#$Memory_36699| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_36568 0)) ((($Memory_36568 (|domain#$Memory_36568| |T@[Int]Bool|) (|contents#$Memory_36568| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@Vec_19114 0)) (((Vec_19114 (|v#Vec_19114| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#Vec_19114| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_36460 0)) ((($Memory_36460 (|domain#$Memory_36460| |T@[Int]Bool|) (|contents#$Memory_36460| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@Vec_21870 0)) (((Vec_21870 (|v#Vec_21870| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#Vec_21870| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_36352 0)) ((($Memory_36352 (|domain#$Memory_36352| |T@[Int]Bool|) (|contents#$Memory_36352| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18130 0)) (((Multiset_18130 (|v#Multiset_18130| |T@[$EventRep]Int|) (|l#Multiset_18130| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_18130| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18130|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37461 0)) ((($Mutation_37461 (|l#$Mutation_37461| T@$Location) (|p#$Mutation_37461| T@Vec_1349) (|v#$Mutation_37461| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_35865 0)) ((($Mutation_35865 (|l#$Mutation_35865| T@$Location) (|p#$Mutation_35865| T@Vec_1349) (|v#$Mutation_35865| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8192 0)) ((($Mutation_8192 (|l#$Mutation_8192| T@$Location) (|p#$Mutation_8192| T@Vec_1349) (|v#$Mutation_8192| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7083 0)) ((($Mutation_7083 (|l#$Mutation_7083| T@$Location) (|p#$Mutation_7083| T@Vec_1349) (|v#$Mutation_7083| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_28067 0)) ((($Mutation_28067 (|l#$Mutation_28067| T@$Location) (|p#$Mutation_28067| T@Vec_1349) (|v#$Mutation_28067| T@Vec_6459) ) ) ))
(declare-datatypes ((T@$Mutation_26329 0)) ((($Mutation_26329 (|l#$Mutation_26329| T@$Location) (|p#$Mutation_26329| T@Vec_1349) (|v#$Mutation_26329| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_25241 0)) ((($Mutation_25241 (|l#$Mutation_25241| T@$Location) (|p#$Mutation_25241| T@Vec_1349) (|v#$Mutation_25241| T@Vec_24551) ) ) ))
(declare-datatypes ((T@$Mutation_23500 0)) ((($Mutation_23500 (|l#$Mutation_23500| T@$Location) (|p#$Mutation_23500| T@Vec_1349) (|v#$Mutation_23500| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_22513 0)) ((($Mutation_22513 (|l#$Mutation_22513| T@$Location) (|p#$Mutation_22513| T@Vec_1349) (|v#$Mutation_22513| T@Vec_21870) ) ) ))
(declare-datatypes ((T@$Mutation_20772 0)) ((($Mutation_20772 (|l#$Mutation_20772| T@$Location) (|p#$Mutation_20772| T@Vec_1349) (|v#$Mutation_20772| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19757 0)) ((($Mutation_19757 (|l#$Mutation_19757| T@$Location) (|p#$Mutation_19757| T@Vec_1349) (|v#$Mutation_19757| T@Vec_19114) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114 T@Vec_19114) Bool)
(declare-fun InRangeVec_15148 (T@Vec_19114 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int) |T@$42_TestMonomorphization_R'address'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870 T@Vec_21870) Bool)
(declare-fun InRangeVec_15349 (T@Vec_21870 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsEqual'vec'vec'u64'''| (T@Vec_24551 T@Vec_24551) Bool)
(declare-fun InRangeVec_24660 (T@Vec_24551 Int) Bool)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |Select__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int) T@Vec_1349)
(declare-fun |$IsValid'vec'vec'u64'''| (T@Vec_24551) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'vec'u64''| (T@Vec_24551 T@Vec_1349) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_6459 T@Vec_6459) Bool)
(declare-fun InRangeVec_6459 (T@Vec_6459 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_6459) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_6459 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_7568 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_1349 Int) Int)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) T@Vec_1349)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_1349)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle) T@Multiset_18130)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun IndexOfVec_19114 (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun IndexOfVec_21870 (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun IndexOfVec_24551 (T@Vec_24551 T@Vec_1349) Int)
(declare-fun IndexOfVec_6459 (T@Vec_6459 Bool) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18130| |T@[$1_Event_EventHandle]Multiset_18130|) |T@[$1_Event_EventHandle]Multiset_18130|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#4| (Int Int |T@[Int]$42_TestMonomorphization_R'address'| Int Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#7| (Int Int |T@[Int]$42_TestMonomorphization_R'u64'| Int Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#10| (Int Int |T@[Int]Vec_1349| Int Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#13| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |monodefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |monodefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |monodefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |monodefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |monodefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |monodefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_19114) (v2 T@Vec_19114) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2)  (and (= (|l#Vec_19114| v1) (|l#Vec_19114| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_15148 v1 i@@0) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v1) i@@0) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v2) i@@0)))
 :qid |monodefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |monodefaultz3bpl.613:61|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_19114) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_19114| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_15148 v@@4 i@@1) (|$IsValid'$42_TestMonomorphization_R'address''| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@4) i@@1)))
 :qid |monodefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |monodefaultz3bpl.619:61|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_19114) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_15148 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@3) e))
 :qid |monodefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_15148 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) j) e)))
 :qid |monodefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |monodefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_21870) (v2@@0 T@Vec_21870) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0)  (and (= (|l#Vec_21870| v1@@0) (|l#Vec_21870| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_15349 v1@@0 i@@4) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v1@@0) i@@4) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v2@@0) i@@4)))
 :qid |monodefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |monodefaultz3bpl.794:57|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_21870) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_21870| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_15349 v@@6 i@@5) (|$IsValid'$42_TestMonomorphization_R'u64''| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@6) i@@5)))
 :qid |monodefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |monodefaultz3bpl.800:57|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_21870) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@6 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_15349 v@@7 i@@7)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@7) e@@0))
 :qid |monodefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_15349 v@@7 i@@6)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) j@@0) e@@0)))
 :qid |monodefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |monodefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_24551) (v2@@1 T@Vec_24551) ) (! (= (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1)  (and (= (|l#Vec_24551| v1@@1) (|l#Vec_24551| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_24660 v1@@1 i@@8) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v1@@1) i@@8) (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v2@@1) i@@8)))
 :qid |monodefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |monodefaultz3bpl.975:34|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_24551) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_24551| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_24660 v@@8 i@@9) (|$IsValid'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@8) i@@9)))
 :qid |monodefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |monodefaultz3bpl.981:34|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_24551) (e@@1 T@Vec_1349) ) (! (let ((i@@10 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_24660 v@@9 i@@11)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@11) e@@1))
 :qid |monodefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_24660 v@@9 i@@10)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) j@@1) e@@1)))
 :qid |monodefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |monodefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6459) (v2@@2 T@Vec_6459) ) (! (= (|$IsEqual'vec'bool''| v1@@2 v2@@2)  (and (= (|l#Vec_6459| v1@@2) (|l#Vec_6459| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6459 v1@@2 i@@12) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v1@@2) i@@12) (|Select__T@[Int]Bool_| (|v#Vec_6459| v2@@2) i@@12)))
 :qid |monodefaultz3bpl.1158:13|
 :skolemid |38|
))))
 :qid |monodefaultz3bpl.1156:30|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'bool''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_6459) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_6459| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6459 v@@10 i@@13) true)
 :qid |monodefaultz3bpl.1164:13|
 :skolemid |40|
))))
 :qid |monodefaultz3bpl.1162:30|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_6459) (e@@2 Bool) ) (! (let ((i@@14 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6459 v@@11 i@@15)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@15) e@@2))
 :qid |monodefaultz3bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6459 v@@11 i@@14)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) j@@2) e@@2)))
 :qid |monodefaultz3bpl.1177:17|
 :skolemid |43|
)))))
 :qid |monodefaultz3bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_1349| v1@@3) (|l#Vec_1349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7568 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@3) i@@16)))
 :qid |monodefaultz3bpl.1339:13|
 :skolemid |45|
))))
 :qid |monodefaultz3bpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_1349) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7568 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@12) i@@17)))
 :qid |monodefaultz3bpl.1345:13|
 :skolemid |47|
))))
 :qid |monodefaultz3bpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7568 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@19) e@@3))
 :qid |monodefaultz3bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7568 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |monodefaultz3bpl.1358:17|
 :skolemid |50|
)))))
 :qid |monodefaultz3bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_1349) (v2@@4 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@4 v2@@4)  (and (= (|l#Vec_1349| v1@@4) (|l#Vec_1349| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7568 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@4) i@@20)))
 :qid |monodefaultz3bpl.1520:13|
 :skolemid |52|
))))
 :qid |monodefaultz3bpl.1518:29|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u64''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7568 v@@14 i@@21) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@14) i@@21)))
 :qid |monodefaultz3bpl.1526:13|
 :skolemid |54|
))))
 :qid |monodefaultz3bpl.1524:29|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_1349) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7568 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@23) e@@4))
 :qid |monodefaultz3bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7568 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) j@@4) e@@4)))
 :qid |monodefaultz3bpl.1539:17|
 :skolemid |57|
)))))
 :qid |monodefaultz3bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_1349) (v2@@5 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_1349| v1@@5) (|l#Vec_1349| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_7568 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@5) i@@24)))
 :qid |monodefaultz3bpl.1701:13|
 :skolemid |59|
))))
 :qid |monodefaultz3bpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_7568 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@16) i@@25)))
 :qid |monodefaultz3bpl.1707:13|
 :skolemid |61|
))))
 :qid |monodefaultz3bpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_1349) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_7568 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@27) e@@5))
 :qid |monodefaultz3bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_7568 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) j@@5) e@@5)))
 :qid |monodefaultz3bpl.1720:17|
 :skolemid |64|
)))))
 :qid |monodefaultz3bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_1349) (v2@@6 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |monodefaultz3bpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_1349) (v2@@7 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |monodefaultz3bpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |monodefaultz3bpl.1956:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |monodefaultz3bpl.1959:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@8 |T@#0|) (v2@@8 |T@#0|) ) (! (= (= v1@@8 v2@@8) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8)))
 :qid |monodefaultz3bpl.1986:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_1349| r@@0) 0)))
 :qid |monodefaultz3bpl.1991:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@9 Int) (v2@@9 Int) ) (! (= (= v1@@9 v2@@9) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9)))
 :qid |monodefaultz3bpl.2013:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (|l#Vec_1349| r@@1) 0)))
 :qid |monodefaultz3bpl.2018:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (|l#Vec_1349| r@@2) $serialized_address_len))
 :qid |monodefaultz3bpl.2032:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18130| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream) v@@21) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |monodefaultz3bpl.2135:69|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@10 T@$42_TestMonomorphization_E) (v2@@10 T@$42_TestMonomorphization_E) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10)))
 :qid |monodefaultz3bpl.2141:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10))
)))
(assert (forall ((s T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s)))
 :qid |monodefaultz3bpl.2205:47|
 :skolemid |79|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s))
)))
(assert (forall ((s@@0 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0)  (and true true))
 :qid |monodefaultz3bpl.2221:53|
 :skolemid |80|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@1)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@1))))
 :qid |monodefaultz3bpl.2239:52|
 :skolemid |81|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@2)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@2)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@2))))
 :qid |monodefaultz3bpl.2257:56|
 :skolemid |82|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3)  (and true true))
 :qid |monodefaultz3bpl.2275:51|
 :skolemid |83|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3))
)))
(assert (forall ((v@@22 T@Vec_19114) (i@@28 Int) ) (! (= (InRangeVec_15148 v@@22 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_19114| v@@22))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15148 v@@22 i@@28))
)))
(assert (forall ((v@@23 T@Vec_21870) (i@@29 Int) ) (! (= (InRangeVec_15349 v@@23 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_21870| v@@23))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15349 v@@23 i@@29))
)))
(assert (forall ((v@@24 T@Vec_24551) (i@@30 Int) ) (! (= (InRangeVec_24660 v@@24 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_24551| v@@24))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_24660 v@@24 i@@30))
)))
(assert (forall ((v@@25 T@Vec_6459) (i@@31 Int) ) (! (= (InRangeVec_6459 v@@25 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_6459| v@@25))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6459 v@@25 i@@31))
)))
(assert (forall ((v@@26 T@Vec_1349) (i@@32 Int) ) (! (= (InRangeVec_7568 v@@26 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_1349| v@@26))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7568 v@@26 i@@32))
)))
(assert (forall ((v@@27 T@Vec_19114) (e@@6 |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@33 (IndexOfVec_19114 v@@27 e@@6)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_15148 v@@27 i@@34) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@34) e@@6))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_15148 v@@27 i@@33) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@33) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@33)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) j@@6) e@@6)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19114 v@@27 e@@6))
)))
(assert (forall ((v@@28 T@Vec_1349) (e@@7 Int) ) (! (let ((i@@35 (IndexOfVec_1349 v@@28 e@@7)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_7568 v@@28 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@36) e@@7))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_7568 v@@28 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@35) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@35)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) j@@7) e@@7)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_21870) (e@@8 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@37 (IndexOfVec_21870 v@@29 e@@8)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_15349 v@@29 i@@38) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@38) e@@8))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_15349 v@@29 i@@37) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@37) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@37)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) j@@8) e@@8)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21870 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_24551) (e@@9 T@Vec_1349) ) (! (let ((i@@39 (IndexOfVec_24551 v@@30 e@@9)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_24660 v@@30 i@@40) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@40) e@@9))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_24660 v@@30 i@@39) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@39) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@39)) (not (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) j@@9) e@@9)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_24551 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_6459) (e@@10 Bool) ) (! (let ((i@@41 (IndexOfVec_6459 v@@31 e@@10)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_6459 v@@31 i@@42) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@42) e@@10))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_6459 v@@31 i@@41) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@41) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@41)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) j@@10) e@@10)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6459 v@@31 e@@10))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |monodefaultz3bpl.275:54|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18130|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18130|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))))
(Multiset_18130 (|lambda#18| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0)) (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |monodefaultz3bpl.2104:13|
 :skolemid |88|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5| Int) (|l#6| |T@$42_TestMonomorphization_R'address'|) (i@@44 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44) (ite  (and (>= i@@44 |l#0@@1|) (< i@@44 |l#1@@0|)) (ite (< i@@44 |l#2|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3| i@@44) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4| (- i@@44 |l#5|))) |l#6|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@$42_TestMonomorphization_R'address'|) (i@@45 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45) (ite  (and (<= |l#0@@2| i@@45) (< i@@45 |l#1@@1|)) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#2@@0| (- (- |l#3@@0| i@@45) |l#4@@0|)) |l#5@@0|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |90|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5@@1| Int) (|l#6@@0| |T@$42_TestMonomorphization_R'address'|) (j@@11 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11) (ite  (and (>= j@@11 |l#0@@3|) (< j@@11 |l#1@@2|)) (ite (< j@@11 |l#2@@1|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3@@1| j@@11) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4@@1| (+ j@@11 |l#5@@1|))) |l#6@@0|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |91|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@2| Int) (|l#6@@1| |T@$42_TestMonomorphization_R'u64'|) (i@@46 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46) (ite  (and (>= i@@46 |l#0@@4|) (< i@@46 |l#1@@3|)) (ite (< i@@46 |l#2@@2|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@2| i@@46) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@2| (- i@@46 |l#5@@2|))) |l#6@@1|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |92|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| |T@$42_TestMonomorphization_R'u64'|) (i@@47 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47) (ite  (and (<= |l#0@@5| i@@47) (< i@@47 |l#1@@4|)) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#2@@3| (- (- |l#3@@3| i@@47) |l#4@@3|)) |l#5@@3|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |93|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@4| Int) (|l#6@@2| |T@$42_TestMonomorphization_R'u64'|) (j@@12 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12) (ite  (and (>= j@@12 |l#0@@6|) (< j@@12 |l#1@@5|)) (ite (< j@@12 |l#2@@4|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@4| j@@12) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@4| (+ j@@12 |l#5@@4|))) |l#6@@2|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Vec_1349|) (|l#4@@5| |T@[Int]Vec_1349|) (|l#5@@5| Int) (|l#6@@3| T@Vec_1349) (i@@48 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48) (ite  (and (>= i@@48 |l#0@@7|) (< i@@48 |l#1@@6|)) (ite (< i@@48 |l#2@@5|) (|Select__T@[Int]Vec_1349_| |l#3@@5| i@@48) (|Select__T@[Int]Vec_1349_| |l#4@@5| (- i@@48 |l#5@@5|))) |l#6@@3|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Vec_1349|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@Vec_1349) (i@@49 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49) (ite  (and (<= |l#0@@8| i@@49) (< i@@49 |l#1@@7|)) (|Select__T@[Int]Vec_1349_| |l#2@@6| (- (- |l#3@@6| i@@49) |l#4@@6|)) |l#5@@6|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Vec_1349|) (|l#4@@7| |T@[Int]Vec_1349|) (|l#5@@7| Int) (|l#6@@4| T@Vec_1349) (j@@13 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13) (ite  (and (>= j@@13 |l#0@@9|) (< j@@13 |l#1@@8|)) (ite (< j@@13 |l#2@@7|) (|Select__T@[Int]Vec_1349_| |l#3@@7| j@@13) (|Select__T@[Int]Vec_1349_| |l#4@@7| (+ j@@13 |l#5@@7|))) |l#6@@4|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Bool|) (|l#4@@8| |T@[Int]Bool|) (|l#5@@8| Int) (|l#6@@5| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50) (ite  (and (>= i@@50 |l#0@@10|) (< i@@50 |l#1@@9|)) (ite (< i@@50 |l#2@@8|) (|Select__T@[Int]Bool_| |l#3@@8| i@@50) (|Select__T@[Int]Bool_| |l#4@@8| (- i@@50 |l#5@@8|))) |l#6@@5|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Bool|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Bool) (i@@51 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51) (ite  (and (<= |l#0@@11| i@@51) (< i@@51 |l#1@@10|)) (|Select__T@[Int]Bool_| |l#2@@9| (- (- |l#3@@9| i@@51) |l#4@@9|)) |l#5@@9|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Bool|) (|l#4@@10| |T@[Int]Bool|) (|l#5@@10| Int) (|l#6@@6| Bool) (j@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14) (ite  (and (>= j@@14 |l#0@@12|) (< j@@14 |l#1@@11|)) (ite (< j@@14 |l#2@@10|) (|Select__T@[Int]Bool_| |l#3@@10| j@@14) (|Select__T@[Int]Bool_| |l#4@@10| (+ j@@14 |l#5@@10|))) |l#6@@6|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@52 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52) (ite  (and (>= i@@52 |l#0@@13|) (< i@@52 |l#1@@12|)) (ite (< i@@52 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@52) (|Select__T@[Int]Int_| |l#4@@11| (- i@@52 |l#5@@11|))) |l#6@@7|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@53 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53) (ite  (and (<= |l#0@@14| i@@53) (< i@@53 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@53) |l#4@@12|)) |l#5@@12|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@15 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15) (ite  (and (>= j@@15 |l#0@@15|) (< j@@15 |l#1@@14|)) (ite (< j@@15 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@15) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@15 |l#5@@13|))) |l#6@@8|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |103|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@32) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@32)))
 :qid |monodefaultz3bpl.154:29|
 :skolemid |104|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$42_TestMonomorphization_R'u64'_$memory| () T@$Memory_36460)
(declare-fun _$t0 () Int)
(declare-fun |$42_TestMonomorphization_R'u64'_$memory@1| () T@$Memory_36460)
(declare-fun $abort_code@1 () Int)
(declare-fun |$42_TestMonomorphization_R'u64'_$memory@0| () T@$Memory_36460)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
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
 (=> (= (ControlFlow 0 0) 47691) (let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 41793) (- 0 47900)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_36460| |$42_TestMonomorphization_R'u64'_$memory|) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_36460| |$42_TestMonomorphization_R'u64'_$memory|) _$t0)) (=> (= (ControlFlow 0 41793) (- 0 47911)) (|Select__T@[Int]Bool_| (|domain#$Memory_36460| |$42_TestMonomorphization_R'u64'_$memory@1|) _$t0)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 41821) (- 0 47880))) (|Select__T@[Int]Bool_| (|domain#$Memory_36460| |$42_TestMonomorphization_R'u64'_$memory|) _$t0)))))
(let ((anon7_Then$1_correct  (=> (= |$42_TestMonomorphization_R'u64'_$memory@1| |$42_TestMonomorphization_R'u64'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 41871) 41821) anon8_Then_correct) (=> (= (ControlFlow 0 41871) 41793) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_36460| |$42_TestMonomorphization_R'u64'_$memory|) _$t0) (= (ControlFlow 0 41869) 41871)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_36460| |$42_TestMonomorphization_R'u64'_$memory|) _$t0)) (=> (and (and (= |$42_TestMonomorphization_R'u64'_$memory@0| ($Memory_36460 (|Store__T@[Int]Bool_| (|domain#$Memory_36460| |$42_TestMonomorphization_R'u64'_$memory|) _$t0 true) (|Store__T@[Int]$42_TestMonomorphization_R'u64'_| (|contents#$Memory_36460| |$42_TestMonomorphization_R'u64'_$memory|) _$t0 $t3@0))) (= |$42_TestMonomorphization_R'u64'_$memory@1| |$42_TestMonomorphization_R'u64'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 41761) 41821) anon8_Then_correct) (=> (= (ControlFlow 0 41761) 41793) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|contents#$Memory_36460| |$42_TestMonomorphization_R'u64'_$memory|) $a_0)))
(|$IsValid'$42_TestMonomorphization_R'u64''| $rsc))
 :qid |monodefaultz3bpl.2306:20|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|contents#$Memory_36460| |$42_TestMonomorphization_R'u64'_$memory|) $a_0))
))) (=> (and (and (= _$t0 _$t0) (|$IsValid'u64'| 1)) (and (|$IsValid'u64'| 2) (= $t3@0 (|$42_TestMonomorphization_R'u64'| 1 2)))) (and (=> (= (ControlFlow 0 41743) 41869) anon7_Then_correct) (=> (= (ControlFlow 0 41743) 41761) anon7_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_18130| stream@@0) 0) (forall ((v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) v@@33) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
))) (= (ControlFlow 0 41675) 41743)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 47691) 41675) inline$$InitEventStore$0$anon0_correct)))
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
(declare-datatypes ((T@$Memory_35237 0)) ((($Memory_35237 (|domain#$Memory_35237| |T@[Int]Bool|) (|contents#$Memory_35237| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@Vec_6459 0)) (((Vec_6459 (|v#Vec_6459| |T@[Int]Bool|) (|l#Vec_6459| Int) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Vec_1349| 0)
(declare-datatypes ((T@Vec_24551 0)) (((Vec_24551 (|v#Vec_24551| |T@[Int]Vec_1349|) (|l#Vec_24551| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_36699 0)) ((($Memory_36699 (|domain#$Memory_36699| |T@[Int]Bool|) (|contents#$Memory_36699| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_36568 0)) ((($Memory_36568 (|domain#$Memory_36568| |T@[Int]Bool|) (|contents#$Memory_36568| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@Vec_19114 0)) (((Vec_19114 (|v#Vec_19114| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#Vec_19114| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_36460 0)) ((($Memory_36460 (|domain#$Memory_36460| |T@[Int]Bool|) (|contents#$Memory_36460| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@Vec_21870 0)) (((Vec_21870 (|v#Vec_21870| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#Vec_21870| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_36352 0)) ((($Memory_36352 (|domain#$Memory_36352| |T@[Int]Bool|) (|contents#$Memory_36352| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18130 0)) (((Multiset_18130 (|v#Multiset_18130| |T@[$EventRep]Int|) (|l#Multiset_18130| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_18130| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18130|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37461 0)) ((($Mutation_37461 (|l#$Mutation_37461| T@$Location) (|p#$Mutation_37461| T@Vec_1349) (|v#$Mutation_37461| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_35865 0)) ((($Mutation_35865 (|l#$Mutation_35865| T@$Location) (|p#$Mutation_35865| T@Vec_1349) (|v#$Mutation_35865| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8192 0)) ((($Mutation_8192 (|l#$Mutation_8192| T@$Location) (|p#$Mutation_8192| T@Vec_1349) (|v#$Mutation_8192| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7083 0)) ((($Mutation_7083 (|l#$Mutation_7083| T@$Location) (|p#$Mutation_7083| T@Vec_1349) (|v#$Mutation_7083| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_28067 0)) ((($Mutation_28067 (|l#$Mutation_28067| T@$Location) (|p#$Mutation_28067| T@Vec_1349) (|v#$Mutation_28067| T@Vec_6459) ) ) ))
(declare-datatypes ((T@$Mutation_26329 0)) ((($Mutation_26329 (|l#$Mutation_26329| T@$Location) (|p#$Mutation_26329| T@Vec_1349) (|v#$Mutation_26329| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_25241 0)) ((($Mutation_25241 (|l#$Mutation_25241| T@$Location) (|p#$Mutation_25241| T@Vec_1349) (|v#$Mutation_25241| T@Vec_24551) ) ) ))
(declare-datatypes ((T@$Mutation_23500 0)) ((($Mutation_23500 (|l#$Mutation_23500| T@$Location) (|p#$Mutation_23500| T@Vec_1349) (|v#$Mutation_23500| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_22513 0)) ((($Mutation_22513 (|l#$Mutation_22513| T@$Location) (|p#$Mutation_22513| T@Vec_1349) (|v#$Mutation_22513| T@Vec_21870) ) ) ))
(declare-datatypes ((T@$Mutation_20772 0)) ((($Mutation_20772 (|l#$Mutation_20772| T@$Location) (|p#$Mutation_20772| T@Vec_1349) (|v#$Mutation_20772| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19757 0)) ((($Mutation_19757 (|l#$Mutation_19757| T@$Location) (|p#$Mutation_19757| T@Vec_1349) (|v#$Mutation_19757| T@Vec_19114) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114 T@Vec_19114) Bool)
(declare-fun InRangeVec_15148 (T@Vec_19114 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int) |T@$42_TestMonomorphization_R'address'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870 T@Vec_21870) Bool)
(declare-fun InRangeVec_15349 (T@Vec_21870 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsEqual'vec'vec'u64'''| (T@Vec_24551 T@Vec_24551) Bool)
(declare-fun InRangeVec_24660 (T@Vec_24551 Int) Bool)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |Select__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int) T@Vec_1349)
(declare-fun |$IsValid'vec'vec'u64'''| (T@Vec_24551) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'vec'u64''| (T@Vec_24551 T@Vec_1349) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_6459 T@Vec_6459) Bool)
(declare-fun InRangeVec_6459 (T@Vec_6459 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_6459) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_6459 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_7568 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_1349 Int) Int)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) T@Vec_1349)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_1349)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle) T@Multiset_18130)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun IndexOfVec_19114 (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun IndexOfVec_21870 (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun IndexOfVec_24551 (T@Vec_24551 T@Vec_1349) Int)
(declare-fun IndexOfVec_6459 (T@Vec_6459 Bool) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18130| |T@[$1_Event_EventHandle]Multiset_18130|) |T@[$1_Event_EventHandle]Multiset_18130|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#4| (Int Int |T@[Int]$42_TestMonomorphization_R'address'| Int Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#7| (Int Int |T@[Int]$42_TestMonomorphization_R'u64'| Int Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#10| (Int Int |T@[Int]Vec_1349| Int Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#13| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |monodefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |monodefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |monodefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |monodefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |monodefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |monodefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_19114) (v2 T@Vec_19114) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2)  (and (= (|l#Vec_19114| v1) (|l#Vec_19114| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_15148 v1 i@@0) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v1) i@@0) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v2) i@@0)))
 :qid |monodefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |monodefaultz3bpl.613:61|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_19114) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_19114| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_15148 v@@4 i@@1) (|$IsValid'$42_TestMonomorphization_R'address''| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@4) i@@1)))
 :qid |monodefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |monodefaultz3bpl.619:61|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_19114) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_15148 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@3) e))
 :qid |monodefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_15148 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) j) e)))
 :qid |monodefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |monodefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_21870) (v2@@0 T@Vec_21870) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0)  (and (= (|l#Vec_21870| v1@@0) (|l#Vec_21870| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_15349 v1@@0 i@@4) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v1@@0) i@@4) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v2@@0) i@@4)))
 :qid |monodefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |monodefaultz3bpl.794:57|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_21870) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_21870| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_15349 v@@6 i@@5) (|$IsValid'$42_TestMonomorphization_R'u64''| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@6) i@@5)))
 :qid |monodefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |monodefaultz3bpl.800:57|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_21870) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@6 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_15349 v@@7 i@@7)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@7) e@@0))
 :qid |monodefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_15349 v@@7 i@@6)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) j@@0) e@@0)))
 :qid |monodefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |monodefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_24551) (v2@@1 T@Vec_24551) ) (! (= (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1)  (and (= (|l#Vec_24551| v1@@1) (|l#Vec_24551| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_24660 v1@@1 i@@8) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v1@@1) i@@8) (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v2@@1) i@@8)))
 :qid |monodefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |monodefaultz3bpl.975:34|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_24551) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_24551| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_24660 v@@8 i@@9) (|$IsValid'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@8) i@@9)))
 :qid |monodefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |monodefaultz3bpl.981:34|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_24551) (e@@1 T@Vec_1349) ) (! (let ((i@@10 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_24660 v@@9 i@@11)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@11) e@@1))
 :qid |monodefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_24660 v@@9 i@@10)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) j@@1) e@@1)))
 :qid |monodefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |monodefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6459) (v2@@2 T@Vec_6459) ) (! (= (|$IsEqual'vec'bool''| v1@@2 v2@@2)  (and (= (|l#Vec_6459| v1@@2) (|l#Vec_6459| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6459 v1@@2 i@@12) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v1@@2) i@@12) (|Select__T@[Int]Bool_| (|v#Vec_6459| v2@@2) i@@12)))
 :qid |monodefaultz3bpl.1158:13|
 :skolemid |38|
))))
 :qid |monodefaultz3bpl.1156:30|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'bool''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_6459) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_6459| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6459 v@@10 i@@13) true)
 :qid |monodefaultz3bpl.1164:13|
 :skolemid |40|
))))
 :qid |monodefaultz3bpl.1162:30|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_6459) (e@@2 Bool) ) (! (let ((i@@14 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6459 v@@11 i@@15)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@15) e@@2))
 :qid |monodefaultz3bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6459 v@@11 i@@14)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) j@@2) e@@2)))
 :qid |monodefaultz3bpl.1177:17|
 :skolemid |43|
)))))
 :qid |monodefaultz3bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_1349| v1@@3) (|l#Vec_1349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7568 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@3) i@@16)))
 :qid |monodefaultz3bpl.1339:13|
 :skolemid |45|
))))
 :qid |monodefaultz3bpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_1349) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7568 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@12) i@@17)))
 :qid |monodefaultz3bpl.1345:13|
 :skolemid |47|
))))
 :qid |monodefaultz3bpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7568 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@19) e@@3))
 :qid |monodefaultz3bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7568 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |monodefaultz3bpl.1358:17|
 :skolemid |50|
)))))
 :qid |monodefaultz3bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_1349) (v2@@4 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@4 v2@@4)  (and (= (|l#Vec_1349| v1@@4) (|l#Vec_1349| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7568 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@4) i@@20)))
 :qid |monodefaultz3bpl.1520:13|
 :skolemid |52|
))))
 :qid |monodefaultz3bpl.1518:29|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u64''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7568 v@@14 i@@21) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@14) i@@21)))
 :qid |monodefaultz3bpl.1526:13|
 :skolemid |54|
))))
 :qid |monodefaultz3bpl.1524:29|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_1349) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7568 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@23) e@@4))
 :qid |monodefaultz3bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7568 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) j@@4) e@@4)))
 :qid |monodefaultz3bpl.1539:17|
 :skolemid |57|
)))))
 :qid |monodefaultz3bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_1349) (v2@@5 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_1349| v1@@5) (|l#Vec_1349| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_7568 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@5) i@@24)))
 :qid |monodefaultz3bpl.1701:13|
 :skolemid |59|
))))
 :qid |monodefaultz3bpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_7568 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@16) i@@25)))
 :qid |monodefaultz3bpl.1707:13|
 :skolemid |61|
))))
 :qid |monodefaultz3bpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_1349) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_7568 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@27) e@@5))
 :qid |monodefaultz3bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_7568 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) j@@5) e@@5)))
 :qid |monodefaultz3bpl.1720:17|
 :skolemid |64|
)))))
 :qid |monodefaultz3bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_1349) (v2@@6 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |monodefaultz3bpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_1349) (v2@@7 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |monodefaultz3bpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |monodefaultz3bpl.1956:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |monodefaultz3bpl.1959:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@8 |T@#0|) (v2@@8 |T@#0|) ) (! (= (= v1@@8 v2@@8) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8)))
 :qid |monodefaultz3bpl.1986:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_1349| r@@0) 0)))
 :qid |monodefaultz3bpl.1991:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@9 Int) (v2@@9 Int) ) (! (= (= v1@@9 v2@@9) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9)))
 :qid |monodefaultz3bpl.2013:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (|l#Vec_1349| r@@1) 0)))
 :qid |monodefaultz3bpl.2018:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (|l#Vec_1349| r@@2) $serialized_address_len))
 :qid |monodefaultz3bpl.2032:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18130| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream) v@@21) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |monodefaultz3bpl.2135:69|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@10 T@$42_TestMonomorphization_E) (v2@@10 T@$42_TestMonomorphization_E) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10)))
 :qid |monodefaultz3bpl.2141:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10))
)))
(assert (forall ((s T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s)))
 :qid |monodefaultz3bpl.2205:47|
 :skolemid |79|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s))
)))
(assert (forall ((s@@0 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0)  (and true true))
 :qid |monodefaultz3bpl.2221:53|
 :skolemid |80|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@1)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@1))))
 :qid |monodefaultz3bpl.2239:52|
 :skolemid |81|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@2)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@2)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@2))))
 :qid |monodefaultz3bpl.2257:56|
 :skolemid |82|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3)  (and true true))
 :qid |monodefaultz3bpl.2275:51|
 :skolemid |83|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3))
)))
(assert (forall ((v@@22 T@Vec_19114) (i@@28 Int) ) (! (= (InRangeVec_15148 v@@22 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_19114| v@@22))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15148 v@@22 i@@28))
)))
(assert (forall ((v@@23 T@Vec_21870) (i@@29 Int) ) (! (= (InRangeVec_15349 v@@23 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_21870| v@@23))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15349 v@@23 i@@29))
)))
(assert (forall ((v@@24 T@Vec_24551) (i@@30 Int) ) (! (= (InRangeVec_24660 v@@24 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_24551| v@@24))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_24660 v@@24 i@@30))
)))
(assert (forall ((v@@25 T@Vec_6459) (i@@31 Int) ) (! (= (InRangeVec_6459 v@@25 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_6459| v@@25))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6459 v@@25 i@@31))
)))
(assert (forall ((v@@26 T@Vec_1349) (i@@32 Int) ) (! (= (InRangeVec_7568 v@@26 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_1349| v@@26))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7568 v@@26 i@@32))
)))
(assert (forall ((v@@27 T@Vec_19114) (e@@6 |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@33 (IndexOfVec_19114 v@@27 e@@6)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_15148 v@@27 i@@34) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@34) e@@6))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_15148 v@@27 i@@33) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@33) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@33)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) j@@6) e@@6)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19114 v@@27 e@@6))
)))
(assert (forall ((v@@28 T@Vec_1349) (e@@7 Int) ) (! (let ((i@@35 (IndexOfVec_1349 v@@28 e@@7)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_7568 v@@28 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@36) e@@7))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_7568 v@@28 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@35) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@35)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) j@@7) e@@7)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_21870) (e@@8 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@37 (IndexOfVec_21870 v@@29 e@@8)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_15349 v@@29 i@@38) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@38) e@@8))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_15349 v@@29 i@@37) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@37) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@37)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) j@@8) e@@8)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21870 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_24551) (e@@9 T@Vec_1349) ) (! (let ((i@@39 (IndexOfVec_24551 v@@30 e@@9)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_24660 v@@30 i@@40) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@40) e@@9))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_24660 v@@30 i@@39) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@39) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@39)) (not (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) j@@9) e@@9)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_24551 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_6459) (e@@10 Bool) ) (! (let ((i@@41 (IndexOfVec_6459 v@@31 e@@10)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_6459 v@@31 i@@42) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@42) e@@10))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_6459 v@@31 i@@41) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@41) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@41)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) j@@10) e@@10)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6459 v@@31 e@@10))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |monodefaultz3bpl.275:54|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18130|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18130|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))))
(Multiset_18130 (|lambda#18| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0)) (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |monodefaultz3bpl.2104:13|
 :skolemid |88|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5| Int) (|l#6| |T@$42_TestMonomorphization_R'address'|) (i@@44 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44) (ite  (and (>= i@@44 |l#0@@1|) (< i@@44 |l#1@@0|)) (ite (< i@@44 |l#2|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3| i@@44) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4| (- i@@44 |l#5|))) |l#6|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@$42_TestMonomorphization_R'address'|) (i@@45 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45) (ite  (and (<= |l#0@@2| i@@45) (< i@@45 |l#1@@1|)) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#2@@0| (- (- |l#3@@0| i@@45) |l#4@@0|)) |l#5@@0|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |90|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5@@1| Int) (|l#6@@0| |T@$42_TestMonomorphization_R'address'|) (j@@11 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11) (ite  (and (>= j@@11 |l#0@@3|) (< j@@11 |l#1@@2|)) (ite (< j@@11 |l#2@@1|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3@@1| j@@11) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4@@1| (+ j@@11 |l#5@@1|))) |l#6@@0|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |91|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@2| Int) (|l#6@@1| |T@$42_TestMonomorphization_R'u64'|) (i@@46 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46) (ite  (and (>= i@@46 |l#0@@4|) (< i@@46 |l#1@@3|)) (ite (< i@@46 |l#2@@2|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@2| i@@46) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@2| (- i@@46 |l#5@@2|))) |l#6@@1|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |92|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| |T@$42_TestMonomorphization_R'u64'|) (i@@47 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47) (ite  (and (<= |l#0@@5| i@@47) (< i@@47 |l#1@@4|)) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#2@@3| (- (- |l#3@@3| i@@47) |l#4@@3|)) |l#5@@3|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |93|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@4| Int) (|l#6@@2| |T@$42_TestMonomorphization_R'u64'|) (j@@12 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12) (ite  (and (>= j@@12 |l#0@@6|) (< j@@12 |l#1@@5|)) (ite (< j@@12 |l#2@@4|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@4| j@@12) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@4| (+ j@@12 |l#5@@4|))) |l#6@@2|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Vec_1349|) (|l#4@@5| |T@[Int]Vec_1349|) (|l#5@@5| Int) (|l#6@@3| T@Vec_1349) (i@@48 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48) (ite  (and (>= i@@48 |l#0@@7|) (< i@@48 |l#1@@6|)) (ite (< i@@48 |l#2@@5|) (|Select__T@[Int]Vec_1349_| |l#3@@5| i@@48) (|Select__T@[Int]Vec_1349_| |l#4@@5| (- i@@48 |l#5@@5|))) |l#6@@3|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Vec_1349|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@Vec_1349) (i@@49 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49) (ite  (and (<= |l#0@@8| i@@49) (< i@@49 |l#1@@7|)) (|Select__T@[Int]Vec_1349_| |l#2@@6| (- (- |l#3@@6| i@@49) |l#4@@6|)) |l#5@@6|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Vec_1349|) (|l#4@@7| |T@[Int]Vec_1349|) (|l#5@@7| Int) (|l#6@@4| T@Vec_1349) (j@@13 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13) (ite  (and (>= j@@13 |l#0@@9|) (< j@@13 |l#1@@8|)) (ite (< j@@13 |l#2@@7|) (|Select__T@[Int]Vec_1349_| |l#3@@7| j@@13) (|Select__T@[Int]Vec_1349_| |l#4@@7| (+ j@@13 |l#5@@7|))) |l#6@@4|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Bool|) (|l#4@@8| |T@[Int]Bool|) (|l#5@@8| Int) (|l#6@@5| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50) (ite  (and (>= i@@50 |l#0@@10|) (< i@@50 |l#1@@9|)) (ite (< i@@50 |l#2@@8|) (|Select__T@[Int]Bool_| |l#3@@8| i@@50) (|Select__T@[Int]Bool_| |l#4@@8| (- i@@50 |l#5@@8|))) |l#6@@5|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Bool|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Bool) (i@@51 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51) (ite  (and (<= |l#0@@11| i@@51) (< i@@51 |l#1@@10|)) (|Select__T@[Int]Bool_| |l#2@@9| (- (- |l#3@@9| i@@51) |l#4@@9|)) |l#5@@9|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Bool|) (|l#4@@10| |T@[Int]Bool|) (|l#5@@10| Int) (|l#6@@6| Bool) (j@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14) (ite  (and (>= j@@14 |l#0@@12|) (< j@@14 |l#1@@11|)) (ite (< j@@14 |l#2@@10|) (|Select__T@[Int]Bool_| |l#3@@10| j@@14) (|Select__T@[Int]Bool_| |l#4@@10| (+ j@@14 |l#5@@10|))) |l#6@@6|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@52 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52) (ite  (and (>= i@@52 |l#0@@13|) (< i@@52 |l#1@@12|)) (ite (< i@@52 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@52) (|Select__T@[Int]Int_| |l#4@@11| (- i@@52 |l#5@@11|))) |l#6@@7|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@53 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53) (ite  (and (<= |l#0@@14| i@@53) (< i@@53 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@53) |l#4@@12|)) |l#5@@12|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@15 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15) (ite  (and (>= j@@15 |l#0@@15|) (< j@@15 |l#1@@14|)) (ite (< j@@15 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@15) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@15 |l#5@@13|))) |l#6@@8|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |103|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@32) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@32)))
 :qid |monodefaultz3bpl.154:29|
 :skolemid |104|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$42_TestMonomorphization_R'#0'_$memory| () T@$Memory_36699)
(declare-fun _$t0 () Int)
(declare-fun |$42_TestMonomorphization_R'#0'_$memory@1| () T@$Memory_36699)
(declare-fun $abort_code@1 () Int)
(declare-fun |$42_TestMonomorphization_R'#0'_$memory@0| () T@$Memory_36699)
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
 (=> (= (ControlFlow 0 0) 47966) (let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 42072) (- 0 48185)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_36699| |$42_TestMonomorphization_R'#0'_$memory|) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_36699| |$42_TestMonomorphization_R'#0'_$memory|) _$t0)) (=> (= (ControlFlow 0 42072) (- 0 48196)) (|Select__T@[Int]Bool_| (|domain#$Memory_36699| |$42_TestMonomorphization_R'#0'_$memory@1|) _$t0)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 42100) (- 0 48165))) (|Select__T@[Int]Bool_| (|domain#$Memory_36699| |$42_TestMonomorphization_R'#0'_$memory|) _$t0)))))
(let ((anon7_Then$1_correct  (=> (= |$42_TestMonomorphization_R'#0'_$memory@1| |$42_TestMonomorphization_R'#0'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 42150) 42100) anon8_Then_correct) (=> (= (ControlFlow 0 42150) 42072) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_36699| |$42_TestMonomorphization_R'#0'_$memory|) _$t0) (= (ControlFlow 0 42148) 42150)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_36699| |$42_TestMonomorphization_R'#0'_$memory|) _$t0)) (=> (and (and (= |$42_TestMonomorphization_R'#0'_$memory@0| ($Memory_36699 (|Store__T@[Int]Bool_| (|domain#$Memory_36699| |$42_TestMonomorphization_R'#0'_$memory|) _$t0 true) (|Store__T@[Int]$42_TestMonomorphization_R'#0'_| (|contents#$Memory_36699| |$42_TestMonomorphization_R'#0'_$memory|) _$t0 $t3@0))) (= |$42_TestMonomorphization_R'#0'_$memory@1| |$42_TestMonomorphization_R'#0'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 42040) 42100) anon8_Then_correct) (=> (= (ControlFlow 0 42040) 42072) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestMonomorphization_R'#0'_| (|contents#$Memory_36699| |$42_TestMonomorphization_R'#0'_$memory|) $a_0)))
(|$IsValid'$42_TestMonomorphization_R'#0''| $rsc))
 :qid |monodefaultz3bpl.2404:20|
 :skolemid |85|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'#0'_| (|contents#$Memory_36699| |$42_TestMonomorphization_R'#0'_$memory|) $a_0))
))) (=> (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t3@0 (|$42_TestMonomorphization_R'#0'| _$t1 _$t2)))) (and (=> (= (ControlFlow 0 42022) 42148) anon7_Then_correct) (=> (= (ControlFlow 0 42022) 42040) anon7_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_18130| stream@@0) 0) (forall ((v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) v@@33) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
))) (= (ControlFlow 0 41946) 42022)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 47966) 41946) inline$$InitEventStore$0$anon0_correct)))
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
(declare-datatypes ((T@$Memory_35237 0)) ((($Memory_35237 (|domain#$Memory_35237| |T@[Int]Bool|) (|contents#$Memory_35237| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@Vec_6459 0)) (((Vec_6459 (|v#Vec_6459| |T@[Int]Bool|) (|l#Vec_6459| Int) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Vec_1349| 0)
(declare-datatypes ((T@Vec_24551 0)) (((Vec_24551 (|v#Vec_24551| |T@[Int]Vec_1349|) (|l#Vec_24551| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_36699 0)) ((($Memory_36699 (|domain#$Memory_36699| |T@[Int]Bool|) (|contents#$Memory_36699| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_36568 0)) ((($Memory_36568 (|domain#$Memory_36568| |T@[Int]Bool|) (|contents#$Memory_36568| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@Vec_19114 0)) (((Vec_19114 (|v#Vec_19114| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#Vec_19114| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_36460 0)) ((($Memory_36460 (|domain#$Memory_36460| |T@[Int]Bool|) (|contents#$Memory_36460| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@Vec_21870 0)) (((Vec_21870 (|v#Vec_21870| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#Vec_21870| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_36352 0)) ((($Memory_36352 (|domain#$Memory_36352| |T@[Int]Bool|) (|contents#$Memory_36352| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18130 0)) (((Multiset_18130 (|v#Multiset_18130| |T@[$EventRep]Int|) (|l#Multiset_18130| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_18130| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18130|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37461 0)) ((($Mutation_37461 (|l#$Mutation_37461| T@$Location) (|p#$Mutation_37461| T@Vec_1349) (|v#$Mutation_37461| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_35865 0)) ((($Mutation_35865 (|l#$Mutation_35865| T@$Location) (|p#$Mutation_35865| T@Vec_1349) (|v#$Mutation_35865| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8192 0)) ((($Mutation_8192 (|l#$Mutation_8192| T@$Location) (|p#$Mutation_8192| T@Vec_1349) (|v#$Mutation_8192| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7083 0)) ((($Mutation_7083 (|l#$Mutation_7083| T@$Location) (|p#$Mutation_7083| T@Vec_1349) (|v#$Mutation_7083| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_28067 0)) ((($Mutation_28067 (|l#$Mutation_28067| T@$Location) (|p#$Mutation_28067| T@Vec_1349) (|v#$Mutation_28067| T@Vec_6459) ) ) ))
(declare-datatypes ((T@$Mutation_26329 0)) ((($Mutation_26329 (|l#$Mutation_26329| T@$Location) (|p#$Mutation_26329| T@Vec_1349) (|v#$Mutation_26329| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_25241 0)) ((($Mutation_25241 (|l#$Mutation_25241| T@$Location) (|p#$Mutation_25241| T@Vec_1349) (|v#$Mutation_25241| T@Vec_24551) ) ) ))
(declare-datatypes ((T@$Mutation_23500 0)) ((($Mutation_23500 (|l#$Mutation_23500| T@$Location) (|p#$Mutation_23500| T@Vec_1349) (|v#$Mutation_23500| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_22513 0)) ((($Mutation_22513 (|l#$Mutation_22513| T@$Location) (|p#$Mutation_22513| T@Vec_1349) (|v#$Mutation_22513| T@Vec_21870) ) ) ))
(declare-datatypes ((T@$Mutation_20772 0)) ((($Mutation_20772 (|l#$Mutation_20772| T@$Location) (|p#$Mutation_20772| T@Vec_1349) (|v#$Mutation_20772| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19757 0)) ((($Mutation_19757 (|l#$Mutation_19757| T@$Location) (|p#$Mutation_19757| T@Vec_1349) (|v#$Mutation_19757| T@Vec_19114) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114 T@Vec_19114) Bool)
(declare-fun InRangeVec_15148 (T@Vec_19114 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int) |T@$42_TestMonomorphization_R'address'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870 T@Vec_21870) Bool)
(declare-fun InRangeVec_15349 (T@Vec_21870 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsEqual'vec'vec'u64'''| (T@Vec_24551 T@Vec_24551) Bool)
(declare-fun InRangeVec_24660 (T@Vec_24551 Int) Bool)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |Select__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int) T@Vec_1349)
(declare-fun |$IsValid'vec'vec'u64'''| (T@Vec_24551) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'vec'u64''| (T@Vec_24551 T@Vec_1349) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_6459 T@Vec_6459) Bool)
(declare-fun InRangeVec_6459 (T@Vec_6459 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_6459) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_6459 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_7568 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_1349 Int) Int)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) T@Vec_1349)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_1349)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle) T@Multiset_18130)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun IndexOfVec_19114 (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun IndexOfVec_21870 (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun IndexOfVec_24551 (T@Vec_24551 T@Vec_1349) Int)
(declare-fun IndexOfVec_6459 (T@Vec_6459 Bool) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18130| |T@[$1_Event_EventHandle]Multiset_18130|) |T@[$1_Event_EventHandle]Multiset_18130|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#4| (Int Int |T@[Int]$42_TestMonomorphization_R'address'| Int Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#7| (Int Int |T@[Int]$42_TestMonomorphization_R'u64'| Int Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#10| (Int Int |T@[Int]Vec_1349| Int Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#13| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |monodefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |monodefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |monodefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |monodefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |monodefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |monodefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_19114) (v2 T@Vec_19114) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2)  (and (= (|l#Vec_19114| v1) (|l#Vec_19114| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_15148 v1 i@@0) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v1) i@@0) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v2) i@@0)))
 :qid |monodefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |monodefaultz3bpl.613:61|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_19114) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_19114| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_15148 v@@4 i@@1) (|$IsValid'$42_TestMonomorphization_R'address''| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@4) i@@1)))
 :qid |monodefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |monodefaultz3bpl.619:61|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_19114) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_15148 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@3) e))
 :qid |monodefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_15148 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) j) e)))
 :qid |monodefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |monodefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_21870) (v2@@0 T@Vec_21870) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0)  (and (= (|l#Vec_21870| v1@@0) (|l#Vec_21870| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_15349 v1@@0 i@@4) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v1@@0) i@@4) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v2@@0) i@@4)))
 :qid |monodefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |monodefaultz3bpl.794:57|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_21870) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_21870| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_15349 v@@6 i@@5) (|$IsValid'$42_TestMonomorphization_R'u64''| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@6) i@@5)))
 :qid |monodefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |monodefaultz3bpl.800:57|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_21870) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@6 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_15349 v@@7 i@@7)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@7) e@@0))
 :qid |monodefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_15349 v@@7 i@@6)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) j@@0) e@@0)))
 :qid |monodefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |monodefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_24551) (v2@@1 T@Vec_24551) ) (! (= (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1)  (and (= (|l#Vec_24551| v1@@1) (|l#Vec_24551| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_24660 v1@@1 i@@8) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v1@@1) i@@8) (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v2@@1) i@@8)))
 :qid |monodefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |monodefaultz3bpl.975:34|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_24551) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_24551| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_24660 v@@8 i@@9) (|$IsValid'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@8) i@@9)))
 :qid |monodefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |monodefaultz3bpl.981:34|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_24551) (e@@1 T@Vec_1349) ) (! (let ((i@@10 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_24660 v@@9 i@@11)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@11) e@@1))
 :qid |monodefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_24660 v@@9 i@@10)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) j@@1) e@@1)))
 :qid |monodefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |monodefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6459) (v2@@2 T@Vec_6459) ) (! (= (|$IsEqual'vec'bool''| v1@@2 v2@@2)  (and (= (|l#Vec_6459| v1@@2) (|l#Vec_6459| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6459 v1@@2 i@@12) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v1@@2) i@@12) (|Select__T@[Int]Bool_| (|v#Vec_6459| v2@@2) i@@12)))
 :qid |monodefaultz3bpl.1158:13|
 :skolemid |38|
))))
 :qid |monodefaultz3bpl.1156:30|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'bool''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_6459) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_6459| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6459 v@@10 i@@13) true)
 :qid |monodefaultz3bpl.1164:13|
 :skolemid |40|
))))
 :qid |monodefaultz3bpl.1162:30|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_6459) (e@@2 Bool) ) (! (let ((i@@14 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6459 v@@11 i@@15)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@15) e@@2))
 :qid |monodefaultz3bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6459 v@@11 i@@14)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) j@@2) e@@2)))
 :qid |monodefaultz3bpl.1177:17|
 :skolemid |43|
)))))
 :qid |monodefaultz3bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_1349| v1@@3) (|l#Vec_1349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7568 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@3) i@@16)))
 :qid |monodefaultz3bpl.1339:13|
 :skolemid |45|
))))
 :qid |monodefaultz3bpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_1349) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7568 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@12) i@@17)))
 :qid |monodefaultz3bpl.1345:13|
 :skolemid |47|
))))
 :qid |monodefaultz3bpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7568 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@19) e@@3))
 :qid |monodefaultz3bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7568 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |monodefaultz3bpl.1358:17|
 :skolemid |50|
)))))
 :qid |monodefaultz3bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_1349) (v2@@4 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@4 v2@@4)  (and (= (|l#Vec_1349| v1@@4) (|l#Vec_1349| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7568 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@4) i@@20)))
 :qid |monodefaultz3bpl.1520:13|
 :skolemid |52|
))))
 :qid |monodefaultz3bpl.1518:29|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u64''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7568 v@@14 i@@21) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@14) i@@21)))
 :qid |monodefaultz3bpl.1526:13|
 :skolemid |54|
))))
 :qid |monodefaultz3bpl.1524:29|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_1349) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7568 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@23) e@@4))
 :qid |monodefaultz3bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7568 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) j@@4) e@@4)))
 :qid |monodefaultz3bpl.1539:17|
 :skolemid |57|
)))))
 :qid |monodefaultz3bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_1349) (v2@@5 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_1349| v1@@5) (|l#Vec_1349| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_7568 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@5) i@@24)))
 :qid |monodefaultz3bpl.1701:13|
 :skolemid |59|
))))
 :qid |monodefaultz3bpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_7568 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@16) i@@25)))
 :qid |monodefaultz3bpl.1707:13|
 :skolemid |61|
))))
 :qid |monodefaultz3bpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_1349) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_7568 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@27) e@@5))
 :qid |monodefaultz3bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_7568 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) j@@5) e@@5)))
 :qid |monodefaultz3bpl.1720:17|
 :skolemid |64|
)))))
 :qid |monodefaultz3bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_1349) (v2@@6 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |monodefaultz3bpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_1349) (v2@@7 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |monodefaultz3bpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |monodefaultz3bpl.1956:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |monodefaultz3bpl.1959:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@8 |T@#0|) (v2@@8 |T@#0|) ) (! (= (= v1@@8 v2@@8) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8)))
 :qid |monodefaultz3bpl.1986:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_1349| r@@0) 0)))
 :qid |monodefaultz3bpl.1991:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@9 Int) (v2@@9 Int) ) (! (= (= v1@@9 v2@@9) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9)))
 :qid |monodefaultz3bpl.2013:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (|l#Vec_1349| r@@1) 0)))
 :qid |monodefaultz3bpl.2018:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (|l#Vec_1349| r@@2) $serialized_address_len))
 :qid |monodefaultz3bpl.2032:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18130| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream) v@@21) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |monodefaultz3bpl.2135:69|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@10 T@$42_TestMonomorphization_E) (v2@@10 T@$42_TestMonomorphization_E) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10)))
 :qid |monodefaultz3bpl.2141:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10))
)))
(assert (forall ((s T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s)))
 :qid |monodefaultz3bpl.2205:47|
 :skolemid |79|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s))
)))
(assert (forall ((s@@0 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0)  (and true true))
 :qid |monodefaultz3bpl.2221:53|
 :skolemid |80|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@1)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@1))))
 :qid |monodefaultz3bpl.2239:52|
 :skolemid |81|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@2)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@2)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@2))))
 :qid |monodefaultz3bpl.2257:56|
 :skolemid |82|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3)  (and true true))
 :qid |monodefaultz3bpl.2275:51|
 :skolemid |83|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3))
)))
(assert (forall ((v@@22 T@Vec_19114) (i@@28 Int) ) (! (= (InRangeVec_15148 v@@22 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_19114| v@@22))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15148 v@@22 i@@28))
)))
(assert (forall ((v@@23 T@Vec_21870) (i@@29 Int) ) (! (= (InRangeVec_15349 v@@23 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_21870| v@@23))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15349 v@@23 i@@29))
)))
(assert (forall ((v@@24 T@Vec_24551) (i@@30 Int) ) (! (= (InRangeVec_24660 v@@24 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_24551| v@@24))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_24660 v@@24 i@@30))
)))
(assert (forall ((v@@25 T@Vec_6459) (i@@31 Int) ) (! (= (InRangeVec_6459 v@@25 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_6459| v@@25))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6459 v@@25 i@@31))
)))
(assert (forall ((v@@26 T@Vec_1349) (i@@32 Int) ) (! (= (InRangeVec_7568 v@@26 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_1349| v@@26))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7568 v@@26 i@@32))
)))
(assert (forall ((v@@27 T@Vec_19114) (e@@6 |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@33 (IndexOfVec_19114 v@@27 e@@6)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_15148 v@@27 i@@34) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@34) e@@6))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_15148 v@@27 i@@33) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@33) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@33)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) j@@6) e@@6)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19114 v@@27 e@@6))
)))
(assert (forall ((v@@28 T@Vec_1349) (e@@7 Int) ) (! (let ((i@@35 (IndexOfVec_1349 v@@28 e@@7)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_7568 v@@28 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@36) e@@7))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_7568 v@@28 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@35) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@35)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) j@@7) e@@7)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_21870) (e@@8 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@37 (IndexOfVec_21870 v@@29 e@@8)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_15349 v@@29 i@@38) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@38) e@@8))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_15349 v@@29 i@@37) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@37) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@37)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) j@@8) e@@8)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21870 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_24551) (e@@9 T@Vec_1349) ) (! (let ((i@@39 (IndexOfVec_24551 v@@30 e@@9)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_24660 v@@30 i@@40) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@40) e@@9))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_24660 v@@30 i@@39) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@39) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@39)) (not (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) j@@9) e@@9)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_24551 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_6459) (e@@10 Bool) ) (! (let ((i@@41 (IndexOfVec_6459 v@@31 e@@10)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_6459 v@@31 i@@42) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@42) e@@10))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_6459 v@@31 i@@41) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@41) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@41)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) j@@10) e@@10)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6459 v@@31 e@@10))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |monodefaultz3bpl.275:54|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18130|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18130|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))))
(Multiset_18130 (|lambda#18| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0)) (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |monodefaultz3bpl.2104:13|
 :skolemid |88|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5| Int) (|l#6| |T@$42_TestMonomorphization_R'address'|) (i@@44 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44) (ite  (and (>= i@@44 |l#0@@1|) (< i@@44 |l#1@@0|)) (ite (< i@@44 |l#2|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3| i@@44) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4| (- i@@44 |l#5|))) |l#6|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@$42_TestMonomorphization_R'address'|) (i@@45 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45) (ite  (and (<= |l#0@@2| i@@45) (< i@@45 |l#1@@1|)) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#2@@0| (- (- |l#3@@0| i@@45) |l#4@@0|)) |l#5@@0|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |90|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5@@1| Int) (|l#6@@0| |T@$42_TestMonomorphization_R'address'|) (j@@11 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11) (ite  (and (>= j@@11 |l#0@@3|) (< j@@11 |l#1@@2|)) (ite (< j@@11 |l#2@@1|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3@@1| j@@11) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4@@1| (+ j@@11 |l#5@@1|))) |l#6@@0|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |91|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@2| Int) (|l#6@@1| |T@$42_TestMonomorphization_R'u64'|) (i@@46 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46) (ite  (and (>= i@@46 |l#0@@4|) (< i@@46 |l#1@@3|)) (ite (< i@@46 |l#2@@2|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@2| i@@46) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@2| (- i@@46 |l#5@@2|))) |l#6@@1|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |92|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| |T@$42_TestMonomorphization_R'u64'|) (i@@47 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47) (ite  (and (<= |l#0@@5| i@@47) (< i@@47 |l#1@@4|)) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#2@@3| (- (- |l#3@@3| i@@47) |l#4@@3|)) |l#5@@3|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |93|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@4| Int) (|l#6@@2| |T@$42_TestMonomorphization_R'u64'|) (j@@12 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12) (ite  (and (>= j@@12 |l#0@@6|) (< j@@12 |l#1@@5|)) (ite (< j@@12 |l#2@@4|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@4| j@@12) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@4| (+ j@@12 |l#5@@4|))) |l#6@@2|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Vec_1349|) (|l#4@@5| |T@[Int]Vec_1349|) (|l#5@@5| Int) (|l#6@@3| T@Vec_1349) (i@@48 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48) (ite  (and (>= i@@48 |l#0@@7|) (< i@@48 |l#1@@6|)) (ite (< i@@48 |l#2@@5|) (|Select__T@[Int]Vec_1349_| |l#3@@5| i@@48) (|Select__T@[Int]Vec_1349_| |l#4@@5| (- i@@48 |l#5@@5|))) |l#6@@3|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Vec_1349|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@Vec_1349) (i@@49 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49) (ite  (and (<= |l#0@@8| i@@49) (< i@@49 |l#1@@7|)) (|Select__T@[Int]Vec_1349_| |l#2@@6| (- (- |l#3@@6| i@@49) |l#4@@6|)) |l#5@@6|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Vec_1349|) (|l#4@@7| |T@[Int]Vec_1349|) (|l#5@@7| Int) (|l#6@@4| T@Vec_1349) (j@@13 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13) (ite  (and (>= j@@13 |l#0@@9|) (< j@@13 |l#1@@8|)) (ite (< j@@13 |l#2@@7|) (|Select__T@[Int]Vec_1349_| |l#3@@7| j@@13) (|Select__T@[Int]Vec_1349_| |l#4@@7| (+ j@@13 |l#5@@7|))) |l#6@@4|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Bool|) (|l#4@@8| |T@[Int]Bool|) (|l#5@@8| Int) (|l#6@@5| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50) (ite  (and (>= i@@50 |l#0@@10|) (< i@@50 |l#1@@9|)) (ite (< i@@50 |l#2@@8|) (|Select__T@[Int]Bool_| |l#3@@8| i@@50) (|Select__T@[Int]Bool_| |l#4@@8| (- i@@50 |l#5@@8|))) |l#6@@5|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Bool|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Bool) (i@@51 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51) (ite  (and (<= |l#0@@11| i@@51) (< i@@51 |l#1@@10|)) (|Select__T@[Int]Bool_| |l#2@@9| (- (- |l#3@@9| i@@51) |l#4@@9|)) |l#5@@9|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Bool|) (|l#4@@10| |T@[Int]Bool|) (|l#5@@10| Int) (|l#6@@6| Bool) (j@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14) (ite  (and (>= j@@14 |l#0@@12|) (< j@@14 |l#1@@11|)) (ite (< j@@14 |l#2@@10|) (|Select__T@[Int]Bool_| |l#3@@10| j@@14) (|Select__T@[Int]Bool_| |l#4@@10| (+ j@@14 |l#5@@10|))) |l#6@@6|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@52 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52) (ite  (and (>= i@@52 |l#0@@13|) (< i@@52 |l#1@@12|)) (ite (< i@@52 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@52) (|Select__T@[Int]Int_| |l#4@@11| (- i@@52 |l#5@@11|))) |l#6@@7|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@53 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53) (ite  (and (<= |l#0@@14| i@@53) (< i@@53 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@53) |l#4@@12|)) |l#5@@12|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@15 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15) (ite  (and (>= j@@15 |l#0@@15|) (< j@@15 |l#1@@14|)) (ite (< j@@15 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@15) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@15 |l#5@@13|))) |l#6@@8|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |103|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@32) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@32)))
 :qid |monodefaultz3bpl.154:29|
 :skolemid |104|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t4@0 () T@$Mutation_7083)
(declare-fun $t2@1 () T@$Mutation_37461)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@1 () T@$Mutation_7083)
(declare-fun $t2@2 () T@$Mutation_37461)
(declare-fun |$42_TestMonomorphization_R'bool'_$memory@0| () T@$Memory_36352)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |$42_TestMonomorphization_R'bool'_$memory| () T@$Memory_36352)
(declare-fun |Store__T@[Int]$42_TestMonomorphization_R'bool'_| (|T@[Int]$42_TestMonomorphization_R'bool'| Int |T@$42_TestMonomorphization_R'bool'|) |T@[Int]$42_TestMonomorphization_R'bool'|)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|T@[Int]$42_TestMonomorphization_R'bool'| Int) |T@$42_TestMonomorphization_R'bool'|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestMonomorphization_R'bool'|) ( ?x1 Int) ( ?x2 |T@$42_TestMonomorphization_R'bool'|)) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|Store__T@[Int]$42_TestMonomorphization_R'bool'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestMonomorphization_R'bool'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$42_TestMonomorphization_R'bool'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|Store__T@[Int]$42_TestMonomorphization_R'bool'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () Int)
(declare-fun $t2 () T@$Mutation_37461)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2@0 () T@$Mutation_37461)
(declare-fun MapConstVec_7797 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_7797 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $es () T@$EventStore)
(declare-fun $t4 () T@$Mutation_7083)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_mutate_R$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 48210) (let ((anon8_Else_correct  (=> (and (not $abort_flag@0) (= $t4@0 ($Mutation_7083 (|l#$Mutation_37461| $t2@1) (let ((l (|l#Vec_1349| (|p#$Mutation_37461| $t2@1))))
(Vec_1349 (|Store__T@[Int]Int_| (|v#Vec_1349| (|p#$Mutation_37461| $t2@1)) l 1) (+ l 1))) (|$y#$42_TestMonomorphization_R'bool'| (|v#$Mutation_37461| $t2@1))))) (=> (and (and (= $t4@1 ($Mutation_7083 (|l#$Mutation_7083| $t4@0) (|p#$Mutation_7083| $t4@0) false)) (= $t2@2 ($Mutation_37461 (|l#$Mutation_37461| $t2@1) (|p#$Mutation_37461| $t2@1) (|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| (|v#$Mutation_37461| $t2@1)) (|v#$Mutation_7083| $t4@1))))) (and (= |$42_TestMonomorphization_R'bool'_$memory@0| ($Memory_36352 (|Store__T@[Int]Bool_| (|domain#$Memory_36352| |$42_TestMonomorphization_R'bool'_$memory|) (|a#$Global| (|l#$Mutation_37461| $t2@2)) true) (|Store__T@[Int]$42_TestMonomorphization_R'bool'_| (|contents#$Memory_36352| |$42_TestMonomorphization_R'bool'_$memory|) (|a#$Global| (|l#$Mutation_37461| $t2@2)) (|v#$Mutation_37461| $t2@2)))) (= (ControlFlow 0 42403) (- 0 48475)))) (= (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|contents#$Memory_36352| |$42_TestMonomorphization_R'bool'_$memory@0|) _$t0) (|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|contents#$Memory_36352| |$42_TestMonomorphization_R'bool'_$memory|) _$t0)) false))))))
(let ((anon8_Then_correct true))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 42473) 42421) anon8_Then_correct) (=> (= (ControlFlow 0 42473) 42403) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_36352| |$42_TestMonomorphization_R'bool'_$memory|) _$t0)) (= (ControlFlow 0 42471) 42473)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_36352| |$42_TestMonomorphization_R'bool'_$memory|) _$t0) (=> (and (and (= $t2@0 ($Mutation_37461 ($Global _$t0) (Vec_1349 (MapConstVec_7797 DefaultVecElem_7797) 0) (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|contents#$Memory_36352| |$42_TestMonomorphization_R'bool'_$memory|) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 42329) 42421) anon8_Then_correct) (=> (= (ControlFlow 0 42329) 42403) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|contents#$Memory_36352| |$42_TestMonomorphization_R'bool'_$memory|) $a_0)))
(|$IsValid'$42_TestMonomorphization_R'bool''| $rsc))
 :qid |monodefaultz3bpl.2493:20|
 :skolemid |86|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'bool'_| (|contents#$Memory_36352| |$42_TestMonomorphization_R'bool'_$memory|) $a_0))
)) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 42307) 42471) anon7_Then_correct) (=> (= (ControlFlow 0 42307) 42329) anon7_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_18130| stream@@0) 0) (forall ((v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) v@@33) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
))) (= (ControlFlow 0 42251) 42307)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (|l#Vec_1349| (|p#$Mutation_37461| $t2)) 0) (=> (and (= (|l#Vec_1349| (|p#$Mutation_7083| $t4)) 0) (= (ControlFlow 0 42261) 42251)) inline$$InitEventStore$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 48210) 42261) anon0_correct)))
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
(declare-datatypes ((T@$Memory_35237 0)) ((($Memory_35237 (|domain#$Memory_35237| |T@[Int]Bool|) (|contents#$Memory_35237| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@Vec_6459 0)) (((Vec_6459 (|v#Vec_6459| |T@[Int]Bool|) (|l#Vec_6459| Int) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Vec_1349| 0)
(declare-datatypes ((T@Vec_24551 0)) (((Vec_24551 (|v#Vec_24551| |T@[Int]Vec_1349|) (|l#Vec_24551| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_36699 0)) ((($Memory_36699 (|domain#$Memory_36699| |T@[Int]Bool|) (|contents#$Memory_36699| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_36568 0)) ((($Memory_36568 (|domain#$Memory_36568| |T@[Int]Bool|) (|contents#$Memory_36568| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@Vec_19114 0)) (((Vec_19114 (|v#Vec_19114| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#Vec_19114| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_36460 0)) ((($Memory_36460 (|domain#$Memory_36460| |T@[Int]Bool|) (|contents#$Memory_36460| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@Vec_21870 0)) (((Vec_21870 (|v#Vec_21870| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#Vec_21870| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_36352 0)) ((($Memory_36352 (|domain#$Memory_36352| |T@[Int]Bool|) (|contents#$Memory_36352| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18130 0)) (((Multiset_18130 (|v#Multiset_18130| |T@[$EventRep]Int|) (|l#Multiset_18130| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_18130| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18130|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37461 0)) ((($Mutation_37461 (|l#$Mutation_37461| T@$Location) (|p#$Mutation_37461| T@Vec_1349) (|v#$Mutation_37461| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_35865 0)) ((($Mutation_35865 (|l#$Mutation_35865| T@$Location) (|p#$Mutation_35865| T@Vec_1349) (|v#$Mutation_35865| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8192 0)) ((($Mutation_8192 (|l#$Mutation_8192| T@$Location) (|p#$Mutation_8192| T@Vec_1349) (|v#$Mutation_8192| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7083 0)) ((($Mutation_7083 (|l#$Mutation_7083| T@$Location) (|p#$Mutation_7083| T@Vec_1349) (|v#$Mutation_7083| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_28067 0)) ((($Mutation_28067 (|l#$Mutation_28067| T@$Location) (|p#$Mutation_28067| T@Vec_1349) (|v#$Mutation_28067| T@Vec_6459) ) ) ))
(declare-datatypes ((T@$Mutation_26329 0)) ((($Mutation_26329 (|l#$Mutation_26329| T@$Location) (|p#$Mutation_26329| T@Vec_1349) (|v#$Mutation_26329| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_25241 0)) ((($Mutation_25241 (|l#$Mutation_25241| T@$Location) (|p#$Mutation_25241| T@Vec_1349) (|v#$Mutation_25241| T@Vec_24551) ) ) ))
(declare-datatypes ((T@$Mutation_23500 0)) ((($Mutation_23500 (|l#$Mutation_23500| T@$Location) (|p#$Mutation_23500| T@Vec_1349) (|v#$Mutation_23500| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_22513 0)) ((($Mutation_22513 (|l#$Mutation_22513| T@$Location) (|p#$Mutation_22513| T@Vec_1349) (|v#$Mutation_22513| T@Vec_21870) ) ) ))
(declare-datatypes ((T@$Mutation_20772 0)) ((($Mutation_20772 (|l#$Mutation_20772| T@$Location) (|p#$Mutation_20772| T@Vec_1349) (|v#$Mutation_20772| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19757 0)) ((($Mutation_19757 (|l#$Mutation_19757| T@$Location) (|p#$Mutation_19757| T@Vec_1349) (|v#$Mutation_19757| T@Vec_19114) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114 T@Vec_19114) Bool)
(declare-fun InRangeVec_15148 (T@Vec_19114 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int) |T@$42_TestMonomorphization_R'address'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870 T@Vec_21870) Bool)
(declare-fun InRangeVec_15349 (T@Vec_21870 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsEqual'vec'vec'u64'''| (T@Vec_24551 T@Vec_24551) Bool)
(declare-fun InRangeVec_24660 (T@Vec_24551 Int) Bool)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |Select__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int) T@Vec_1349)
(declare-fun |$IsValid'vec'vec'u64'''| (T@Vec_24551) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'vec'u64''| (T@Vec_24551 T@Vec_1349) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_6459 T@Vec_6459) Bool)
(declare-fun InRangeVec_6459 (T@Vec_6459 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_6459) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_6459 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_7568 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_1349 Int) Int)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) T@Vec_1349)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_1349)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle) T@Multiset_18130)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun IndexOfVec_19114 (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun IndexOfVec_21870 (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun IndexOfVec_24551 (T@Vec_24551 T@Vec_1349) Int)
(declare-fun IndexOfVec_6459 (T@Vec_6459 Bool) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18130| |T@[$1_Event_EventHandle]Multiset_18130|) |T@[$1_Event_EventHandle]Multiset_18130|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#4| (Int Int |T@[Int]$42_TestMonomorphization_R'address'| Int Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#7| (Int Int |T@[Int]$42_TestMonomorphization_R'u64'| Int Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#10| (Int Int |T@[Int]Vec_1349| Int Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#13| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |monodefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |monodefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |monodefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |monodefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |monodefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |monodefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_19114) (v2 T@Vec_19114) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2)  (and (= (|l#Vec_19114| v1) (|l#Vec_19114| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_15148 v1 i@@0) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v1) i@@0) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v2) i@@0)))
 :qid |monodefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |monodefaultz3bpl.613:61|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_19114) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_19114| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_15148 v@@4 i@@1) (|$IsValid'$42_TestMonomorphization_R'address''| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@4) i@@1)))
 :qid |monodefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |monodefaultz3bpl.619:61|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_19114) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_15148 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@3) e))
 :qid |monodefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_15148 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) j) e)))
 :qid |monodefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |monodefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_21870) (v2@@0 T@Vec_21870) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0)  (and (= (|l#Vec_21870| v1@@0) (|l#Vec_21870| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_15349 v1@@0 i@@4) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v1@@0) i@@4) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v2@@0) i@@4)))
 :qid |monodefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |monodefaultz3bpl.794:57|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_21870) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_21870| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_15349 v@@6 i@@5) (|$IsValid'$42_TestMonomorphization_R'u64''| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@6) i@@5)))
 :qid |monodefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |monodefaultz3bpl.800:57|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_21870) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@6 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_15349 v@@7 i@@7)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@7) e@@0))
 :qid |monodefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_15349 v@@7 i@@6)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) j@@0) e@@0)))
 :qid |monodefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |monodefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_24551) (v2@@1 T@Vec_24551) ) (! (= (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1)  (and (= (|l#Vec_24551| v1@@1) (|l#Vec_24551| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_24660 v1@@1 i@@8) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v1@@1) i@@8) (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v2@@1) i@@8)))
 :qid |monodefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |monodefaultz3bpl.975:34|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_24551) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_24551| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_24660 v@@8 i@@9) (|$IsValid'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@8) i@@9)))
 :qid |monodefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |monodefaultz3bpl.981:34|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_24551) (e@@1 T@Vec_1349) ) (! (let ((i@@10 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_24660 v@@9 i@@11)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@11) e@@1))
 :qid |monodefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_24660 v@@9 i@@10)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) j@@1) e@@1)))
 :qid |monodefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |monodefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6459) (v2@@2 T@Vec_6459) ) (! (= (|$IsEqual'vec'bool''| v1@@2 v2@@2)  (and (= (|l#Vec_6459| v1@@2) (|l#Vec_6459| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6459 v1@@2 i@@12) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v1@@2) i@@12) (|Select__T@[Int]Bool_| (|v#Vec_6459| v2@@2) i@@12)))
 :qid |monodefaultz3bpl.1158:13|
 :skolemid |38|
))))
 :qid |monodefaultz3bpl.1156:30|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'bool''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_6459) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_6459| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6459 v@@10 i@@13) true)
 :qid |monodefaultz3bpl.1164:13|
 :skolemid |40|
))))
 :qid |monodefaultz3bpl.1162:30|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_6459) (e@@2 Bool) ) (! (let ((i@@14 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6459 v@@11 i@@15)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@15) e@@2))
 :qid |monodefaultz3bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6459 v@@11 i@@14)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) j@@2) e@@2)))
 :qid |monodefaultz3bpl.1177:17|
 :skolemid |43|
)))))
 :qid |monodefaultz3bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_1349| v1@@3) (|l#Vec_1349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7568 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@3) i@@16)))
 :qid |monodefaultz3bpl.1339:13|
 :skolemid |45|
))))
 :qid |monodefaultz3bpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_1349) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7568 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@12) i@@17)))
 :qid |monodefaultz3bpl.1345:13|
 :skolemid |47|
))))
 :qid |monodefaultz3bpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7568 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@19) e@@3))
 :qid |monodefaultz3bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7568 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |monodefaultz3bpl.1358:17|
 :skolemid |50|
)))))
 :qid |monodefaultz3bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_1349) (v2@@4 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@4 v2@@4)  (and (= (|l#Vec_1349| v1@@4) (|l#Vec_1349| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7568 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@4) i@@20)))
 :qid |monodefaultz3bpl.1520:13|
 :skolemid |52|
))))
 :qid |monodefaultz3bpl.1518:29|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u64''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7568 v@@14 i@@21) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@14) i@@21)))
 :qid |monodefaultz3bpl.1526:13|
 :skolemid |54|
))))
 :qid |monodefaultz3bpl.1524:29|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_1349) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7568 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@23) e@@4))
 :qid |monodefaultz3bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7568 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) j@@4) e@@4)))
 :qid |monodefaultz3bpl.1539:17|
 :skolemid |57|
)))))
 :qid |monodefaultz3bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_1349) (v2@@5 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_1349| v1@@5) (|l#Vec_1349| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_7568 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@5) i@@24)))
 :qid |monodefaultz3bpl.1701:13|
 :skolemid |59|
))))
 :qid |monodefaultz3bpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_7568 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@16) i@@25)))
 :qid |monodefaultz3bpl.1707:13|
 :skolemid |61|
))))
 :qid |monodefaultz3bpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_1349) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_7568 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@27) e@@5))
 :qid |monodefaultz3bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_7568 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) j@@5) e@@5)))
 :qid |monodefaultz3bpl.1720:17|
 :skolemid |64|
)))))
 :qid |monodefaultz3bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_1349) (v2@@6 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |monodefaultz3bpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_1349) (v2@@7 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |monodefaultz3bpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |monodefaultz3bpl.1956:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |monodefaultz3bpl.1959:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@8 |T@#0|) (v2@@8 |T@#0|) ) (! (= (= v1@@8 v2@@8) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8)))
 :qid |monodefaultz3bpl.1986:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_1349| r@@0) 0)))
 :qid |monodefaultz3bpl.1991:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@9 Int) (v2@@9 Int) ) (! (= (= v1@@9 v2@@9) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9)))
 :qid |monodefaultz3bpl.2013:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (|l#Vec_1349| r@@1) 0)))
 :qid |monodefaultz3bpl.2018:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (|l#Vec_1349| r@@2) $serialized_address_len))
 :qid |monodefaultz3bpl.2032:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18130| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream) v@@21) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |monodefaultz3bpl.2135:69|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@10 T@$42_TestMonomorphization_E) (v2@@10 T@$42_TestMonomorphization_E) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10)))
 :qid |monodefaultz3bpl.2141:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10))
)))
(assert (forall ((s T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s)))
 :qid |monodefaultz3bpl.2205:47|
 :skolemid |79|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s))
)))
(assert (forall ((s@@0 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0)  (and true true))
 :qid |monodefaultz3bpl.2221:53|
 :skolemid |80|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@1)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@1))))
 :qid |monodefaultz3bpl.2239:52|
 :skolemid |81|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@2)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@2)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@2))))
 :qid |monodefaultz3bpl.2257:56|
 :skolemid |82|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3)  (and true true))
 :qid |monodefaultz3bpl.2275:51|
 :skolemid |83|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3))
)))
(assert (forall ((v@@22 T@Vec_19114) (i@@28 Int) ) (! (= (InRangeVec_15148 v@@22 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_19114| v@@22))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15148 v@@22 i@@28))
)))
(assert (forall ((v@@23 T@Vec_21870) (i@@29 Int) ) (! (= (InRangeVec_15349 v@@23 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_21870| v@@23))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15349 v@@23 i@@29))
)))
(assert (forall ((v@@24 T@Vec_24551) (i@@30 Int) ) (! (= (InRangeVec_24660 v@@24 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_24551| v@@24))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_24660 v@@24 i@@30))
)))
(assert (forall ((v@@25 T@Vec_6459) (i@@31 Int) ) (! (= (InRangeVec_6459 v@@25 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_6459| v@@25))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6459 v@@25 i@@31))
)))
(assert (forall ((v@@26 T@Vec_1349) (i@@32 Int) ) (! (= (InRangeVec_7568 v@@26 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_1349| v@@26))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7568 v@@26 i@@32))
)))
(assert (forall ((v@@27 T@Vec_19114) (e@@6 |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@33 (IndexOfVec_19114 v@@27 e@@6)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_15148 v@@27 i@@34) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@34) e@@6))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_15148 v@@27 i@@33) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@33) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@33)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) j@@6) e@@6)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19114 v@@27 e@@6))
)))
(assert (forall ((v@@28 T@Vec_1349) (e@@7 Int) ) (! (let ((i@@35 (IndexOfVec_1349 v@@28 e@@7)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_7568 v@@28 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@36) e@@7))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_7568 v@@28 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@35) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@35)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) j@@7) e@@7)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_21870) (e@@8 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@37 (IndexOfVec_21870 v@@29 e@@8)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_15349 v@@29 i@@38) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@38) e@@8))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_15349 v@@29 i@@37) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@37) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@37)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) j@@8) e@@8)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21870 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_24551) (e@@9 T@Vec_1349) ) (! (let ((i@@39 (IndexOfVec_24551 v@@30 e@@9)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_24660 v@@30 i@@40) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@40) e@@9))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_24660 v@@30 i@@39) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@39) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@39)) (not (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) j@@9) e@@9)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_24551 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_6459) (e@@10 Bool) ) (! (let ((i@@41 (IndexOfVec_6459 v@@31 e@@10)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_6459 v@@31 i@@42) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@42) e@@10))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_6459 v@@31 i@@41) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@41) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@41)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) j@@10) e@@10)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6459 v@@31 e@@10))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |monodefaultz3bpl.275:54|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18130|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18130|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))))
(Multiset_18130 (|lambda#18| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0)) (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |monodefaultz3bpl.2104:13|
 :skolemid |88|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5| Int) (|l#6| |T@$42_TestMonomorphization_R'address'|) (i@@44 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44) (ite  (and (>= i@@44 |l#0@@1|) (< i@@44 |l#1@@0|)) (ite (< i@@44 |l#2|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3| i@@44) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4| (- i@@44 |l#5|))) |l#6|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@$42_TestMonomorphization_R'address'|) (i@@45 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45) (ite  (and (<= |l#0@@2| i@@45) (< i@@45 |l#1@@1|)) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#2@@0| (- (- |l#3@@0| i@@45) |l#4@@0|)) |l#5@@0|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |90|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5@@1| Int) (|l#6@@0| |T@$42_TestMonomorphization_R'address'|) (j@@11 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11) (ite  (and (>= j@@11 |l#0@@3|) (< j@@11 |l#1@@2|)) (ite (< j@@11 |l#2@@1|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3@@1| j@@11) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4@@1| (+ j@@11 |l#5@@1|))) |l#6@@0|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |91|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@2| Int) (|l#6@@1| |T@$42_TestMonomorphization_R'u64'|) (i@@46 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46) (ite  (and (>= i@@46 |l#0@@4|) (< i@@46 |l#1@@3|)) (ite (< i@@46 |l#2@@2|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@2| i@@46) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@2| (- i@@46 |l#5@@2|))) |l#6@@1|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |92|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| |T@$42_TestMonomorphization_R'u64'|) (i@@47 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47) (ite  (and (<= |l#0@@5| i@@47) (< i@@47 |l#1@@4|)) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#2@@3| (- (- |l#3@@3| i@@47) |l#4@@3|)) |l#5@@3|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |93|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@4| Int) (|l#6@@2| |T@$42_TestMonomorphization_R'u64'|) (j@@12 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12) (ite  (and (>= j@@12 |l#0@@6|) (< j@@12 |l#1@@5|)) (ite (< j@@12 |l#2@@4|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@4| j@@12) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@4| (+ j@@12 |l#5@@4|))) |l#6@@2|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Vec_1349|) (|l#4@@5| |T@[Int]Vec_1349|) (|l#5@@5| Int) (|l#6@@3| T@Vec_1349) (i@@48 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48) (ite  (and (>= i@@48 |l#0@@7|) (< i@@48 |l#1@@6|)) (ite (< i@@48 |l#2@@5|) (|Select__T@[Int]Vec_1349_| |l#3@@5| i@@48) (|Select__T@[Int]Vec_1349_| |l#4@@5| (- i@@48 |l#5@@5|))) |l#6@@3|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Vec_1349|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@Vec_1349) (i@@49 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49) (ite  (and (<= |l#0@@8| i@@49) (< i@@49 |l#1@@7|)) (|Select__T@[Int]Vec_1349_| |l#2@@6| (- (- |l#3@@6| i@@49) |l#4@@6|)) |l#5@@6|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Vec_1349|) (|l#4@@7| |T@[Int]Vec_1349|) (|l#5@@7| Int) (|l#6@@4| T@Vec_1349) (j@@13 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13) (ite  (and (>= j@@13 |l#0@@9|) (< j@@13 |l#1@@8|)) (ite (< j@@13 |l#2@@7|) (|Select__T@[Int]Vec_1349_| |l#3@@7| j@@13) (|Select__T@[Int]Vec_1349_| |l#4@@7| (+ j@@13 |l#5@@7|))) |l#6@@4|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Bool|) (|l#4@@8| |T@[Int]Bool|) (|l#5@@8| Int) (|l#6@@5| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50) (ite  (and (>= i@@50 |l#0@@10|) (< i@@50 |l#1@@9|)) (ite (< i@@50 |l#2@@8|) (|Select__T@[Int]Bool_| |l#3@@8| i@@50) (|Select__T@[Int]Bool_| |l#4@@8| (- i@@50 |l#5@@8|))) |l#6@@5|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Bool|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Bool) (i@@51 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51) (ite  (and (<= |l#0@@11| i@@51) (< i@@51 |l#1@@10|)) (|Select__T@[Int]Bool_| |l#2@@9| (- (- |l#3@@9| i@@51) |l#4@@9|)) |l#5@@9|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Bool|) (|l#4@@10| |T@[Int]Bool|) (|l#5@@10| Int) (|l#6@@6| Bool) (j@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14) (ite  (and (>= j@@14 |l#0@@12|) (< j@@14 |l#1@@11|)) (ite (< j@@14 |l#2@@10|) (|Select__T@[Int]Bool_| |l#3@@10| j@@14) (|Select__T@[Int]Bool_| |l#4@@10| (+ j@@14 |l#5@@10|))) |l#6@@6|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@52 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52) (ite  (and (>= i@@52 |l#0@@13|) (< i@@52 |l#1@@12|)) (ite (< i@@52 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@52) (|Select__T@[Int]Int_| |l#4@@11| (- i@@52 |l#5@@11|))) |l#6@@7|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@53 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53) (ite  (and (<= |l#0@@14| i@@53) (< i@@53 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@53) |l#4@@12|)) |l#5@@12|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@15 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15) (ite  (and (>= j@@15 |l#0@@15|) (< j@@15 |l#1@@14|)) (ite (< j@@15 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@15) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@15 |l#5@@13|))) |l#6@@8|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |103|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@32) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@32)))
 :qid |monodefaultz3bpl.154:29|
 :skolemid |104|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32))
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
 (=> (= (ControlFlow 0 0) 48493) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| 2) (= $t2@0 (|$42_TestMonomorphization_R'u64'| 1 2))) (and (= $t2@0 $t2@0) (= (ControlFlow 0 42605) (- 0 48560)))) (= $t2@0 (|$42_TestMonomorphization_R'u64'| 1 2))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_18130| stream@@0) 0) (forall ((v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) v@@33) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
))) (= (ControlFlow 0 42555) 42605)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 48493) 42555) inline$$InitEventStore$0$anon0_correct)))
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
(declare-datatypes ((T@$Memory_35237 0)) ((($Memory_35237 (|domain#$Memory_35237| |T@[Int]Bool|) (|contents#$Memory_35237| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@Vec_6459 0)) (((Vec_6459 (|v#Vec_6459| |T@[Int]Bool|) (|l#Vec_6459| Int) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Vec_1349| 0)
(declare-datatypes ((T@Vec_24551 0)) (((Vec_24551 (|v#Vec_24551| |T@[Int]Vec_1349|) (|l#Vec_24551| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_36699 0)) ((($Memory_36699 (|domain#$Memory_36699| |T@[Int]Bool|) (|contents#$Memory_36699| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_36568 0)) ((($Memory_36568 (|domain#$Memory_36568| |T@[Int]Bool|) (|contents#$Memory_36568| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@Vec_19114 0)) (((Vec_19114 (|v#Vec_19114| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#Vec_19114| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_36460 0)) ((($Memory_36460 (|domain#$Memory_36460| |T@[Int]Bool|) (|contents#$Memory_36460| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@Vec_21870 0)) (((Vec_21870 (|v#Vec_21870| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#Vec_21870| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_36352 0)) ((($Memory_36352 (|domain#$Memory_36352| |T@[Int]Bool|) (|contents#$Memory_36352| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18130 0)) (((Multiset_18130 (|v#Multiset_18130| |T@[$EventRep]Int|) (|l#Multiset_18130| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_18130| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18130|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37461 0)) ((($Mutation_37461 (|l#$Mutation_37461| T@$Location) (|p#$Mutation_37461| T@Vec_1349) (|v#$Mutation_37461| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_35865 0)) ((($Mutation_35865 (|l#$Mutation_35865| T@$Location) (|p#$Mutation_35865| T@Vec_1349) (|v#$Mutation_35865| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8192 0)) ((($Mutation_8192 (|l#$Mutation_8192| T@$Location) (|p#$Mutation_8192| T@Vec_1349) (|v#$Mutation_8192| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7083 0)) ((($Mutation_7083 (|l#$Mutation_7083| T@$Location) (|p#$Mutation_7083| T@Vec_1349) (|v#$Mutation_7083| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_28067 0)) ((($Mutation_28067 (|l#$Mutation_28067| T@$Location) (|p#$Mutation_28067| T@Vec_1349) (|v#$Mutation_28067| T@Vec_6459) ) ) ))
(declare-datatypes ((T@$Mutation_26329 0)) ((($Mutation_26329 (|l#$Mutation_26329| T@$Location) (|p#$Mutation_26329| T@Vec_1349) (|v#$Mutation_26329| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_25241 0)) ((($Mutation_25241 (|l#$Mutation_25241| T@$Location) (|p#$Mutation_25241| T@Vec_1349) (|v#$Mutation_25241| T@Vec_24551) ) ) ))
(declare-datatypes ((T@$Mutation_23500 0)) ((($Mutation_23500 (|l#$Mutation_23500| T@$Location) (|p#$Mutation_23500| T@Vec_1349) (|v#$Mutation_23500| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_22513 0)) ((($Mutation_22513 (|l#$Mutation_22513| T@$Location) (|p#$Mutation_22513| T@Vec_1349) (|v#$Mutation_22513| T@Vec_21870) ) ) ))
(declare-datatypes ((T@$Mutation_20772 0)) ((($Mutation_20772 (|l#$Mutation_20772| T@$Location) (|p#$Mutation_20772| T@Vec_1349) (|v#$Mutation_20772| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19757 0)) ((($Mutation_19757 (|l#$Mutation_19757| T@$Location) (|p#$Mutation_19757| T@Vec_1349) (|v#$Mutation_19757| T@Vec_19114) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114 T@Vec_19114) Bool)
(declare-fun InRangeVec_15148 (T@Vec_19114 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int) |T@$42_TestMonomorphization_R'address'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870 T@Vec_21870) Bool)
(declare-fun InRangeVec_15349 (T@Vec_21870 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsEqual'vec'vec'u64'''| (T@Vec_24551 T@Vec_24551) Bool)
(declare-fun InRangeVec_24660 (T@Vec_24551 Int) Bool)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |Select__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int) T@Vec_1349)
(declare-fun |$IsValid'vec'vec'u64'''| (T@Vec_24551) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'vec'u64''| (T@Vec_24551 T@Vec_1349) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_6459 T@Vec_6459) Bool)
(declare-fun InRangeVec_6459 (T@Vec_6459 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_6459) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_6459 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_7568 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_1349 Int) Int)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) T@Vec_1349)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_1349)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle) T@Multiset_18130)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun IndexOfVec_19114 (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun IndexOfVec_21870 (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun IndexOfVec_24551 (T@Vec_24551 T@Vec_1349) Int)
(declare-fun IndexOfVec_6459 (T@Vec_6459 Bool) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18130| |T@[$1_Event_EventHandle]Multiset_18130|) |T@[$1_Event_EventHandle]Multiset_18130|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#4| (Int Int |T@[Int]$42_TestMonomorphization_R'address'| Int Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#7| (Int Int |T@[Int]$42_TestMonomorphization_R'u64'| Int Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#10| (Int Int |T@[Int]Vec_1349| Int Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#13| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |monodefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |monodefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |monodefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |monodefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |monodefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |monodefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_19114) (v2 T@Vec_19114) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2)  (and (= (|l#Vec_19114| v1) (|l#Vec_19114| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_15148 v1 i@@0) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v1) i@@0) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v2) i@@0)))
 :qid |monodefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |monodefaultz3bpl.613:61|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_19114) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_19114| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_15148 v@@4 i@@1) (|$IsValid'$42_TestMonomorphization_R'address''| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@4) i@@1)))
 :qid |monodefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |monodefaultz3bpl.619:61|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_19114) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_15148 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@3) e))
 :qid |monodefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_15148 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) j) e)))
 :qid |monodefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |monodefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_21870) (v2@@0 T@Vec_21870) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0)  (and (= (|l#Vec_21870| v1@@0) (|l#Vec_21870| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_15349 v1@@0 i@@4) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v1@@0) i@@4) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v2@@0) i@@4)))
 :qid |monodefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |monodefaultz3bpl.794:57|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_21870) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_21870| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_15349 v@@6 i@@5) (|$IsValid'$42_TestMonomorphization_R'u64''| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@6) i@@5)))
 :qid |monodefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |monodefaultz3bpl.800:57|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_21870) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@6 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_15349 v@@7 i@@7)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@7) e@@0))
 :qid |monodefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_15349 v@@7 i@@6)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) j@@0) e@@0)))
 :qid |monodefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |monodefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_24551) (v2@@1 T@Vec_24551) ) (! (= (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1)  (and (= (|l#Vec_24551| v1@@1) (|l#Vec_24551| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_24660 v1@@1 i@@8) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v1@@1) i@@8) (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v2@@1) i@@8)))
 :qid |monodefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |monodefaultz3bpl.975:34|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_24551) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_24551| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_24660 v@@8 i@@9) (|$IsValid'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@8) i@@9)))
 :qid |monodefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |monodefaultz3bpl.981:34|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_24551) (e@@1 T@Vec_1349) ) (! (let ((i@@10 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_24660 v@@9 i@@11)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@11) e@@1))
 :qid |monodefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_24660 v@@9 i@@10)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) j@@1) e@@1)))
 :qid |monodefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |monodefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6459) (v2@@2 T@Vec_6459) ) (! (= (|$IsEqual'vec'bool''| v1@@2 v2@@2)  (and (= (|l#Vec_6459| v1@@2) (|l#Vec_6459| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6459 v1@@2 i@@12) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v1@@2) i@@12) (|Select__T@[Int]Bool_| (|v#Vec_6459| v2@@2) i@@12)))
 :qid |monodefaultz3bpl.1158:13|
 :skolemid |38|
))))
 :qid |monodefaultz3bpl.1156:30|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'bool''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_6459) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_6459| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6459 v@@10 i@@13) true)
 :qid |monodefaultz3bpl.1164:13|
 :skolemid |40|
))))
 :qid |monodefaultz3bpl.1162:30|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_6459) (e@@2 Bool) ) (! (let ((i@@14 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6459 v@@11 i@@15)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@15) e@@2))
 :qid |monodefaultz3bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6459 v@@11 i@@14)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) j@@2) e@@2)))
 :qid |monodefaultz3bpl.1177:17|
 :skolemid |43|
)))))
 :qid |monodefaultz3bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_1349| v1@@3) (|l#Vec_1349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7568 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@3) i@@16)))
 :qid |monodefaultz3bpl.1339:13|
 :skolemid |45|
))))
 :qid |monodefaultz3bpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_1349) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7568 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@12) i@@17)))
 :qid |monodefaultz3bpl.1345:13|
 :skolemid |47|
))))
 :qid |monodefaultz3bpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7568 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@19) e@@3))
 :qid |monodefaultz3bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7568 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |monodefaultz3bpl.1358:17|
 :skolemid |50|
)))))
 :qid |monodefaultz3bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_1349) (v2@@4 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@4 v2@@4)  (and (= (|l#Vec_1349| v1@@4) (|l#Vec_1349| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7568 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@4) i@@20)))
 :qid |monodefaultz3bpl.1520:13|
 :skolemid |52|
))))
 :qid |monodefaultz3bpl.1518:29|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u64''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7568 v@@14 i@@21) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@14) i@@21)))
 :qid |monodefaultz3bpl.1526:13|
 :skolemid |54|
))))
 :qid |monodefaultz3bpl.1524:29|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_1349) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7568 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@23) e@@4))
 :qid |monodefaultz3bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7568 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) j@@4) e@@4)))
 :qid |monodefaultz3bpl.1539:17|
 :skolemid |57|
)))))
 :qid |monodefaultz3bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_1349) (v2@@5 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_1349| v1@@5) (|l#Vec_1349| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_7568 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@5) i@@24)))
 :qid |monodefaultz3bpl.1701:13|
 :skolemid |59|
))))
 :qid |monodefaultz3bpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_7568 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@16) i@@25)))
 :qid |monodefaultz3bpl.1707:13|
 :skolemid |61|
))))
 :qid |monodefaultz3bpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_1349) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_7568 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@27) e@@5))
 :qid |monodefaultz3bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_7568 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) j@@5) e@@5)))
 :qid |monodefaultz3bpl.1720:17|
 :skolemid |64|
)))))
 :qid |monodefaultz3bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_1349) (v2@@6 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |monodefaultz3bpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_1349) (v2@@7 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |monodefaultz3bpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |monodefaultz3bpl.1956:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |monodefaultz3bpl.1959:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@8 |T@#0|) (v2@@8 |T@#0|) ) (! (= (= v1@@8 v2@@8) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8)))
 :qid |monodefaultz3bpl.1986:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_1349| r@@0) 0)))
 :qid |monodefaultz3bpl.1991:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@9 Int) (v2@@9 Int) ) (! (= (= v1@@9 v2@@9) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9)))
 :qid |monodefaultz3bpl.2013:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (|l#Vec_1349| r@@1) 0)))
 :qid |monodefaultz3bpl.2018:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (|l#Vec_1349| r@@2) $serialized_address_len))
 :qid |monodefaultz3bpl.2032:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18130| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream) v@@21) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |monodefaultz3bpl.2135:69|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@10 T@$42_TestMonomorphization_E) (v2@@10 T@$42_TestMonomorphization_E) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10)))
 :qid |monodefaultz3bpl.2141:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10))
)))
(assert (forall ((s T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s)))
 :qid |monodefaultz3bpl.2205:47|
 :skolemid |79|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s))
)))
(assert (forall ((s@@0 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0)  (and true true))
 :qid |monodefaultz3bpl.2221:53|
 :skolemid |80|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@1)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@1))))
 :qid |monodefaultz3bpl.2239:52|
 :skolemid |81|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@2)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@2)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@2))))
 :qid |monodefaultz3bpl.2257:56|
 :skolemid |82|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3)  (and true true))
 :qid |monodefaultz3bpl.2275:51|
 :skolemid |83|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3))
)))
(assert (forall ((v@@22 T@Vec_19114) (i@@28 Int) ) (! (= (InRangeVec_15148 v@@22 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_19114| v@@22))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15148 v@@22 i@@28))
)))
(assert (forall ((v@@23 T@Vec_21870) (i@@29 Int) ) (! (= (InRangeVec_15349 v@@23 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_21870| v@@23))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15349 v@@23 i@@29))
)))
(assert (forall ((v@@24 T@Vec_24551) (i@@30 Int) ) (! (= (InRangeVec_24660 v@@24 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_24551| v@@24))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_24660 v@@24 i@@30))
)))
(assert (forall ((v@@25 T@Vec_6459) (i@@31 Int) ) (! (= (InRangeVec_6459 v@@25 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_6459| v@@25))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6459 v@@25 i@@31))
)))
(assert (forall ((v@@26 T@Vec_1349) (i@@32 Int) ) (! (= (InRangeVec_7568 v@@26 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_1349| v@@26))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7568 v@@26 i@@32))
)))
(assert (forall ((v@@27 T@Vec_19114) (e@@6 |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@33 (IndexOfVec_19114 v@@27 e@@6)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_15148 v@@27 i@@34) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@34) e@@6))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_15148 v@@27 i@@33) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@33) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@33)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) j@@6) e@@6)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19114 v@@27 e@@6))
)))
(assert (forall ((v@@28 T@Vec_1349) (e@@7 Int) ) (! (let ((i@@35 (IndexOfVec_1349 v@@28 e@@7)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_7568 v@@28 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@36) e@@7))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_7568 v@@28 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@35) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@35)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) j@@7) e@@7)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_21870) (e@@8 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@37 (IndexOfVec_21870 v@@29 e@@8)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_15349 v@@29 i@@38) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@38) e@@8))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_15349 v@@29 i@@37) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@37) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@37)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) j@@8) e@@8)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21870 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_24551) (e@@9 T@Vec_1349) ) (! (let ((i@@39 (IndexOfVec_24551 v@@30 e@@9)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_24660 v@@30 i@@40) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@40) e@@9))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_24660 v@@30 i@@39) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@39) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@39)) (not (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) j@@9) e@@9)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_24551 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_6459) (e@@10 Bool) ) (! (let ((i@@41 (IndexOfVec_6459 v@@31 e@@10)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_6459 v@@31 i@@42) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@42) e@@10))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_6459 v@@31 i@@41) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@41) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@41)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) j@@10) e@@10)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6459 v@@31 e@@10))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |monodefaultz3bpl.275:54|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18130|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18130|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))))
(Multiset_18130 (|lambda#18| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0)) (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |monodefaultz3bpl.2104:13|
 :skolemid |88|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5| Int) (|l#6| |T@$42_TestMonomorphization_R'address'|) (i@@44 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44) (ite  (and (>= i@@44 |l#0@@1|) (< i@@44 |l#1@@0|)) (ite (< i@@44 |l#2|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3| i@@44) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4| (- i@@44 |l#5|))) |l#6|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@$42_TestMonomorphization_R'address'|) (i@@45 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45) (ite  (and (<= |l#0@@2| i@@45) (< i@@45 |l#1@@1|)) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#2@@0| (- (- |l#3@@0| i@@45) |l#4@@0|)) |l#5@@0|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |90|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5@@1| Int) (|l#6@@0| |T@$42_TestMonomorphization_R'address'|) (j@@11 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11) (ite  (and (>= j@@11 |l#0@@3|) (< j@@11 |l#1@@2|)) (ite (< j@@11 |l#2@@1|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3@@1| j@@11) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4@@1| (+ j@@11 |l#5@@1|))) |l#6@@0|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |91|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@2| Int) (|l#6@@1| |T@$42_TestMonomorphization_R'u64'|) (i@@46 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46) (ite  (and (>= i@@46 |l#0@@4|) (< i@@46 |l#1@@3|)) (ite (< i@@46 |l#2@@2|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@2| i@@46) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@2| (- i@@46 |l#5@@2|))) |l#6@@1|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |92|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| |T@$42_TestMonomorphization_R'u64'|) (i@@47 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47) (ite  (and (<= |l#0@@5| i@@47) (< i@@47 |l#1@@4|)) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#2@@3| (- (- |l#3@@3| i@@47) |l#4@@3|)) |l#5@@3|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |93|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@4| Int) (|l#6@@2| |T@$42_TestMonomorphization_R'u64'|) (j@@12 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12) (ite  (and (>= j@@12 |l#0@@6|) (< j@@12 |l#1@@5|)) (ite (< j@@12 |l#2@@4|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@4| j@@12) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@4| (+ j@@12 |l#5@@4|))) |l#6@@2|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Vec_1349|) (|l#4@@5| |T@[Int]Vec_1349|) (|l#5@@5| Int) (|l#6@@3| T@Vec_1349) (i@@48 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48) (ite  (and (>= i@@48 |l#0@@7|) (< i@@48 |l#1@@6|)) (ite (< i@@48 |l#2@@5|) (|Select__T@[Int]Vec_1349_| |l#3@@5| i@@48) (|Select__T@[Int]Vec_1349_| |l#4@@5| (- i@@48 |l#5@@5|))) |l#6@@3|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Vec_1349|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@Vec_1349) (i@@49 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49) (ite  (and (<= |l#0@@8| i@@49) (< i@@49 |l#1@@7|)) (|Select__T@[Int]Vec_1349_| |l#2@@6| (- (- |l#3@@6| i@@49) |l#4@@6|)) |l#5@@6|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Vec_1349|) (|l#4@@7| |T@[Int]Vec_1349|) (|l#5@@7| Int) (|l#6@@4| T@Vec_1349) (j@@13 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13) (ite  (and (>= j@@13 |l#0@@9|) (< j@@13 |l#1@@8|)) (ite (< j@@13 |l#2@@7|) (|Select__T@[Int]Vec_1349_| |l#3@@7| j@@13) (|Select__T@[Int]Vec_1349_| |l#4@@7| (+ j@@13 |l#5@@7|))) |l#6@@4|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Bool|) (|l#4@@8| |T@[Int]Bool|) (|l#5@@8| Int) (|l#6@@5| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50) (ite  (and (>= i@@50 |l#0@@10|) (< i@@50 |l#1@@9|)) (ite (< i@@50 |l#2@@8|) (|Select__T@[Int]Bool_| |l#3@@8| i@@50) (|Select__T@[Int]Bool_| |l#4@@8| (- i@@50 |l#5@@8|))) |l#6@@5|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Bool|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Bool) (i@@51 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51) (ite  (and (<= |l#0@@11| i@@51) (< i@@51 |l#1@@10|)) (|Select__T@[Int]Bool_| |l#2@@9| (- (- |l#3@@9| i@@51) |l#4@@9|)) |l#5@@9|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Bool|) (|l#4@@10| |T@[Int]Bool|) (|l#5@@10| Int) (|l#6@@6| Bool) (j@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14) (ite  (and (>= j@@14 |l#0@@12|) (< j@@14 |l#1@@11|)) (ite (< j@@14 |l#2@@10|) (|Select__T@[Int]Bool_| |l#3@@10| j@@14) (|Select__T@[Int]Bool_| |l#4@@10| (+ j@@14 |l#5@@10|))) |l#6@@6|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@52 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52) (ite  (and (>= i@@52 |l#0@@13|) (< i@@52 |l#1@@12|)) (ite (< i@@52 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@52) (|Select__T@[Int]Int_| |l#4@@11| (- i@@52 |l#5@@11|))) |l#6@@7|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@53 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53) (ite  (and (<= |l#0@@14| i@@53) (< i@@53 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@53) |l#4@@12|)) |l#5@@12|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@15 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15) (ite  (and (>= j@@15 |l#0@@15|) (< j@@15 |l#1@@14|)) (ite (< j@@15 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@15) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@15 |l#5@@13|))) |l#6@@8|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |103|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@32) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@32)))
 :qid |monodefaultz3bpl.154:29|
 :skolemid |104|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun call1formal@res@0 () T@Vec_1349)
(declare-fun call1formal@res@0@@0 () T@Vec_1349)
(declare-fun _$t0 () |T@#0|)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_use_bcs$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 48577) (let ((anon7_Else_correct  (=> (not false) (=> (and (= call1formal@res@0 call1formal@res@0) (= call1formal@res@0@@0 call1formal@res@0@@0)) (and (=> (= (ControlFlow 0 42764) (- 0 48770)) (|$IsEqual'vec'u8''| call1formal@res@0 (|$1_BCS_serialize'#0'| _$t0))) (=> (|$IsEqual'vec'u8''| call1formal@res@0 (|$1_BCS_serialize'#0'| _$t0)) (=> (= (ControlFlow 0 42764) (- 0 48779)) (|$IsEqual'vec'u8''| call1formal@res@0@@0 (|$1_BCS_serialize'address'| 2)))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Else_correct  (=> (not false) (=> (and (and (= call1formal@res@0 call1formal@res@0) (|$IsValid'address'| 2)) (and (= 2 2) (= call1formal@res@0@@0 (|$1_BCS_serialize'address'| 2)))) (and (=> (= (ControlFlow 0 42720) 42778) anon7_Then_correct) (=> (= (ControlFlow 0 42720) 42764) anon7_Else_correct))))))
(let ((anon6_Then_correct true))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= call1formal@res@0 (|$1_BCS_serialize'#0'| _$t0))) (and (=> (= (ControlFlow 0 42696) 42798) anon6_Then_correct) (=> (= (ControlFlow 0 42696) 42720) anon6_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_18130| stream@@0) 0) (forall ((v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) v@@33) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
))) (= (ControlFlow 0 42668) 42696)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 48577) 42668) inline$$InitEventStore$0$anon0_correct)))
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
(declare-datatypes ((T@$Memory_35237 0)) ((($Memory_35237 (|domain#$Memory_35237| |T@[Int]Bool|) (|contents#$Memory_35237| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@Vec_6459 0)) (((Vec_6459 (|v#Vec_6459| |T@[Int]Bool|) (|l#Vec_6459| Int) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Vec_1349| 0)
(declare-datatypes ((T@Vec_24551 0)) (((Vec_24551 (|v#Vec_24551| |T@[Int]Vec_1349|) (|l#Vec_24551| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_36699 0)) ((($Memory_36699 (|domain#$Memory_36699| |T@[Int]Bool|) (|contents#$Memory_36699| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_36568 0)) ((($Memory_36568 (|domain#$Memory_36568| |T@[Int]Bool|) (|contents#$Memory_36568| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@Vec_19114 0)) (((Vec_19114 (|v#Vec_19114| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#Vec_19114| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_36460 0)) ((($Memory_36460 (|domain#$Memory_36460| |T@[Int]Bool|) (|contents#$Memory_36460| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@Vec_21870 0)) (((Vec_21870 (|v#Vec_21870| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#Vec_21870| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_36352 0)) ((($Memory_36352 (|domain#$Memory_36352| |T@[Int]Bool|) (|contents#$Memory_36352| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18130 0)) (((Multiset_18130 (|v#Multiset_18130| |T@[$EventRep]Int|) (|l#Multiset_18130| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_18130| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18130|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37461 0)) ((($Mutation_37461 (|l#$Mutation_37461| T@$Location) (|p#$Mutation_37461| T@Vec_1349) (|v#$Mutation_37461| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_35865 0)) ((($Mutation_35865 (|l#$Mutation_35865| T@$Location) (|p#$Mutation_35865| T@Vec_1349) (|v#$Mutation_35865| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8192 0)) ((($Mutation_8192 (|l#$Mutation_8192| T@$Location) (|p#$Mutation_8192| T@Vec_1349) (|v#$Mutation_8192| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7083 0)) ((($Mutation_7083 (|l#$Mutation_7083| T@$Location) (|p#$Mutation_7083| T@Vec_1349) (|v#$Mutation_7083| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_28067 0)) ((($Mutation_28067 (|l#$Mutation_28067| T@$Location) (|p#$Mutation_28067| T@Vec_1349) (|v#$Mutation_28067| T@Vec_6459) ) ) ))
(declare-datatypes ((T@$Mutation_26329 0)) ((($Mutation_26329 (|l#$Mutation_26329| T@$Location) (|p#$Mutation_26329| T@Vec_1349) (|v#$Mutation_26329| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_25241 0)) ((($Mutation_25241 (|l#$Mutation_25241| T@$Location) (|p#$Mutation_25241| T@Vec_1349) (|v#$Mutation_25241| T@Vec_24551) ) ) ))
(declare-datatypes ((T@$Mutation_23500 0)) ((($Mutation_23500 (|l#$Mutation_23500| T@$Location) (|p#$Mutation_23500| T@Vec_1349) (|v#$Mutation_23500| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_22513 0)) ((($Mutation_22513 (|l#$Mutation_22513| T@$Location) (|p#$Mutation_22513| T@Vec_1349) (|v#$Mutation_22513| T@Vec_21870) ) ) ))
(declare-datatypes ((T@$Mutation_20772 0)) ((($Mutation_20772 (|l#$Mutation_20772| T@$Location) (|p#$Mutation_20772| T@Vec_1349) (|v#$Mutation_20772| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19757 0)) ((($Mutation_19757 (|l#$Mutation_19757| T@$Location) (|p#$Mutation_19757| T@Vec_1349) (|v#$Mutation_19757| T@Vec_19114) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114 T@Vec_19114) Bool)
(declare-fun InRangeVec_15148 (T@Vec_19114 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int) |T@$42_TestMonomorphization_R'address'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870 T@Vec_21870) Bool)
(declare-fun InRangeVec_15349 (T@Vec_21870 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsEqual'vec'vec'u64'''| (T@Vec_24551 T@Vec_24551) Bool)
(declare-fun InRangeVec_24660 (T@Vec_24551 Int) Bool)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |Select__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int) T@Vec_1349)
(declare-fun |$IsValid'vec'vec'u64'''| (T@Vec_24551) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'vec'u64''| (T@Vec_24551 T@Vec_1349) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_6459 T@Vec_6459) Bool)
(declare-fun InRangeVec_6459 (T@Vec_6459 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_6459) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_6459 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_7568 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_1349 Int) Int)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) T@Vec_1349)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_1349)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle) T@Multiset_18130)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun IndexOfVec_19114 (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun IndexOfVec_21870 (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun IndexOfVec_24551 (T@Vec_24551 T@Vec_1349) Int)
(declare-fun IndexOfVec_6459 (T@Vec_6459 Bool) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18130| |T@[$1_Event_EventHandle]Multiset_18130|) |T@[$1_Event_EventHandle]Multiset_18130|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#4| (Int Int |T@[Int]$42_TestMonomorphization_R'address'| Int Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#7| (Int Int |T@[Int]$42_TestMonomorphization_R'u64'| Int Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#10| (Int Int |T@[Int]Vec_1349| Int Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#13| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |monodefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |monodefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |monodefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |monodefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |monodefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |monodefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_19114) (v2 T@Vec_19114) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2)  (and (= (|l#Vec_19114| v1) (|l#Vec_19114| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_15148 v1 i@@0) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v1) i@@0) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v2) i@@0)))
 :qid |monodefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |monodefaultz3bpl.613:61|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_19114) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_19114| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_15148 v@@4 i@@1) (|$IsValid'$42_TestMonomorphization_R'address''| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@4) i@@1)))
 :qid |monodefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |monodefaultz3bpl.619:61|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_19114) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_15148 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@3) e))
 :qid |monodefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_15148 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) j) e)))
 :qid |monodefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |monodefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_21870) (v2@@0 T@Vec_21870) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0)  (and (= (|l#Vec_21870| v1@@0) (|l#Vec_21870| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_15349 v1@@0 i@@4) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v1@@0) i@@4) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v2@@0) i@@4)))
 :qid |monodefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |monodefaultz3bpl.794:57|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_21870) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_21870| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_15349 v@@6 i@@5) (|$IsValid'$42_TestMonomorphization_R'u64''| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@6) i@@5)))
 :qid |monodefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |monodefaultz3bpl.800:57|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_21870) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@6 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_15349 v@@7 i@@7)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@7) e@@0))
 :qid |monodefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_15349 v@@7 i@@6)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) j@@0) e@@0)))
 :qid |monodefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |monodefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_24551) (v2@@1 T@Vec_24551) ) (! (= (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1)  (and (= (|l#Vec_24551| v1@@1) (|l#Vec_24551| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_24660 v1@@1 i@@8) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v1@@1) i@@8) (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v2@@1) i@@8)))
 :qid |monodefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |monodefaultz3bpl.975:34|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_24551) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_24551| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_24660 v@@8 i@@9) (|$IsValid'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@8) i@@9)))
 :qid |monodefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |monodefaultz3bpl.981:34|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_24551) (e@@1 T@Vec_1349) ) (! (let ((i@@10 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_24660 v@@9 i@@11)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@11) e@@1))
 :qid |monodefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_24660 v@@9 i@@10)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) j@@1) e@@1)))
 :qid |monodefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |monodefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6459) (v2@@2 T@Vec_6459) ) (! (= (|$IsEqual'vec'bool''| v1@@2 v2@@2)  (and (= (|l#Vec_6459| v1@@2) (|l#Vec_6459| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6459 v1@@2 i@@12) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v1@@2) i@@12) (|Select__T@[Int]Bool_| (|v#Vec_6459| v2@@2) i@@12)))
 :qid |monodefaultz3bpl.1158:13|
 :skolemid |38|
))))
 :qid |monodefaultz3bpl.1156:30|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'bool''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_6459) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_6459| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6459 v@@10 i@@13) true)
 :qid |monodefaultz3bpl.1164:13|
 :skolemid |40|
))))
 :qid |monodefaultz3bpl.1162:30|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_6459) (e@@2 Bool) ) (! (let ((i@@14 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6459 v@@11 i@@15)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@15) e@@2))
 :qid |monodefaultz3bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6459 v@@11 i@@14)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) j@@2) e@@2)))
 :qid |monodefaultz3bpl.1177:17|
 :skolemid |43|
)))))
 :qid |monodefaultz3bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_1349| v1@@3) (|l#Vec_1349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7568 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@3) i@@16)))
 :qid |monodefaultz3bpl.1339:13|
 :skolemid |45|
))))
 :qid |monodefaultz3bpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_1349) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7568 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@12) i@@17)))
 :qid |monodefaultz3bpl.1345:13|
 :skolemid |47|
))))
 :qid |monodefaultz3bpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7568 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@19) e@@3))
 :qid |monodefaultz3bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7568 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |monodefaultz3bpl.1358:17|
 :skolemid |50|
)))))
 :qid |monodefaultz3bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_1349) (v2@@4 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@4 v2@@4)  (and (= (|l#Vec_1349| v1@@4) (|l#Vec_1349| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7568 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@4) i@@20)))
 :qid |monodefaultz3bpl.1520:13|
 :skolemid |52|
))))
 :qid |monodefaultz3bpl.1518:29|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u64''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7568 v@@14 i@@21) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@14) i@@21)))
 :qid |monodefaultz3bpl.1526:13|
 :skolemid |54|
))))
 :qid |monodefaultz3bpl.1524:29|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_1349) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7568 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@23) e@@4))
 :qid |monodefaultz3bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7568 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) j@@4) e@@4)))
 :qid |monodefaultz3bpl.1539:17|
 :skolemid |57|
)))))
 :qid |monodefaultz3bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_1349) (v2@@5 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_1349| v1@@5) (|l#Vec_1349| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_7568 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@5) i@@24)))
 :qid |monodefaultz3bpl.1701:13|
 :skolemid |59|
))))
 :qid |monodefaultz3bpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_7568 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@16) i@@25)))
 :qid |monodefaultz3bpl.1707:13|
 :skolemid |61|
))))
 :qid |monodefaultz3bpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_1349) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_7568 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@27) e@@5))
 :qid |monodefaultz3bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_7568 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) j@@5) e@@5)))
 :qid |monodefaultz3bpl.1720:17|
 :skolemid |64|
)))))
 :qid |monodefaultz3bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_1349) (v2@@6 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |monodefaultz3bpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_1349) (v2@@7 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |monodefaultz3bpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |monodefaultz3bpl.1956:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |monodefaultz3bpl.1959:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@8 |T@#0|) (v2@@8 |T@#0|) ) (! (= (= v1@@8 v2@@8) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8)))
 :qid |monodefaultz3bpl.1986:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_1349| r@@0) 0)))
 :qid |monodefaultz3bpl.1991:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@9 Int) (v2@@9 Int) ) (! (= (= v1@@9 v2@@9) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9)))
 :qid |monodefaultz3bpl.2013:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (|l#Vec_1349| r@@1) 0)))
 :qid |monodefaultz3bpl.2018:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (|l#Vec_1349| r@@2) $serialized_address_len))
 :qid |monodefaultz3bpl.2032:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18130| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream) v@@21) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |monodefaultz3bpl.2135:69|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@10 T@$42_TestMonomorphization_E) (v2@@10 T@$42_TestMonomorphization_E) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10)))
 :qid |monodefaultz3bpl.2141:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10))
)))
(assert (forall ((s T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s)))
 :qid |monodefaultz3bpl.2205:47|
 :skolemid |79|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s))
)))
(assert (forall ((s@@0 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0)  (and true true))
 :qid |monodefaultz3bpl.2221:53|
 :skolemid |80|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@1)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@1))))
 :qid |monodefaultz3bpl.2239:52|
 :skolemid |81|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@2)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@2)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@2))))
 :qid |monodefaultz3bpl.2257:56|
 :skolemid |82|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3)  (and true true))
 :qid |monodefaultz3bpl.2275:51|
 :skolemid |83|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3))
)))
(assert (forall ((v@@22 T@Vec_19114) (i@@28 Int) ) (! (= (InRangeVec_15148 v@@22 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_19114| v@@22))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15148 v@@22 i@@28))
)))
(assert (forall ((v@@23 T@Vec_21870) (i@@29 Int) ) (! (= (InRangeVec_15349 v@@23 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_21870| v@@23))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15349 v@@23 i@@29))
)))
(assert (forall ((v@@24 T@Vec_24551) (i@@30 Int) ) (! (= (InRangeVec_24660 v@@24 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_24551| v@@24))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_24660 v@@24 i@@30))
)))
(assert (forall ((v@@25 T@Vec_6459) (i@@31 Int) ) (! (= (InRangeVec_6459 v@@25 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_6459| v@@25))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6459 v@@25 i@@31))
)))
(assert (forall ((v@@26 T@Vec_1349) (i@@32 Int) ) (! (= (InRangeVec_7568 v@@26 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_1349| v@@26))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7568 v@@26 i@@32))
)))
(assert (forall ((v@@27 T@Vec_19114) (e@@6 |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@33 (IndexOfVec_19114 v@@27 e@@6)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_15148 v@@27 i@@34) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@34) e@@6))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_15148 v@@27 i@@33) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@33) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@33)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) j@@6) e@@6)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19114 v@@27 e@@6))
)))
(assert (forall ((v@@28 T@Vec_1349) (e@@7 Int) ) (! (let ((i@@35 (IndexOfVec_1349 v@@28 e@@7)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_7568 v@@28 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@36) e@@7))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_7568 v@@28 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@35) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@35)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) j@@7) e@@7)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_21870) (e@@8 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@37 (IndexOfVec_21870 v@@29 e@@8)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_15349 v@@29 i@@38) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@38) e@@8))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_15349 v@@29 i@@37) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@37) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@37)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) j@@8) e@@8)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21870 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_24551) (e@@9 T@Vec_1349) ) (! (let ((i@@39 (IndexOfVec_24551 v@@30 e@@9)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_24660 v@@30 i@@40) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@40) e@@9))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_24660 v@@30 i@@39) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@39) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@39)) (not (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) j@@9) e@@9)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_24551 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_6459) (e@@10 Bool) ) (! (let ((i@@41 (IndexOfVec_6459 v@@31 e@@10)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_6459 v@@31 i@@42) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@42) e@@10))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_6459 v@@31 i@@41) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@41) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@41)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) j@@10) e@@10)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6459 v@@31 e@@10))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |monodefaultz3bpl.275:54|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18130|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18130|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))))
(Multiset_18130 (|lambda#18| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0)) (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |monodefaultz3bpl.2104:13|
 :skolemid |88|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5| Int) (|l#6| |T@$42_TestMonomorphization_R'address'|) (i@@44 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44) (ite  (and (>= i@@44 |l#0@@1|) (< i@@44 |l#1@@0|)) (ite (< i@@44 |l#2|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3| i@@44) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4| (- i@@44 |l#5|))) |l#6|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@$42_TestMonomorphization_R'address'|) (i@@45 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45) (ite  (and (<= |l#0@@2| i@@45) (< i@@45 |l#1@@1|)) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#2@@0| (- (- |l#3@@0| i@@45) |l#4@@0|)) |l#5@@0|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |90|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5@@1| Int) (|l#6@@0| |T@$42_TestMonomorphization_R'address'|) (j@@11 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11) (ite  (and (>= j@@11 |l#0@@3|) (< j@@11 |l#1@@2|)) (ite (< j@@11 |l#2@@1|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3@@1| j@@11) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4@@1| (+ j@@11 |l#5@@1|))) |l#6@@0|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |91|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@2| Int) (|l#6@@1| |T@$42_TestMonomorphization_R'u64'|) (i@@46 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46) (ite  (and (>= i@@46 |l#0@@4|) (< i@@46 |l#1@@3|)) (ite (< i@@46 |l#2@@2|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@2| i@@46) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@2| (- i@@46 |l#5@@2|))) |l#6@@1|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |92|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| |T@$42_TestMonomorphization_R'u64'|) (i@@47 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47) (ite  (and (<= |l#0@@5| i@@47) (< i@@47 |l#1@@4|)) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#2@@3| (- (- |l#3@@3| i@@47) |l#4@@3|)) |l#5@@3|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |93|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@4| Int) (|l#6@@2| |T@$42_TestMonomorphization_R'u64'|) (j@@12 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12) (ite  (and (>= j@@12 |l#0@@6|) (< j@@12 |l#1@@5|)) (ite (< j@@12 |l#2@@4|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@4| j@@12) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@4| (+ j@@12 |l#5@@4|))) |l#6@@2|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Vec_1349|) (|l#4@@5| |T@[Int]Vec_1349|) (|l#5@@5| Int) (|l#6@@3| T@Vec_1349) (i@@48 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48) (ite  (and (>= i@@48 |l#0@@7|) (< i@@48 |l#1@@6|)) (ite (< i@@48 |l#2@@5|) (|Select__T@[Int]Vec_1349_| |l#3@@5| i@@48) (|Select__T@[Int]Vec_1349_| |l#4@@5| (- i@@48 |l#5@@5|))) |l#6@@3|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Vec_1349|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@Vec_1349) (i@@49 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49) (ite  (and (<= |l#0@@8| i@@49) (< i@@49 |l#1@@7|)) (|Select__T@[Int]Vec_1349_| |l#2@@6| (- (- |l#3@@6| i@@49) |l#4@@6|)) |l#5@@6|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Vec_1349|) (|l#4@@7| |T@[Int]Vec_1349|) (|l#5@@7| Int) (|l#6@@4| T@Vec_1349) (j@@13 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13) (ite  (and (>= j@@13 |l#0@@9|) (< j@@13 |l#1@@8|)) (ite (< j@@13 |l#2@@7|) (|Select__T@[Int]Vec_1349_| |l#3@@7| j@@13) (|Select__T@[Int]Vec_1349_| |l#4@@7| (+ j@@13 |l#5@@7|))) |l#6@@4|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Bool|) (|l#4@@8| |T@[Int]Bool|) (|l#5@@8| Int) (|l#6@@5| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50) (ite  (and (>= i@@50 |l#0@@10|) (< i@@50 |l#1@@9|)) (ite (< i@@50 |l#2@@8|) (|Select__T@[Int]Bool_| |l#3@@8| i@@50) (|Select__T@[Int]Bool_| |l#4@@8| (- i@@50 |l#5@@8|))) |l#6@@5|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Bool|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Bool) (i@@51 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51) (ite  (and (<= |l#0@@11| i@@51) (< i@@51 |l#1@@10|)) (|Select__T@[Int]Bool_| |l#2@@9| (- (- |l#3@@9| i@@51) |l#4@@9|)) |l#5@@9|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Bool|) (|l#4@@10| |T@[Int]Bool|) (|l#5@@10| Int) (|l#6@@6| Bool) (j@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14) (ite  (and (>= j@@14 |l#0@@12|) (< j@@14 |l#1@@11|)) (ite (< j@@14 |l#2@@10|) (|Select__T@[Int]Bool_| |l#3@@10| j@@14) (|Select__T@[Int]Bool_| |l#4@@10| (+ j@@14 |l#5@@10|))) |l#6@@6|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@52 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52) (ite  (and (>= i@@52 |l#0@@13|) (< i@@52 |l#1@@12|)) (ite (< i@@52 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@52) (|Select__T@[Int]Int_| |l#4@@11| (- i@@52 |l#5@@11|))) |l#6@@7|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@53 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53) (ite  (and (<= |l#0@@14| i@@53) (< i@@53 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@53) |l#4@@12|)) |l#5@@12|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@15 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15) (ite  (and (>= j@@15 |l#0@@15|) (< j@@15 |l#1@@14|)) (ite (< j@@15 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@15) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@15 |l#5@@13|))) |l#6@@8|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |103|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@32) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@32)))
 :qid |monodefaultz3bpl.154:29|
 :skolemid |104|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@1| () T@$1_Event_EventHandle)
(declare-fun _$t0 () T@$Mutation_35865)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle T@Multiset_18130) |T@[$1_Event_EventHandle]Multiset_18130|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_18130|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_18130)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|Store__T@[$1_Event_EventHandle]Multiset_18130_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_18130|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_18130)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|Store__T@[$1_Event_EventHandle]Multiset_18130_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_18130_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Event_emit_event'$42_TestMonomorphization_E'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t2@0 () T@$42_TestMonomorphization_E)
(declare-fun |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@0| () T@$1_Event_EventHandle)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_use_event$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 48806) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@1| (|v#$Mutation_35865| _$t0)) (= |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@1| |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@1|)) (and (=> (= (ControlFlow 0 43093) (- 0 48990)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) (|v#$Mutation_35865| _$t0))))
(let ((stream_new (let ((len (|l#Multiset_18130| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) (|$ToEventRep'$42_TestMonomorphization_E'| ($42_TestMonomorphization_E 0)))))
(Multiset_18130 (|Store__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) (|$ToEventRep'$42_TestMonomorphization_E'| ($42_TestMonomorphization_E 0)) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) (|v#$Mutation_35865| _$t0) stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@33 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| expected) handle@@1)) v@@33) (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| actual) handle@@1)) v@@33))
 :qid |monodefaultz3bpl.164:13|
 :skolemid |5|
)))
 :qid |monodefaultz3bpl.2110:13|
 :skolemid |76|
)))))) (=> (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) (|v#$Mutation_35865| _$t0))))
(let ((stream_new (let ((len (|l#Multiset_18130| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) (|$ToEventRep'$42_TestMonomorphization_E'| ($42_TestMonomorphization_E 0)))))
(Multiset_18130 (|Store__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) (|$ToEventRep'$42_TestMonomorphization_E'| ($42_TestMonomorphization_E 0)) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) (|v#$Mutation_35865| _$t0) stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| expected) handle@@2)) (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| actual) handle@@2))) (forall ((v@@34 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| expected) handle@@2)) v@@34) (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| actual) handle@@2)) v@@34))
 :qid |monodefaultz3bpl.164:13|
 :skolemid |5|
)))
 :qid |monodefaultz3bpl.2110:13|
 :skolemid |76|
))))) (=> (= (ControlFlow 0 43093) (- 0 49018)) (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) (|v#$Mutation_35865| _$t0))))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_18130| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@1) (|$ToEventRep'$42_TestMonomorphization_E'| ($42_TestMonomorphization_E 0)))))
(Multiset_18130 (|Store__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@1) (|$ToEventRep'$42_TestMonomorphization_E'| ($42_TestMonomorphization_E 0)) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) (|v#$Mutation_35865| _$t0) stream_new@@0))))))
 (and (<= (|counter#$EventStore| actual@@0) (|counter#$EventStore| expected@@0)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| actual@@0) handle@@3)) (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| expected@@0) handle@@3))) (forall ((v@@35 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| actual@@0) handle@@3)) v@@35) (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| expected@@0) handle@@3)) v@@35))
 :qid |monodefaultz3bpl.164:13|
 :skolemid |5|
)))
 :qid |monodefaultz3bpl.2110:13|
 :skolemid |76|
))))))))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Event_emit_event'$42_TestMonomorphization_E'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$42_TestMonomorphization_E'$0$handle@1| (|v#$Mutation_35865| _$t0)) (= $es@0 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$42_TestMonomorphization_E'$0$handle@1|)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_18130| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@2) (|$ToEventRep'$42_TestMonomorphization_E'| $t2@0))))
(Multiset_18130 (|Store__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@2) (|$ToEventRep'$42_TestMonomorphization_E'| $t2@0) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$42_TestMonomorphization_E'$0$handle@1| stream_new@@1)))))) (and (=> (= (ControlFlow 0 43001) 43111) anon4_Then_correct) (=> (= (ControlFlow 0 43001) 43093) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_35865| _$t0) ($Param 0)) (=> (and (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (|v#$Mutation_35865| _$t0)) (= |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@0| (|v#$Mutation_35865| _$t0))) (=> (and (and (= |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@0| |$temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''@0|) (|$IsValid'u64'| 0)) (and (= $t2@0 ($42_TestMonomorphization_E 0)) (= (ControlFlow 0 43007) 43001))) |inline$$1_Event_emit_event'$42_TestMonomorphization_E'$0$anon0_correct|)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_18130| stream@@3) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@3) v@@36) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
))) (= (ControlFlow 0 42880) 43007)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 48806) 42880) inline$$InitEventStore$0$anon0_correct)))
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
(declare-datatypes ((T@$Memory_35237 0)) ((($Memory_35237 (|domain#$Memory_35237| |T@[Int]Bool|) (|contents#$Memory_35237| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@Vec_6459 0)) (((Vec_6459 (|v#Vec_6459| |T@[Int]Bool|) (|l#Vec_6459| Int) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Vec_1349| 0)
(declare-datatypes ((T@Vec_24551 0)) (((Vec_24551 (|v#Vec_24551| |T@[Int]Vec_1349|) (|l#Vec_24551| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_36699 0)) ((($Memory_36699 (|domain#$Memory_36699| |T@[Int]Bool|) (|contents#$Memory_36699| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_36568 0)) ((($Memory_36568 (|domain#$Memory_36568| |T@[Int]Bool|) (|contents#$Memory_36568| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@Vec_19114 0)) (((Vec_19114 (|v#Vec_19114| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#Vec_19114| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_36460 0)) ((($Memory_36460 (|domain#$Memory_36460| |T@[Int]Bool|) (|contents#$Memory_36460| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@Vec_21870 0)) (((Vec_21870 (|v#Vec_21870| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#Vec_21870| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_36352 0)) ((($Memory_36352 (|domain#$Memory_36352| |T@[Int]Bool|) (|contents#$Memory_36352| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18130 0)) (((Multiset_18130 (|v#Multiset_18130| |T@[$EventRep]Int|) (|l#Multiset_18130| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_18130| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18130|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37461 0)) ((($Mutation_37461 (|l#$Mutation_37461| T@$Location) (|p#$Mutation_37461| T@Vec_1349) (|v#$Mutation_37461| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_35865 0)) ((($Mutation_35865 (|l#$Mutation_35865| T@$Location) (|p#$Mutation_35865| T@Vec_1349) (|v#$Mutation_35865| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8192 0)) ((($Mutation_8192 (|l#$Mutation_8192| T@$Location) (|p#$Mutation_8192| T@Vec_1349) (|v#$Mutation_8192| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7083 0)) ((($Mutation_7083 (|l#$Mutation_7083| T@$Location) (|p#$Mutation_7083| T@Vec_1349) (|v#$Mutation_7083| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_28067 0)) ((($Mutation_28067 (|l#$Mutation_28067| T@$Location) (|p#$Mutation_28067| T@Vec_1349) (|v#$Mutation_28067| T@Vec_6459) ) ) ))
(declare-datatypes ((T@$Mutation_26329 0)) ((($Mutation_26329 (|l#$Mutation_26329| T@$Location) (|p#$Mutation_26329| T@Vec_1349) (|v#$Mutation_26329| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_25241 0)) ((($Mutation_25241 (|l#$Mutation_25241| T@$Location) (|p#$Mutation_25241| T@Vec_1349) (|v#$Mutation_25241| T@Vec_24551) ) ) ))
(declare-datatypes ((T@$Mutation_23500 0)) ((($Mutation_23500 (|l#$Mutation_23500| T@$Location) (|p#$Mutation_23500| T@Vec_1349) (|v#$Mutation_23500| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_22513 0)) ((($Mutation_22513 (|l#$Mutation_22513| T@$Location) (|p#$Mutation_22513| T@Vec_1349) (|v#$Mutation_22513| T@Vec_21870) ) ) ))
(declare-datatypes ((T@$Mutation_20772 0)) ((($Mutation_20772 (|l#$Mutation_20772| T@$Location) (|p#$Mutation_20772| T@Vec_1349) (|v#$Mutation_20772| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19757 0)) ((($Mutation_19757 (|l#$Mutation_19757| T@$Location) (|p#$Mutation_19757| T@Vec_1349) (|v#$Mutation_19757| T@Vec_19114) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114 T@Vec_19114) Bool)
(declare-fun InRangeVec_15148 (T@Vec_19114 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int) |T@$42_TestMonomorphization_R'address'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870 T@Vec_21870) Bool)
(declare-fun InRangeVec_15349 (T@Vec_21870 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsEqual'vec'vec'u64'''| (T@Vec_24551 T@Vec_24551) Bool)
(declare-fun InRangeVec_24660 (T@Vec_24551 Int) Bool)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |Select__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int) T@Vec_1349)
(declare-fun |$IsValid'vec'vec'u64'''| (T@Vec_24551) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'vec'u64''| (T@Vec_24551 T@Vec_1349) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_6459 T@Vec_6459) Bool)
(declare-fun InRangeVec_6459 (T@Vec_6459 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_6459) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_6459 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_7568 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_1349 Int) Int)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) T@Vec_1349)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_1349)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle) T@Multiset_18130)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun IndexOfVec_19114 (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun IndexOfVec_21870 (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun IndexOfVec_24551 (T@Vec_24551 T@Vec_1349) Int)
(declare-fun IndexOfVec_6459 (T@Vec_6459 Bool) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18130| |T@[$1_Event_EventHandle]Multiset_18130|) |T@[$1_Event_EventHandle]Multiset_18130|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#4| (Int Int |T@[Int]$42_TestMonomorphization_R'address'| Int Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#7| (Int Int |T@[Int]$42_TestMonomorphization_R'u64'| Int Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#10| (Int Int |T@[Int]Vec_1349| Int Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#13| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |monodefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |monodefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |monodefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |monodefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |monodefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |monodefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_19114) (v2 T@Vec_19114) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2)  (and (= (|l#Vec_19114| v1) (|l#Vec_19114| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_15148 v1 i@@0) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v1) i@@0) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v2) i@@0)))
 :qid |monodefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |monodefaultz3bpl.613:61|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_19114) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_19114| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_15148 v@@4 i@@1) (|$IsValid'$42_TestMonomorphization_R'address''| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@4) i@@1)))
 :qid |monodefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |monodefaultz3bpl.619:61|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_19114) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_15148 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@3) e))
 :qid |monodefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_15148 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) j) e)))
 :qid |monodefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |monodefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_21870) (v2@@0 T@Vec_21870) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0)  (and (= (|l#Vec_21870| v1@@0) (|l#Vec_21870| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_15349 v1@@0 i@@4) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v1@@0) i@@4) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v2@@0) i@@4)))
 :qid |monodefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |monodefaultz3bpl.794:57|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_21870) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_21870| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_15349 v@@6 i@@5) (|$IsValid'$42_TestMonomorphization_R'u64''| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@6) i@@5)))
 :qid |monodefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |monodefaultz3bpl.800:57|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_21870) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@6 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_15349 v@@7 i@@7)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@7) e@@0))
 :qid |monodefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_15349 v@@7 i@@6)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) j@@0) e@@0)))
 :qid |monodefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |monodefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_24551) (v2@@1 T@Vec_24551) ) (! (= (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1)  (and (= (|l#Vec_24551| v1@@1) (|l#Vec_24551| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_24660 v1@@1 i@@8) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v1@@1) i@@8) (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v2@@1) i@@8)))
 :qid |monodefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |monodefaultz3bpl.975:34|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_24551) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_24551| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_24660 v@@8 i@@9) (|$IsValid'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@8) i@@9)))
 :qid |monodefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |monodefaultz3bpl.981:34|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_24551) (e@@1 T@Vec_1349) ) (! (let ((i@@10 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_24660 v@@9 i@@11)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@11) e@@1))
 :qid |monodefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_24660 v@@9 i@@10)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) j@@1) e@@1)))
 :qid |monodefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |monodefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6459) (v2@@2 T@Vec_6459) ) (! (= (|$IsEqual'vec'bool''| v1@@2 v2@@2)  (and (= (|l#Vec_6459| v1@@2) (|l#Vec_6459| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6459 v1@@2 i@@12) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v1@@2) i@@12) (|Select__T@[Int]Bool_| (|v#Vec_6459| v2@@2) i@@12)))
 :qid |monodefaultz3bpl.1158:13|
 :skolemid |38|
))))
 :qid |monodefaultz3bpl.1156:30|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'bool''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_6459) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_6459| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6459 v@@10 i@@13) true)
 :qid |monodefaultz3bpl.1164:13|
 :skolemid |40|
))))
 :qid |monodefaultz3bpl.1162:30|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_6459) (e@@2 Bool) ) (! (let ((i@@14 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6459 v@@11 i@@15)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@15) e@@2))
 :qid |monodefaultz3bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6459 v@@11 i@@14)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) j@@2) e@@2)))
 :qid |monodefaultz3bpl.1177:17|
 :skolemid |43|
)))))
 :qid |monodefaultz3bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_1349| v1@@3) (|l#Vec_1349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7568 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@3) i@@16)))
 :qid |monodefaultz3bpl.1339:13|
 :skolemid |45|
))))
 :qid |monodefaultz3bpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_1349) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7568 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@12) i@@17)))
 :qid |monodefaultz3bpl.1345:13|
 :skolemid |47|
))))
 :qid |monodefaultz3bpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7568 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@19) e@@3))
 :qid |monodefaultz3bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7568 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |monodefaultz3bpl.1358:17|
 :skolemid |50|
)))))
 :qid |monodefaultz3bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_1349) (v2@@4 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@4 v2@@4)  (and (= (|l#Vec_1349| v1@@4) (|l#Vec_1349| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7568 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@4) i@@20)))
 :qid |monodefaultz3bpl.1520:13|
 :skolemid |52|
))))
 :qid |monodefaultz3bpl.1518:29|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u64''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7568 v@@14 i@@21) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@14) i@@21)))
 :qid |monodefaultz3bpl.1526:13|
 :skolemid |54|
))))
 :qid |monodefaultz3bpl.1524:29|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_1349) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7568 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@23) e@@4))
 :qid |monodefaultz3bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7568 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) j@@4) e@@4)))
 :qid |monodefaultz3bpl.1539:17|
 :skolemid |57|
)))))
 :qid |monodefaultz3bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_1349) (v2@@5 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_1349| v1@@5) (|l#Vec_1349| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_7568 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@5) i@@24)))
 :qid |monodefaultz3bpl.1701:13|
 :skolemid |59|
))))
 :qid |monodefaultz3bpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_7568 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@16) i@@25)))
 :qid |monodefaultz3bpl.1707:13|
 :skolemid |61|
))))
 :qid |monodefaultz3bpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_1349) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_7568 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@27) e@@5))
 :qid |monodefaultz3bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_7568 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) j@@5) e@@5)))
 :qid |monodefaultz3bpl.1720:17|
 :skolemid |64|
)))))
 :qid |monodefaultz3bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_1349) (v2@@6 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |monodefaultz3bpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_1349) (v2@@7 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |monodefaultz3bpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |monodefaultz3bpl.1956:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |monodefaultz3bpl.1959:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@8 |T@#0|) (v2@@8 |T@#0|) ) (! (= (= v1@@8 v2@@8) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8)))
 :qid |monodefaultz3bpl.1986:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_1349| r@@0) 0)))
 :qid |monodefaultz3bpl.1991:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@9 Int) (v2@@9 Int) ) (! (= (= v1@@9 v2@@9) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9)))
 :qid |monodefaultz3bpl.2013:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (|l#Vec_1349| r@@1) 0)))
 :qid |monodefaultz3bpl.2018:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (|l#Vec_1349| r@@2) $serialized_address_len))
 :qid |monodefaultz3bpl.2032:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18130| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream) v@@21) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |monodefaultz3bpl.2135:69|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@10 T@$42_TestMonomorphization_E) (v2@@10 T@$42_TestMonomorphization_E) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10)))
 :qid |monodefaultz3bpl.2141:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10))
)))
(assert (forall ((s T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s)))
 :qid |monodefaultz3bpl.2205:47|
 :skolemid |79|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s))
)))
(assert (forall ((s@@0 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0)  (and true true))
 :qid |monodefaultz3bpl.2221:53|
 :skolemid |80|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@1)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@1))))
 :qid |monodefaultz3bpl.2239:52|
 :skolemid |81|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@2)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@2)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@2))))
 :qid |monodefaultz3bpl.2257:56|
 :skolemid |82|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3)  (and true true))
 :qid |monodefaultz3bpl.2275:51|
 :skolemid |83|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3))
)))
(assert (forall ((v@@22 T@Vec_19114) (i@@28 Int) ) (! (= (InRangeVec_15148 v@@22 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_19114| v@@22))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15148 v@@22 i@@28))
)))
(assert (forall ((v@@23 T@Vec_21870) (i@@29 Int) ) (! (= (InRangeVec_15349 v@@23 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_21870| v@@23))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15349 v@@23 i@@29))
)))
(assert (forall ((v@@24 T@Vec_24551) (i@@30 Int) ) (! (= (InRangeVec_24660 v@@24 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_24551| v@@24))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_24660 v@@24 i@@30))
)))
(assert (forall ((v@@25 T@Vec_6459) (i@@31 Int) ) (! (= (InRangeVec_6459 v@@25 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_6459| v@@25))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6459 v@@25 i@@31))
)))
(assert (forall ((v@@26 T@Vec_1349) (i@@32 Int) ) (! (= (InRangeVec_7568 v@@26 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_1349| v@@26))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7568 v@@26 i@@32))
)))
(assert (forall ((v@@27 T@Vec_19114) (e@@6 |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@33 (IndexOfVec_19114 v@@27 e@@6)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_15148 v@@27 i@@34) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@34) e@@6))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_15148 v@@27 i@@33) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@33) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@33)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) j@@6) e@@6)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19114 v@@27 e@@6))
)))
(assert (forall ((v@@28 T@Vec_1349) (e@@7 Int) ) (! (let ((i@@35 (IndexOfVec_1349 v@@28 e@@7)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_7568 v@@28 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@36) e@@7))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_7568 v@@28 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@35) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@35)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) j@@7) e@@7)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_21870) (e@@8 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@37 (IndexOfVec_21870 v@@29 e@@8)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_15349 v@@29 i@@38) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@38) e@@8))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_15349 v@@29 i@@37) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@37) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@37)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) j@@8) e@@8)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21870 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_24551) (e@@9 T@Vec_1349) ) (! (let ((i@@39 (IndexOfVec_24551 v@@30 e@@9)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_24660 v@@30 i@@40) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@40) e@@9))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_24660 v@@30 i@@39) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@39) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@39)) (not (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) j@@9) e@@9)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_24551 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_6459) (e@@10 Bool) ) (! (let ((i@@41 (IndexOfVec_6459 v@@31 e@@10)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_6459 v@@31 i@@42) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@42) e@@10))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_6459 v@@31 i@@41) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@41) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@41)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) j@@10) e@@10)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6459 v@@31 e@@10))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |monodefaultz3bpl.275:54|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18130|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18130|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))))
(Multiset_18130 (|lambda#18| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0)) (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |monodefaultz3bpl.2104:13|
 :skolemid |88|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5| Int) (|l#6| |T@$42_TestMonomorphization_R'address'|) (i@@44 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44) (ite  (and (>= i@@44 |l#0@@1|) (< i@@44 |l#1@@0|)) (ite (< i@@44 |l#2|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3| i@@44) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4| (- i@@44 |l#5|))) |l#6|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@$42_TestMonomorphization_R'address'|) (i@@45 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45) (ite  (and (<= |l#0@@2| i@@45) (< i@@45 |l#1@@1|)) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#2@@0| (- (- |l#3@@0| i@@45) |l#4@@0|)) |l#5@@0|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |90|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5@@1| Int) (|l#6@@0| |T@$42_TestMonomorphization_R'address'|) (j@@11 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11) (ite  (and (>= j@@11 |l#0@@3|) (< j@@11 |l#1@@2|)) (ite (< j@@11 |l#2@@1|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3@@1| j@@11) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4@@1| (+ j@@11 |l#5@@1|))) |l#6@@0|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |91|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@2| Int) (|l#6@@1| |T@$42_TestMonomorphization_R'u64'|) (i@@46 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46) (ite  (and (>= i@@46 |l#0@@4|) (< i@@46 |l#1@@3|)) (ite (< i@@46 |l#2@@2|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@2| i@@46) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@2| (- i@@46 |l#5@@2|))) |l#6@@1|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |92|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| |T@$42_TestMonomorphization_R'u64'|) (i@@47 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47) (ite  (and (<= |l#0@@5| i@@47) (< i@@47 |l#1@@4|)) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#2@@3| (- (- |l#3@@3| i@@47) |l#4@@3|)) |l#5@@3|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |93|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@4| Int) (|l#6@@2| |T@$42_TestMonomorphization_R'u64'|) (j@@12 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12) (ite  (and (>= j@@12 |l#0@@6|) (< j@@12 |l#1@@5|)) (ite (< j@@12 |l#2@@4|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@4| j@@12) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@4| (+ j@@12 |l#5@@4|))) |l#6@@2|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Vec_1349|) (|l#4@@5| |T@[Int]Vec_1349|) (|l#5@@5| Int) (|l#6@@3| T@Vec_1349) (i@@48 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48) (ite  (and (>= i@@48 |l#0@@7|) (< i@@48 |l#1@@6|)) (ite (< i@@48 |l#2@@5|) (|Select__T@[Int]Vec_1349_| |l#3@@5| i@@48) (|Select__T@[Int]Vec_1349_| |l#4@@5| (- i@@48 |l#5@@5|))) |l#6@@3|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Vec_1349|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@Vec_1349) (i@@49 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49) (ite  (and (<= |l#0@@8| i@@49) (< i@@49 |l#1@@7|)) (|Select__T@[Int]Vec_1349_| |l#2@@6| (- (- |l#3@@6| i@@49) |l#4@@6|)) |l#5@@6|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Vec_1349|) (|l#4@@7| |T@[Int]Vec_1349|) (|l#5@@7| Int) (|l#6@@4| T@Vec_1349) (j@@13 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13) (ite  (and (>= j@@13 |l#0@@9|) (< j@@13 |l#1@@8|)) (ite (< j@@13 |l#2@@7|) (|Select__T@[Int]Vec_1349_| |l#3@@7| j@@13) (|Select__T@[Int]Vec_1349_| |l#4@@7| (+ j@@13 |l#5@@7|))) |l#6@@4|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Bool|) (|l#4@@8| |T@[Int]Bool|) (|l#5@@8| Int) (|l#6@@5| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50) (ite  (and (>= i@@50 |l#0@@10|) (< i@@50 |l#1@@9|)) (ite (< i@@50 |l#2@@8|) (|Select__T@[Int]Bool_| |l#3@@8| i@@50) (|Select__T@[Int]Bool_| |l#4@@8| (- i@@50 |l#5@@8|))) |l#6@@5|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Bool|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Bool) (i@@51 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51) (ite  (and (<= |l#0@@11| i@@51) (< i@@51 |l#1@@10|)) (|Select__T@[Int]Bool_| |l#2@@9| (- (- |l#3@@9| i@@51) |l#4@@9|)) |l#5@@9|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Bool|) (|l#4@@10| |T@[Int]Bool|) (|l#5@@10| Int) (|l#6@@6| Bool) (j@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14) (ite  (and (>= j@@14 |l#0@@12|) (< j@@14 |l#1@@11|)) (ite (< j@@14 |l#2@@10|) (|Select__T@[Int]Bool_| |l#3@@10| j@@14) (|Select__T@[Int]Bool_| |l#4@@10| (+ j@@14 |l#5@@10|))) |l#6@@6|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@52 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52) (ite  (and (>= i@@52 |l#0@@13|) (< i@@52 |l#1@@12|)) (ite (< i@@52 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@52) (|Select__T@[Int]Int_| |l#4@@11| (- i@@52 |l#5@@11|))) |l#6@@7|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@53 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53) (ite  (and (<= |l#0@@14| i@@53) (< i@@53 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@53) |l#4@@12|)) |l#5@@12|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@15 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15) (ite  (and (>= j@@15 |l#0@@15|) (< j@@15 |l#1@@14|)) (ite (< j@@15 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@15) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@15 |l#5@@13|))) |l#6@@8|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |103|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@32) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@32)))
 :qid |monodefaultz3bpl.154:29|
 :skolemid |104|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_use_vec$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 49050) true)
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
(declare-datatypes ((T@$Memory_35237 0)) ((($Memory_35237 (|domain#$Memory_35237| |T@[Int]Bool|) (|contents#$Memory_35237| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@Vec_6459 0)) (((Vec_6459 (|v#Vec_6459| |T@[Int]Bool|) (|l#Vec_6459| Int) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Vec_1349| 0)
(declare-datatypes ((T@Vec_24551 0)) (((Vec_24551 (|v#Vec_24551| |T@[Int]Vec_1349|) (|l#Vec_24551| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_36699 0)) ((($Memory_36699 (|domain#$Memory_36699| |T@[Int]Bool|) (|contents#$Memory_36699| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_36568 0)) ((($Memory_36568 (|domain#$Memory_36568| |T@[Int]Bool|) (|contents#$Memory_36568| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@Vec_19114 0)) (((Vec_19114 (|v#Vec_19114| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#Vec_19114| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_36460 0)) ((($Memory_36460 (|domain#$Memory_36460| |T@[Int]Bool|) (|contents#$Memory_36460| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@Vec_21870 0)) (((Vec_21870 (|v#Vec_21870| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#Vec_21870| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_36352 0)) ((($Memory_36352 (|domain#$Memory_36352| |T@[Int]Bool|) (|contents#$Memory_36352| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18130 0)) (((Multiset_18130 (|v#Multiset_18130| |T@[$EventRep]Int|) (|l#Multiset_18130| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_18130| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18130|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37461 0)) ((($Mutation_37461 (|l#$Mutation_37461| T@$Location) (|p#$Mutation_37461| T@Vec_1349) (|v#$Mutation_37461| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_35865 0)) ((($Mutation_35865 (|l#$Mutation_35865| T@$Location) (|p#$Mutation_35865| T@Vec_1349) (|v#$Mutation_35865| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8192 0)) ((($Mutation_8192 (|l#$Mutation_8192| T@$Location) (|p#$Mutation_8192| T@Vec_1349) (|v#$Mutation_8192| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7083 0)) ((($Mutation_7083 (|l#$Mutation_7083| T@$Location) (|p#$Mutation_7083| T@Vec_1349) (|v#$Mutation_7083| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_28067 0)) ((($Mutation_28067 (|l#$Mutation_28067| T@$Location) (|p#$Mutation_28067| T@Vec_1349) (|v#$Mutation_28067| T@Vec_6459) ) ) ))
(declare-datatypes ((T@$Mutation_26329 0)) ((($Mutation_26329 (|l#$Mutation_26329| T@$Location) (|p#$Mutation_26329| T@Vec_1349) (|v#$Mutation_26329| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_25241 0)) ((($Mutation_25241 (|l#$Mutation_25241| T@$Location) (|p#$Mutation_25241| T@Vec_1349) (|v#$Mutation_25241| T@Vec_24551) ) ) ))
(declare-datatypes ((T@$Mutation_23500 0)) ((($Mutation_23500 (|l#$Mutation_23500| T@$Location) (|p#$Mutation_23500| T@Vec_1349) (|v#$Mutation_23500| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_22513 0)) ((($Mutation_22513 (|l#$Mutation_22513| T@$Location) (|p#$Mutation_22513| T@Vec_1349) (|v#$Mutation_22513| T@Vec_21870) ) ) ))
(declare-datatypes ((T@$Mutation_20772 0)) ((($Mutation_20772 (|l#$Mutation_20772| T@$Location) (|p#$Mutation_20772| T@Vec_1349) (|v#$Mutation_20772| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19757 0)) ((($Mutation_19757 (|l#$Mutation_19757| T@$Location) (|p#$Mutation_19757| T@Vec_1349) (|v#$Mutation_19757| T@Vec_19114) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114 T@Vec_19114) Bool)
(declare-fun InRangeVec_15148 (T@Vec_19114 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int) |T@$42_TestMonomorphization_R'address'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870 T@Vec_21870) Bool)
(declare-fun InRangeVec_15349 (T@Vec_21870 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsEqual'vec'vec'u64'''| (T@Vec_24551 T@Vec_24551) Bool)
(declare-fun InRangeVec_24660 (T@Vec_24551 Int) Bool)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |Select__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int) T@Vec_1349)
(declare-fun |$IsValid'vec'vec'u64'''| (T@Vec_24551) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'vec'u64''| (T@Vec_24551 T@Vec_1349) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_6459 T@Vec_6459) Bool)
(declare-fun InRangeVec_6459 (T@Vec_6459 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_6459) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_6459 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_7568 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_1349 Int) Int)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) T@Vec_1349)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_1349)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle) T@Multiset_18130)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun IndexOfVec_19114 (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun IndexOfVec_21870 (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun IndexOfVec_24551 (T@Vec_24551 T@Vec_1349) Int)
(declare-fun IndexOfVec_6459 (T@Vec_6459 Bool) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18130| |T@[$1_Event_EventHandle]Multiset_18130|) |T@[$1_Event_EventHandle]Multiset_18130|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#4| (Int Int |T@[Int]$42_TestMonomorphization_R'address'| Int Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#7| (Int Int |T@[Int]$42_TestMonomorphization_R'u64'| Int Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#10| (Int Int |T@[Int]Vec_1349| Int Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#13| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |monodefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |monodefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |monodefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |monodefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |monodefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |monodefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_19114) (v2 T@Vec_19114) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2)  (and (= (|l#Vec_19114| v1) (|l#Vec_19114| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_15148 v1 i@@0) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v1) i@@0) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v2) i@@0)))
 :qid |monodefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |monodefaultz3bpl.613:61|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_19114) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_19114| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_15148 v@@4 i@@1) (|$IsValid'$42_TestMonomorphization_R'address''| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@4) i@@1)))
 :qid |monodefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |monodefaultz3bpl.619:61|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_19114) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_15148 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@3) e))
 :qid |monodefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_15148 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) j) e)))
 :qid |monodefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |monodefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_21870) (v2@@0 T@Vec_21870) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0)  (and (= (|l#Vec_21870| v1@@0) (|l#Vec_21870| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_15349 v1@@0 i@@4) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v1@@0) i@@4) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v2@@0) i@@4)))
 :qid |monodefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |monodefaultz3bpl.794:57|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_21870) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_21870| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_15349 v@@6 i@@5) (|$IsValid'$42_TestMonomorphization_R'u64''| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@6) i@@5)))
 :qid |monodefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |monodefaultz3bpl.800:57|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_21870) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@6 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_15349 v@@7 i@@7)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@7) e@@0))
 :qid |monodefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_15349 v@@7 i@@6)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) j@@0) e@@0)))
 :qid |monodefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |monodefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_24551) (v2@@1 T@Vec_24551) ) (! (= (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1)  (and (= (|l#Vec_24551| v1@@1) (|l#Vec_24551| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_24660 v1@@1 i@@8) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v1@@1) i@@8) (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v2@@1) i@@8)))
 :qid |monodefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |monodefaultz3bpl.975:34|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_24551) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_24551| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_24660 v@@8 i@@9) (|$IsValid'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@8) i@@9)))
 :qid |monodefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |monodefaultz3bpl.981:34|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_24551) (e@@1 T@Vec_1349) ) (! (let ((i@@10 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_24660 v@@9 i@@11)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@11) e@@1))
 :qid |monodefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_24660 v@@9 i@@10)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) j@@1) e@@1)))
 :qid |monodefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |monodefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6459) (v2@@2 T@Vec_6459) ) (! (= (|$IsEqual'vec'bool''| v1@@2 v2@@2)  (and (= (|l#Vec_6459| v1@@2) (|l#Vec_6459| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6459 v1@@2 i@@12) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v1@@2) i@@12) (|Select__T@[Int]Bool_| (|v#Vec_6459| v2@@2) i@@12)))
 :qid |monodefaultz3bpl.1158:13|
 :skolemid |38|
))))
 :qid |monodefaultz3bpl.1156:30|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'bool''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_6459) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_6459| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6459 v@@10 i@@13) true)
 :qid |monodefaultz3bpl.1164:13|
 :skolemid |40|
))))
 :qid |monodefaultz3bpl.1162:30|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_6459) (e@@2 Bool) ) (! (let ((i@@14 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6459 v@@11 i@@15)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@15) e@@2))
 :qid |monodefaultz3bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6459 v@@11 i@@14)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) j@@2) e@@2)))
 :qid |monodefaultz3bpl.1177:17|
 :skolemid |43|
)))))
 :qid |monodefaultz3bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_1349| v1@@3) (|l#Vec_1349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7568 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@3) i@@16)))
 :qid |monodefaultz3bpl.1339:13|
 :skolemid |45|
))))
 :qid |monodefaultz3bpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_1349) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7568 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@12) i@@17)))
 :qid |monodefaultz3bpl.1345:13|
 :skolemid |47|
))))
 :qid |monodefaultz3bpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7568 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@19) e@@3))
 :qid |monodefaultz3bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7568 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |monodefaultz3bpl.1358:17|
 :skolemid |50|
)))))
 :qid |monodefaultz3bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_1349) (v2@@4 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@4 v2@@4)  (and (= (|l#Vec_1349| v1@@4) (|l#Vec_1349| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7568 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@4) i@@20)))
 :qid |monodefaultz3bpl.1520:13|
 :skolemid |52|
))))
 :qid |monodefaultz3bpl.1518:29|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u64''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7568 v@@14 i@@21) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@14) i@@21)))
 :qid |monodefaultz3bpl.1526:13|
 :skolemid |54|
))))
 :qid |monodefaultz3bpl.1524:29|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_1349) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7568 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@23) e@@4))
 :qid |monodefaultz3bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7568 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) j@@4) e@@4)))
 :qid |monodefaultz3bpl.1539:17|
 :skolemid |57|
)))))
 :qid |monodefaultz3bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_1349) (v2@@5 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_1349| v1@@5) (|l#Vec_1349| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_7568 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@5) i@@24)))
 :qid |monodefaultz3bpl.1701:13|
 :skolemid |59|
))))
 :qid |monodefaultz3bpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_7568 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@16) i@@25)))
 :qid |monodefaultz3bpl.1707:13|
 :skolemid |61|
))))
 :qid |monodefaultz3bpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_1349) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_7568 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@27) e@@5))
 :qid |monodefaultz3bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_7568 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) j@@5) e@@5)))
 :qid |monodefaultz3bpl.1720:17|
 :skolemid |64|
)))))
 :qid |monodefaultz3bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_1349) (v2@@6 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |monodefaultz3bpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_1349) (v2@@7 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |monodefaultz3bpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |monodefaultz3bpl.1956:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |monodefaultz3bpl.1959:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@8 |T@#0|) (v2@@8 |T@#0|) ) (! (= (= v1@@8 v2@@8) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8)))
 :qid |monodefaultz3bpl.1986:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_1349| r@@0) 0)))
 :qid |monodefaultz3bpl.1991:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@9 Int) (v2@@9 Int) ) (! (= (= v1@@9 v2@@9) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9)))
 :qid |monodefaultz3bpl.2013:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (|l#Vec_1349| r@@1) 0)))
 :qid |monodefaultz3bpl.2018:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (|l#Vec_1349| r@@2) $serialized_address_len))
 :qid |monodefaultz3bpl.2032:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18130| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream) v@@21) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |monodefaultz3bpl.2135:69|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@10 T@$42_TestMonomorphization_E) (v2@@10 T@$42_TestMonomorphization_E) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10)))
 :qid |monodefaultz3bpl.2141:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10))
)))
(assert (forall ((s T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s)))
 :qid |monodefaultz3bpl.2205:47|
 :skolemid |79|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s))
)))
(assert (forall ((s@@0 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0)  (and true true))
 :qid |monodefaultz3bpl.2221:53|
 :skolemid |80|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@1)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@1))))
 :qid |monodefaultz3bpl.2239:52|
 :skolemid |81|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@2)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@2)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@2))))
 :qid |monodefaultz3bpl.2257:56|
 :skolemid |82|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3)  (and true true))
 :qid |monodefaultz3bpl.2275:51|
 :skolemid |83|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3))
)))
(assert (forall ((v@@22 T@Vec_19114) (i@@28 Int) ) (! (= (InRangeVec_15148 v@@22 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_19114| v@@22))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15148 v@@22 i@@28))
)))
(assert (forall ((v@@23 T@Vec_21870) (i@@29 Int) ) (! (= (InRangeVec_15349 v@@23 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_21870| v@@23))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15349 v@@23 i@@29))
)))
(assert (forall ((v@@24 T@Vec_24551) (i@@30 Int) ) (! (= (InRangeVec_24660 v@@24 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_24551| v@@24))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_24660 v@@24 i@@30))
)))
(assert (forall ((v@@25 T@Vec_6459) (i@@31 Int) ) (! (= (InRangeVec_6459 v@@25 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_6459| v@@25))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6459 v@@25 i@@31))
)))
(assert (forall ((v@@26 T@Vec_1349) (i@@32 Int) ) (! (= (InRangeVec_7568 v@@26 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_1349| v@@26))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7568 v@@26 i@@32))
)))
(assert (forall ((v@@27 T@Vec_19114) (e@@6 |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@33 (IndexOfVec_19114 v@@27 e@@6)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_15148 v@@27 i@@34) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@34) e@@6))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_15148 v@@27 i@@33) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@33) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@33)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) j@@6) e@@6)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19114 v@@27 e@@6))
)))
(assert (forall ((v@@28 T@Vec_1349) (e@@7 Int) ) (! (let ((i@@35 (IndexOfVec_1349 v@@28 e@@7)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_7568 v@@28 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@36) e@@7))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_7568 v@@28 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@35) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@35)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) j@@7) e@@7)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_21870) (e@@8 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@37 (IndexOfVec_21870 v@@29 e@@8)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_15349 v@@29 i@@38) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@38) e@@8))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_15349 v@@29 i@@37) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@37) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@37)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) j@@8) e@@8)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21870 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_24551) (e@@9 T@Vec_1349) ) (! (let ((i@@39 (IndexOfVec_24551 v@@30 e@@9)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_24660 v@@30 i@@40) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@40) e@@9))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_24660 v@@30 i@@39) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@39) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@39)) (not (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) j@@9) e@@9)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_24551 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_6459) (e@@10 Bool) ) (! (let ((i@@41 (IndexOfVec_6459 v@@31 e@@10)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_6459 v@@31 i@@42) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@42) e@@10))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_6459 v@@31 i@@41) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@41) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@41)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) j@@10) e@@10)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6459 v@@31 e@@10))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |monodefaultz3bpl.275:54|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18130|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18130|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))))
(Multiset_18130 (|lambda#18| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0)) (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |monodefaultz3bpl.2104:13|
 :skolemid |88|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5| Int) (|l#6| |T@$42_TestMonomorphization_R'address'|) (i@@44 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44) (ite  (and (>= i@@44 |l#0@@1|) (< i@@44 |l#1@@0|)) (ite (< i@@44 |l#2|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3| i@@44) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4| (- i@@44 |l#5|))) |l#6|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@$42_TestMonomorphization_R'address'|) (i@@45 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45) (ite  (and (<= |l#0@@2| i@@45) (< i@@45 |l#1@@1|)) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#2@@0| (- (- |l#3@@0| i@@45) |l#4@@0|)) |l#5@@0|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |90|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5@@1| Int) (|l#6@@0| |T@$42_TestMonomorphization_R'address'|) (j@@11 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11) (ite  (and (>= j@@11 |l#0@@3|) (< j@@11 |l#1@@2|)) (ite (< j@@11 |l#2@@1|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3@@1| j@@11) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4@@1| (+ j@@11 |l#5@@1|))) |l#6@@0|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |91|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@2| Int) (|l#6@@1| |T@$42_TestMonomorphization_R'u64'|) (i@@46 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46) (ite  (and (>= i@@46 |l#0@@4|) (< i@@46 |l#1@@3|)) (ite (< i@@46 |l#2@@2|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@2| i@@46) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@2| (- i@@46 |l#5@@2|))) |l#6@@1|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |92|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| |T@$42_TestMonomorphization_R'u64'|) (i@@47 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47) (ite  (and (<= |l#0@@5| i@@47) (< i@@47 |l#1@@4|)) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#2@@3| (- (- |l#3@@3| i@@47) |l#4@@3|)) |l#5@@3|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |93|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@4| Int) (|l#6@@2| |T@$42_TestMonomorphization_R'u64'|) (j@@12 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12) (ite  (and (>= j@@12 |l#0@@6|) (< j@@12 |l#1@@5|)) (ite (< j@@12 |l#2@@4|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@4| j@@12) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@4| (+ j@@12 |l#5@@4|))) |l#6@@2|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Vec_1349|) (|l#4@@5| |T@[Int]Vec_1349|) (|l#5@@5| Int) (|l#6@@3| T@Vec_1349) (i@@48 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48) (ite  (and (>= i@@48 |l#0@@7|) (< i@@48 |l#1@@6|)) (ite (< i@@48 |l#2@@5|) (|Select__T@[Int]Vec_1349_| |l#3@@5| i@@48) (|Select__T@[Int]Vec_1349_| |l#4@@5| (- i@@48 |l#5@@5|))) |l#6@@3|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Vec_1349|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@Vec_1349) (i@@49 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49) (ite  (and (<= |l#0@@8| i@@49) (< i@@49 |l#1@@7|)) (|Select__T@[Int]Vec_1349_| |l#2@@6| (- (- |l#3@@6| i@@49) |l#4@@6|)) |l#5@@6|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Vec_1349|) (|l#4@@7| |T@[Int]Vec_1349|) (|l#5@@7| Int) (|l#6@@4| T@Vec_1349) (j@@13 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13) (ite  (and (>= j@@13 |l#0@@9|) (< j@@13 |l#1@@8|)) (ite (< j@@13 |l#2@@7|) (|Select__T@[Int]Vec_1349_| |l#3@@7| j@@13) (|Select__T@[Int]Vec_1349_| |l#4@@7| (+ j@@13 |l#5@@7|))) |l#6@@4|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Bool|) (|l#4@@8| |T@[Int]Bool|) (|l#5@@8| Int) (|l#6@@5| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50) (ite  (and (>= i@@50 |l#0@@10|) (< i@@50 |l#1@@9|)) (ite (< i@@50 |l#2@@8|) (|Select__T@[Int]Bool_| |l#3@@8| i@@50) (|Select__T@[Int]Bool_| |l#4@@8| (- i@@50 |l#5@@8|))) |l#6@@5|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Bool|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Bool) (i@@51 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51) (ite  (and (<= |l#0@@11| i@@51) (< i@@51 |l#1@@10|)) (|Select__T@[Int]Bool_| |l#2@@9| (- (- |l#3@@9| i@@51) |l#4@@9|)) |l#5@@9|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Bool|) (|l#4@@10| |T@[Int]Bool|) (|l#5@@10| Int) (|l#6@@6| Bool) (j@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14) (ite  (and (>= j@@14 |l#0@@12|) (< j@@14 |l#1@@11|)) (ite (< j@@14 |l#2@@10|) (|Select__T@[Int]Bool_| |l#3@@10| j@@14) (|Select__T@[Int]Bool_| |l#4@@10| (+ j@@14 |l#5@@10|))) |l#6@@6|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@52 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52) (ite  (and (>= i@@52 |l#0@@13|) (< i@@52 |l#1@@12|)) (ite (< i@@52 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@52) (|Select__T@[Int]Int_| |l#4@@11| (- i@@52 |l#5@@11|))) |l#6@@7|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@53 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53) (ite  (and (<= |l#0@@14| i@@53) (< i@@53 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@53) |l#4@@12|)) |l#5@@12|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@15 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15) (ite  (and (>= j@@15 |l#0@@15|) (< j@@15 |l#1@@14|)) (ite (< j@@15 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@15) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@15 |l#5@@13|))) |l#6@@8|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |103|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@32) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@32)))
 :qid |monodefaultz3bpl.154:29|
 :skolemid |104|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () T@Vec_1349)
(declare-fun |inline$$1_Vector_push_back'address'$0$m'@1| () T@$Mutation_26329)
(declare-fun $t1@0 () T@$Mutation_26329)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () T@Vec_1349)
(declare-fun MapConstVec_7797 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_7797 () Int)
(declare-fun $es () T@$EventStore)
(declare-fun $t1 () T@$Mutation_26329)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_vec_addr$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 49101) (let ((anon4_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_26329| |inline$$1_Vector_push_back'address'$0$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 43455) (- 0 49256)))) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| $t0@0) 0) 1)))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_push_back'address'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'address'$0$m'@1| ($Mutation_26329 (|l#$Mutation_26329| $t1@0) (|p#$Mutation_26329| $t1@0) (let ((l (|l#Vec_1349| (|v#$Mutation_26329| $t1@0))))
(Vec_1349 (|Store__T@[Int]Int_| (|v#Vec_1349| (|v#$Mutation_26329| $t1@0)) l 1) (+ l 1))))) (and (=> (= (ControlFlow 0 43413) 43473) anon4_Then_correct) (=> (= (ControlFlow 0 43413) 43455) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'address''| _$t0) (=> (and (and (= _$t0 _$t0) (= $t1@0 ($Mutation_26329 ($Local 0) (Vec_1349 (MapConstVec_7797 DefaultVecElem_7797) 0) _$t0))) (and (|$IsValid'address'| 1) (= (ControlFlow 0 43419) 43413))) |inline$$1_Vector_push_back'address'$0$anon0_correct|))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_18130| stream@@0) 0) (forall ((v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) v@@33) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
))) (= (ControlFlow 0 43320) 43419)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (|l#Vec_1349| (|p#$Mutation_26329| $t1)) 0) (= (ControlFlow 0 43330) 43320)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 49101) 43330) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 49101)))
(get-value ((ControlFlow 0 43330)))
(get-value ((ControlFlow 0 43320)))
(get-value ((ControlFlow 0 43419)))
(get-value ((ControlFlow 0 43413)))
(get-value ((ControlFlow 0 43455)))
(assert (not (= (ControlFlow 0 43455) (- 49256))))
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
(declare-datatypes ((T@$Memory_35237 0)) ((($Memory_35237 (|domain#$Memory_35237| |T@[Int]Bool|) (|contents#$Memory_35237| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@Vec_6459 0)) (((Vec_6459 (|v#Vec_6459| |T@[Int]Bool|) (|l#Vec_6459| Int) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Vec_1349| 0)
(declare-datatypes ((T@Vec_24551 0)) (((Vec_24551 (|v#Vec_24551| |T@[Int]Vec_1349|) (|l#Vec_24551| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_36699 0)) ((($Memory_36699 (|domain#$Memory_36699| |T@[Int]Bool|) (|contents#$Memory_36699| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_36568 0)) ((($Memory_36568 (|domain#$Memory_36568| |T@[Int]Bool|) (|contents#$Memory_36568| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@Vec_19114 0)) (((Vec_19114 (|v#Vec_19114| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#Vec_19114| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_36460 0)) ((($Memory_36460 (|domain#$Memory_36460| |T@[Int]Bool|) (|contents#$Memory_36460| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@Vec_21870 0)) (((Vec_21870 (|v#Vec_21870| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#Vec_21870| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_36352 0)) ((($Memory_36352 (|domain#$Memory_36352| |T@[Int]Bool|) (|contents#$Memory_36352| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18130 0)) (((Multiset_18130 (|v#Multiset_18130| |T@[$EventRep]Int|) (|l#Multiset_18130| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_18130| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18130|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37461 0)) ((($Mutation_37461 (|l#$Mutation_37461| T@$Location) (|p#$Mutation_37461| T@Vec_1349) (|v#$Mutation_37461| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_35865 0)) ((($Mutation_35865 (|l#$Mutation_35865| T@$Location) (|p#$Mutation_35865| T@Vec_1349) (|v#$Mutation_35865| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8192 0)) ((($Mutation_8192 (|l#$Mutation_8192| T@$Location) (|p#$Mutation_8192| T@Vec_1349) (|v#$Mutation_8192| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7083 0)) ((($Mutation_7083 (|l#$Mutation_7083| T@$Location) (|p#$Mutation_7083| T@Vec_1349) (|v#$Mutation_7083| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_28067 0)) ((($Mutation_28067 (|l#$Mutation_28067| T@$Location) (|p#$Mutation_28067| T@Vec_1349) (|v#$Mutation_28067| T@Vec_6459) ) ) ))
(declare-datatypes ((T@$Mutation_26329 0)) ((($Mutation_26329 (|l#$Mutation_26329| T@$Location) (|p#$Mutation_26329| T@Vec_1349) (|v#$Mutation_26329| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_25241 0)) ((($Mutation_25241 (|l#$Mutation_25241| T@$Location) (|p#$Mutation_25241| T@Vec_1349) (|v#$Mutation_25241| T@Vec_24551) ) ) ))
(declare-datatypes ((T@$Mutation_23500 0)) ((($Mutation_23500 (|l#$Mutation_23500| T@$Location) (|p#$Mutation_23500| T@Vec_1349) (|v#$Mutation_23500| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_22513 0)) ((($Mutation_22513 (|l#$Mutation_22513| T@$Location) (|p#$Mutation_22513| T@Vec_1349) (|v#$Mutation_22513| T@Vec_21870) ) ) ))
(declare-datatypes ((T@$Mutation_20772 0)) ((($Mutation_20772 (|l#$Mutation_20772| T@$Location) (|p#$Mutation_20772| T@Vec_1349) (|v#$Mutation_20772| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19757 0)) ((($Mutation_19757 (|l#$Mutation_19757| T@$Location) (|p#$Mutation_19757| T@Vec_1349) (|v#$Mutation_19757| T@Vec_19114) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114 T@Vec_19114) Bool)
(declare-fun InRangeVec_15148 (T@Vec_19114 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int) |T@$42_TestMonomorphization_R'address'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870 T@Vec_21870) Bool)
(declare-fun InRangeVec_15349 (T@Vec_21870 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsEqual'vec'vec'u64'''| (T@Vec_24551 T@Vec_24551) Bool)
(declare-fun InRangeVec_24660 (T@Vec_24551 Int) Bool)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |Select__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int) T@Vec_1349)
(declare-fun |$IsValid'vec'vec'u64'''| (T@Vec_24551) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'vec'u64''| (T@Vec_24551 T@Vec_1349) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_6459 T@Vec_6459) Bool)
(declare-fun InRangeVec_6459 (T@Vec_6459 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_6459) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_6459 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_7568 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_1349 Int) Int)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) T@Vec_1349)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_1349)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle) T@Multiset_18130)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun IndexOfVec_19114 (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun IndexOfVec_21870 (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun IndexOfVec_24551 (T@Vec_24551 T@Vec_1349) Int)
(declare-fun IndexOfVec_6459 (T@Vec_6459 Bool) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18130| |T@[$1_Event_EventHandle]Multiset_18130|) |T@[$1_Event_EventHandle]Multiset_18130|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#4| (Int Int |T@[Int]$42_TestMonomorphization_R'address'| Int Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#7| (Int Int |T@[Int]$42_TestMonomorphization_R'u64'| Int Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#10| (Int Int |T@[Int]Vec_1349| Int Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#13| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |monodefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |monodefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |monodefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |monodefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |monodefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |monodefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_19114) (v2 T@Vec_19114) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2)  (and (= (|l#Vec_19114| v1) (|l#Vec_19114| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_15148 v1 i@@0) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v1) i@@0) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v2) i@@0)))
 :qid |monodefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |monodefaultz3bpl.613:61|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_19114) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_19114| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_15148 v@@4 i@@1) (|$IsValid'$42_TestMonomorphization_R'address''| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@4) i@@1)))
 :qid |monodefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |monodefaultz3bpl.619:61|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_19114) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_15148 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@3) e))
 :qid |monodefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_15148 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) j) e)))
 :qid |monodefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |monodefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_21870) (v2@@0 T@Vec_21870) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0)  (and (= (|l#Vec_21870| v1@@0) (|l#Vec_21870| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_15349 v1@@0 i@@4) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v1@@0) i@@4) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v2@@0) i@@4)))
 :qid |monodefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |monodefaultz3bpl.794:57|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_21870) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_21870| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_15349 v@@6 i@@5) (|$IsValid'$42_TestMonomorphization_R'u64''| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@6) i@@5)))
 :qid |monodefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |monodefaultz3bpl.800:57|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_21870) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@6 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_15349 v@@7 i@@7)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@7) e@@0))
 :qid |monodefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_15349 v@@7 i@@6)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) j@@0) e@@0)))
 :qid |monodefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |monodefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_24551) (v2@@1 T@Vec_24551) ) (! (= (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1)  (and (= (|l#Vec_24551| v1@@1) (|l#Vec_24551| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_24660 v1@@1 i@@8) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v1@@1) i@@8) (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v2@@1) i@@8)))
 :qid |monodefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |monodefaultz3bpl.975:34|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_24551) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_24551| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_24660 v@@8 i@@9) (|$IsValid'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@8) i@@9)))
 :qid |monodefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |monodefaultz3bpl.981:34|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_24551) (e@@1 T@Vec_1349) ) (! (let ((i@@10 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_24660 v@@9 i@@11)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@11) e@@1))
 :qid |monodefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_24660 v@@9 i@@10)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) j@@1) e@@1)))
 :qid |monodefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |monodefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6459) (v2@@2 T@Vec_6459) ) (! (= (|$IsEqual'vec'bool''| v1@@2 v2@@2)  (and (= (|l#Vec_6459| v1@@2) (|l#Vec_6459| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6459 v1@@2 i@@12) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v1@@2) i@@12) (|Select__T@[Int]Bool_| (|v#Vec_6459| v2@@2) i@@12)))
 :qid |monodefaultz3bpl.1158:13|
 :skolemid |38|
))))
 :qid |monodefaultz3bpl.1156:30|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'bool''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_6459) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_6459| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6459 v@@10 i@@13) true)
 :qid |monodefaultz3bpl.1164:13|
 :skolemid |40|
))))
 :qid |monodefaultz3bpl.1162:30|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_6459) (e@@2 Bool) ) (! (let ((i@@14 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6459 v@@11 i@@15)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@15) e@@2))
 :qid |monodefaultz3bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6459 v@@11 i@@14)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) j@@2) e@@2)))
 :qid |monodefaultz3bpl.1177:17|
 :skolemid |43|
)))))
 :qid |monodefaultz3bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_1349| v1@@3) (|l#Vec_1349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7568 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@3) i@@16)))
 :qid |monodefaultz3bpl.1339:13|
 :skolemid |45|
))))
 :qid |monodefaultz3bpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_1349) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7568 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@12) i@@17)))
 :qid |monodefaultz3bpl.1345:13|
 :skolemid |47|
))))
 :qid |monodefaultz3bpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7568 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@19) e@@3))
 :qid |monodefaultz3bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7568 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |monodefaultz3bpl.1358:17|
 :skolemid |50|
)))))
 :qid |monodefaultz3bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_1349) (v2@@4 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@4 v2@@4)  (and (= (|l#Vec_1349| v1@@4) (|l#Vec_1349| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7568 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@4) i@@20)))
 :qid |monodefaultz3bpl.1520:13|
 :skolemid |52|
))))
 :qid |monodefaultz3bpl.1518:29|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u64''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7568 v@@14 i@@21) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@14) i@@21)))
 :qid |monodefaultz3bpl.1526:13|
 :skolemid |54|
))))
 :qid |monodefaultz3bpl.1524:29|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_1349) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7568 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@23) e@@4))
 :qid |monodefaultz3bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7568 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) j@@4) e@@4)))
 :qid |monodefaultz3bpl.1539:17|
 :skolemid |57|
)))))
 :qid |monodefaultz3bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_1349) (v2@@5 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_1349| v1@@5) (|l#Vec_1349| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_7568 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@5) i@@24)))
 :qid |monodefaultz3bpl.1701:13|
 :skolemid |59|
))))
 :qid |monodefaultz3bpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_7568 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@16) i@@25)))
 :qid |monodefaultz3bpl.1707:13|
 :skolemid |61|
))))
 :qid |monodefaultz3bpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_1349) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_7568 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@27) e@@5))
 :qid |monodefaultz3bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_7568 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) j@@5) e@@5)))
 :qid |monodefaultz3bpl.1720:17|
 :skolemid |64|
)))))
 :qid |monodefaultz3bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_1349) (v2@@6 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |monodefaultz3bpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_1349) (v2@@7 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |monodefaultz3bpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |monodefaultz3bpl.1956:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |monodefaultz3bpl.1959:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@8 |T@#0|) (v2@@8 |T@#0|) ) (! (= (= v1@@8 v2@@8) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8)))
 :qid |monodefaultz3bpl.1986:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_1349| r@@0) 0)))
 :qid |monodefaultz3bpl.1991:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@9 Int) (v2@@9 Int) ) (! (= (= v1@@9 v2@@9) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9)))
 :qid |monodefaultz3bpl.2013:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (|l#Vec_1349| r@@1) 0)))
 :qid |monodefaultz3bpl.2018:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (|l#Vec_1349| r@@2) $serialized_address_len))
 :qid |monodefaultz3bpl.2032:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18130| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream) v@@21) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |monodefaultz3bpl.2135:69|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@10 T@$42_TestMonomorphization_E) (v2@@10 T@$42_TestMonomorphization_E) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10)))
 :qid |monodefaultz3bpl.2141:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10))
)))
(assert (forall ((s T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s)))
 :qid |monodefaultz3bpl.2205:47|
 :skolemid |79|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s))
)))
(assert (forall ((s@@0 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0)  (and true true))
 :qid |monodefaultz3bpl.2221:53|
 :skolemid |80|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@1)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@1))))
 :qid |monodefaultz3bpl.2239:52|
 :skolemid |81|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@2)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@2)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@2))))
 :qid |monodefaultz3bpl.2257:56|
 :skolemid |82|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3)  (and true true))
 :qid |monodefaultz3bpl.2275:51|
 :skolemid |83|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3))
)))
(assert (forall ((v@@22 T@Vec_19114) (i@@28 Int) ) (! (= (InRangeVec_15148 v@@22 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_19114| v@@22))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15148 v@@22 i@@28))
)))
(assert (forall ((v@@23 T@Vec_21870) (i@@29 Int) ) (! (= (InRangeVec_15349 v@@23 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_21870| v@@23))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15349 v@@23 i@@29))
)))
(assert (forall ((v@@24 T@Vec_24551) (i@@30 Int) ) (! (= (InRangeVec_24660 v@@24 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_24551| v@@24))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_24660 v@@24 i@@30))
)))
(assert (forall ((v@@25 T@Vec_6459) (i@@31 Int) ) (! (= (InRangeVec_6459 v@@25 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_6459| v@@25))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6459 v@@25 i@@31))
)))
(assert (forall ((v@@26 T@Vec_1349) (i@@32 Int) ) (! (= (InRangeVec_7568 v@@26 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_1349| v@@26))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7568 v@@26 i@@32))
)))
(assert (forall ((v@@27 T@Vec_19114) (e@@6 |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@33 (IndexOfVec_19114 v@@27 e@@6)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_15148 v@@27 i@@34) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@34) e@@6))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_15148 v@@27 i@@33) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@33) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@33)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) j@@6) e@@6)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19114 v@@27 e@@6))
)))
(assert (forall ((v@@28 T@Vec_1349) (e@@7 Int) ) (! (let ((i@@35 (IndexOfVec_1349 v@@28 e@@7)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_7568 v@@28 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@36) e@@7))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_7568 v@@28 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@35) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@35)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) j@@7) e@@7)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_21870) (e@@8 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@37 (IndexOfVec_21870 v@@29 e@@8)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_15349 v@@29 i@@38) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@38) e@@8))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_15349 v@@29 i@@37) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@37) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@37)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) j@@8) e@@8)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21870 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_24551) (e@@9 T@Vec_1349) ) (! (let ((i@@39 (IndexOfVec_24551 v@@30 e@@9)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_24660 v@@30 i@@40) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@40) e@@9))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_24660 v@@30 i@@39) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@39) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@39)) (not (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) j@@9) e@@9)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_24551 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_6459) (e@@10 Bool) ) (! (let ((i@@41 (IndexOfVec_6459 v@@31 e@@10)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_6459 v@@31 i@@42) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@42) e@@10))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_6459 v@@31 i@@41) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@41) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@41)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) j@@10) e@@10)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6459 v@@31 e@@10))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |monodefaultz3bpl.275:54|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18130|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18130|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))))
(Multiset_18130 (|lambda#18| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0)) (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |monodefaultz3bpl.2104:13|
 :skolemid |88|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5| Int) (|l#6| |T@$42_TestMonomorphization_R'address'|) (i@@44 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44) (ite  (and (>= i@@44 |l#0@@1|) (< i@@44 |l#1@@0|)) (ite (< i@@44 |l#2|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3| i@@44) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4| (- i@@44 |l#5|))) |l#6|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@$42_TestMonomorphization_R'address'|) (i@@45 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45) (ite  (and (<= |l#0@@2| i@@45) (< i@@45 |l#1@@1|)) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#2@@0| (- (- |l#3@@0| i@@45) |l#4@@0|)) |l#5@@0|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |90|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5@@1| Int) (|l#6@@0| |T@$42_TestMonomorphization_R'address'|) (j@@11 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11) (ite  (and (>= j@@11 |l#0@@3|) (< j@@11 |l#1@@2|)) (ite (< j@@11 |l#2@@1|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3@@1| j@@11) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4@@1| (+ j@@11 |l#5@@1|))) |l#6@@0|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |91|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@2| Int) (|l#6@@1| |T@$42_TestMonomorphization_R'u64'|) (i@@46 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46) (ite  (and (>= i@@46 |l#0@@4|) (< i@@46 |l#1@@3|)) (ite (< i@@46 |l#2@@2|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@2| i@@46) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@2| (- i@@46 |l#5@@2|))) |l#6@@1|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |92|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| |T@$42_TestMonomorphization_R'u64'|) (i@@47 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47) (ite  (and (<= |l#0@@5| i@@47) (< i@@47 |l#1@@4|)) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#2@@3| (- (- |l#3@@3| i@@47) |l#4@@3|)) |l#5@@3|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |93|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@4| Int) (|l#6@@2| |T@$42_TestMonomorphization_R'u64'|) (j@@12 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12) (ite  (and (>= j@@12 |l#0@@6|) (< j@@12 |l#1@@5|)) (ite (< j@@12 |l#2@@4|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@4| j@@12) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@4| (+ j@@12 |l#5@@4|))) |l#6@@2|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Vec_1349|) (|l#4@@5| |T@[Int]Vec_1349|) (|l#5@@5| Int) (|l#6@@3| T@Vec_1349) (i@@48 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48) (ite  (and (>= i@@48 |l#0@@7|) (< i@@48 |l#1@@6|)) (ite (< i@@48 |l#2@@5|) (|Select__T@[Int]Vec_1349_| |l#3@@5| i@@48) (|Select__T@[Int]Vec_1349_| |l#4@@5| (- i@@48 |l#5@@5|))) |l#6@@3|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Vec_1349|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@Vec_1349) (i@@49 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49) (ite  (and (<= |l#0@@8| i@@49) (< i@@49 |l#1@@7|)) (|Select__T@[Int]Vec_1349_| |l#2@@6| (- (- |l#3@@6| i@@49) |l#4@@6|)) |l#5@@6|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Vec_1349|) (|l#4@@7| |T@[Int]Vec_1349|) (|l#5@@7| Int) (|l#6@@4| T@Vec_1349) (j@@13 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13) (ite  (and (>= j@@13 |l#0@@9|) (< j@@13 |l#1@@8|)) (ite (< j@@13 |l#2@@7|) (|Select__T@[Int]Vec_1349_| |l#3@@7| j@@13) (|Select__T@[Int]Vec_1349_| |l#4@@7| (+ j@@13 |l#5@@7|))) |l#6@@4|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Bool|) (|l#4@@8| |T@[Int]Bool|) (|l#5@@8| Int) (|l#6@@5| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50) (ite  (and (>= i@@50 |l#0@@10|) (< i@@50 |l#1@@9|)) (ite (< i@@50 |l#2@@8|) (|Select__T@[Int]Bool_| |l#3@@8| i@@50) (|Select__T@[Int]Bool_| |l#4@@8| (- i@@50 |l#5@@8|))) |l#6@@5|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Bool|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Bool) (i@@51 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51) (ite  (and (<= |l#0@@11| i@@51) (< i@@51 |l#1@@10|)) (|Select__T@[Int]Bool_| |l#2@@9| (- (- |l#3@@9| i@@51) |l#4@@9|)) |l#5@@9|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Bool|) (|l#4@@10| |T@[Int]Bool|) (|l#5@@10| Int) (|l#6@@6| Bool) (j@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14) (ite  (and (>= j@@14 |l#0@@12|) (< j@@14 |l#1@@11|)) (ite (< j@@14 |l#2@@10|) (|Select__T@[Int]Bool_| |l#3@@10| j@@14) (|Select__T@[Int]Bool_| |l#4@@10| (+ j@@14 |l#5@@10|))) |l#6@@6|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@52 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52) (ite  (and (>= i@@52 |l#0@@13|) (< i@@52 |l#1@@12|)) (ite (< i@@52 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@52) (|Select__T@[Int]Int_| |l#4@@11| (- i@@52 |l#5@@11|))) |l#6@@7|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@53 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53) (ite  (and (<= |l#0@@14| i@@53) (< i@@53 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@53) |l#4@@12|)) |l#5@@12|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@15 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15) (ite  (and (>= j@@15 |l#0@@15|) (< j@@15 |l#1@@14|)) (ite (< j@@15 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@15) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@15 |l#5@@13|))) |l#6@@8|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |103|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@32) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@32)))
 :qid |monodefaultz3bpl.154:29|
 :skolemid |104|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () T@Vec_6459)
(declare-fun |inline$$1_Vector_push_back'bool'$0$m'@1| () T@$Mutation_28067)
(declare-fun $t1@0 () T@$Mutation_28067)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () T@Vec_6459)
(declare-fun MapConstVec_7797 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_7797 () Int)
(declare-fun $es () T@$EventStore)
(declare-fun $t1 () T@$Mutation_28067)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_vec_bool$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 49279) (let ((anon4_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_28067| |inline$$1_Vector_push_back'bool'$0$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 43702) (- 0 49434)))) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| $t0@0) 0) true)))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_push_back'bool'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'bool'$0$m'@1| ($Mutation_28067 (|l#$Mutation_28067| $t1@0) (|p#$Mutation_28067| $t1@0) (let ((l (|l#Vec_6459| (|v#$Mutation_28067| $t1@0))))
(Vec_6459 (|Store__T@[Int]Bool_| (|v#Vec_6459| (|v#$Mutation_28067| $t1@0)) l true) (+ l 1))))) (and (=> (= (ControlFlow 0 43660) 43720) anon4_Then_correct) (=> (= (ControlFlow 0 43660) 43702) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'bool''| _$t0) (= _$t0 _$t0)) (and (= $t1@0 ($Mutation_28067 ($Local 0) (Vec_1349 (MapConstVec_7797 DefaultVecElem_7797) 0) _$t0)) (= (ControlFlow 0 43666) 43660))) |inline$$1_Vector_push_back'bool'$0$anon0_correct|)))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_18130| stream@@0) 0) (forall ((v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) v@@33) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
))) (= (ControlFlow 0 43567) 43666)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (|l#Vec_1349| (|p#$Mutation_28067| $t1)) 0) (= (ControlFlow 0 43577) 43567)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 49279) 43577) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 49279)))
(get-value ((ControlFlow 0 43577)))
(get-value ((ControlFlow 0 43567)))
(get-value ((ControlFlow 0 43666)))
(get-value ((ControlFlow 0 43660)))
(get-value ((ControlFlow 0 43702)))
(assert (not (= (ControlFlow 0 43702) (- 49434))))
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
(declare-datatypes ((T@$Memory_35237 0)) ((($Memory_35237 (|domain#$Memory_35237| |T@[Int]Bool|) (|contents#$Memory_35237| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@Vec_6459 0)) (((Vec_6459 (|v#Vec_6459| |T@[Int]Bool|) (|l#Vec_6459| Int) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Vec_1349| 0)
(declare-datatypes ((T@Vec_24551 0)) (((Vec_24551 (|v#Vec_24551| |T@[Int]Vec_1349|) (|l#Vec_24551| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_36699 0)) ((($Memory_36699 (|domain#$Memory_36699| |T@[Int]Bool|) (|contents#$Memory_36699| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_36568 0)) ((($Memory_36568 (|domain#$Memory_36568| |T@[Int]Bool|) (|contents#$Memory_36568| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@Vec_19114 0)) (((Vec_19114 (|v#Vec_19114| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#Vec_19114| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_36460 0)) ((($Memory_36460 (|domain#$Memory_36460| |T@[Int]Bool|) (|contents#$Memory_36460| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@Vec_21870 0)) (((Vec_21870 (|v#Vec_21870| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#Vec_21870| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_36352 0)) ((($Memory_36352 (|domain#$Memory_36352| |T@[Int]Bool|) (|contents#$Memory_36352| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18130 0)) (((Multiset_18130 (|v#Multiset_18130| |T@[$EventRep]Int|) (|l#Multiset_18130| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_18130| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18130|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37461 0)) ((($Mutation_37461 (|l#$Mutation_37461| T@$Location) (|p#$Mutation_37461| T@Vec_1349) (|v#$Mutation_37461| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_35865 0)) ((($Mutation_35865 (|l#$Mutation_35865| T@$Location) (|p#$Mutation_35865| T@Vec_1349) (|v#$Mutation_35865| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8192 0)) ((($Mutation_8192 (|l#$Mutation_8192| T@$Location) (|p#$Mutation_8192| T@Vec_1349) (|v#$Mutation_8192| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7083 0)) ((($Mutation_7083 (|l#$Mutation_7083| T@$Location) (|p#$Mutation_7083| T@Vec_1349) (|v#$Mutation_7083| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_28067 0)) ((($Mutation_28067 (|l#$Mutation_28067| T@$Location) (|p#$Mutation_28067| T@Vec_1349) (|v#$Mutation_28067| T@Vec_6459) ) ) ))
(declare-datatypes ((T@$Mutation_26329 0)) ((($Mutation_26329 (|l#$Mutation_26329| T@$Location) (|p#$Mutation_26329| T@Vec_1349) (|v#$Mutation_26329| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_25241 0)) ((($Mutation_25241 (|l#$Mutation_25241| T@$Location) (|p#$Mutation_25241| T@Vec_1349) (|v#$Mutation_25241| T@Vec_24551) ) ) ))
(declare-datatypes ((T@$Mutation_23500 0)) ((($Mutation_23500 (|l#$Mutation_23500| T@$Location) (|p#$Mutation_23500| T@Vec_1349) (|v#$Mutation_23500| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_22513 0)) ((($Mutation_22513 (|l#$Mutation_22513| T@$Location) (|p#$Mutation_22513| T@Vec_1349) (|v#$Mutation_22513| T@Vec_21870) ) ) ))
(declare-datatypes ((T@$Mutation_20772 0)) ((($Mutation_20772 (|l#$Mutation_20772| T@$Location) (|p#$Mutation_20772| T@Vec_1349) (|v#$Mutation_20772| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19757 0)) ((($Mutation_19757 (|l#$Mutation_19757| T@$Location) (|p#$Mutation_19757| T@Vec_1349) (|v#$Mutation_19757| T@Vec_19114) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114 T@Vec_19114) Bool)
(declare-fun InRangeVec_15148 (T@Vec_19114 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int) |T@$42_TestMonomorphization_R'address'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870 T@Vec_21870) Bool)
(declare-fun InRangeVec_15349 (T@Vec_21870 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsEqual'vec'vec'u64'''| (T@Vec_24551 T@Vec_24551) Bool)
(declare-fun InRangeVec_24660 (T@Vec_24551 Int) Bool)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |Select__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int) T@Vec_1349)
(declare-fun |$IsValid'vec'vec'u64'''| (T@Vec_24551) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'vec'u64''| (T@Vec_24551 T@Vec_1349) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_6459 T@Vec_6459) Bool)
(declare-fun InRangeVec_6459 (T@Vec_6459 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_6459) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_6459 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_7568 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_1349 Int) Int)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) T@Vec_1349)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_1349)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle) T@Multiset_18130)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun IndexOfVec_19114 (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun IndexOfVec_21870 (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun IndexOfVec_24551 (T@Vec_24551 T@Vec_1349) Int)
(declare-fun IndexOfVec_6459 (T@Vec_6459 Bool) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18130| |T@[$1_Event_EventHandle]Multiset_18130|) |T@[$1_Event_EventHandle]Multiset_18130|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#4| (Int Int |T@[Int]$42_TestMonomorphization_R'address'| Int Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#7| (Int Int |T@[Int]$42_TestMonomorphization_R'u64'| Int Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#10| (Int Int |T@[Int]Vec_1349| Int Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#13| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |monodefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |monodefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |monodefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |monodefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |monodefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |monodefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_19114) (v2 T@Vec_19114) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2)  (and (= (|l#Vec_19114| v1) (|l#Vec_19114| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_15148 v1 i@@0) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v1) i@@0) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v2) i@@0)))
 :qid |monodefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |monodefaultz3bpl.613:61|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_19114) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_19114| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_15148 v@@4 i@@1) (|$IsValid'$42_TestMonomorphization_R'address''| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@4) i@@1)))
 :qid |monodefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |monodefaultz3bpl.619:61|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_19114) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_15148 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@3) e))
 :qid |monodefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_15148 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) j) e)))
 :qid |monodefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |monodefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_21870) (v2@@0 T@Vec_21870) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0)  (and (= (|l#Vec_21870| v1@@0) (|l#Vec_21870| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_15349 v1@@0 i@@4) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v1@@0) i@@4) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v2@@0) i@@4)))
 :qid |monodefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |monodefaultz3bpl.794:57|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_21870) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_21870| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_15349 v@@6 i@@5) (|$IsValid'$42_TestMonomorphization_R'u64''| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@6) i@@5)))
 :qid |monodefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |monodefaultz3bpl.800:57|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_21870) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@6 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_15349 v@@7 i@@7)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@7) e@@0))
 :qid |monodefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_15349 v@@7 i@@6)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) j@@0) e@@0)))
 :qid |monodefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |monodefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_24551) (v2@@1 T@Vec_24551) ) (! (= (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1)  (and (= (|l#Vec_24551| v1@@1) (|l#Vec_24551| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_24660 v1@@1 i@@8) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v1@@1) i@@8) (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v2@@1) i@@8)))
 :qid |monodefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |monodefaultz3bpl.975:34|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_24551) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_24551| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_24660 v@@8 i@@9) (|$IsValid'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@8) i@@9)))
 :qid |monodefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |monodefaultz3bpl.981:34|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_24551) (e@@1 T@Vec_1349) ) (! (let ((i@@10 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_24660 v@@9 i@@11)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@11) e@@1))
 :qid |monodefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_24660 v@@9 i@@10)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) j@@1) e@@1)))
 :qid |monodefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |monodefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6459) (v2@@2 T@Vec_6459) ) (! (= (|$IsEqual'vec'bool''| v1@@2 v2@@2)  (and (= (|l#Vec_6459| v1@@2) (|l#Vec_6459| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6459 v1@@2 i@@12) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v1@@2) i@@12) (|Select__T@[Int]Bool_| (|v#Vec_6459| v2@@2) i@@12)))
 :qid |monodefaultz3bpl.1158:13|
 :skolemid |38|
))))
 :qid |monodefaultz3bpl.1156:30|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'bool''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_6459) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_6459| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6459 v@@10 i@@13) true)
 :qid |monodefaultz3bpl.1164:13|
 :skolemid |40|
))))
 :qid |monodefaultz3bpl.1162:30|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_6459) (e@@2 Bool) ) (! (let ((i@@14 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6459 v@@11 i@@15)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@15) e@@2))
 :qid |monodefaultz3bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6459 v@@11 i@@14)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) j@@2) e@@2)))
 :qid |monodefaultz3bpl.1177:17|
 :skolemid |43|
)))))
 :qid |monodefaultz3bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_1349| v1@@3) (|l#Vec_1349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7568 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@3) i@@16)))
 :qid |monodefaultz3bpl.1339:13|
 :skolemid |45|
))))
 :qid |monodefaultz3bpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_1349) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7568 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@12) i@@17)))
 :qid |monodefaultz3bpl.1345:13|
 :skolemid |47|
))))
 :qid |monodefaultz3bpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7568 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@19) e@@3))
 :qid |monodefaultz3bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7568 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |monodefaultz3bpl.1358:17|
 :skolemid |50|
)))))
 :qid |monodefaultz3bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_1349) (v2@@4 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@4 v2@@4)  (and (= (|l#Vec_1349| v1@@4) (|l#Vec_1349| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7568 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@4) i@@20)))
 :qid |monodefaultz3bpl.1520:13|
 :skolemid |52|
))))
 :qid |monodefaultz3bpl.1518:29|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u64''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7568 v@@14 i@@21) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@14) i@@21)))
 :qid |monodefaultz3bpl.1526:13|
 :skolemid |54|
))))
 :qid |monodefaultz3bpl.1524:29|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_1349) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7568 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@23) e@@4))
 :qid |monodefaultz3bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7568 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) j@@4) e@@4)))
 :qid |monodefaultz3bpl.1539:17|
 :skolemid |57|
)))))
 :qid |monodefaultz3bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_1349) (v2@@5 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_1349| v1@@5) (|l#Vec_1349| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_7568 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@5) i@@24)))
 :qid |monodefaultz3bpl.1701:13|
 :skolemid |59|
))))
 :qid |monodefaultz3bpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_7568 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@16) i@@25)))
 :qid |monodefaultz3bpl.1707:13|
 :skolemid |61|
))))
 :qid |monodefaultz3bpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_1349) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_7568 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@27) e@@5))
 :qid |monodefaultz3bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_7568 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) j@@5) e@@5)))
 :qid |monodefaultz3bpl.1720:17|
 :skolemid |64|
)))))
 :qid |monodefaultz3bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_1349) (v2@@6 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |monodefaultz3bpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_1349) (v2@@7 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |monodefaultz3bpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |monodefaultz3bpl.1956:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |monodefaultz3bpl.1959:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@8 |T@#0|) (v2@@8 |T@#0|) ) (! (= (= v1@@8 v2@@8) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8)))
 :qid |monodefaultz3bpl.1986:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_1349| r@@0) 0)))
 :qid |monodefaultz3bpl.1991:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@9 Int) (v2@@9 Int) ) (! (= (= v1@@9 v2@@9) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9)))
 :qid |monodefaultz3bpl.2013:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (|l#Vec_1349| r@@1) 0)))
 :qid |monodefaultz3bpl.2018:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (|l#Vec_1349| r@@2) $serialized_address_len))
 :qid |monodefaultz3bpl.2032:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18130| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream) v@@21) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |monodefaultz3bpl.2135:69|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@10 T@$42_TestMonomorphization_E) (v2@@10 T@$42_TestMonomorphization_E) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10)))
 :qid |monodefaultz3bpl.2141:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10))
)))
(assert (forall ((s T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s)))
 :qid |monodefaultz3bpl.2205:47|
 :skolemid |79|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s))
)))
(assert (forall ((s@@0 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0)  (and true true))
 :qid |monodefaultz3bpl.2221:53|
 :skolemid |80|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@1)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@1))))
 :qid |monodefaultz3bpl.2239:52|
 :skolemid |81|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@2)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@2)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@2))))
 :qid |monodefaultz3bpl.2257:56|
 :skolemid |82|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3)  (and true true))
 :qid |monodefaultz3bpl.2275:51|
 :skolemid |83|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3))
)))
(assert (forall ((v@@22 T@Vec_19114) (i@@28 Int) ) (! (= (InRangeVec_15148 v@@22 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_19114| v@@22))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15148 v@@22 i@@28))
)))
(assert (forall ((v@@23 T@Vec_21870) (i@@29 Int) ) (! (= (InRangeVec_15349 v@@23 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_21870| v@@23))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15349 v@@23 i@@29))
)))
(assert (forall ((v@@24 T@Vec_24551) (i@@30 Int) ) (! (= (InRangeVec_24660 v@@24 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_24551| v@@24))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_24660 v@@24 i@@30))
)))
(assert (forall ((v@@25 T@Vec_6459) (i@@31 Int) ) (! (= (InRangeVec_6459 v@@25 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_6459| v@@25))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6459 v@@25 i@@31))
)))
(assert (forall ((v@@26 T@Vec_1349) (i@@32 Int) ) (! (= (InRangeVec_7568 v@@26 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_1349| v@@26))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7568 v@@26 i@@32))
)))
(assert (forall ((v@@27 T@Vec_19114) (e@@6 |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@33 (IndexOfVec_19114 v@@27 e@@6)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_15148 v@@27 i@@34) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@34) e@@6))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_15148 v@@27 i@@33) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@33) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@33)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) j@@6) e@@6)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19114 v@@27 e@@6))
)))
(assert (forall ((v@@28 T@Vec_1349) (e@@7 Int) ) (! (let ((i@@35 (IndexOfVec_1349 v@@28 e@@7)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_7568 v@@28 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@36) e@@7))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_7568 v@@28 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@35) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@35)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) j@@7) e@@7)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_21870) (e@@8 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@37 (IndexOfVec_21870 v@@29 e@@8)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_15349 v@@29 i@@38) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@38) e@@8))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_15349 v@@29 i@@37) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@37) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@37)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) j@@8) e@@8)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21870 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_24551) (e@@9 T@Vec_1349) ) (! (let ((i@@39 (IndexOfVec_24551 v@@30 e@@9)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_24660 v@@30 i@@40) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@40) e@@9))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_24660 v@@30 i@@39) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@39) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@39)) (not (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) j@@9) e@@9)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_24551 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_6459) (e@@10 Bool) ) (! (let ((i@@41 (IndexOfVec_6459 v@@31 e@@10)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_6459 v@@31 i@@42) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@42) e@@10))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_6459 v@@31 i@@41) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@41) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@41)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) j@@10) e@@10)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6459 v@@31 e@@10))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |monodefaultz3bpl.275:54|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18130|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18130|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))))
(Multiset_18130 (|lambda#18| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0)) (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |monodefaultz3bpl.2104:13|
 :skolemid |88|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5| Int) (|l#6| |T@$42_TestMonomorphization_R'address'|) (i@@44 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44) (ite  (and (>= i@@44 |l#0@@1|) (< i@@44 |l#1@@0|)) (ite (< i@@44 |l#2|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3| i@@44) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4| (- i@@44 |l#5|))) |l#6|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@$42_TestMonomorphization_R'address'|) (i@@45 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45) (ite  (and (<= |l#0@@2| i@@45) (< i@@45 |l#1@@1|)) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#2@@0| (- (- |l#3@@0| i@@45) |l#4@@0|)) |l#5@@0|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |90|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5@@1| Int) (|l#6@@0| |T@$42_TestMonomorphization_R'address'|) (j@@11 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11) (ite  (and (>= j@@11 |l#0@@3|) (< j@@11 |l#1@@2|)) (ite (< j@@11 |l#2@@1|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3@@1| j@@11) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4@@1| (+ j@@11 |l#5@@1|))) |l#6@@0|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |91|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@2| Int) (|l#6@@1| |T@$42_TestMonomorphization_R'u64'|) (i@@46 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46) (ite  (and (>= i@@46 |l#0@@4|) (< i@@46 |l#1@@3|)) (ite (< i@@46 |l#2@@2|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@2| i@@46) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@2| (- i@@46 |l#5@@2|))) |l#6@@1|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |92|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| |T@$42_TestMonomorphization_R'u64'|) (i@@47 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47) (ite  (and (<= |l#0@@5| i@@47) (< i@@47 |l#1@@4|)) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#2@@3| (- (- |l#3@@3| i@@47) |l#4@@3|)) |l#5@@3|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |93|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@4| Int) (|l#6@@2| |T@$42_TestMonomorphization_R'u64'|) (j@@12 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12) (ite  (and (>= j@@12 |l#0@@6|) (< j@@12 |l#1@@5|)) (ite (< j@@12 |l#2@@4|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@4| j@@12) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@4| (+ j@@12 |l#5@@4|))) |l#6@@2|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Vec_1349|) (|l#4@@5| |T@[Int]Vec_1349|) (|l#5@@5| Int) (|l#6@@3| T@Vec_1349) (i@@48 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48) (ite  (and (>= i@@48 |l#0@@7|) (< i@@48 |l#1@@6|)) (ite (< i@@48 |l#2@@5|) (|Select__T@[Int]Vec_1349_| |l#3@@5| i@@48) (|Select__T@[Int]Vec_1349_| |l#4@@5| (- i@@48 |l#5@@5|))) |l#6@@3|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Vec_1349|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@Vec_1349) (i@@49 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49) (ite  (and (<= |l#0@@8| i@@49) (< i@@49 |l#1@@7|)) (|Select__T@[Int]Vec_1349_| |l#2@@6| (- (- |l#3@@6| i@@49) |l#4@@6|)) |l#5@@6|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Vec_1349|) (|l#4@@7| |T@[Int]Vec_1349|) (|l#5@@7| Int) (|l#6@@4| T@Vec_1349) (j@@13 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13) (ite  (and (>= j@@13 |l#0@@9|) (< j@@13 |l#1@@8|)) (ite (< j@@13 |l#2@@7|) (|Select__T@[Int]Vec_1349_| |l#3@@7| j@@13) (|Select__T@[Int]Vec_1349_| |l#4@@7| (+ j@@13 |l#5@@7|))) |l#6@@4|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Bool|) (|l#4@@8| |T@[Int]Bool|) (|l#5@@8| Int) (|l#6@@5| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50) (ite  (and (>= i@@50 |l#0@@10|) (< i@@50 |l#1@@9|)) (ite (< i@@50 |l#2@@8|) (|Select__T@[Int]Bool_| |l#3@@8| i@@50) (|Select__T@[Int]Bool_| |l#4@@8| (- i@@50 |l#5@@8|))) |l#6@@5|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Bool|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Bool) (i@@51 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51) (ite  (and (<= |l#0@@11| i@@51) (< i@@51 |l#1@@10|)) (|Select__T@[Int]Bool_| |l#2@@9| (- (- |l#3@@9| i@@51) |l#4@@9|)) |l#5@@9|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Bool|) (|l#4@@10| |T@[Int]Bool|) (|l#5@@10| Int) (|l#6@@6| Bool) (j@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14) (ite  (and (>= j@@14 |l#0@@12|) (< j@@14 |l#1@@11|)) (ite (< j@@14 |l#2@@10|) (|Select__T@[Int]Bool_| |l#3@@10| j@@14) (|Select__T@[Int]Bool_| |l#4@@10| (+ j@@14 |l#5@@10|))) |l#6@@6|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@52 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52) (ite  (and (>= i@@52 |l#0@@13|) (< i@@52 |l#1@@12|)) (ite (< i@@52 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@52) (|Select__T@[Int]Int_| |l#4@@11| (- i@@52 |l#5@@11|))) |l#6@@7|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@53 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53) (ite  (and (<= |l#0@@14| i@@53) (< i@@53 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@53) |l#4@@12|)) |l#5@@12|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@15 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15) (ite  (and (>= j@@15 |l#0@@15|) (< j@@15 |l#1@@14|)) (ite (< j@@15 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@15) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@15 |l#5@@13|))) |l#6@@8|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |103|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@32) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@32)))
 :qid |monodefaultz3bpl.154:29|
 :skolemid |104|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () T@Vec_1349)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26329)
(declare-fun $t1@0 () T@$Mutation_26329)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () T@Vec_1349)
(declare-fun MapConstVec_7797 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_7797 () Int)
(declare-fun $es () T@$EventStore)
(declare-fun $t1 () T@$Mutation_26329)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_vec_int$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 49457) (let ((anon4_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_26329| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 43949) (- 0 49612)))) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| $t0@0) 0) 1)))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26329 (|l#$Mutation_26329| $t1@0) (|p#$Mutation_26329| $t1@0) (let ((l (|l#Vec_1349| (|v#$Mutation_26329| $t1@0))))
(Vec_1349 (|Store__T@[Int]Int_| (|v#Vec_1349| (|v#$Mutation_26329| $t1@0)) l 1) (+ l 1))))) (and (=> (= (ControlFlow 0 43907) 43967) anon4_Then_correct) (=> (= (ControlFlow 0 43907) 43949) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (and (= _$t0 _$t0) (= $t1@0 ($Mutation_26329 ($Local 0) (Vec_1349 (MapConstVec_7797 DefaultVecElem_7797) 0) _$t0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 43913) 43907))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_18130| stream@@0) 0) (forall ((v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) v@@33) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
))) (= (ControlFlow 0 43814) 43913)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (|l#Vec_1349| (|p#$Mutation_26329| $t1)) 0) (= (ControlFlow 0 43824) 43814)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 49457) 43824) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 49457)))
(get-value ((ControlFlow 0 43824)))
(get-value ((ControlFlow 0 43814)))
(get-value ((ControlFlow 0 43913)))
(get-value ((ControlFlow 0 43907)))
(get-value ((ControlFlow 0 43949)))
(assert (not (= (ControlFlow 0 43949) (- 49612))))
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
(declare-datatypes ((T@$Memory_35237 0)) ((($Memory_35237 (|domain#$Memory_35237| |T@[Int]Bool|) (|contents#$Memory_35237| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@Vec_6459 0)) (((Vec_6459 (|v#Vec_6459| |T@[Int]Bool|) (|l#Vec_6459| Int) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Vec_1349| 0)
(declare-datatypes ((T@Vec_24551 0)) (((Vec_24551 (|v#Vec_24551| |T@[Int]Vec_1349|) (|l#Vec_24551| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_36699 0)) ((($Memory_36699 (|domain#$Memory_36699| |T@[Int]Bool|) (|contents#$Memory_36699| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_36568 0)) ((($Memory_36568 (|domain#$Memory_36568| |T@[Int]Bool|) (|contents#$Memory_36568| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@Vec_19114 0)) (((Vec_19114 (|v#Vec_19114| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#Vec_19114| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_36460 0)) ((($Memory_36460 (|domain#$Memory_36460| |T@[Int]Bool|) (|contents#$Memory_36460| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@Vec_21870 0)) (((Vec_21870 (|v#Vec_21870| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#Vec_21870| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_36352 0)) ((($Memory_36352 (|domain#$Memory_36352| |T@[Int]Bool|) (|contents#$Memory_36352| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18130 0)) (((Multiset_18130 (|v#Multiset_18130| |T@[$EventRep]Int|) (|l#Multiset_18130| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_18130| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18130|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37461 0)) ((($Mutation_37461 (|l#$Mutation_37461| T@$Location) (|p#$Mutation_37461| T@Vec_1349) (|v#$Mutation_37461| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_35865 0)) ((($Mutation_35865 (|l#$Mutation_35865| T@$Location) (|p#$Mutation_35865| T@Vec_1349) (|v#$Mutation_35865| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8192 0)) ((($Mutation_8192 (|l#$Mutation_8192| T@$Location) (|p#$Mutation_8192| T@Vec_1349) (|v#$Mutation_8192| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7083 0)) ((($Mutation_7083 (|l#$Mutation_7083| T@$Location) (|p#$Mutation_7083| T@Vec_1349) (|v#$Mutation_7083| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_28067 0)) ((($Mutation_28067 (|l#$Mutation_28067| T@$Location) (|p#$Mutation_28067| T@Vec_1349) (|v#$Mutation_28067| T@Vec_6459) ) ) ))
(declare-datatypes ((T@$Mutation_26329 0)) ((($Mutation_26329 (|l#$Mutation_26329| T@$Location) (|p#$Mutation_26329| T@Vec_1349) (|v#$Mutation_26329| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_25241 0)) ((($Mutation_25241 (|l#$Mutation_25241| T@$Location) (|p#$Mutation_25241| T@Vec_1349) (|v#$Mutation_25241| T@Vec_24551) ) ) ))
(declare-datatypes ((T@$Mutation_23500 0)) ((($Mutation_23500 (|l#$Mutation_23500| T@$Location) (|p#$Mutation_23500| T@Vec_1349) (|v#$Mutation_23500| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_22513 0)) ((($Mutation_22513 (|l#$Mutation_22513| T@$Location) (|p#$Mutation_22513| T@Vec_1349) (|v#$Mutation_22513| T@Vec_21870) ) ) ))
(declare-datatypes ((T@$Mutation_20772 0)) ((($Mutation_20772 (|l#$Mutation_20772| T@$Location) (|p#$Mutation_20772| T@Vec_1349) (|v#$Mutation_20772| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19757 0)) ((($Mutation_19757 (|l#$Mutation_19757| T@$Location) (|p#$Mutation_19757| T@Vec_1349) (|v#$Mutation_19757| T@Vec_19114) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114 T@Vec_19114) Bool)
(declare-fun InRangeVec_15148 (T@Vec_19114 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int) |T@$42_TestMonomorphization_R'address'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870 T@Vec_21870) Bool)
(declare-fun InRangeVec_15349 (T@Vec_21870 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsEqual'vec'vec'u64'''| (T@Vec_24551 T@Vec_24551) Bool)
(declare-fun InRangeVec_24660 (T@Vec_24551 Int) Bool)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |Select__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int) T@Vec_1349)
(declare-fun |$IsValid'vec'vec'u64'''| (T@Vec_24551) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'vec'u64''| (T@Vec_24551 T@Vec_1349) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_6459 T@Vec_6459) Bool)
(declare-fun InRangeVec_6459 (T@Vec_6459 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_6459) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_6459 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_7568 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_1349 Int) Int)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) T@Vec_1349)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_1349)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle) T@Multiset_18130)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun IndexOfVec_19114 (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun IndexOfVec_21870 (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun IndexOfVec_24551 (T@Vec_24551 T@Vec_1349) Int)
(declare-fun IndexOfVec_6459 (T@Vec_6459 Bool) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18130| |T@[$1_Event_EventHandle]Multiset_18130|) |T@[$1_Event_EventHandle]Multiset_18130|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#4| (Int Int |T@[Int]$42_TestMonomorphization_R'address'| Int Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#7| (Int Int |T@[Int]$42_TestMonomorphization_R'u64'| Int Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#10| (Int Int |T@[Int]Vec_1349| Int Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#13| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |monodefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |monodefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |monodefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |monodefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |monodefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |monodefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_19114) (v2 T@Vec_19114) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2)  (and (= (|l#Vec_19114| v1) (|l#Vec_19114| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_15148 v1 i@@0) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v1) i@@0) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v2) i@@0)))
 :qid |monodefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |monodefaultz3bpl.613:61|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_19114) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_19114| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_15148 v@@4 i@@1) (|$IsValid'$42_TestMonomorphization_R'address''| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@4) i@@1)))
 :qid |monodefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |monodefaultz3bpl.619:61|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_19114) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_15148 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@3) e))
 :qid |monodefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_15148 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) j) e)))
 :qid |monodefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |monodefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_21870) (v2@@0 T@Vec_21870) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0)  (and (= (|l#Vec_21870| v1@@0) (|l#Vec_21870| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_15349 v1@@0 i@@4) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v1@@0) i@@4) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v2@@0) i@@4)))
 :qid |monodefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |monodefaultz3bpl.794:57|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_21870) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_21870| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_15349 v@@6 i@@5) (|$IsValid'$42_TestMonomorphization_R'u64''| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@6) i@@5)))
 :qid |monodefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |monodefaultz3bpl.800:57|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_21870) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@6 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_15349 v@@7 i@@7)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@7) e@@0))
 :qid |monodefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_15349 v@@7 i@@6)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) j@@0) e@@0)))
 :qid |monodefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |monodefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_24551) (v2@@1 T@Vec_24551) ) (! (= (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1)  (and (= (|l#Vec_24551| v1@@1) (|l#Vec_24551| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_24660 v1@@1 i@@8) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v1@@1) i@@8) (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v2@@1) i@@8)))
 :qid |monodefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |monodefaultz3bpl.975:34|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_24551) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_24551| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_24660 v@@8 i@@9) (|$IsValid'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@8) i@@9)))
 :qid |monodefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |monodefaultz3bpl.981:34|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_24551) (e@@1 T@Vec_1349) ) (! (let ((i@@10 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_24660 v@@9 i@@11)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@11) e@@1))
 :qid |monodefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_24660 v@@9 i@@10)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) j@@1) e@@1)))
 :qid |monodefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |monodefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6459) (v2@@2 T@Vec_6459) ) (! (= (|$IsEqual'vec'bool''| v1@@2 v2@@2)  (and (= (|l#Vec_6459| v1@@2) (|l#Vec_6459| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6459 v1@@2 i@@12) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v1@@2) i@@12) (|Select__T@[Int]Bool_| (|v#Vec_6459| v2@@2) i@@12)))
 :qid |monodefaultz3bpl.1158:13|
 :skolemid |38|
))))
 :qid |monodefaultz3bpl.1156:30|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'bool''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_6459) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_6459| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6459 v@@10 i@@13) true)
 :qid |monodefaultz3bpl.1164:13|
 :skolemid |40|
))))
 :qid |monodefaultz3bpl.1162:30|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_6459) (e@@2 Bool) ) (! (let ((i@@14 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6459 v@@11 i@@15)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@15) e@@2))
 :qid |monodefaultz3bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6459 v@@11 i@@14)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) j@@2) e@@2)))
 :qid |monodefaultz3bpl.1177:17|
 :skolemid |43|
)))))
 :qid |monodefaultz3bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_1349| v1@@3) (|l#Vec_1349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7568 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@3) i@@16)))
 :qid |monodefaultz3bpl.1339:13|
 :skolemid |45|
))))
 :qid |monodefaultz3bpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_1349) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7568 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@12) i@@17)))
 :qid |monodefaultz3bpl.1345:13|
 :skolemid |47|
))))
 :qid |monodefaultz3bpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7568 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@19) e@@3))
 :qid |monodefaultz3bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7568 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |monodefaultz3bpl.1358:17|
 :skolemid |50|
)))))
 :qid |monodefaultz3bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_1349) (v2@@4 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@4 v2@@4)  (and (= (|l#Vec_1349| v1@@4) (|l#Vec_1349| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7568 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@4) i@@20)))
 :qid |monodefaultz3bpl.1520:13|
 :skolemid |52|
))))
 :qid |monodefaultz3bpl.1518:29|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u64''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7568 v@@14 i@@21) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@14) i@@21)))
 :qid |monodefaultz3bpl.1526:13|
 :skolemid |54|
))))
 :qid |monodefaultz3bpl.1524:29|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_1349) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7568 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@23) e@@4))
 :qid |monodefaultz3bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7568 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) j@@4) e@@4)))
 :qid |monodefaultz3bpl.1539:17|
 :skolemid |57|
)))))
 :qid |monodefaultz3bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_1349) (v2@@5 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_1349| v1@@5) (|l#Vec_1349| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_7568 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@5) i@@24)))
 :qid |monodefaultz3bpl.1701:13|
 :skolemid |59|
))))
 :qid |monodefaultz3bpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_7568 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@16) i@@25)))
 :qid |monodefaultz3bpl.1707:13|
 :skolemid |61|
))))
 :qid |monodefaultz3bpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_1349) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_7568 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@27) e@@5))
 :qid |monodefaultz3bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_7568 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) j@@5) e@@5)))
 :qid |monodefaultz3bpl.1720:17|
 :skolemid |64|
)))))
 :qid |monodefaultz3bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_1349) (v2@@6 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |monodefaultz3bpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_1349) (v2@@7 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |monodefaultz3bpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |monodefaultz3bpl.1956:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |monodefaultz3bpl.1959:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@8 |T@#0|) (v2@@8 |T@#0|) ) (! (= (= v1@@8 v2@@8) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8)))
 :qid |monodefaultz3bpl.1986:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_1349| r@@0) 0)))
 :qid |monodefaultz3bpl.1991:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@9 Int) (v2@@9 Int) ) (! (= (= v1@@9 v2@@9) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9)))
 :qid |monodefaultz3bpl.2013:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (|l#Vec_1349| r@@1) 0)))
 :qid |monodefaultz3bpl.2018:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (|l#Vec_1349| r@@2) $serialized_address_len))
 :qid |monodefaultz3bpl.2032:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18130| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream) v@@21) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |monodefaultz3bpl.2135:69|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@10 T@$42_TestMonomorphization_E) (v2@@10 T@$42_TestMonomorphization_E) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10)))
 :qid |monodefaultz3bpl.2141:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10))
)))
(assert (forall ((s T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s)))
 :qid |monodefaultz3bpl.2205:47|
 :skolemid |79|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s))
)))
(assert (forall ((s@@0 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0)  (and true true))
 :qid |monodefaultz3bpl.2221:53|
 :skolemid |80|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@1)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@1))))
 :qid |monodefaultz3bpl.2239:52|
 :skolemid |81|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@2)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@2)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@2))))
 :qid |monodefaultz3bpl.2257:56|
 :skolemid |82|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3)  (and true true))
 :qid |monodefaultz3bpl.2275:51|
 :skolemid |83|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3))
)))
(assert (forall ((v@@22 T@Vec_19114) (i@@28 Int) ) (! (= (InRangeVec_15148 v@@22 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_19114| v@@22))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15148 v@@22 i@@28))
)))
(assert (forall ((v@@23 T@Vec_21870) (i@@29 Int) ) (! (= (InRangeVec_15349 v@@23 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_21870| v@@23))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15349 v@@23 i@@29))
)))
(assert (forall ((v@@24 T@Vec_24551) (i@@30 Int) ) (! (= (InRangeVec_24660 v@@24 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_24551| v@@24))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_24660 v@@24 i@@30))
)))
(assert (forall ((v@@25 T@Vec_6459) (i@@31 Int) ) (! (= (InRangeVec_6459 v@@25 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_6459| v@@25))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6459 v@@25 i@@31))
)))
(assert (forall ((v@@26 T@Vec_1349) (i@@32 Int) ) (! (= (InRangeVec_7568 v@@26 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_1349| v@@26))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7568 v@@26 i@@32))
)))
(assert (forall ((v@@27 T@Vec_19114) (e@@6 |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@33 (IndexOfVec_19114 v@@27 e@@6)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_15148 v@@27 i@@34) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@34) e@@6))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_15148 v@@27 i@@33) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@33) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@33)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) j@@6) e@@6)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19114 v@@27 e@@6))
)))
(assert (forall ((v@@28 T@Vec_1349) (e@@7 Int) ) (! (let ((i@@35 (IndexOfVec_1349 v@@28 e@@7)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_7568 v@@28 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@36) e@@7))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_7568 v@@28 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@35) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@35)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) j@@7) e@@7)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_21870) (e@@8 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@37 (IndexOfVec_21870 v@@29 e@@8)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_15349 v@@29 i@@38) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@38) e@@8))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_15349 v@@29 i@@37) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@37) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@37)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) j@@8) e@@8)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21870 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_24551) (e@@9 T@Vec_1349) ) (! (let ((i@@39 (IndexOfVec_24551 v@@30 e@@9)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_24660 v@@30 i@@40) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@40) e@@9))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_24660 v@@30 i@@39) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@39) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@39)) (not (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) j@@9) e@@9)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_24551 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_6459) (e@@10 Bool) ) (! (let ((i@@41 (IndexOfVec_6459 v@@31 e@@10)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_6459 v@@31 i@@42) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@42) e@@10))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_6459 v@@31 i@@41) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@41) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@41)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) j@@10) e@@10)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6459 v@@31 e@@10))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |monodefaultz3bpl.275:54|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18130|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18130|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))))
(Multiset_18130 (|lambda#18| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0)) (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |monodefaultz3bpl.2104:13|
 :skolemid |88|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5| Int) (|l#6| |T@$42_TestMonomorphization_R'address'|) (i@@44 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44) (ite  (and (>= i@@44 |l#0@@1|) (< i@@44 |l#1@@0|)) (ite (< i@@44 |l#2|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3| i@@44) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4| (- i@@44 |l#5|))) |l#6|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@$42_TestMonomorphization_R'address'|) (i@@45 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45) (ite  (and (<= |l#0@@2| i@@45) (< i@@45 |l#1@@1|)) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#2@@0| (- (- |l#3@@0| i@@45) |l#4@@0|)) |l#5@@0|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |90|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5@@1| Int) (|l#6@@0| |T@$42_TestMonomorphization_R'address'|) (j@@11 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11) (ite  (and (>= j@@11 |l#0@@3|) (< j@@11 |l#1@@2|)) (ite (< j@@11 |l#2@@1|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3@@1| j@@11) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4@@1| (+ j@@11 |l#5@@1|))) |l#6@@0|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |91|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@2| Int) (|l#6@@1| |T@$42_TestMonomorphization_R'u64'|) (i@@46 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46) (ite  (and (>= i@@46 |l#0@@4|) (< i@@46 |l#1@@3|)) (ite (< i@@46 |l#2@@2|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@2| i@@46) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@2| (- i@@46 |l#5@@2|))) |l#6@@1|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |92|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| |T@$42_TestMonomorphization_R'u64'|) (i@@47 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47) (ite  (and (<= |l#0@@5| i@@47) (< i@@47 |l#1@@4|)) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#2@@3| (- (- |l#3@@3| i@@47) |l#4@@3|)) |l#5@@3|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |93|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@4| Int) (|l#6@@2| |T@$42_TestMonomorphization_R'u64'|) (j@@12 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12) (ite  (and (>= j@@12 |l#0@@6|) (< j@@12 |l#1@@5|)) (ite (< j@@12 |l#2@@4|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@4| j@@12) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@4| (+ j@@12 |l#5@@4|))) |l#6@@2|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Vec_1349|) (|l#4@@5| |T@[Int]Vec_1349|) (|l#5@@5| Int) (|l#6@@3| T@Vec_1349) (i@@48 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48) (ite  (and (>= i@@48 |l#0@@7|) (< i@@48 |l#1@@6|)) (ite (< i@@48 |l#2@@5|) (|Select__T@[Int]Vec_1349_| |l#3@@5| i@@48) (|Select__T@[Int]Vec_1349_| |l#4@@5| (- i@@48 |l#5@@5|))) |l#6@@3|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Vec_1349|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@Vec_1349) (i@@49 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49) (ite  (and (<= |l#0@@8| i@@49) (< i@@49 |l#1@@7|)) (|Select__T@[Int]Vec_1349_| |l#2@@6| (- (- |l#3@@6| i@@49) |l#4@@6|)) |l#5@@6|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Vec_1349|) (|l#4@@7| |T@[Int]Vec_1349|) (|l#5@@7| Int) (|l#6@@4| T@Vec_1349) (j@@13 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13) (ite  (and (>= j@@13 |l#0@@9|) (< j@@13 |l#1@@8|)) (ite (< j@@13 |l#2@@7|) (|Select__T@[Int]Vec_1349_| |l#3@@7| j@@13) (|Select__T@[Int]Vec_1349_| |l#4@@7| (+ j@@13 |l#5@@7|))) |l#6@@4|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Bool|) (|l#4@@8| |T@[Int]Bool|) (|l#5@@8| Int) (|l#6@@5| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50) (ite  (and (>= i@@50 |l#0@@10|) (< i@@50 |l#1@@9|)) (ite (< i@@50 |l#2@@8|) (|Select__T@[Int]Bool_| |l#3@@8| i@@50) (|Select__T@[Int]Bool_| |l#4@@8| (- i@@50 |l#5@@8|))) |l#6@@5|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Bool|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Bool) (i@@51 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51) (ite  (and (<= |l#0@@11| i@@51) (< i@@51 |l#1@@10|)) (|Select__T@[Int]Bool_| |l#2@@9| (- (- |l#3@@9| i@@51) |l#4@@9|)) |l#5@@9|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Bool|) (|l#4@@10| |T@[Int]Bool|) (|l#5@@10| Int) (|l#6@@6| Bool) (j@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14) (ite  (and (>= j@@14 |l#0@@12|) (< j@@14 |l#1@@11|)) (ite (< j@@14 |l#2@@10|) (|Select__T@[Int]Bool_| |l#3@@10| j@@14) (|Select__T@[Int]Bool_| |l#4@@10| (+ j@@14 |l#5@@10|))) |l#6@@6|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@52 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52) (ite  (and (>= i@@52 |l#0@@13|) (< i@@52 |l#1@@12|)) (ite (< i@@52 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@52) (|Select__T@[Int]Int_| |l#4@@11| (- i@@52 |l#5@@11|))) |l#6@@7|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@53 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53) (ite  (and (<= |l#0@@14| i@@53) (< i@@53 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@53) |l#4@@12|)) |l#5@@12|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@15 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15) (ite  (and (>= j@@15 |l#0@@15|) (< j@@15 |l#1@@14|)) (ite (< j@@15 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@15) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@15 |l#5@@13|))) |l#6@@8|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |103|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@32) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@32)))
 :qid |monodefaultz3bpl.154:29|
 :skolemid |104|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () T@Vec_19114)
(declare-fun |inline$$1_Vector_push_back'$42_TestMonomorphization_R'address''$0$m'@1| () T@$Mutation_19757)
(declare-fun $t1@0 () T@$Mutation_19757)
(declare-fun |Store__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestMonomorphization_R'address'|) ( ?x1 Int) ( ?x2 |T@$42_TestMonomorphization_R'address'|)) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|Store__T@[Int]$42_TestMonomorphization_R'address'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestMonomorphization_R'address'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$42_TestMonomorphization_R'address'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|Store__T@[Int]$42_TestMonomorphization_R'address'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@0 () |T@$42_TestMonomorphization_R'address'|)
(declare-fun _$t0 () T@Vec_19114)
(declare-fun MapConstVec_7797 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_7797 () Int)
(declare-fun $es () T@$EventStore)
(declare-fun $t1 () T@$Mutation_19757)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_vec_struct_addr$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 49635) (let ((anon4_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_19757| |inline$$1_Vector_push_back'$42_TestMonomorphization_R'address''$0$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 44210) (- 0 49810)))) (not (= (|$x#$42_TestMonomorphization_R'address'| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| $t0@0) 0)) 1)))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_push_back'$42_TestMonomorphization_R'address''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$42_TestMonomorphization_R'address''$0$m'@1| ($Mutation_19757 (|l#$Mutation_19757| $t1@0) (|p#$Mutation_19757| $t1@0) (let ((l (|l#Vec_19114| (|v#$Mutation_19757| $t1@0))))
(Vec_19114 (|Store__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| (|v#$Mutation_19757| $t1@0)) l $t4@0) (+ l 1))))) (and (=> (= (ControlFlow 0 44166) 44228) anon4_Then_correct) (=> (= (ControlFlow 0 44166) 44210) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'$42_TestMonomorphization_R'address'''| _$t0) (=> (and (= _$t0 _$t0) (= $t1@0 ($Mutation_19757 ($Local 0) (Vec_1349 (MapConstVec_7797 DefaultVecElem_7797) 0) _$t0))) (=> (and (and (|$IsValid'address'| 1) (|$IsValid'address'| 2)) (and (= $t4@0 (|$42_TestMonomorphization_R'address'| 1 2)) (= (ControlFlow 0 44172) 44166))) |inline$$1_Vector_push_back'$42_TestMonomorphization_R'address''$0$anon0_correct|)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_18130| stream@@0) 0) (forall ((v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) v@@33) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
))) (= (ControlFlow 0 44061) 44172)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (|l#Vec_1349| (|p#$Mutation_19757| $t1)) 0) (= (ControlFlow 0 44071) 44061)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 49635) 44071) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 49635)))
(get-value ((ControlFlow 0 44071)))
(get-value ((ControlFlow 0 44061)))
(get-value ((ControlFlow 0 44172)))
(get-value ((ControlFlow 0 44166)))
(get-value ((ControlFlow 0 44210)))
(assert (not (= (ControlFlow 0 44210) (- 49810))))
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
(declare-datatypes ((T@$Memory_35237 0)) ((($Memory_35237 (|domain#$Memory_35237| |T@[Int]Bool|) (|contents#$Memory_35237| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@Vec_6459 0)) (((Vec_6459 (|v#Vec_6459| |T@[Int]Bool|) (|l#Vec_6459| Int) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Vec_1349| 0)
(declare-datatypes ((T@Vec_24551 0)) (((Vec_24551 (|v#Vec_24551| |T@[Int]Vec_1349|) (|l#Vec_24551| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_36699 0)) ((($Memory_36699 (|domain#$Memory_36699| |T@[Int]Bool|) (|contents#$Memory_36699| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_36568 0)) ((($Memory_36568 (|domain#$Memory_36568| |T@[Int]Bool|) (|contents#$Memory_36568| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@Vec_19114 0)) (((Vec_19114 (|v#Vec_19114| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#Vec_19114| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_36460 0)) ((($Memory_36460 (|domain#$Memory_36460| |T@[Int]Bool|) (|contents#$Memory_36460| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@Vec_21870 0)) (((Vec_21870 (|v#Vec_21870| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#Vec_21870| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_36352 0)) ((($Memory_36352 (|domain#$Memory_36352| |T@[Int]Bool|) (|contents#$Memory_36352| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18130 0)) (((Multiset_18130 (|v#Multiset_18130| |T@[$EventRep]Int|) (|l#Multiset_18130| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_18130| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18130|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37461 0)) ((($Mutation_37461 (|l#$Mutation_37461| T@$Location) (|p#$Mutation_37461| T@Vec_1349) (|v#$Mutation_37461| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_35865 0)) ((($Mutation_35865 (|l#$Mutation_35865| T@$Location) (|p#$Mutation_35865| T@Vec_1349) (|v#$Mutation_35865| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8192 0)) ((($Mutation_8192 (|l#$Mutation_8192| T@$Location) (|p#$Mutation_8192| T@Vec_1349) (|v#$Mutation_8192| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7083 0)) ((($Mutation_7083 (|l#$Mutation_7083| T@$Location) (|p#$Mutation_7083| T@Vec_1349) (|v#$Mutation_7083| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_28067 0)) ((($Mutation_28067 (|l#$Mutation_28067| T@$Location) (|p#$Mutation_28067| T@Vec_1349) (|v#$Mutation_28067| T@Vec_6459) ) ) ))
(declare-datatypes ((T@$Mutation_26329 0)) ((($Mutation_26329 (|l#$Mutation_26329| T@$Location) (|p#$Mutation_26329| T@Vec_1349) (|v#$Mutation_26329| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_25241 0)) ((($Mutation_25241 (|l#$Mutation_25241| T@$Location) (|p#$Mutation_25241| T@Vec_1349) (|v#$Mutation_25241| T@Vec_24551) ) ) ))
(declare-datatypes ((T@$Mutation_23500 0)) ((($Mutation_23500 (|l#$Mutation_23500| T@$Location) (|p#$Mutation_23500| T@Vec_1349) (|v#$Mutation_23500| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_22513 0)) ((($Mutation_22513 (|l#$Mutation_22513| T@$Location) (|p#$Mutation_22513| T@Vec_1349) (|v#$Mutation_22513| T@Vec_21870) ) ) ))
(declare-datatypes ((T@$Mutation_20772 0)) ((($Mutation_20772 (|l#$Mutation_20772| T@$Location) (|p#$Mutation_20772| T@Vec_1349) (|v#$Mutation_20772| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19757 0)) ((($Mutation_19757 (|l#$Mutation_19757| T@$Location) (|p#$Mutation_19757| T@Vec_1349) (|v#$Mutation_19757| T@Vec_19114) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114 T@Vec_19114) Bool)
(declare-fun InRangeVec_15148 (T@Vec_19114 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int) |T@$42_TestMonomorphization_R'address'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870 T@Vec_21870) Bool)
(declare-fun InRangeVec_15349 (T@Vec_21870 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsEqual'vec'vec'u64'''| (T@Vec_24551 T@Vec_24551) Bool)
(declare-fun InRangeVec_24660 (T@Vec_24551 Int) Bool)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |Select__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int) T@Vec_1349)
(declare-fun |$IsValid'vec'vec'u64'''| (T@Vec_24551) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'vec'u64''| (T@Vec_24551 T@Vec_1349) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_6459 T@Vec_6459) Bool)
(declare-fun InRangeVec_6459 (T@Vec_6459 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_6459) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_6459 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_7568 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_1349 Int) Int)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) T@Vec_1349)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_1349)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle) T@Multiset_18130)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun IndexOfVec_19114 (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun IndexOfVec_21870 (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun IndexOfVec_24551 (T@Vec_24551 T@Vec_1349) Int)
(declare-fun IndexOfVec_6459 (T@Vec_6459 Bool) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18130| |T@[$1_Event_EventHandle]Multiset_18130|) |T@[$1_Event_EventHandle]Multiset_18130|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#4| (Int Int |T@[Int]$42_TestMonomorphization_R'address'| Int Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#7| (Int Int |T@[Int]$42_TestMonomorphization_R'u64'| Int Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#10| (Int Int |T@[Int]Vec_1349| Int Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#13| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |monodefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |monodefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |monodefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |monodefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |monodefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |monodefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_19114) (v2 T@Vec_19114) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2)  (and (= (|l#Vec_19114| v1) (|l#Vec_19114| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_15148 v1 i@@0) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v1) i@@0) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v2) i@@0)))
 :qid |monodefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |monodefaultz3bpl.613:61|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_19114) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_19114| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_15148 v@@4 i@@1) (|$IsValid'$42_TestMonomorphization_R'address''| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@4) i@@1)))
 :qid |monodefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |monodefaultz3bpl.619:61|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_19114) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_15148 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@3) e))
 :qid |monodefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_15148 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) j) e)))
 :qid |monodefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |monodefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_21870) (v2@@0 T@Vec_21870) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0)  (and (= (|l#Vec_21870| v1@@0) (|l#Vec_21870| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_15349 v1@@0 i@@4) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v1@@0) i@@4) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v2@@0) i@@4)))
 :qid |monodefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |monodefaultz3bpl.794:57|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_21870) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_21870| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_15349 v@@6 i@@5) (|$IsValid'$42_TestMonomorphization_R'u64''| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@6) i@@5)))
 :qid |monodefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |monodefaultz3bpl.800:57|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_21870) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@6 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_15349 v@@7 i@@7)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@7) e@@0))
 :qid |monodefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_15349 v@@7 i@@6)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) j@@0) e@@0)))
 :qid |monodefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |monodefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_24551) (v2@@1 T@Vec_24551) ) (! (= (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1)  (and (= (|l#Vec_24551| v1@@1) (|l#Vec_24551| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_24660 v1@@1 i@@8) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v1@@1) i@@8) (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v2@@1) i@@8)))
 :qid |monodefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |monodefaultz3bpl.975:34|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_24551) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_24551| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_24660 v@@8 i@@9) (|$IsValid'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@8) i@@9)))
 :qid |monodefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |monodefaultz3bpl.981:34|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_24551) (e@@1 T@Vec_1349) ) (! (let ((i@@10 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_24660 v@@9 i@@11)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@11) e@@1))
 :qid |monodefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_24660 v@@9 i@@10)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) j@@1) e@@1)))
 :qid |monodefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |monodefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6459) (v2@@2 T@Vec_6459) ) (! (= (|$IsEqual'vec'bool''| v1@@2 v2@@2)  (and (= (|l#Vec_6459| v1@@2) (|l#Vec_6459| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6459 v1@@2 i@@12) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v1@@2) i@@12) (|Select__T@[Int]Bool_| (|v#Vec_6459| v2@@2) i@@12)))
 :qid |monodefaultz3bpl.1158:13|
 :skolemid |38|
))))
 :qid |monodefaultz3bpl.1156:30|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'bool''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_6459) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_6459| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6459 v@@10 i@@13) true)
 :qid |monodefaultz3bpl.1164:13|
 :skolemid |40|
))))
 :qid |monodefaultz3bpl.1162:30|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_6459) (e@@2 Bool) ) (! (let ((i@@14 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6459 v@@11 i@@15)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@15) e@@2))
 :qid |monodefaultz3bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6459 v@@11 i@@14)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) j@@2) e@@2)))
 :qid |monodefaultz3bpl.1177:17|
 :skolemid |43|
)))))
 :qid |monodefaultz3bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_1349| v1@@3) (|l#Vec_1349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7568 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@3) i@@16)))
 :qid |monodefaultz3bpl.1339:13|
 :skolemid |45|
))))
 :qid |monodefaultz3bpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_1349) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7568 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@12) i@@17)))
 :qid |monodefaultz3bpl.1345:13|
 :skolemid |47|
))))
 :qid |monodefaultz3bpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7568 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@19) e@@3))
 :qid |monodefaultz3bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7568 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |monodefaultz3bpl.1358:17|
 :skolemid |50|
)))))
 :qid |monodefaultz3bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_1349) (v2@@4 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@4 v2@@4)  (and (= (|l#Vec_1349| v1@@4) (|l#Vec_1349| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7568 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@4) i@@20)))
 :qid |monodefaultz3bpl.1520:13|
 :skolemid |52|
))))
 :qid |monodefaultz3bpl.1518:29|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u64''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7568 v@@14 i@@21) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@14) i@@21)))
 :qid |monodefaultz3bpl.1526:13|
 :skolemid |54|
))))
 :qid |monodefaultz3bpl.1524:29|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_1349) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7568 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@23) e@@4))
 :qid |monodefaultz3bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7568 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) j@@4) e@@4)))
 :qid |monodefaultz3bpl.1539:17|
 :skolemid |57|
)))))
 :qid |monodefaultz3bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_1349) (v2@@5 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_1349| v1@@5) (|l#Vec_1349| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_7568 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@5) i@@24)))
 :qid |monodefaultz3bpl.1701:13|
 :skolemid |59|
))))
 :qid |monodefaultz3bpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_7568 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@16) i@@25)))
 :qid |monodefaultz3bpl.1707:13|
 :skolemid |61|
))))
 :qid |monodefaultz3bpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_1349) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_7568 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@27) e@@5))
 :qid |monodefaultz3bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_7568 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) j@@5) e@@5)))
 :qid |monodefaultz3bpl.1720:17|
 :skolemid |64|
)))))
 :qid |monodefaultz3bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_1349) (v2@@6 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |monodefaultz3bpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_1349) (v2@@7 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |monodefaultz3bpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |monodefaultz3bpl.1956:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |monodefaultz3bpl.1959:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@8 |T@#0|) (v2@@8 |T@#0|) ) (! (= (= v1@@8 v2@@8) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8)))
 :qid |monodefaultz3bpl.1986:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_1349| r@@0) 0)))
 :qid |monodefaultz3bpl.1991:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@9 Int) (v2@@9 Int) ) (! (= (= v1@@9 v2@@9) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9)))
 :qid |monodefaultz3bpl.2013:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (|l#Vec_1349| r@@1) 0)))
 :qid |monodefaultz3bpl.2018:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (|l#Vec_1349| r@@2) $serialized_address_len))
 :qid |monodefaultz3bpl.2032:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18130| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream) v@@21) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |monodefaultz3bpl.2135:69|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@10 T@$42_TestMonomorphization_E) (v2@@10 T@$42_TestMonomorphization_E) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10)))
 :qid |monodefaultz3bpl.2141:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10))
)))
(assert (forall ((s T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s)))
 :qid |monodefaultz3bpl.2205:47|
 :skolemid |79|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s))
)))
(assert (forall ((s@@0 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0)  (and true true))
 :qid |monodefaultz3bpl.2221:53|
 :skolemid |80|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@1)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@1))))
 :qid |monodefaultz3bpl.2239:52|
 :skolemid |81|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@2)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@2)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@2))))
 :qid |monodefaultz3bpl.2257:56|
 :skolemid |82|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3)  (and true true))
 :qid |monodefaultz3bpl.2275:51|
 :skolemid |83|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3))
)))
(assert (forall ((v@@22 T@Vec_19114) (i@@28 Int) ) (! (= (InRangeVec_15148 v@@22 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_19114| v@@22))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15148 v@@22 i@@28))
)))
(assert (forall ((v@@23 T@Vec_21870) (i@@29 Int) ) (! (= (InRangeVec_15349 v@@23 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_21870| v@@23))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15349 v@@23 i@@29))
)))
(assert (forall ((v@@24 T@Vec_24551) (i@@30 Int) ) (! (= (InRangeVec_24660 v@@24 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_24551| v@@24))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_24660 v@@24 i@@30))
)))
(assert (forall ((v@@25 T@Vec_6459) (i@@31 Int) ) (! (= (InRangeVec_6459 v@@25 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_6459| v@@25))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6459 v@@25 i@@31))
)))
(assert (forall ((v@@26 T@Vec_1349) (i@@32 Int) ) (! (= (InRangeVec_7568 v@@26 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_1349| v@@26))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7568 v@@26 i@@32))
)))
(assert (forall ((v@@27 T@Vec_19114) (e@@6 |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@33 (IndexOfVec_19114 v@@27 e@@6)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_15148 v@@27 i@@34) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@34) e@@6))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_15148 v@@27 i@@33) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@33) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@33)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) j@@6) e@@6)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19114 v@@27 e@@6))
)))
(assert (forall ((v@@28 T@Vec_1349) (e@@7 Int) ) (! (let ((i@@35 (IndexOfVec_1349 v@@28 e@@7)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_7568 v@@28 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@36) e@@7))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_7568 v@@28 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@35) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@35)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) j@@7) e@@7)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_21870) (e@@8 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@37 (IndexOfVec_21870 v@@29 e@@8)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_15349 v@@29 i@@38) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@38) e@@8))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_15349 v@@29 i@@37) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@37) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@37)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) j@@8) e@@8)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21870 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_24551) (e@@9 T@Vec_1349) ) (! (let ((i@@39 (IndexOfVec_24551 v@@30 e@@9)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_24660 v@@30 i@@40) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@40) e@@9))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_24660 v@@30 i@@39) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@39) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@39)) (not (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) j@@9) e@@9)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_24551 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_6459) (e@@10 Bool) ) (! (let ((i@@41 (IndexOfVec_6459 v@@31 e@@10)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_6459 v@@31 i@@42) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@42) e@@10))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_6459 v@@31 i@@41) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@41) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@41)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) j@@10) e@@10)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6459 v@@31 e@@10))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |monodefaultz3bpl.275:54|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18130|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18130|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))))
(Multiset_18130 (|lambda#18| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0)) (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |monodefaultz3bpl.2104:13|
 :skolemid |88|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5| Int) (|l#6| |T@$42_TestMonomorphization_R'address'|) (i@@44 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44) (ite  (and (>= i@@44 |l#0@@1|) (< i@@44 |l#1@@0|)) (ite (< i@@44 |l#2|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3| i@@44) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4| (- i@@44 |l#5|))) |l#6|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@$42_TestMonomorphization_R'address'|) (i@@45 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45) (ite  (and (<= |l#0@@2| i@@45) (< i@@45 |l#1@@1|)) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#2@@0| (- (- |l#3@@0| i@@45) |l#4@@0|)) |l#5@@0|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |90|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5@@1| Int) (|l#6@@0| |T@$42_TestMonomorphization_R'address'|) (j@@11 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11) (ite  (and (>= j@@11 |l#0@@3|) (< j@@11 |l#1@@2|)) (ite (< j@@11 |l#2@@1|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3@@1| j@@11) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4@@1| (+ j@@11 |l#5@@1|))) |l#6@@0|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |91|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@2| Int) (|l#6@@1| |T@$42_TestMonomorphization_R'u64'|) (i@@46 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46) (ite  (and (>= i@@46 |l#0@@4|) (< i@@46 |l#1@@3|)) (ite (< i@@46 |l#2@@2|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@2| i@@46) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@2| (- i@@46 |l#5@@2|))) |l#6@@1|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |92|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| |T@$42_TestMonomorphization_R'u64'|) (i@@47 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47) (ite  (and (<= |l#0@@5| i@@47) (< i@@47 |l#1@@4|)) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#2@@3| (- (- |l#3@@3| i@@47) |l#4@@3|)) |l#5@@3|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |93|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@4| Int) (|l#6@@2| |T@$42_TestMonomorphization_R'u64'|) (j@@12 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12) (ite  (and (>= j@@12 |l#0@@6|) (< j@@12 |l#1@@5|)) (ite (< j@@12 |l#2@@4|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@4| j@@12) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@4| (+ j@@12 |l#5@@4|))) |l#6@@2|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Vec_1349|) (|l#4@@5| |T@[Int]Vec_1349|) (|l#5@@5| Int) (|l#6@@3| T@Vec_1349) (i@@48 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48) (ite  (and (>= i@@48 |l#0@@7|) (< i@@48 |l#1@@6|)) (ite (< i@@48 |l#2@@5|) (|Select__T@[Int]Vec_1349_| |l#3@@5| i@@48) (|Select__T@[Int]Vec_1349_| |l#4@@5| (- i@@48 |l#5@@5|))) |l#6@@3|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Vec_1349|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@Vec_1349) (i@@49 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49) (ite  (and (<= |l#0@@8| i@@49) (< i@@49 |l#1@@7|)) (|Select__T@[Int]Vec_1349_| |l#2@@6| (- (- |l#3@@6| i@@49) |l#4@@6|)) |l#5@@6|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Vec_1349|) (|l#4@@7| |T@[Int]Vec_1349|) (|l#5@@7| Int) (|l#6@@4| T@Vec_1349) (j@@13 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13) (ite  (and (>= j@@13 |l#0@@9|) (< j@@13 |l#1@@8|)) (ite (< j@@13 |l#2@@7|) (|Select__T@[Int]Vec_1349_| |l#3@@7| j@@13) (|Select__T@[Int]Vec_1349_| |l#4@@7| (+ j@@13 |l#5@@7|))) |l#6@@4|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Bool|) (|l#4@@8| |T@[Int]Bool|) (|l#5@@8| Int) (|l#6@@5| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50) (ite  (and (>= i@@50 |l#0@@10|) (< i@@50 |l#1@@9|)) (ite (< i@@50 |l#2@@8|) (|Select__T@[Int]Bool_| |l#3@@8| i@@50) (|Select__T@[Int]Bool_| |l#4@@8| (- i@@50 |l#5@@8|))) |l#6@@5|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Bool|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Bool) (i@@51 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51) (ite  (and (<= |l#0@@11| i@@51) (< i@@51 |l#1@@10|)) (|Select__T@[Int]Bool_| |l#2@@9| (- (- |l#3@@9| i@@51) |l#4@@9|)) |l#5@@9|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Bool|) (|l#4@@10| |T@[Int]Bool|) (|l#5@@10| Int) (|l#6@@6| Bool) (j@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14) (ite  (and (>= j@@14 |l#0@@12|) (< j@@14 |l#1@@11|)) (ite (< j@@14 |l#2@@10|) (|Select__T@[Int]Bool_| |l#3@@10| j@@14) (|Select__T@[Int]Bool_| |l#4@@10| (+ j@@14 |l#5@@10|))) |l#6@@6|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@52 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52) (ite  (and (>= i@@52 |l#0@@13|) (< i@@52 |l#1@@12|)) (ite (< i@@52 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@52) (|Select__T@[Int]Int_| |l#4@@11| (- i@@52 |l#5@@11|))) |l#6@@7|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@53 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53) (ite  (and (<= |l#0@@14| i@@53) (< i@@53 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@53) |l#4@@12|)) |l#5@@12|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@15 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15) (ite  (and (>= j@@15 |l#0@@15|) (< j@@15 |l#1@@14|)) (ite (< j@@15 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@15) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@15 |l#5@@13|))) |l#6@@8|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |103|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@32) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@32)))
 :qid |monodefaultz3bpl.154:29|
 :skolemid |104|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () T@Vec_21870)
(declare-fun |inline$$1_Vector_push_back'$42_TestMonomorphization_R'u64''$0$m'@1| () T@$Mutation_22513)
(declare-fun $t1@0 () T@$Mutation_22513)
(declare-fun |Store__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestMonomorphization_R'u64'|) ( ?x1 Int) ( ?x2 |T@$42_TestMonomorphization_R'u64'|)) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|Store__T@[Int]$42_TestMonomorphization_R'u64'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestMonomorphization_R'u64'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$42_TestMonomorphization_R'u64'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|Store__T@[Int]$42_TestMonomorphization_R'u64'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@0 () |T@$42_TestMonomorphization_R'u64'|)
(declare-fun _$t0 () T@Vec_21870)
(declare-fun MapConstVec_7797 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_7797 () Int)
(declare-fun $es () T@$EventStore)
(declare-fun $t1 () T@$Mutation_22513)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_vec_struct_int$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 49835) (let ((anon4_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_22513| |inline$$1_Vector_push_back'$42_TestMonomorphization_R'u64''$0$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 44477) (- 0 50010)))) (not (= (|$x#$42_TestMonomorphization_R'u64'| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| $t0@0) 0)) 1)))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_push_back'$42_TestMonomorphization_R'u64''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$42_TestMonomorphization_R'u64''$0$m'@1| ($Mutation_22513 (|l#$Mutation_22513| $t1@0) (|p#$Mutation_22513| $t1@0) (let ((l (|l#Vec_21870| (|v#$Mutation_22513| $t1@0))))
(Vec_21870 (|Store__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| (|v#$Mutation_22513| $t1@0)) l $t4@0) (+ l 1))))) (and (=> (= (ControlFlow 0 44433) 44495) anon4_Then_correct) (=> (= (ControlFlow 0 44433) 44477) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| _$t0) (=> (and (= _$t0 _$t0) (= $t1@0 ($Mutation_22513 ($Local 0) (Vec_1349 (MapConstVec_7797 DefaultVecElem_7797) 0) _$t0))) (=> (and (and (|$IsValid'u64'| 1) (|$IsValid'u64'| 1)) (and (= $t4@0 (|$42_TestMonomorphization_R'u64'| 1 1)) (= (ControlFlow 0 44439) 44433))) |inline$$1_Vector_push_back'$42_TestMonomorphization_R'u64''$0$anon0_correct|)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_18130| stream@@0) 0) (forall ((v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) v@@33) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
))) (= (ControlFlow 0 44328) 44439)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (|l#Vec_1349| (|p#$Mutation_22513| $t1)) 0) (= (ControlFlow 0 44338) 44328)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 49835) 44338) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 49835)))
(get-value ((ControlFlow 0 44338)))
(get-value ((ControlFlow 0 44328)))
(get-value ((ControlFlow 0 44439)))
(get-value ((ControlFlow 0 44433)))
(get-value ((ControlFlow 0 44477)))
(assert (not (= (ControlFlow 0 44477) (- 50010))))
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
(declare-datatypes ((T@$Memory_35237 0)) ((($Memory_35237 (|domain#$Memory_35237| |T@[Int]Bool|) (|contents#$Memory_35237| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@Vec_6459 0)) (((Vec_6459 (|v#Vec_6459| |T@[Int]Bool|) (|l#Vec_6459| Int) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Vec_1349| 0)
(declare-datatypes ((T@Vec_24551 0)) (((Vec_24551 (|v#Vec_24551| |T@[Int]Vec_1349|) (|l#Vec_24551| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestMonomorphization_R'#0'| 0)) (((|$42_TestMonomorphization_R'#0'| (|$x#$42_TestMonomorphization_R'#0'| |T@#0|) (|$y#$42_TestMonomorphization_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'#0'| 0)
(declare-datatypes ((T@$Memory_36699 0)) ((($Memory_36699 (|domain#$Memory_36699| |T@[Int]Bool|) (|contents#$Memory_36699| |T@[Int]$42_TestMonomorphization_R'#0'|) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'address'| 0)) (((|$42_TestMonomorphization_R'address'| (|$x#$42_TestMonomorphization_R'address'| Int) (|$y#$42_TestMonomorphization_R'address'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'address'| 0)
(declare-datatypes ((T@$Memory_36568 0)) ((($Memory_36568 (|domain#$Memory_36568| |T@[Int]Bool|) (|contents#$Memory_36568| |T@[Int]$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@Vec_19114 0)) (((Vec_19114 (|v#Vec_19114| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#Vec_19114| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'u64'| 0)) (((|$42_TestMonomorphization_R'u64'| (|$x#$42_TestMonomorphization_R'u64'| Int) (|$y#$42_TestMonomorphization_R'u64'| Int) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'u64'| 0)
(declare-datatypes ((T@$Memory_36460 0)) ((($Memory_36460 (|domain#$Memory_36460| |T@[Int]Bool|) (|contents#$Memory_36460| |T@[Int]$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@Vec_21870 0)) (((Vec_21870 (|v#Vec_21870| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#Vec_21870| Int) ) ) ))
(declare-datatypes ((|T@$42_TestMonomorphization_R'bool'| 0)) (((|$42_TestMonomorphization_R'bool'| (|$x#$42_TestMonomorphization_R'bool'| Bool) (|$y#$42_TestMonomorphization_R'bool'| Bool) ) ) ))
(declare-sort |T@[Int]$42_TestMonomorphization_R'bool'| 0)
(declare-datatypes ((T@$Memory_36352 0)) ((($Memory_36352 (|domain#$Memory_36352| |T@[Int]Bool|) (|contents#$Memory_36352| |T@[Int]$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$42_TestMonomorphization_E 0)) ((($42_TestMonomorphization_E (|$msg#$42_TestMonomorphization_E| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$42_TestMonomorphization_E'| (|e#$ToEventRep'$42_TestMonomorphization_E'| T@$42_TestMonomorphization_E) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18130 0)) (((Multiset_18130 (|v#Multiset_18130| |T@[$EventRep]Int|) (|l#Multiset_18130| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-sort |T@[$1_Event_EventHandle]Multiset_18130| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18130|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_37461 0)) ((($Mutation_37461 (|l#$Mutation_37461| T@$Location) (|p#$Mutation_37461| T@Vec_1349) (|v#$Mutation_37461| |T@$42_TestMonomorphization_R'bool'|) ) ) ))
(declare-datatypes ((T@$Mutation_35865 0)) ((($Mutation_35865 (|l#$Mutation_35865| T@$Location) (|p#$Mutation_35865| T@Vec_1349) (|v#$Mutation_35865| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8192 0)) ((($Mutation_8192 (|l#$Mutation_8192| T@$Location) (|p#$Mutation_8192| T@Vec_1349) (|v#$Mutation_8192| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7083 0)) ((($Mutation_7083 (|l#$Mutation_7083| T@$Location) (|p#$Mutation_7083| T@Vec_1349) (|v#$Mutation_7083| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_28067 0)) ((($Mutation_28067 (|l#$Mutation_28067| T@$Location) (|p#$Mutation_28067| T@Vec_1349) (|v#$Mutation_28067| T@Vec_6459) ) ) ))
(declare-datatypes ((T@$Mutation_26329 0)) ((($Mutation_26329 (|l#$Mutation_26329| T@$Location) (|p#$Mutation_26329| T@Vec_1349) (|v#$Mutation_26329| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_25241 0)) ((($Mutation_25241 (|l#$Mutation_25241| T@$Location) (|p#$Mutation_25241| T@Vec_1349) (|v#$Mutation_25241| T@Vec_24551) ) ) ))
(declare-datatypes ((T@$Mutation_23500 0)) ((($Mutation_23500 (|l#$Mutation_23500| T@$Location) (|p#$Mutation_23500| T@Vec_1349) (|v#$Mutation_23500| |T@$42_TestMonomorphization_R'u64'|) ) ) ))
(declare-datatypes ((T@$Mutation_22513 0)) ((($Mutation_22513 (|l#$Mutation_22513| T@$Location) (|p#$Mutation_22513| T@Vec_1349) (|v#$Mutation_22513| T@Vec_21870) ) ) ))
(declare-datatypes ((T@$Mutation_20772 0)) ((($Mutation_20772 (|l#$Mutation_20772| T@$Location) (|p#$Mutation_20772| T@Vec_1349) (|v#$Mutation_20772| |T@$42_TestMonomorphization_R'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_19757 0)) ((($Mutation_19757 (|l#$Mutation_19757| T@$Location) (|p#$Mutation_19757| T@Vec_1349) (|v#$Mutation_19757| T@Vec_19114) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114 T@Vec_19114) Bool)
(declare-fun InRangeVec_15148 (T@Vec_19114 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'address'_| (|T@[Int]$42_TestMonomorphization_R'address'| Int) |T@$42_TestMonomorphization_R'address'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'address'''| (T@Vec_19114) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'address''| (|T@$42_TestMonomorphization_R'address'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'address''| (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun |$IsEqual'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870 T@Vec_21870) Bool)
(declare-fun InRangeVec_15349 (T@Vec_21870 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|T@[Int]$42_TestMonomorphization_R'u64'| Int) |T@$42_TestMonomorphization_R'u64'|)
(declare-fun |$IsValid'vec'$42_TestMonomorphization_R'u64'''| (T@Vec_21870) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'u64''| (|T@$42_TestMonomorphization_R'u64'|) Bool)
(declare-fun |$IndexOfVec'$42_TestMonomorphization_R'u64''| (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun |$IsEqual'vec'vec'u64'''| (T@Vec_24551 T@Vec_24551) Bool)
(declare-fun InRangeVec_24660 (T@Vec_24551 Int) Bool)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |Select__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int) T@Vec_1349)
(declare-fun |$IsValid'vec'vec'u64'''| (T@Vec_24551) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'vec'u64''| (T@Vec_24551 T@Vec_1349) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_6459 T@Vec_6459) Bool)
(declare-fun InRangeVec_6459 (T@Vec_6459 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_6459) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_6459 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_7568 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_1349 Int) Int)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) T@Vec_1349)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_1349)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18130_| (|T@[$1_Event_EventHandle]Multiset_18130| T@$1_Event_EventHandle) T@Multiset_18130)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_E'| (T@$42_TestMonomorphization_E) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'bool''| (|T@$42_TestMonomorphization_R'bool'|) Bool)
(declare-fun |$IsValid'$42_TestMonomorphization_R'#0''| (|T@$42_TestMonomorphization_R'#0'|) Bool)
(declare-fun IndexOfVec_19114 (T@Vec_19114 |T@$42_TestMonomorphization_R'address'|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun IndexOfVec_21870 (T@Vec_21870 |T@$42_TestMonomorphization_R'u64'|) Int)
(declare-fun IndexOfVec_24551 (T@Vec_24551 T@Vec_1349) Int)
(declare-fun IndexOfVec_6459 (T@Vec_6459 Bool) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18130| |T@[$1_Event_EventHandle]Multiset_18130|) |T@[$1_Event_EventHandle]Multiset_18130|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#4| (Int Int |T@[Int]$42_TestMonomorphization_R'address'| Int Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$42_TestMonomorphization_R'address'| |T@[Int]$42_TestMonomorphization_R'address'| Int |T@$42_TestMonomorphization_R'address'|) |T@[Int]$42_TestMonomorphization_R'address'|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#7| (Int Int |T@[Int]$42_TestMonomorphization_R'u64'| Int Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$42_TestMonomorphization_R'u64'| |T@[Int]$42_TestMonomorphization_R'u64'| Int |T@$42_TestMonomorphization_R'u64'|) |T@[Int]$42_TestMonomorphization_R'u64'|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#10| (Int Int |T@[Int]Vec_1349| Int Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Vec_1349| |T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#13| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |monodefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |monodefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |monodefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |monodefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |monodefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |monodefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |monodefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_19114) (v2 T@Vec_19114) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2)  (and (= (|l#Vec_19114| v1) (|l#Vec_19114| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_15148 v1 i@@0) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v1) i@@0) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v2) i@@0)))
 :qid |monodefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |monodefaultz3bpl.613:61|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'address'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_19114) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_19114| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_15148 v@@4 i@@1) (|$IsValid'$42_TestMonomorphization_R'address''| (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@4) i@@1)))
 :qid |monodefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |monodefaultz3bpl.619:61|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'address'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_19114) (e |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_15148 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@3) e))
 :qid |monodefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_15148 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@5) j) e)))
 :qid |monodefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |monodefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'address''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_21870) (v2@@0 T@Vec_21870) ) (! (= (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0)  (and (= (|l#Vec_21870| v1@@0) (|l#Vec_21870| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_15349 v1@@0 i@@4) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v1@@0) i@@4) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v2@@0) i@@4)))
 :qid |monodefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |monodefaultz3bpl.794:57|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$42_TestMonomorphization_R'u64'''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_21870) ) (! (= (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_21870| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_15349 v@@6 i@@5) (|$IsValid'$42_TestMonomorphization_R'u64''| (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@6) i@@5)))
 :qid |monodefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |monodefaultz3bpl.800:57|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$42_TestMonomorphization_R'u64'''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_21870) (e@@0 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@6 (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_15349 v@@7 i@@7)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@7) e@@0))
 :qid |monodefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_15349 v@@7 i@@6)) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@7) j@@0) e@@0)))
 :qid |monodefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |monodefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$42_TestMonomorphization_R'u64''| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_24551) (v2@@1 T@Vec_24551) ) (! (= (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1)  (and (= (|l#Vec_24551| v1@@1) (|l#Vec_24551| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_24660 v1@@1 i@@8) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v1@@1) i@@8) (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v2@@1) i@@8)))
 :qid |monodefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |monodefaultz3bpl.975:34|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'vec'u64'''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_24551) ) (! (= (|$IsValid'vec'vec'u64'''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_24551| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_24660 v@@8 i@@9) (|$IsValid'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@8) i@@9)))
 :qid |monodefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |monodefaultz3bpl.981:34|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'vec'u64'''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_24551) (e@@1 T@Vec_1349) ) (! (let ((i@@10 (|$IndexOfVec'vec'u64''| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_24660 v@@9 i@@11)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@11) e@@1))
 :qid |monodefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_24660 v@@9 i@@10)) (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (|$IsEqual'vec'u64''| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@9) j@@1) e@@1)))
 :qid |monodefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |monodefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'vec'u64''| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6459) (v2@@2 T@Vec_6459) ) (! (= (|$IsEqual'vec'bool''| v1@@2 v2@@2)  (and (= (|l#Vec_6459| v1@@2) (|l#Vec_6459| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_6459 v1@@2 i@@12) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v1@@2) i@@12) (|Select__T@[Int]Bool_| (|v#Vec_6459| v2@@2) i@@12)))
 :qid |monodefaultz3bpl.1158:13|
 :skolemid |38|
))))
 :qid |monodefaultz3bpl.1156:30|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'bool''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_6459) ) (! (= (|$IsValid'vec'bool''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_6459| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_6459 v@@10 i@@13) true)
 :qid |monodefaultz3bpl.1164:13|
 :skolemid |40|
))))
 :qid |monodefaultz3bpl.1162:30|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'bool''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_6459) (e@@2 Bool) ) (! (let ((i@@14 (|$IndexOfVec'bool'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_6459 v@@11 i@@15)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@15) e@@2))
 :qid |monodefaultz3bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_6459 v@@11 i@@14)) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@11) j@@2) e@@2)))
 :qid |monodefaultz3bpl.1177:17|
 :skolemid |43|
)))))
 :qid |monodefaultz3bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'bool'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_1349| v1@@3) (|l#Vec_1349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7568 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@3) i@@16)))
 :qid |monodefaultz3bpl.1339:13|
 :skolemid |45|
))))
 :qid |monodefaultz3bpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_1349) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7568 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@12) i@@17)))
 :qid |monodefaultz3bpl.1345:13|
 :skolemid |47|
))))
 :qid |monodefaultz3bpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7568 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@19) e@@3))
 :qid |monodefaultz3bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7568 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |monodefaultz3bpl.1358:17|
 :skolemid |50|
)))))
 :qid |monodefaultz3bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_1349) (v2@@4 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@4 v2@@4)  (and (= (|l#Vec_1349| v1@@4) (|l#Vec_1349| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7568 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@4) i@@20)))
 :qid |monodefaultz3bpl.1520:13|
 :skolemid |52|
))))
 :qid |monodefaultz3bpl.1518:29|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u64''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7568 v@@14 i@@21) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@14) i@@21)))
 :qid |monodefaultz3bpl.1526:13|
 :skolemid |54|
))))
 :qid |monodefaultz3bpl.1524:29|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u64''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_1349) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u64'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7568 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@23) e@@4))
 :qid |monodefaultz3bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7568 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@15) j@@4) e@@4)))
 :qid |monodefaultz3bpl.1539:17|
 :skolemid |57|
)))))
 :qid |monodefaultz3bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u64'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_1349) (v2@@5 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_1349| v1@@5) (|l#Vec_1349| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_7568 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@5) i@@24)))
 :qid |monodefaultz3bpl.1701:13|
 :skolemid |59|
))))
 :qid |monodefaultz3bpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_7568 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@16) i@@25)))
 :qid |monodefaultz3bpl.1707:13|
 :skolemid |61|
))))
 :qid |monodefaultz3bpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_1349) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_7568 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@27) e@@5))
 :qid |monodefaultz3bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_7568 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@17) j@@5) e@@5)))
 :qid |monodefaultz3bpl.1720:17|
 :skolemid |64|
)))))
 :qid |monodefaultz3bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_1349) (v2@@6 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |monodefaultz3bpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_1349) (v2@@7 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |monodefaultz3bpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |monodefaultz3bpl.1956:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |monodefaultz3bpl.1959:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@8 |T@#0|) (v2@@8 |T@#0|) ) (! (= (= v1@@8 v2@@8) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8)))
 :qid |monodefaultz3bpl.1986:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@8) (|$1_BCS_serialize'#0'| v2@@8))
)))
(assert (forall ((v@@18 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@18)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_1349| r@@0) 0)))
 :qid |monodefaultz3bpl.1991:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'#0'| v@@18))
)))
(assert (forall ((v1@@9 Int) (v2@@9 Int) ) (! (= (= v1@@9 v2@@9) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9)))
 :qid |monodefaultz3bpl.2013:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'address'| v1@@9) (|$1_BCS_serialize'address'| v2@@9))
)))
(assert (forall ((v@@19 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@19)))
 (and (|$IsValid'vec'u8''| r@@1) (> (|l#Vec_1349| r@@1) 0)))
 :qid |monodefaultz3bpl.2018:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'address'| v@@19))
)))
(assert (forall ((v@@20 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@20)))
(= (|l#Vec_1349| r@@2) $serialized_address_len))
 :qid |monodefaultz3bpl.2032:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v@@20))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18130| stream) 0) (forall ((v@@21 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream) v@@21) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h) true)
 :qid |monodefaultz3bpl.2135:69|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''| h))
)))
(assert (forall ((v1@@10 T@$42_TestMonomorphization_E) (v2@@10 T@$42_TestMonomorphization_E) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10)))
 :qid |monodefaultz3bpl.2141:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$42_TestMonomorphization_E'| v1@@10) (|$ToEventRep'$42_TestMonomorphization_E'| v2@@10))
)))
(assert (forall ((s T@$42_TestMonomorphization_E) ) (! (= (|$IsValid'$42_TestMonomorphization_E'| s) (|$IsValid'u64'| (|$msg#$42_TestMonomorphization_E| s)))
 :qid |monodefaultz3bpl.2205:47|
 :skolemid |79|
 :pattern ( (|$IsValid'$42_TestMonomorphization_E'| s))
)))
(assert (forall ((s@@0 |T@$42_TestMonomorphization_R'bool'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0)  (and true true))
 :qid |monodefaultz3bpl.2221:53|
 :skolemid |80|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'bool''| s@@0))
)))
(assert (forall ((s@@1 |T@$42_TestMonomorphization_R'u64'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1)  (and (|$IsValid'u64'| (|$x#$42_TestMonomorphization_R'u64'| s@@1)) (|$IsValid'u64'| (|$y#$42_TestMonomorphization_R'u64'| s@@1))))
 :qid |monodefaultz3bpl.2239:52|
 :skolemid |81|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'u64''| s@@1))
)))
(assert (forall ((s@@2 |T@$42_TestMonomorphization_R'address'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'address''| s@@2)  (and (|$IsValid'address'| (|$x#$42_TestMonomorphization_R'address'| s@@2)) (|$IsValid'address'| (|$y#$42_TestMonomorphization_R'address'| s@@2))))
 :qid |monodefaultz3bpl.2257:56|
 :skolemid |82|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$42_TestMonomorphization_R'#0'|) ) (! (= (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3)  (and true true))
 :qid |monodefaultz3bpl.2275:51|
 :skolemid |83|
 :pattern ( (|$IsValid'$42_TestMonomorphization_R'#0''| s@@3))
)))
(assert (forall ((v@@22 T@Vec_19114) (i@@28 Int) ) (! (= (InRangeVec_15148 v@@22 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_19114| v@@22))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15148 v@@22 i@@28))
)))
(assert (forall ((v@@23 T@Vec_21870) (i@@29 Int) ) (! (= (InRangeVec_15349 v@@23 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_21870| v@@23))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_15349 v@@23 i@@29))
)))
(assert (forall ((v@@24 T@Vec_24551) (i@@30 Int) ) (! (= (InRangeVec_24660 v@@24 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_24551| v@@24))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_24660 v@@24 i@@30))
)))
(assert (forall ((v@@25 T@Vec_6459) (i@@31 Int) ) (! (= (InRangeVec_6459 v@@25 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_6459| v@@25))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_6459 v@@25 i@@31))
)))
(assert (forall ((v@@26 T@Vec_1349) (i@@32 Int) ) (! (= (InRangeVec_7568 v@@26 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_1349| v@@26))))
 :qid |monodefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7568 v@@26 i@@32))
)))
(assert (forall ((v@@27 T@Vec_19114) (e@@6 |T@$42_TestMonomorphization_R'address'|) ) (! (let ((i@@33 (IndexOfVec_19114 v@@27 e@@6)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_15148 v@@27 i@@34) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@34) e@@6))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_15148 v@@27 i@@33) (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) i@@33) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@33)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|v#Vec_19114| v@@27) j@@6) e@@6)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19114 v@@27 e@@6))
)))
(assert (forall ((v@@28 T@Vec_1349) (e@@7 Int) ) (! (let ((i@@35 (IndexOfVec_1349 v@@28 e@@7)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_7568 v@@28 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@36) e@@7))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_7568 v@@28 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) i@@35) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@35)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@28) j@@7) e@@7)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_21870) (e@@8 |T@$42_TestMonomorphization_R'u64'|) ) (! (let ((i@@37 (IndexOfVec_21870 v@@29 e@@8)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_15349 v@@29 i@@38) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@38) e@@8))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_15349 v@@29 i@@37) (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) i@@37) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@37)) (not (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|v#Vec_21870| v@@29) j@@8) e@@8)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21870 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_24551) (e@@9 T@Vec_1349) ) (! (let ((i@@39 (IndexOfVec_24551 v@@30 e@@9)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_24660 v@@30 i@@40) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@40) e@@9))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_24660 v@@30 i@@39) (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) i@@39) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@39)) (not (= (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| v@@30) j@@9) e@@9)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_24551 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_6459) (e@@10 Bool) ) (! (let ((i@@41 (IndexOfVec_6459 v@@31 e@@10)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_6459 v@@31 i@@42) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@42) e@@10))
 :qid |monodefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_6459 v@@31 i@@41) (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) i@@41) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@41)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_6459| v@@31) j@@10) e@@10)))
 :qid |monodefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |monodefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6459 v@@31 e@@10))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |monodefaultz3bpl.275:54|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18130|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18130|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))))
(Multiset_18130 (|lambda#18| (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#0@@0| handle@@0)) (|v#Multiset_18130| (|Select__T@[$1_Event_EventHandle]Multiset_18130_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |monodefaultz3bpl.2104:13|
 :skolemid |88|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5| Int) (|l#6| |T@$42_TestMonomorphization_R'address'|) (i@@44 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44) (ite  (and (>= i@@44 |l#0@@1|) (< i@@44 |l#1@@0|)) (ite (< i@@44 |l#2|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3| i@@44) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4| (- i@@44 |l#5|))) |l#6|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@44))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@$42_TestMonomorphization_R'address'|) (i@@45 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45) (ite  (and (<= |l#0@@2| i@@45) (< i@@45 |l#1@@1|)) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#2@@0| (- (- |l#3@@0| i@@45) |l#4@@0|)) |l#5@@0|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |90|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@45))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#4@@1| |T@[Int]$42_TestMonomorphization_R'address'|) (|l#5@@1| Int) (|l#6@@0| |T@$42_TestMonomorphization_R'address'|) (j@@11 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11) (ite  (and (>= j@@11 |l#0@@3|) (< j@@11 |l#1@@2|)) (ite (< j@@11 |l#2@@1|) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#3@@1| j@@11) (|Select__T@[Int]$42_TestMonomorphization_R'address'_| |l#4@@1| (+ j@@11 |l#5@@1|))) |l#6@@0|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |91|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'address'_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@11))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@2| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@2| Int) (|l#6@@1| |T@$42_TestMonomorphization_R'u64'|) (i@@46 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46) (ite  (and (>= i@@46 |l#0@@4|) (< i@@46 |l#1@@3|)) (ite (< i@@46 |l#2@@2|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@2| i@@46) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@2| (- i@@46 |l#5@@2|))) |l#6@@1|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |92|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@46))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| |T@$42_TestMonomorphization_R'u64'|) (i@@47 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47) (ite  (and (<= |l#0@@5| i@@47) (< i@@47 |l#1@@4|)) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#2@@3| (- (- |l#3@@3| i@@47) |l#4@@3|)) |l#5@@3|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |93|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@47))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#4@@4| |T@[Int]$42_TestMonomorphization_R'u64'|) (|l#5@@4| Int) (|l#6@@2| |T@$42_TestMonomorphization_R'u64'|) (j@@12 Int) ) (! (= (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12) (ite  (and (>= j@@12 |l#0@@6|) (< j@@12 |l#1@@5|)) (ite (< j@@12 |l#2@@4|) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#3@@4| j@@12) (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| |l#4@@4| (+ j@@12 |l#5@@4|))) |l#6@@2|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]$42_TestMonomorphization_R'u64'_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@12))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Vec_1349|) (|l#4@@5| |T@[Int]Vec_1349|) (|l#5@@5| Int) (|l#6@@3| T@Vec_1349) (i@@48 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48) (ite  (and (>= i@@48 |l#0@@7|) (< i@@48 |l#1@@6|)) (ite (< i@@48 |l#2@@5|) (|Select__T@[Int]Vec_1349_| |l#3@@5| i@@48) (|Select__T@[Int]Vec_1349_| |l#4@@5| (- i@@48 |l#5@@5|))) |l#6@@3|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@48))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Vec_1349|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@Vec_1349) (i@@49 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49) (ite  (and (<= |l#0@@8| i@@49) (< i@@49 |l#1@@7|)) (|Select__T@[Int]Vec_1349_| |l#2@@6| (- (- |l#3@@6| i@@49) |l#4@@6|)) |l#5@@6|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@49))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Vec_1349|) (|l#4@@7| |T@[Int]Vec_1349|) (|l#5@@7| Int) (|l#6@@4| T@Vec_1349) (j@@13 Int) ) (! (= (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13) (ite  (and (>= j@@13 |l#0@@9|) (< j@@13 |l#1@@8|)) (ite (< j@@13 |l#2@@7|) (|Select__T@[Int]Vec_1349_| |l#3@@7| j@@13) (|Select__T@[Int]Vec_1349_| |l#4@@7| (+ j@@13 |l#5@@7|))) |l#6@@4|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Vec_1349_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@13))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]Bool|) (|l#4@@8| |T@[Int]Bool|) (|l#5@@8| Int) (|l#6@@5| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50) (ite  (and (>= i@@50 |l#0@@10|) (< i@@50 |l#1@@9|)) (ite (< i@@50 |l#2@@8|) (|Select__T@[Int]Bool_| |l#3@@8| i@@50) (|Select__T@[Int]Bool_| |l#4@@8| (- i@@50 |l#5@@8|))) |l#6@@5|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@50))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]Bool|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| Bool) (i@@51 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51) (ite  (and (<= |l#0@@11| i@@51) (< i@@51 |l#1@@10|)) (|Select__T@[Int]Bool_| |l#2@@9| (- (- |l#3@@9| i@@51) |l#4@@9|)) |l#5@@9|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@51))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]Bool|) (|l#4@@10| |T@[Int]Bool|) (|l#5@@10| Int) (|l#6@@6| Bool) (j@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14) (ite  (and (>= j@@14 |l#0@@12|) (< j@@14 |l#1@@11|)) (ite (< j@@14 |l#2@@10|) (|Select__T@[Int]Bool_| |l#3@@10| j@@14) (|Select__T@[Int]Bool_| |l#4@@10| (+ j@@14 |l#5@@10|))) |l#6@@6|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@14))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@52 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52) (ite  (and (>= i@@52 |l#0@@13|) (< i@@52 |l#1@@12|)) (ite (< i@@52 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@52) (|Select__T@[Int]Int_| |l#4@@11| (- i@@52 |l#5@@11|))) |l#6@@7|))
 :qid |monodefaultz3bpl.73:19|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@52))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@53 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53) (ite  (and (<= |l#0@@14| i@@53) (< i@@53 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@53) |l#4@@12|)) |l#5@@12|))
 :qid |monodefaultz3bpl.82:30|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@53))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@15 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15) (ite  (and (>= j@@15 |l#0@@15|) (< j@@15 |l#1@@14|)) (ite (< j@@15 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@15) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@15 |l#5@@13|))) |l#6@@8|))
 :qid |monodefaultz3bpl.63:20|
 :skolemid |103|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@15))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@32) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@32)))
 :qid |monodefaultz3bpl.154:29|
 :skolemid |104|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@32))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () T@Vec_24551)
(declare-fun |inline$$1_Vector_push_back'vec'u64''$0$m'@1| () T@$Mutation_25241)
(declare-fun $t1@0 () T@$Mutation_25241)
(declare-fun |Store__T@[Int]Vec_1349_| (|T@[Int]Vec_1349| Int T@Vec_1349) |T@[Int]Vec_1349|)
(assert (forall ( ( ?x0 |T@[Int]Vec_1349|) ( ?x1 Int) ( ?x2 T@Vec_1349)) (! (= (|Select__T@[Int]Vec_1349_| (|Store__T@[Int]Vec_1349_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Vec_1349|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@Vec_1349)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Vec_1349_| (|Store__T@[Int]Vec_1349_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Vec_1349_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_1349)
(declare-fun MapConstVec_7797 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_7797 () Int)
(declare-fun _$t0 () T@Vec_24551)
(declare-fun $es () T@$EventStore)
(declare-fun $t1 () T@$Mutation_25241)
(push 1)
(set-info :boogie-vc-id $42_TestMonomorphization_vec_vec$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 50035) (let ((anon7_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_25241| |inline$$1_Vector_push_back'vec'u64''$0$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 44764) (- 0 50216)))) (not (= (|l#Vec_1349| (|Select__T@[Int]Vec_1349_| (|v#Vec_24551| $t0@0) 0)) 0)))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_Vector_push_back'vec'u64''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'vec'u64''$0$m'@1| ($Mutation_25241 (|l#$Mutation_25241| $t1@0) (|p#$Mutation_25241| $t1@0) (let ((l (|l#Vec_24551| (|v#$Mutation_25241| $t1@0))))
(Vec_24551 (|Store__T@[Int]Vec_1349_| (|v#Vec_24551| (|v#$Mutation_25241| $t1@0)) l |inline$$1_Vector_empty'u64'$0$v@1|) (+ l 1))))) (and (=> (= (ControlFlow 0 44718) 44778) anon7_Then_correct) (=> (= (ControlFlow 0 44718) 44764) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (and (not false) (= (ControlFlow 0 44724) 44718)) |inline$$1_Vector_push_back'vec'u64''$0$anon0_correct|)))
(let ((anon6_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_1349 (MapConstVec_7797 DefaultVecElem_7797) 0)) (and (=> (= (ControlFlow 0 44653) 44798) anon6_Then_correct) (=> (= (ControlFlow 0 44653) 44724) anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'vec'u64'''| _$t0) (= _$t0 _$t0)) (and (= $t1@0 ($Mutation_25241 ($Local 0) (Vec_1349 (MapConstVec_7797 DefaultVecElem_7797) 0) _$t0)) (= (ControlFlow 0 44659) 44653))) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_18130_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_18130| stream@@0) 0) (forall ((v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18130| stream@@0) v@@33) 0)
 :qid |monodefaultz3bpl.159:13|
 :skolemid |4|
))))
 :qid |monodefaultz3bpl.2094:13|
 :skolemid |75|
))) (= (ControlFlow 0 44595) 44659)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (|l#Vec_1349| (|p#$Mutation_25241| $t1)) 0) (= (ControlFlow 0 44605) 44595)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 50035) 44605) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 50035)))
(get-value ((ControlFlow 0 44605)))
(get-value ((ControlFlow 0 44595)))
(get-value ((ControlFlow 0 44659)))
(get-value ((ControlFlow 0 44653)))
(get-value ((ControlFlow 0 44724)))
(get-value ((ControlFlow 0 44718)))
(get-value ((ControlFlow 0 44764)))
(assert (not (= (ControlFlow 0 44764) (- 50216))))
(check-sat)
(pop 1)
; Invalid
