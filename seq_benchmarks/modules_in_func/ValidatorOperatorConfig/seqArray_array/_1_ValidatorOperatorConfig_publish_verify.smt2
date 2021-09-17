(set-option :print-success false)
(set-option :pre-skolem-quant true)
(set-option :dt-share-sel false)
(set-option :ee-mode central)
(set-logic ALL)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_23365 0)) ((($Memory_23365 (|domain#$Memory_23365| |T@[Int]Bool|) (|contents#$Memory_23365| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_25332 0)) ((($Memory_25332 (|domain#$Memory_25332| |T@[Int]Bool|) (|contents#$Memory_25332| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_25299 0)) ((($Memory_25299 (|domain#$Memory_25299| |T@[Int]Bool|) (|contents#$Memory_25299| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_26232 0)) ((($Memory_26232 (|domain#$Memory_26232| |T@[Int]Bool|) (|contents#$Memory_26232| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_26172 0)) ((($Memory_26172 (|domain#$Memory_26172| |T@[Int]Bool|) (|contents#$Memory_26172| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_9152 0)) (((Vec_9152 (|v#Vec_9152| |T@[Int]Int|) (|l#Vec_9152| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_9152) (|$base_url#$1_DualAttestation_Credential| T@Vec_9152) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_9152) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_26057 0)) ((($Memory_26057 (|domain#$Memory_26057| |T@[Int]Bool|) (|contents#$Memory_26057| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_9152) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_9152) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_9152) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_15574 0)) (((Vec_15574 (|v#Vec_15574| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_15574| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_15574) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_9152) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_9152) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_25266 0)) ((($Memory_25266 (|domain#$Memory_25266| |T@[Int]Bool|) (|contents#$Memory_25266| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_9152) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_25719 0)) ((($Memory_25719 (|domain#$Memory_25719| |T@[Int]Bool|) (|contents#$Memory_25719| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_24893 0)) ((($Memory_24893 (|domain#$Memory_24893| |T@[Int]Bool|) (|contents#$Memory_24893| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_24771 0)) ((($Memory_24771 (|domain#$Memory_24771| |T@[Int]Bool|) (|contents#$Memory_24771| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_9152) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_9152) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_15488 0)) (((Multiset_15488 (|v#Multiset_15488| |T@[$EventRep]Int|) (|l#Multiset_15488| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_15488| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_15488|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_24026 0)) ((($Mutation_24026 (|l#$Mutation_24026| T@$Location) (|p#$Mutation_24026| T@Vec_9152) (|v#$Mutation_24026| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_9152) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19924 0)) ((($Mutation_19924 (|l#$Mutation_19924| T@$Location) (|p#$Mutation_19924| T@Vec_9152) (|v#$Mutation_19924| T@Vec_9152) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| T@Vec_9152) (|v#$Mutation_18299| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_17312 0)) ((($Mutation_17312 (|l#$Mutation_17312| T@$Location) (|p#$Mutation_17312| T@Vec_9152) (|v#$Mutation_17312| T@Vec_15574) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_15574 T@Vec_15574) Bool)
(declare-fun InRangeVec_13626 (T@Vec_15574 Int) Bool)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_9152 T@Vec_9152) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_15574) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_15574 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_9152 T@Vec_9152) Bool)
(declare-fun InRangeVec_4118 (T@Vec_9152 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_9152) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_9152 Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_9152) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_9152 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_9152) T@Vec_9152)
(declare-fun $1_Hash_sha3 (T@Vec_9152) T@Vec_9152)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_9152) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_9152 T@Vec_9152 T@Vec_9152) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_15488_| (|T@[$1_Event_EventHandle]Multiset_15488| T@$1_Event_EventHandle) T@Multiset_15488)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun IndexOfVec_9152 (T@Vec_9152 Int) Int)
(declare-fun IndexOfVec_15574 (T@Vec_15574 T@$1_ValidatorConfig_Config) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_15488| |T@[$1_Event_EventHandle]Multiset_15488|) |T@[$1_Event_EventHandle]Multiset_15488|)
(declare-fun |lambda#9| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#4| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorOperatorConfigbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorOperatorConfigbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorOperatorConfigbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorOperatorConfigbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorOperatorConfigbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorOperatorConfigbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorOperatorConfigbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorOperatorConfigbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_15574) (v2 T@Vec_15574) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1 v2)  (and (= (|l#Vec_15574| v1) (|l#Vec_15574| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_13626 v1 i@@0) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v1) i@@0)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v2) i@@0))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v1) i@@0)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v2) i@@0)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v1) i@@0)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v2) i@@0)))))
 :qid |ValidatorOperatorConfigbpl.615:13|
 :skolemid |17|
))))
 :qid |ValidatorOperatorConfigbpl.613:51|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_15574) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_15574| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_13626 v@@4 i@@1) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v@@4) i@@1)))
 :qid |ValidatorOperatorConfigbpl.621:13|
 :skolemid |19|
))))
 :qid |ValidatorOperatorConfigbpl.619:51|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_15574) (e T@$1_ValidatorConfig_Config) ) (! (let ((i@@2 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_13626 v@@5 i@@3)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v@@5) i@@3)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v@@5) i@@3)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v@@5) i@@3)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e))))
 :qid |ValidatorOperatorConfigbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_13626 v@@5 i@@2)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v@@5) i@@2)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v@@5) i@@2)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v@@5) i@@2)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e)))) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v@@5) j)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v@@5) j)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v@@5) j)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e)))))
 :qid |ValidatorOperatorConfigbpl.634:17|
 :skolemid |22|
)))))
 :qid |ValidatorOperatorConfigbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_9152) (v2@@0 T@Vec_9152) ) (! (= (|$IsEqual'vec'address''| v1@@0 v2@@0)  (and (= (|l#Vec_9152| v1@@0) (|l#Vec_9152| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_9152| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_9152| v2@@0) i@@4)))
 :qid |ValidatorOperatorConfigbpl.796:13|
 :skolemid |24|
))))
 :qid |ValidatorOperatorConfigbpl.794:33|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'address''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_9152) ) (! (= (|$IsValid'vec'address''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_9152| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_9152| v@@6) i@@5)))
 :qid |ValidatorOperatorConfigbpl.802:13|
 :skolemid |26|
))))
 :qid |ValidatorOperatorConfigbpl.800:33|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'address''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_9152) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'address'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_9152| v@@7) i@@7) e@@0))
 :qid |ValidatorOperatorConfigbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_9152| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_9152| v@@7) j@@0) e@@0)))
 :qid |ValidatorOperatorConfigbpl.815:17|
 :skolemid |29|
)))))
 :qid |ValidatorOperatorConfigbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'address'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_9152) (v2@@1 T@Vec_9152) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_9152| v1@@1) (|l#Vec_9152| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_9152| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_9152| v2@@1) i@@8)))
 :qid |ValidatorOperatorConfigbpl.977:13|
 :skolemid |31|
))))
 :qid |ValidatorOperatorConfigbpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_9152) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_9152| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_9152| v@@8) i@@9)))
 :qid |ValidatorOperatorConfigbpl.983:13|
 :skolemid |33|
))))
 :qid |ValidatorOperatorConfigbpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_9152) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_9152| v@@9) i@@11) e@@1))
 :qid |ValidatorOperatorConfigbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_9152| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_9152| v@@9) j@@1) e@@1)))
 :qid |ValidatorOperatorConfigbpl.996:17|
 :skolemid |36|
)))))
 :qid |ValidatorOperatorConfigbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_9152) (v2@@2 T@Vec_9152) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |ValidatorOperatorConfigbpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_9152) (v2@@3 T@Vec_9152) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |ValidatorOperatorConfigbpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_9152) (k2 T@Vec_9152) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorOperatorConfigbpl.1256:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_9152) (s2 T@Vec_9152) (k1@@0 T@Vec_9152) (k2@@0 T@Vec_9152) (m1 T@Vec_9152) (m2 T@Vec_9152) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorOperatorConfigbpl.1259:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_15488_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_15488| stream) 0) (forall ((v@@10 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_15488| stream) v@@10) 0)
 :qid |ValidatorOperatorConfigbpl.159:13|
 :skolemid |4|
))))
 :qid |ValidatorOperatorConfigbpl.1320:13|
 :skolemid |42|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h) true)
 :qid |ValidatorOperatorConfigbpl.1361:82|
 :skolemid |44|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h))
)))
(assert (forall ((v1@@4 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@4 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@4) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@4)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@4) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@4))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@4) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@4)))
 :qid |ValidatorOperatorConfigbpl.1367:15|
 :skolemid |45|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@4) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@4))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@0) true)
 :qid |ValidatorOperatorConfigbpl.1417:88|
 :skolemid |46|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@0))
)))
(assert (forall ((v1@@5 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@5 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@5) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@5)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@5) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@5))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@5)))
 :qid |ValidatorOperatorConfigbpl.1423:15|
 :skolemid |47|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@5))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |ValidatorOperatorConfigbpl.1489:61|
 :skolemid |48|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |ValidatorOperatorConfigbpl.1553:36|
 :skolemid |50|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |ValidatorOperatorConfigbpl.1956:71|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |ValidatorOperatorConfigbpl.2668:46|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |ValidatorOperatorConfigbpl.2680:64|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@4)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@4)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@4))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@4))))
 :qid |ValidatorOperatorConfigbpl.2708:55|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@4))
)))
(assert (forall ((s@@5 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@5)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@5)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@5))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@5))))
 :qid |ValidatorOperatorConfigbpl.2731:46|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@6) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@6)))
 :qid |ValidatorOperatorConfigbpl.2747:45|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@7) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@7)))
 :qid |ValidatorOperatorConfigbpl.2760:45|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@7))
)))
(assert (forall ((s@@8 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@8) true)
 :qid |ValidatorOperatorConfigbpl.2773:31|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@8))
)))
(assert (forall ((s@@9 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@9) true)
 :qid |ValidatorOperatorConfigbpl.2786:31|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@9))
)))
(assert (forall ((s@@10 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@10)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@10)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@10))))
 :qid |ValidatorOperatorConfigbpl.2812:60|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@11)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@11)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@11))))
 :qid |ValidatorOperatorConfigbpl.2829:66|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@11))
)))
(assert (forall ((s@@12 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@12)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@12)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@12))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@12))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@12))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@12))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@12))))
 :qid |ValidatorOperatorConfigbpl.2858:50|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@12))
)))
(assert (forall ((s@@13 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@13) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@13)))
 :qid |ValidatorOperatorConfigbpl.2881:45|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@13))
)))
(assert (forall ((s@@14 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@14) true)
 :qid |ValidatorOperatorConfigbpl.2895:51|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@15) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@15)))
 :qid |ValidatorOperatorConfigbpl.2909:55|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@16) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@16)))
 :qid |ValidatorOperatorConfigbpl.2923:55|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@16))
)))
(assert (forall ((v@@11 T@Vec_15574) (i@@12 Int) ) (! (= (InRangeVec_13626 v@@11 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_15574| v@@11))))
 :qid |ValidatorOperatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_13626 v@@11 i@@12))
)))
(assert (forall ((v@@12 T@Vec_9152) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@12 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_9152| v@@12))))
 :qid |ValidatorOperatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@12 i@@13))
)))
(assert (forall ((v@@13 T@Vec_9152) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_9152 v@@13 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@13 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_9152| v@@13) i@@15) e@@2))
 :qid |ValidatorOperatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@13 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_9152| v@@13) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_9152| v@@13) j@@2) e@@2)))
 :qid |ValidatorOperatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorOperatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_9152 v@@13 e@@2))
)))
(assert (forall ((v@@14 T@Vec_15574) (e@@3 T@$1_ValidatorConfig_Config) ) (! (let ((i@@16 (IndexOfVec_15574 v@@14 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_13626 v@@14 i@@17) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v@@14) i@@17) e@@3))
 :qid |ValidatorOperatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_13626 v@@14 i@@16) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v@@14) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_15574| v@@14) j@@3) e@@3)))
 :qid |ValidatorOperatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorOperatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_15574 v@@14 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |ValidatorOperatorConfigbpl.275:54|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_15488|) (|l#1| |T@[$1_Event_EventHandle]Multiset_15488|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_15488_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_15488| (|Select__T@[$1_Event_EventHandle]Multiset_15488_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_15488| (|Select__T@[$1_Event_EventHandle]Multiset_15488_| |l#1| handle@@0))))
(Multiset_15488 (|lambda#9| (|v#Multiset_15488| (|Select__T@[$1_Event_EventHandle]Multiset_15488_| |l#0@@0| handle@@0)) (|v#Multiset_15488| (|Select__T@[$1_Event_EventHandle]Multiset_15488_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorOperatorConfigbpl.1330:13|
 :skolemid |128|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_15488_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$1_ValidatorConfig_Config|) (|l#4| |T@[Int]$1_ValidatorConfig_Config|) (|l#5| Int) (|l#6| T@$1_ValidatorConfig_Config) (i@@19 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@1|) (< i@@19 |l#1@@0|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3| i@@19) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |ValidatorOperatorConfigbpl.73:19|
 :skolemid |129|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_ValidatorConfig_Config) (i@@20 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@2| i@@20) (< i@@20 |l#1@@1|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |ValidatorOperatorConfigbpl.82:30|
 :skolemid |130|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@1| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@1| Int) (|l#6@@0| T@$1_ValidatorConfig_Config) (j@@4 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@3|) (< j@@4 |l#1@@2|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@1| j@@4) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |ValidatorOperatorConfigbpl.63:20|
 :skolemid |131|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@4|) (< i@@21 |l#1@@3|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |ValidatorOperatorConfigbpl.73:19|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@5| i@@22) (< i@@22 |l#1@@4|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |ValidatorOperatorConfigbpl.82:30|
 :skolemid |133|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@6|) (< j@@5 |l#1@@5|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |ValidatorOperatorConfigbpl.63:20|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@7| |T@[$EventRep]Int|) (|l#1@@6| |T@[$EventRep]Int|) (v@@15 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#9| |l#0@@7| |l#1@@6|) v@@15) (- (|Select__T@[$EventRep]Int_| |l#0@@7| v@@15) (|Select__T@[$EventRep]Int_| |l#1@@6| v@@15)))
 :qid |ValidatorOperatorConfigbpl.154:29|
 :skolemid |135|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#9| |l#0@@7| |l#1@@6|) v@@15))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1 () T@$Memory_25719)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_24893)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_25719)
(declare-fun $t5 () Int)
(declare-fun _$t1 () T@$signer)
(declare-fun $t6 () Int)
(declare-fun $t7 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_24771)
(declare-fun $t8 () Int)
(declare-fun $t9 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun $t11@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@0 () T@$Memory_25719)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| Int T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|)
(declare-fun |Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| Int) T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun $t21@0 () T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun _$t2 () T@Vec_9152)
(declare-fun $t20 () Int)
(declare-fun inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 () Bool)
(declare-fun $t15 () Bool)
(declare-fun $t14 () Int)
(declare-fun $t11 () Int)
(declare-fun $t13 () Bool)
(declare-fun $t12 () Int)
(declare-fun $t10 () Bool)
(declare-fun $t16 () Int)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_25266)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_26057)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_26172)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_26232)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_ValidatorOperatorConfig_publish$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 40991) (let ((anon24_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 37286) (- 0 42556)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr)) 4))))
 :qid |ValidatorOperatorConfigbpl.2552:15|
 :skolemid |110|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@0)) 4))))
 :qid |ValidatorOperatorConfigbpl.2552:15|
 :skolemid |110|
)) (and (=> (= (ControlFlow 0 37286) (- 0 42581)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr@@1)))
 :qid |ValidatorOperatorConfigbpl.2558:15|
 :skolemid |111|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr@@2)))
 :qid |ValidatorOperatorConfigbpl.2558:15|
 :skolemid |111|
)) (and (=> (= (ControlFlow 0 37286) (- 0 42608)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t5))) (and (=> (= (ControlFlow 0 37286) (- 0 42620)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t5)) 0))) (and (=> (= (ControlFlow 0 37286) (- 0 42638)) (not (not (= (|$addr#$signer| _$t1) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1) 173345816))) (and (=> (= (ControlFlow 0 37286) (- 0 42652)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 37286) (- 0 42664)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t6)) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t6)) 4))) (and (=> (= (ControlFlow 0 37286) (- 0 42682)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t7))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t7)) (and (=> (= (ControlFlow 0 37286) (- 0 42692)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_24771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_24771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 37286) (- 0 42702)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t8))) (and (=> (= (ControlFlow 0 37286) (- 0 42714)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t8)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t8)) 0))) (and (=> (= (ControlFlow 0 37286) (- 0 42732)) (not (not (= (|$addr#$signer| _$t1) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1) 173345816))) (and (=> (= (ControlFlow 0 37286) (- 0 42746)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t9)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t9))) (and (=> (= (ControlFlow 0 37286) (- 0 42758)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t9)) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t9)) 4))) (=> (= (ControlFlow 0 37286) (- 0 42776)) (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) (|$addr#$signer| _$t0))))))))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 37012) (- 0 42201)) (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t5)) 0))) (not (= (|$addr#$signer| _$t1) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t6)) 4))) (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t7)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_24771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t8)) 0))) (not (= (|$addr#$signer| _$t1) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t9))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t9)) 4)))) (=> (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t5)) 0))) (not (= (|$addr#$signer| _$t1) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t6)) 4))) (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t7)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_24771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t8)) 0))) (not (= (|$addr#$signer| _$t1) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t9))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t9)) 4))) (=> (= (ControlFlow 0 37012) (- 0 42331)) (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t5)) (= 5 $t11@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t5)) 0)) (= 3 $t11@0))) (and (not (= (|$addr#$signer| _$t1) 173345816)) (= 2 $t11@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t6)) (= 5 $t11@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t6)) 4)) (= 3 $t11@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t7) (= 6 $t11@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_24771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t8)) (= 5 $t11@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t8)) 0)) (= 3 $t11@0))) (and (not (= (|$addr#$signer| _$t1) 173345816)) (= 2 $t11@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t9)) (= 5 $t11@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t9)) 4)) (= 3 $t11@0))))))))
(let ((anon24_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 37300) 37012))) L3_correct)))
(let ((anon23_Then$1_correct  (=> (= $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1 $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 37352) 37300) anon24_Then_correct) (=> (= (ControlFlow 0 37352) 37286) anon24_Else_correct))))))
(let ((anon23_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 37350) 37352)) anon23_Then$1_correct)))
(let ((anon23_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0))) (=> (and (and (= $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@0 ($Memory_25719 (|Store__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0) $t21@0))) (= $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1 $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 37048) 37300) anon24_Then_correct) (=> (= (ControlFlow 0 37048) 37286) anon24_Else_correct))))))
(let ((anon22_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t21@0 ($1_ValidatorOperatorConfig_ValidatorOperatorConfig _$t2))) (and (=> (= (ControlFlow 0 37026) 37350) anon23_Then_correct) (=> (= (ControlFlow 0 37026) 37048) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 36624) 37012))) L3_correct)))
(let ((anon21_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 6)) (and (= $t20 $t20) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 36608) 37026) anon22_Then_correct) (=> (= (ControlFlow 0 36608) 36624) anon22_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1)) (= (ControlFlow 0 36568) 36608)) anon21_Else$1_correct)))
(let ((anon21_Else_correct  (=> (and (not false) (= (ControlFlow 0 36574) 36568)) inline$$Not$0$anon0_correct)))
(let ((anon20_Then_correct  (=> $t15 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t14)) (= 5 $t11)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t14)) 4)) (= 3 $t11))) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 37418) 37012))) L3_correct))))
(let ((anon19_Then_correct  (=> $t13 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t1) 173345816)) (= 2 $t11)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t12)) (= 5 $t11))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t12)) 0)) (= 3 $t11))) (and (not (= (|$addr#$signer| _$t1) 173345816)) (= 2 $t11))) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 37510) 37012))) L3_correct))))
(let ((anon18_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_24771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 37536) 37012))) L3_correct))))
(let ((anon21_Then_correct true))
(let ((inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct  (=> (= $t16 $t16) (=> (and (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t16)) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1)) (and (=> (= (ControlFlow 0 36524) 37366) anon21_Then_correct) (=> (= (ControlFlow 0 36524) 36574) anon21_Else_correct))))))
(let ((anon20_Else_correct  (=> (and (and (not $t15) (|$IsValid'address'| $t16)) (and (= $t16 (|$addr#$signer| _$t0)) (= (ControlFlow 0 36530) 36524))) inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct)))
(let ((anon19_Else_correct  (=> (not $t13) (=> (and (= $t14 (|$addr#$signer| _$t0)) (= $t15  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t14)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t14)) 4))))) (and (=> (= (ControlFlow 0 36407) 37418) anon20_Then_correct) (=> (= (ControlFlow 0 36407) 36530) anon20_Else_correct))))))
(let ((anon18_Else_correct  (=> (not $t10) (=> (and (= $t12 (|$addr#$signer| _$t1)) (= $t13  (or (or (or (not (= (|$addr#$signer| _$t1) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $t12)) 0))) (not (= (|$addr#$signer| _$t1) 173345816))))) (and (=> (= (ControlFlow 0 36361) 37510) anon19_Then_correct) (=> (= (ControlFlow 0 36361) 36407) anon19_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_24771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_24771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@3)) 0)) (= addr@@3 173345816)))
 :qid |ValidatorOperatorConfigbpl.2252:20|
 :skolemid |92|
))) (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@4)) 1)) (= addr@@4 186537453)))
 :qid |ValidatorOperatorConfigbpl.2256:20|
 :skolemid |93|
)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@5)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@5)) 2))))))
 :qid |ValidatorOperatorConfigbpl.2260:20|
 :skolemid |94|
)))) (=> (and (and (and (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@6)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@6)) 2))))))
 :qid |ValidatorOperatorConfigbpl.2264:20|
 :skolemid |95|
)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@7)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@7)) 2))))))
 :qid |ValidatorOperatorConfigbpl.2268:20|
 :skolemid |96|
))) (and (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@8)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@8)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@8)) 2))))))
 :qid |ValidatorOperatorConfigbpl.2272:20|
 :skolemid |97|
)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@9)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@9)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@9)) 2)))))
 :qid |ValidatorOperatorConfigbpl.2276:20|
 :skolemid |98|
)))) (and (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@10)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@10)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@10)) 2)))))
 :qid |ValidatorOperatorConfigbpl.2280:20|
 :skolemid |99|
)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@11)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@11)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@11)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@11)) 2)))))
 :qid |ValidatorOperatorConfigbpl.2284:20|
 :skolemid |100|
))) (and (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@12)) 4))))
 :qid |ValidatorOperatorConfigbpl.2288:20|
 :skolemid |101|
)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_25266| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@13)) 3))))
 :qid |ValidatorOperatorConfigbpl.2292:20|
 :skolemid |102|
))))) (and (and (and (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_25266| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@14)) 3))))
 :qid |ValidatorOperatorConfigbpl.2296:20|
 :skolemid |103|
)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_25266| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15) (not (= (|l#Vec_15574| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_25266| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@15)) 3))))
 :qid |ValidatorOperatorConfigbpl.2300:20|
 :skolemid |104|
))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_26057| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |ValidatorOperatorConfigbpl.2304:20|
 :skolemid |105|
)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_26172| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_26232| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@16)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@16)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@16)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_24893| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) addr@@16)) 2)))))
 :qid |ValidatorOperatorConfigbpl.2308:20|
 :skolemid |106|
)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))))) (=> (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1)) ($1_Signer_is_txn_signer _$t1)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t1))) (|$IsValid'vec'u8''| _$t2)) (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_24771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |ValidatorOperatorConfigbpl.2320:20|
 :skolemid |107|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_24771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |ValidatorOperatorConfigbpl.2324:20|
 :skolemid |108|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_24893| $1_Roles_RoleId_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@1)))
(|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| $rsc@@1))
 :qid |ValidatorOperatorConfigbpl.2328:20|
 :skolemid |109|
 :pattern ( (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_25719| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@1))
)) (= $t5 (|$addr#$signer| _$t1))))) (and (and (and (= $t6 (|$addr#$signer| _$t0)) (= $t7 (|$addr#$signer| _$t0))) (and (= $t8 (|$addr#$signer| _$t1)) (= $t9 (|$addr#$signer| _$t0)))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_24771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 36291) 37536) anon18_Then_correct) (=> (= (ControlFlow 0 36291) 36361) anon18_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_15488_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_15488| stream@@0) 0) (forall ((v@@16 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_15488| stream@@0) v@@16) 0)
 :qid |ValidatorOperatorConfigbpl.159:13|
 :skolemid |4|
))))
 :qid |ValidatorOperatorConfigbpl.1320:13|
 :skolemid |42|
))) (= (ControlFlow 0 35702) 36291)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 40991) 35702) inline$$InitEventStore$0$anon0_correct)))
anon0_correct)))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
