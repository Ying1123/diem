(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_28133 0)) ((($Memory_28133 (|domain#$Memory_28133| |T@[Int]Bool|) (|contents#$Memory_28133| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_31775 0)) ((($Memory_31775 (|domain#$Memory_31775| |T@[Int]Bool|) (|contents#$Memory_31775| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_30668 0)) ((($Memory_30668 (|domain#$Memory_30668| |T@[Int]Bool|) (|contents#$Memory_30668| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_31564 0)) ((($Memory_31564 (|domain#$Memory_31564| |T@[Int]Bool|) (|contents#$Memory_31564| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey 0)) ((($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (Seq Int)) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-sort |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| 0)
(declare-datatypes ((T@$Memory_34291 0)) ((($Memory_34291 (|domain#$Memory_34291| |T@[Int]Bool|) (|contents#$Memory_34291| |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_30701 0)) ((($Memory_30701 (|domain#$Memory_30701| |T@[Int]Bool|) (|contents#$Memory_30701| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_30253 0)) ((($Memory_30253 (|domain#$Memory_30253| |T@[Int]Bool|) (|contents#$Memory_30253| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| (Seq Int)) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_18627 0)) (((Multiset_18627 (|v#Multiset_18627| |T@[$EventRep]Int|) (|l#Multiset_18627| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_18627| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_18627|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_34462 0)) ((($Mutation_34462 (|l#$Mutation_34462| T@$Location) (|p#$Mutation_34462| (Seq Int)) (|v#$Mutation_34462| T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) ) ))
(declare-datatypes ((T@$Mutation_32603 0)) ((($Mutation_32603 (|l#$Mutation_32603| T@$Location) (|p#$Mutation_32603| (Seq Int)) (|v#$Mutation_32603| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_32559 0)) ((($Mutation_32559 (|l#$Mutation_32559| T@$Location) (|p#$Mutation_32559| (Seq Int)) (|v#$Mutation_32559| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_28764 0)) ((($Mutation_28764 (|l#$Mutation_28764| T@$Location) (|p#$Mutation_28764| (Seq Int)) (|v#$Mutation_28764| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_6754 0)) ((($Mutation_6754 (|l#$Mutation_6754| T@$Location) (|p#$Mutation_6754| (Seq Int)) (|v#$Mutation_6754| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26518 0)) ((($Mutation_26518 (|l#$Mutation_26518| T@$Location) (|p#$Mutation_26518| (Seq Int)) (|v#$Mutation_26518| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_25228 0)) ((($Mutation_25228 (|l#$Mutation_25228| T@$Location) (|p#$Mutation_25228| (Seq Int)) (|v#$Mutation_25228| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_24482 0)) ((($Mutation_24482 (|l#$Mutation_24482| T@$Location) (|p#$Mutation_24482| (Seq Int)) (|v#$Mutation_24482| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_23078 0)) ((($Mutation_23078 (|l#$Mutation_23078| T@$Location) (|p#$Mutation_23078| (Seq Int)) (|v#$Mutation_23078| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_22332 0)) ((($Mutation_22332 (|l#$Mutation_22332| T@$Location) (|p#$Mutation_22332| (Seq Int)) (|v#$Mutation_22332| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_20890 0)) ((($Mutation_20890 (|l#$Mutation_20890| T@$Location) (|p#$Mutation_20890| (Seq Int)) (|v#$Mutation_20890| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_20144 0)) ((($Mutation_20144 (|l#$Mutation_20144| T@$Location) (|p#$Mutation_20144| (Seq Int)) (|v#$Mutation_20144| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'#0''| ((Seq |T@#0|)) Bool)
(declare-fun |$IndexOfVec'#0'| ((Seq |T@#0|) |T@#0|) Int)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| ((Seq T@$1_DiemAccount_KeyRotationCapability)) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| ((Seq T@$1_DiemAccount_KeyRotationCapability) T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| ((Seq T@$1_DiemAccount_WithdrawCapability)) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| ((Seq T@$1_DiemAccount_WithdrawCapability) T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_18627_| (|T@[$1_Event_EventHandle]Multiset_18627| T@$1_Event_EventHandle) T@Multiset_18627)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemAccount'| (T@$1_DiemAccount_DiemAccount) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AccountOperationsCapability'| (T@$1_DiemAccount_AccountOperationsCapability) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AdminTransactionEvent'| (T@$1_DiemAccount_AdminTransactionEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun $1_Authenticator_spec_ed25519_authentication_key ((Seq Int)) (Seq Int))
(declare-fun |$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| (T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) Bool)
(declare-fun ReverseVec_16394 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_16591 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_6607 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_16197 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_18627| |T@[$1_Event_EventHandle]Multiset_18627|) |T@[$1_Event_EventHandle]Multiset_18627|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |SharedEd25519PublicKeybpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |SharedEd25519PublicKeybpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |SharedEd25519PublicKeybpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |SharedEd25519PublicKeybpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |SharedEd25519PublicKeybpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |SharedEd25519PublicKeybpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |SharedEd25519PublicKeybpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |SharedEd25519PublicKeybpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |SharedEd25519PublicKeybpl.595:13|
 :skolemid |15|
))))
 :qid |SharedEd25519PublicKeybpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |SharedEd25519PublicKeybpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |SharedEd25519PublicKeybpl.608:17|
 :skolemid |18|
)))))
 :qid |SharedEd25519PublicKeybpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |SharedEd25519PublicKeybpl.775:13|
 :skolemid |20|
))))
 :qid |SharedEd25519PublicKeybpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |SharedEd25519PublicKeybpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |SharedEd25519PublicKeybpl.788:17|
 :skolemid |23|
)))))
 :qid |SharedEd25519PublicKeybpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |SharedEd25519PublicKeybpl.955:13|
 :skolemid |25|
))))
 :qid |SharedEd25519PublicKeybpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |SharedEd25519PublicKeybpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |SharedEd25519PublicKeybpl.968:17|
 :skolemid |28|
)))))
 :qid |SharedEd25519PublicKeybpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'u8'| (seq.nth v@@10 i@@9)))
 :qid |SharedEd25519PublicKeybpl.1135:13|
 :skolemid |30|
))))
 :qid |SharedEd25519PublicKeybpl.1133:28|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'u8''| v@@10))
)))
(assert (forall ((v@@11 (Seq Int)) (e@@2 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |SharedEd25519PublicKeybpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |SharedEd25519PublicKeybpl.1148:17|
 :skolemid |33|
)))))
 :qid |SharedEd25519PublicKeybpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'u8'| v@@11 e@@2))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |SharedEd25519PublicKeybpl.1321:15|
 :skolemid |35|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |SharedEd25519PublicKeybpl.1337:15|
 :skolemid |36|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |SharedEd25519PublicKeybpl.1408:15|
 :skolemid |37|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |SharedEd25519PublicKeybpl.1411:15|
 :skolemid |38|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_18627_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_18627| stream) 0) (forall ((v@@12 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18627| stream) v@@12) 0)
 :qid |SharedEd25519PublicKeybpl.134:13|
 :skolemid |2|
))))
 :qid |SharedEd25519PublicKeybpl.1472:13|
 :skolemid |39|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h) true)
 :qid |SharedEd25519PublicKeybpl.1513:79|
 :skolemid |41|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_DiemAccount_AdminTransactionEvent) (v2@@1 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@1) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@1)))
 :qid |SharedEd25519PublicKeybpl.1519:15|
 :skolemid |42|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@1) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@0) true)
 :qid |SharedEd25519PublicKeybpl.1569:76|
 :skolemid |43|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_DiemAccount_CreateAccountEvent) (v2@@2 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@2)))
 :qid |SharedEd25519PublicKeybpl.1575:15|
 :skolemid |44|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@1) true)
 :qid |SharedEd25519PublicKeybpl.1625:78|
 :skolemid |45|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@3 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@3)))
 :qid |SharedEd25519PublicKeybpl.1631:15|
 :skolemid |46|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@2) true)
 :qid |SharedEd25519PublicKeybpl.1681:74|
 :skolemid |47|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_SentPaymentEvent) (v2@@4 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@4)))
 :qid |SharedEd25519PublicKeybpl.1687:15|
 :skolemid |48|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@4))
)))
(assert (forall ((s T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s)))
 :qid |SharedEd25519PublicKeybpl.1746:36|
 :skolemid |49|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s))
)))
(assert (forall ((s@@0 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@0) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@0)))
 :qid |SharedEd25519PublicKeybpl.1800:75|
 :skolemid |50|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@0))
)))
(assert (forall ((s@@1 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@1) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@1)))
 :qid |SharedEd25519PublicKeybpl.1813:72|
 :skolemid |51|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@1))
)))
(assert (forall ((s@@2 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@2) true)
 :qid |SharedEd25519PublicKeybpl.1826:68|
 :skolemid |52|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@2))
)))
(assert (forall ((s@@3 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@3) true)
 :qid |SharedEd25519PublicKeybpl.1839:51|
 :skolemid |53|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@3))
)))
(assert (forall ((s@@4 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@4)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@4)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@4))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@4))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@4))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@4))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@4))))
 :qid |SharedEd25519PublicKeybpl.1923:47|
 :skolemid |54|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@4))
)))
(assert (forall ((s@@5 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@5)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@5)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@5))))
 :qid |SharedEd25519PublicKeybpl.1945:63|
 :skolemid |55|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@5))
)))
(assert (forall ((s@@6 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@6) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@6)))
 :qid |SharedEd25519PublicKeybpl.1960:57|
 :skolemid |56|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@6))
)))
(assert (forall ((s@@7 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@7)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@7)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@7))))
 :qid |SharedEd25519PublicKeybpl.1976:54|
 :skolemid |57|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@8) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@8)))
 :qid |SharedEd25519PublicKeybpl.1990:55|
 :skolemid |58|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@9) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@9)))
 :qid |SharedEd25519PublicKeybpl.2004:57|
 :skolemid |59|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@10)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@10)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@10))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@10))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@10))))
 :qid |SharedEd25519PublicKeybpl.2026:56|
 :skolemid |60|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@11)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@11)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@11))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@11))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@11))))
 :qid |SharedEd25519PublicKeybpl.2051:52|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@11))
)))
(assert (forall ((s@@12 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@12) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@12)))
 :qid |SharedEd25519PublicKeybpl.2067:54|
 :skolemid |62|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@12))
)))
(assert (forall ((public_key (Seq Int)) ) (! (let (($$res ($1_Authenticator_spec_ed25519_authentication_key public_key)))
(|$IsValid'vec'u8''| $$res))
 :qid |SharedEd25519PublicKeybpl.2713:15|
 :skolemid |63|
)))
(assert (forall ((s@@13 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) (! (= (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@13)  (and (|$IsValid'vec'u8''| (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@13)) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@13))))
 :qid |SharedEd25519PublicKeybpl.2731:69|
 :skolemid |64|
 :pattern ( (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@13))
)))
(assert (forall ((v@@13 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@0 (ReverseVec_16394 v@@13)))
 (and (= (seq.len r@@0) (seq.len v@@13)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len r@@0))) (= (seq.nth r@@0 i@@12) (seq.nth v@@13 (- (- (seq.len v@@13) i@@12) 1))))
 :qid |SharedEd25519PublicKeybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@12))
))))
 :qid |SharedEd25519PublicKeybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_16394 v@@13))
)))
(assert (forall ((v@@14 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@1 (ReverseVec_16591 v@@14)))
 (and (= (seq.len r@@1) (seq.len v@@14)) (forall ((i@@13 Int) ) (!  (=> (and (>= i@@13 0) (< i@@13 (seq.len r@@1))) (= (seq.nth r@@1 i@@13) (seq.nth v@@14 (- (- (seq.len v@@14) i@@13) 1))))
 :qid |SharedEd25519PublicKeybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@13))
))))
 :qid |SharedEd25519PublicKeybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_16591 v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) ) (! (let ((r@@2 (ReverseVec_6607 v@@15)))
 (and (= (seq.len r@@2) (seq.len v@@15)) (forall ((i@@14 Int) ) (!  (=> (and (>= i@@14 0) (< i@@14 (seq.len r@@2))) (= (seq.nth r@@2 i@@14) (seq.nth v@@15 (- (- (seq.len v@@15) i@@14) 1))))
 :qid |SharedEd25519PublicKeybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@14))
))))
 :qid |SharedEd25519PublicKeybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_6607 v@@15))
)))
(assert (forall ((v@@16 (Seq |T@#0|)) ) (! (let ((r@@3 (ReverseVec_16197 v@@16)))
 (and (= (seq.len r@@3) (seq.len v@@16)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len r@@3))) (= (seq.nth r@@3 i@@15) (seq.nth v@@16 (- (- (seq.len v@@16) i@@15) 1))))
 :qid |SharedEd25519PublicKeybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@15))
))))
 :qid |SharedEd25519PublicKeybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_16197 v@@16))
)))
(assert (forall ((|l#0| Bool) (i@@16 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16) |l#0|)
 :qid |SharedEd25519PublicKeybpl.250:54|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_18627|) (|l#1| |T@[$1_Event_EventHandle]Multiset_18627|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_18627_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_18627| (|Select__T@[$1_Event_EventHandle]Multiset_18627_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_18627| (|Select__T@[$1_Event_EventHandle]Multiset_18627_| |l#1| handle@@0))))
(Multiset_18627 (|lambda#3| (|v#Multiset_18627| (|Select__T@[$1_Event_EventHandle]Multiset_18627_| |l#0@@0| handle@@0)) (|v#Multiset_18627| (|Select__T@[$1_Event_EventHandle]Multiset_18627_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |SharedEd25519PublicKeybpl.1482:13|
 :skolemid |96|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_18627_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@17 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@17) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@17) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@17)))
 :qid |SharedEd25519PublicKeybpl.129:29|
 :skolemid |97|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@17))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory () T@$Memory_34291)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 () T@$Memory_34291)
(declare-fun $t5 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_30701)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () (Seq Int))
(declare-fun $t7 () Int)
(declare-fun |Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| Int) T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t11@0 () Int)
(declare-fun $abort_code@8 () Int)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0 () T@$Memory_34291)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| Int T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|)
(assert (forall ( ( ?x0 |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ( ?x1 Int) ( ?x2 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)) (! (= (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@1 () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun $t17 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 () Bool)
(declare-fun $t13 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 () T@$Mutation_34462)
(declare-fun $abort_flag@5 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1 () T@$Mutation_26518)
(declare-fun $t12@0 () T@$Mutation_34462)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2 () T@$Mutation_26518)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1 () T@$Mutation_34462)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_code@6 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0 () T@$Mutation_34462)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1 () T@$Mutation_26518)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 () T@$Mutation_32559)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2 () T@$Mutation_26518)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 () (Seq Int))
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3 () T@$Mutation_32559)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_30701)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_30701)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0 () T@$Mutation_32559)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1 () T@$Mutation_32559)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0 () T@$Mutation_32559)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0 () T@$Mutation_26518)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0 () T@$Mutation_26518)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t4@0 () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t8@0 () (Seq Int))
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2 () T@$Mutation_32603)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1 () T@$Mutation_32603)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3 () T@$Mutation_32559)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 () T@$Mutation_32559)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_30701)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0 () T@$Mutation_32559)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1 () T@$Mutation_32559)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 () Bool)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0 () T@$Mutation_32559)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0 () T@$Mutation_32603)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_30253)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_31564)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_31775)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_30668)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $t9 () Int)
(declare-fun $es () T@$EventStore)
(declare-fun $t12 () T@$Mutation_34462)
; Valid
; Valid
; Valid
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0@@0 () T@$Memory_34291)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1@@0 () T@$Mutation_34462)
(declare-fun $t5@@0 () Int)
(declare-fun _$t1@@0 () (Seq Int))
(declare-fun $t6@@0 () Int)
(declare-fun $t9@0 () Int)
(declare-fun $abort_code@4@@0 () Int)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1@@0 () T@$Mutation_26518)
(declare-fun $t12@1 () T@$Mutation_34462)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2@@0 () T@$Mutation_26518)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1@@0 () T@$Mutation_34462)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2@@0| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0@@0 () T@$Mutation_34462)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0 () T@$Mutation_26518)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 () T@$Mutation_32559)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0 () T@$Mutation_26518)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0 () (Seq Int))
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0 () T@$Mutation_32559)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@0 () T@$Memory_30701)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@0| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0 () T@$Mutation_32559)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0 () T@$Mutation_32559)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@0 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@0 () T@$Mutation_32559)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@0 () T@$Mutation_26518)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@0 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0@@0 () T@$Mutation_26518)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1@@0| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t12@@0 () T@$Mutation_34462)
(declare-fun $t7@@0 () Int)
(declare-fun $t12@0@@0 () T@$Mutation_34462)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0 () Bool)
(declare-fun $t11 () Int)
(declare-fun _$t0@@0 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_SharedEd25519PublicKey_rotate_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 54004) (let ((anon18_Else_correct@@0  (=> (and (not $abort_flag@3@@0) (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0@@0 ($Memory_34291 (|Store__T@[Int]Bool_| (|domain#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|a#$Global| (|l#$Mutation_34462| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1@@0)) true) (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|a#$Global| (|l#$Mutation_34462| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1@@0)) (|v#$Mutation_34462| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1@@0))))) (and (=> (= (ControlFlow 0 48090) (- 0 55738)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0@@0) addr@@8)))
 :qid |SharedEd25519PublicKeybpl.3441:15|
 :skolemid |86|
))) (=> (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0@@0) addr@@9)))
 :qid |SharedEd25519PublicKeybpl.3441:15|
 :skolemid |86|
)) (and (=> (= (ControlFlow 0 48090) (- 0 55765)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0))) (and (=> (= (ControlFlow 0 48090) (- 0 55777)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@0)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@0))) (and (=> (= (ControlFlow 0 48090) (- 0 55787)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0))))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)))))) (and (=> (= (ControlFlow 0 48090) (- 0 55806)) (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@0)) 32)))) (=> (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@0)) 32))) (=> (= (ControlFlow 0 48090) (- 0 55822)) (= (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0@@0) $t6@@0)) _$t1@@0)))))))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 46312) (- 0 55588)) (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1@@0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@0)) 32)))) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1@@0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@0)) 32))) (=> (= (ControlFlow 0 46312) (- 0 55631)) (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)) (= 5 $t9@0)) (and (not ($1_Signature_$ed25519_validate_pubkey _$t1@@0)) (= 7 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0))))) (= 5 $t9@0))) (and (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@0)) 32)) (= 7 $t9@0))))))))
(let ((anon18_Then_correct@@0  (=> (and (and $abort_flag@3@@0 (= $abort_code@4@@0 $abort_code@4@@0)) (and (= $t9@0 $abort_code@4@@0) (= (ControlFlow 0 48104) 46312))) L3_correct@@0)))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct@@0  (=> (not $abort_flag@2@@0) (=> (and (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1@@0 ($Mutation_26518 (|l#$Mutation_34462| $t12@1) (seq.++ (|p#$Mutation_34462| $t12@1) (seq.unit 0)) (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_34462| $t12@1)))) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2@@0 ($Mutation_26518 (|l#$Mutation_26518| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1@@0) (|p#$Mutation_26518| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1@@0) _$t1@@0))) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1@@0 ($Mutation_34462 (|l#$Mutation_34462| $t12@1) (|p#$Mutation_34462| $t12@1) ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|v#$Mutation_26518| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2@@0) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_34462| $t12@1))))) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2@@0| (|v#$Mutation_34462| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1@@0)))) (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2@@0| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2@@0|) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1@@0)) (and (= $abort_flag@3@@0 $abort_flag@2@@0) (= $abort_code@4@@0 $abort_code@3@@0)))) (and (=> (= (ControlFlow 0 47931) 48104) anon18_Then_correct@@0) (=> (= (ControlFlow 0 47931) 48090) anon18_Else_correct@@0))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct@@0  (=> (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0@@0) (=> (and (= $abort_flag@3@@0 true) (= $abort_code@4@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1@@0)) (and (=> (= (ControlFlow 0 46829) 48104) anon18_Then_correct@@0) (=> (= (ControlFlow 0 46829) 48090) anon18_Else_correct@@0))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct@@0  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1@@0 $abort_code@3@@0) (= (ControlFlow 0 47945) 46829))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@0  (=> inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 (=> (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0 ($Mutation_26518 (|l#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (seq.++ (|p#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)))) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0 ($Mutation_26518 (|l#$Mutation_26518| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0) (|p#$Mutation_26518| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0) inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0))) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0 ($Mutation_32559 (|l#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (|p#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) ($1_DiemAccount_DiemAccount (|v#$Mutation_26518| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0))))) (= $1_DiemAccount_DiemAccount_$memory@0@@0 ($Memory_30701 (|Store__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0)) (|v#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0))))) (and (= $abort_code@3@@0 $abort_code@2@@0) (= $abort_flag@2@@0 $abort_flag@1@@0))) (and (=> (= (ControlFlow 0 47777) 47945) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 47777) 47931) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct@@0)))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0  (=> (and (= $abort_code@3@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0) (= $abort_flag@2@@0 true)) (and (=> (= (ControlFlow 0 47573) 47945) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 47573) 47931) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= (ControlFlow 0 47727) 47573))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@0  (=> (and (and (and (not $abort_flag@1@@0) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 (= |inline$$1_Vector_length'u8'$0$l@1@@0| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0)))) (and (=> (= (ControlFlow 0 47711) 47777) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@0) (=> (= (ControlFlow 0 47711) 47727) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@0  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@2@@0) (= (ControlFlow 0 47791) 47573))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@0| (seq.len inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0)) (and (=> (= (ControlFlow 0 47653) 47791) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@0) (=> (= (ControlFlow 0 47653) 47711) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0  (=> (and (and (not $abort_flag@1@@0) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| (|v#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0|) (= (ControlFlow 0 47659) 47653))) |inline$$1_Vector_length'u8'$0$anon0_correct@@0|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@2@@0) (= (ControlFlow 0 47805) 47573))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@0  (=> (= $abort_flag@1@@0 true) (=> (and (= $abort_code@2@@0 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0)) (and (=> (= (ControlFlow 0 47857) 47805) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 47857) 47659) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0)) (= (ControlFlow 0 47855) 47857)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0 ($Mutation_32559 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0))) (= $abort_flag@1@@0 $abort_flag@0@@0)) (and (= $abort_code@2@@0 $abort_code@1@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0))) (and (=> (= (ControlFlow 0 47603) 47805) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 47603) 47659) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@0  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1@@0 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1@@0))) (and (=> (= (ControlFlow 0 47581) 47855) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@0) (=> (= (ControlFlow 0 47581) 47603) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= (ControlFlow 0 47567) 47573))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@0  (=> (and (not $abort_flag@0@@0) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 inline$$1_DiemAccount_exists_at$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 47551) 47581) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@0) (=> (= (ControlFlow 0 47551) 47567) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@1@@0) (= (ControlFlow 0 47871) 47573))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@0  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 inline$$1_DiemAccount_exists_at$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 47509) 47871) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@0) (=> (= (ControlFlow 0 47509) 47551) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@0  (=> (= (seq.len (|p#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@0)) 0) (=> (and (= (seq.len (|p#$Mutation_32559| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0)) 0) (= (seq.len (|p#$Mutation_26518| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@0)) 0)) (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1@@0) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1@@0)) (= (ControlFlow 0 47515) 47509))) inline$$1_DiemAccount_exists_at$0$anon0_correct@@0)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct@@0  (=> inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@0 (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1@@0 (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_34462| $t12@1))) (|$IsValid'vec'u8''| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0 ($1_Authenticator_spec_ed25519_authentication_key _$t1@@0)) (= (ControlFlow 0 47875) 47515))) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@0))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct@@0  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@0) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0) (= (ControlFlow 0 46823) 46829))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct@@0)))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct@@0  (=> (and (not $abort_flag@0@@0) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0 7)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@0 inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@0))) (and (=> (= (ControlFlow 0 46807) 47875) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct@@0) (=> (= (ControlFlow 0 46807) 46823) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct@@0))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1@@0 $abort_code@1@@0) (= (ControlFlow 0 47959) 46829))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct@@0)))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct@@0  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@0 ($1_Signature_$ed25519_validate_pubkey _$t1@@0)) (and (=> (= (ControlFlow 0 46761) 47959) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct@@0) (=> (= (ControlFlow 0 46761) 46807) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct@@0)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct@@0  (=> (= (seq.len (|p#$Mutation_26518| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0@@0)) 0) (=> (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1@@0| (|v#$Mutation_34462| $t12@1)) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1@@0| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1@@0|)) (and (= _$t1@@0 _$t1@@0) (= (ControlFlow 0 46767) 46761))) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct@@0))))
(let ((anon17_Else_correct@@0  (=> (and (not $abort_flag@0@@0) (= (ControlFlow 0 47965) 46767)) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct@@0)))
(let ((anon17_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t9@0 $abort_code@1@@0) (= (ControlFlow 0 48118) 46312))) L3_correct@@0)))
(let ((anon16_Then$1_correct  (=> (= $t12@1 $t12@@0) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 48170) 48118) anon17_Then_correct@@0) (=> (= (ControlFlow 0 48170) 47965) anon17_Else_correct@@0))))))
(let ((anon16_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t7@@0)) (= (ControlFlow 0 48168) 48170)) anon16_Then$1_correct)))
(let ((anon16_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t7@@0) (=> (and (and (= $t12@0@@0 ($Mutation_34462 ($Global $t7@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t7@@0))) (= $t12@1 $t12@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 46338) 48118) anon17_Then_correct@@0) (=> (= (ControlFlow 0 46338) 47965) anon17_Else_correct@@0))))))
(let ((anon15_Then_correct  (=> inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0 (and (=> (= (ControlFlow 0 46316) 48168) anon16_Then_correct@@0) (=> (= (ControlFlow 0 46316) 46338) anon16_Else_correct@@0)))))
(let ((anon15_Else_correct  (=> (and (and (not inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0) (= $t11 $t11)) (and (= $t9@0 $t11) (= (ControlFlow 0 46176) 46312))) L3_correct@@0)))
(let ((anon14_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t11) (= $t11 5)) (and (= $t11 $t11) (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0 inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 46160) 46316) anon15_Then_correct) (=> (= (ControlFlow 0 46160) 46176) anon15_Else_correct))))))
(let ((anon14_Then_correct true))
(let ((inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct@@0  (=> (= $t7@@0 $t7@@0) (=> (and (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t7@@0)) (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0 inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 46118) 48184) anon14_Then_correct) (=> (= (ControlFlow 0 46118) 46160) anon14_Else_correct))))))
(let ((anon0$1_correct@@0  (=> (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@10) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@10)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@10)))) 0)) (= addr@@10 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@10))) 0)))))))
 :qid |SharedEd25519PublicKeybpl.3280:20|
 :skolemid |77|
)) (=> (and (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@11) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@11) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@11)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@11)))) 0)) (= addr@@11 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@11))) 0)))))))
 :qid |SharedEd25519PublicKeybpl.3284:20|
 :skolemid |78|
)) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (= (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_30253| $1_Roles_RoleId_$memory) addr@@12)))
 :qid |SharedEd25519PublicKeybpl.3288:20|
 :skolemid |79|
))) (=> (and (and (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (= (|Select__T@[Int]Bool_| (|domain#$Memory_31564| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@13)  (and (= addr@@13 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@13))))
 :qid |SharedEd25519PublicKeybpl.3292:20|
 :skolemid |80|
)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (= (|Select__T@[Int]Bool_| (|domain#$Memory_31775| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@14)  (and (= addr@@14 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@14))))
 :qid |SharedEd25519PublicKeybpl.3296:20|
 :skolemid |81|
))) (and (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (= (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@15) (|Select__T@[Int]Bool_| (|domain#$Memory_30668| $1_AccountFreezing_FreezingBit_$memory) addr@@15)))
 :qid |SharedEd25519PublicKeybpl.3300:20|
 :skolemid |82|
)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) addr@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_30668| $1_AccountFreezing_FreezingBit_$memory) addr@@16)))
 :qid |SharedEd25519PublicKeybpl.3304:20|
 :skolemid |83|
)))) (=> (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) ($1_Signer_is_txn_signer _$t0@@0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@0))) (|$IsValid'vec'u8''| _$t1@@0)) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) $a_0@@1)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@1) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@1))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@1))) 1))))
 :qid |SharedEd25519PublicKeybpl.3313:20|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_30701| $1_DiemAccount_DiemAccount_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@2)))
(|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| $rsc@@2))
 :qid |SharedEd25519PublicKeybpl.3317:20|
 :skolemid |85|
 :pattern ( (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_34291| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@2))
)))) (and (and (and (= $t5@@0 (|$addr#$signer| _$t0@@0)) (= $t6@@0 (|$addr#$signer| _$t0@@0))) (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t7@@0) (= $t7@@0 (|$addr#$signer| _$t0@@0))) (and (= $t7@@0 $t7@@0) (= (ControlFlow 0 46124) 46118))))) inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_18627_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_18627| stream@@1) 0) (forall ((v@@19 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_18627| stream@@1) v@@19) 0)
 :qid |SharedEd25519PublicKeybpl.134:13|
 :skolemid |2|
))))
 :qid |SharedEd25519PublicKeybpl.1472:13|
 :skolemid |39|
))) (= (ControlFlow 0 45660) 46124)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (and (= (seq.len (|p#$Mutation_34462| $t12@@0)) 0) (= (ControlFlow 0 45670) 45660)) inline$$InitEventStore$0$anon0_correct@@0)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 54004) 45670) anon0_correct@@0)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
