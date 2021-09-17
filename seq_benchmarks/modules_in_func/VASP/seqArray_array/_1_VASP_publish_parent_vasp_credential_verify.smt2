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
(declare-datatypes ((T@$Memory_31490 0)) ((($Memory_31490 (|domain#$Memory_31490| |T@[Int]Bool|) (|contents#$Memory_31490| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_21145 0)) (((Vec_21145 (|v#Vec_21145| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_21145| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_21145) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_35768 0)) ((($Memory_35768 (|domain#$Memory_35768| |T@[Int]Bool|) (|contents#$Memory_35768| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_35046 0)) ((($Memory_35046 (|domain#$Memory_35046| |T@[Int]Bool|) (|contents#$Memory_35046| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_34982 0)) ((($Memory_34982 (|domain#$Memory_34982| |T@[Int]Bool|) (|contents#$Memory_34982| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_34774 0)) ((($Memory_34774 (|domain#$Memory_34774| |T@[Int]Bool|) (|contents#$Memory_34774| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_34487 0)) ((($Memory_34487 (|domain#$Memory_34487| |T@[Int]Bool|) (|contents#$Memory_34487| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_40499 0)) ((($Memory_40499 (|domain#$Memory_40499| |T@[Int]Bool|) (|contents#$Memory_40499| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_40439 0)) ((($Memory_40439 (|domain#$Memory_40439| |T@[Int]Bool|) (|contents#$Memory_40439| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_9036 0)) (((Vec_9036 (|v#Vec_9036| |T@[Int]Int|) (|l#Vec_9036| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_9036) (|$base_url#$1_DualAttestation_Credential| T@Vec_9036) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_9036) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_40324 0)) ((($Memory_40324 (|domain#$Memory_40324| |T@[Int]Bool|) (|contents#$Memory_40324| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_9036) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_9036) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_9036) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_20992 0)) (((Vec_20992 (|v#Vec_20992| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_20992| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_20992) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_9036) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_9036) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_33693 0)) ((($Memory_33693 (|domain#$Memory_33693| |T@[Int]Bool|) (|contents#$Memory_33693| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_9036) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_33358 0)) ((($Memory_33358 (|domain#$Memory_33358| |T@[Int]Bool|) (|contents#$Memory_33358| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_33031 0)) ((($Memory_33031 (|domain#$Memory_33031| |T@[Int]Bool|) (|contents#$Memory_33031| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_32909 0)) ((($Memory_32909 (|domain#$Memory_32909| |T@[Int]Bool|) (|contents#$Memory_32909| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_9036) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_9036) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_20906 0)) (((Multiset_20906 (|v#Multiset_20906| |T@[$EventRep]Int|) (|l#Multiset_20906| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_20906| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_20906|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_39658 0)) ((($Mutation_39658 (|l#$Mutation_39658| T@$Location) (|p#$Mutation_39658| T@Vec_9036) (|v#$Mutation_39658| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_32151 0)) ((($Mutation_32151 (|l#$Mutation_32151| T@$Location) (|p#$Mutation_32151| T@Vec_9036) (|v#$Mutation_32151| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_5883 0)) ((($Mutation_5883 (|l#$Mutation_5883| T@$Location) (|p#$Mutation_5883| T@Vec_9036) (|v#$Mutation_5883| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28049 0)) ((($Mutation_28049 (|l#$Mutation_28049| T@$Location) (|p#$Mutation_28049| T@Vec_9036) (|v#$Mutation_28049| T@Vec_9036) ) ) ))
(declare-datatypes ((T@$Mutation_26472 0)) ((($Mutation_26472 (|l#$Mutation_26472| T@$Location) (|p#$Mutation_26472| T@Vec_9036) (|v#$Mutation_26472| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_25485 0)) ((($Mutation_25485 (|l#$Mutation_25485| T@$Location) (|p#$Mutation_25485| T@Vec_9036) (|v#$Mutation_25485| T@Vec_20992) ) ) ))
(declare-datatypes ((T@$Mutation_23709 0)) ((($Mutation_23709 (|l#$Mutation_23709| T@$Location) (|p#$Mutation_23709| T@Vec_9036) (|v#$Mutation_23709| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_22722 0)) ((($Mutation_22722 (|l#$Mutation_22722| T@$Location) (|p#$Mutation_22722| T@Vec_9036) (|v#$Mutation_22722| T@Vec_21145) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_21145 T@Vec_21145) Bool)
(declare-fun InRangeVec_18435 (T@Vec_21145 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_21145) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_21145 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_20992 T@Vec_20992) Bool)
(declare-fun InRangeVec_18636 (T@Vec_20992 Int) Bool)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_9036 T@Vec_9036) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_20992) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_20992 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_9036 T@Vec_9036) Bool)
(declare-fun InRangeVec_5259 (T@Vec_9036 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_9036) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_9036 Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_9036) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_9036 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_9036) T@Vec_9036)
(declare-fun $1_Hash_sha3 (T@Vec_9036) T@Vec_9036)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_9036) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_9036 T@Vec_9036 T@Vec_9036) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_20906_| (|T@[$1_Event_EventHandle]Multiset_20906| T@$1_Event_EventHandle) T@Multiset_20906)
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
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'#0''| (|T@$1_AccountLimits_LimitsDefinition'#0'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'#0''| (|T@$1_AccountLimits_Window'#0'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_RecoveryAddress_RecoveryAddress'| (T@$1_RecoveryAddress_RecoveryAddress) Bool)
(declare-fun IndexOfVec_9036 (T@Vec_9036 Int) Int)
(declare-fun IndexOfVec_20992 (T@Vec_20992 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_21145 (T@Vec_21145 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_20906| |T@[$1_Event_EventHandle]Multiset_20906|) |T@[$1_Event_EventHandle]Multiset_20906|)
(declare-fun |lambda#12| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#4| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#10| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |VASPbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |VASPbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |VASPbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |VASPbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |VASPbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |VASPbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |VASPbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |VASPbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_21145) (v2 T@Vec_21145) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2)  (and (= (|l#Vec_21145| v1) (|l#Vec_21145| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_18435 v1 i@@0) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_21145| v1) i@@0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_21145| v2) i@@0)))
 :qid |VASPbpl.615:13|
 :skolemid |17|
))))
 :qid |VASPbpl.613:62|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_21145) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_21145| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_18435 v@@4 i@@1) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_21145| v@@4) i@@1)))
 :qid |VASPbpl.621:13|
 :skolemid |19|
))))
 :qid |VASPbpl.619:62|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_21145) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@2 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_18435 v@@5 i@@3)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_21145| v@@5) i@@3) e))
 :qid |VASPbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_18435 v@@5 i@@2)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_21145| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_21145| v@@5) j) e)))
 :qid |VASPbpl.634:17|
 :skolemid |22|
)))))
 :qid |VASPbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_20992) (v2@@0 T@Vec_20992) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@0 v2@@0)  (and (= (|l#Vec_20992| v1@@0) (|l#Vec_20992| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_18636 v1@@0 i@@4) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v1@@0) i@@4)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v2@@0) i@@4))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v1@@0) i@@4)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v2@@0) i@@4)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v1@@0) i@@4)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v2@@0) i@@4)))))
 :qid |VASPbpl.796:13|
 :skolemid |24|
))))
 :qid |VASPbpl.794:51|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_20992) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_20992| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_18636 v@@6 i@@5) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v@@6) i@@5)))
 :qid |VASPbpl.802:13|
 :skolemid |26|
))))
 :qid |VASPbpl.800:51|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_20992) (e@@0 T@$1_ValidatorConfig_Config) ) (! (let ((i@@6 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_18636 v@@7 i@@7)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v@@7) i@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@0)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v@@7) i@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@0))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v@@7) i@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@0))))
 :qid |VASPbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_18636 v@@7 i@@6)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v@@7) i@@6)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@0)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v@@7) i@@6)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@0))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v@@7) i@@6)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@0)))) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v@@7) j@@0)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@0)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v@@7) j@@0)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@0))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v@@7) j@@0)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@0)))))
 :qid |VASPbpl.815:17|
 :skolemid |29|
)))))
 :qid |VASPbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_9036) (v2@@1 T@Vec_9036) ) (! (= (|$IsEqual'vec'address''| v1@@1 v2@@1)  (and (= (|l#Vec_9036| v1@@1) (|l#Vec_9036| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_5259 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_9036| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_9036| v2@@1) i@@8)))
 :qid |VASPbpl.977:13|
 :skolemid |31|
))))
 :qid |VASPbpl.975:33|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'address''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_9036) ) (! (= (|$IsValid'vec'address''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_9036| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_5259 v@@8 i@@9) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_9036| v@@8) i@@9)))
 :qid |VASPbpl.983:13|
 :skolemid |33|
))))
 :qid |VASPbpl.981:33|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'address''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_9036) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'address'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_5259 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_9036| v@@9) i@@11) e@@1))
 :qid |VASPbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_5259 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_9036| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_9036| v@@9) j@@1) e@@1)))
 :qid |VASPbpl.996:17|
 :skolemid |36|
)))))
 :qid |VASPbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'address'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_9036) (v2@@2 T@Vec_9036) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2)  (and (= (|l#Vec_9036| v1@@2) (|l#Vec_9036| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_5259 v1@@2 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_9036| v1@@2) i@@12) (|Select__T@[Int]Int_| (|v#Vec_9036| v2@@2) i@@12)))
 :qid |VASPbpl.1158:13|
 :skolemid |38|
))))
 :qid |VASPbpl.1156:28|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'u8''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_9036) ) (! (= (|$IsValid'vec'u8''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_9036| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_5259 v@@10 i@@13) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_9036| v@@10) i@@13)))
 :qid |VASPbpl.1164:13|
 :skolemid |40|
))))
 :qid |VASPbpl.1162:28|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u8''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_9036) (e@@2 Int) ) (! (let ((i@@14 (|$IndexOfVec'u8'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_5259 v@@11 i@@15)) (= (|Select__T@[Int]Int_| (|v#Vec_9036| v@@11) i@@15) e@@2))
 :qid |VASPbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_5259 v@@11 i@@14)) (= (|Select__T@[Int]Int_| (|v#Vec_9036| v@@11) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_9036| v@@11) j@@2) e@@2)))
 :qid |VASPbpl.1177:17|
 :skolemid |43|
)))))
 :qid |VASPbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u8'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_9036) (v2@@3 T@Vec_9036) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@3) ($1_Hash_sha2 v2@@3)))
 :qid |VASPbpl.1350:15|
 :skolemid |45|
 :pattern ( ($1_Hash_sha2 v1@@3) ($1_Hash_sha2 v2@@3))
)))
(assert (forall ((v1@@4 T@Vec_9036) (v2@@4 T@Vec_9036) ) (! (= (|$IsEqual'vec'u8''| v1@@4 v2@@4) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@4) ($1_Hash_sha3 v2@@4)))
 :qid |VASPbpl.1366:15|
 :skolemid |46|
 :pattern ( ($1_Hash_sha3 v1@@4) ($1_Hash_sha3 v2@@4))
)))
(assert (forall ((k1 T@Vec_9036) (k2 T@Vec_9036) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |VASPbpl.1437:15|
 :skolemid |47|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_9036) (s2 T@Vec_9036) (k1@@0 T@Vec_9036) (k2@@0 T@Vec_9036) (m1 T@Vec_9036) (m2 T@Vec_9036) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |VASPbpl.1440:15|
 :skolemid |48|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_20906_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_20906| stream) 0) (forall ((v@@12 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_20906| stream) v@@12) 0)
 :qid |VASPbpl.159:13|
 :skolemid |4|
))))
 :qid |VASPbpl.1501:13|
 :skolemid |49|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h) true)
 :qid |VASPbpl.1542:82|
 :skolemid |51|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h))
)))
(assert (forall ((v1@@5 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@5 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@5) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@5)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@5) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@5))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@5)))
 :qid |VASPbpl.1548:15|
 :skolemid |52|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@5))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@0) true)
 :qid |VASPbpl.1598:88|
 :skolemid |53|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@0))
)))
(assert (forall ((v1@@6 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@6 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@6) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@6)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@6) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@6))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@6) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@6)))
 :qid |VASPbpl.1604:15|
 :skolemid |54|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@6) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@6))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |VASPbpl.1673:61|
 :skolemid |55|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |VASPbpl.1732:36|
 :skolemid |56|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |VASPbpl.1751:71|
 :skolemid |57|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |VASPbpl.1774:46|
 :skolemid |58|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |VASPbpl.1786:64|
 :skolemid |59|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@4)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@4)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@4))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@4))))
 :qid |VASPbpl.1814:55|
 :skolemid |60|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@4))
)))
(assert (forall ((s@@5 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@5)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@5)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@5))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@5))))
 :qid |VASPbpl.1837:46|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@6) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@6)))
 :qid |VASPbpl.1853:45|
 :skolemid |62|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@7) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@7)))
 :qid |VASPbpl.1866:45|
 :skolemid |63|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@7))
)))
(assert (forall ((s@@8 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@8)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@8)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@8))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@8))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@8))))
 :qid |VASPbpl.1888:58|
 :skolemid |64|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@8))
)))
(assert (forall ((s@@9 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@9)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@9)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@9))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@9))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@9))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@9))))
 :qid |VASPbpl.1917:48|
 :skolemid |65|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@9))
)))
(assert (forall ((s@@10 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@10) true)
 :qid |VASPbpl.1967:31|
 :skolemid |66|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@10))
)))
(assert (forall ((s@@11 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@11) true)
 :qid |VASPbpl.1980:31|
 :skolemid |67|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@11))
)))
(assert (forall ((s@@12 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@12) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@12)))
 :qid |VASPbpl.2023:38|
 :skolemid |68|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@12))
)))
(assert (forall ((s@@13 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@13) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@13)))
 :qid |VASPbpl.2037:39|
 :skolemid |69|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@13))
)))
(assert (forall ((s@@14 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@14)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@14)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@14))))
 :qid |VASPbpl.4260:60|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@15)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@15)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@15))))
 :qid |VASPbpl.4277:66|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@16)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@16)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@16))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@16))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@16))))
 :qid |VASPbpl.4306:50|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@17) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@17)))
 :qid |VASPbpl.4329:55|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@18) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@18)))
 :qid |VASPbpl.4343:55|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@19) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@19)))
 :qid |VASPbpl.4357:57|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@19))
)))
(assert (forall ((s@@20 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@20) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@20)))
 :qid |VASPbpl.4375:55|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@20))
)))
(assert (forall ((v@@13 T@Vec_21145) (i@@16 Int) ) (! (= (InRangeVec_18435 v@@13 i@@16)  (and (>= i@@16 0) (< i@@16 (|l#Vec_21145| v@@13))))
 :qid |VASPbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_18435 v@@13 i@@16))
)))
(assert (forall ((v@@14 T@Vec_20992) (i@@17 Int) ) (! (= (InRangeVec_18636 v@@14 i@@17)  (and (>= i@@17 0) (< i@@17 (|l#Vec_20992| v@@14))))
 :qid |VASPbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_18636 v@@14 i@@17))
)))
(assert (forall ((v@@15 T@Vec_9036) (i@@18 Int) ) (! (= (InRangeVec_5259 v@@15 i@@18)  (and (>= i@@18 0) (< i@@18 (|l#Vec_9036| v@@15))))
 :qid |VASPbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_5259 v@@15 i@@18))
)))
(assert (forall ((v@@16 T@Vec_9036) (e@@3 Int) ) (! (let ((i@@19 (IndexOfVec_9036 v@@16 e@@3)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (InRangeVec_5259 v@@16 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_9036| v@@16) i@@20) e@@3))
 :qid |VASPbpl.109:13|
 :skolemid |0|
))) (= i@@19 (- 0 1))  (and (and (InRangeVec_5259 v@@16 i@@19) (= (|Select__T@[Int]Int_| (|v#Vec_9036| v@@16) i@@19) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@19)) (not (= (|Select__T@[Int]Int_| (|v#Vec_9036| v@@16) j@@3) e@@3)))
 :qid |VASPbpl.117:17|
 :skolemid |1|
)))))
 :qid |VASPbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_9036 v@@16 e@@3))
)))
(assert (forall ((v@@17 T@Vec_20992) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@21 (IndexOfVec_20992 v@@17 e@@4)))
(ite  (not (exists ((i@@22 Int) ) (!  (and (InRangeVec_18636 v@@17 i@@22) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v@@17) i@@22) e@@4))
 :qid |VASPbpl.109:13|
 :skolemid |0|
))) (= i@@21 (- 0 1))  (and (and (InRangeVec_18636 v@@17 i@@21) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v@@17) i@@21) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (>= j@@4 0) (< j@@4 i@@21)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_20992| v@@17) j@@4) e@@4)))
 :qid |VASPbpl.117:17|
 :skolemid |1|
)))))
 :qid |VASPbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_20992 v@@17 e@@4))
)))
(assert (forall ((v@@18 T@Vec_21145) (e@@5 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@23 (IndexOfVec_21145 v@@18 e@@5)))
(ite  (not (exists ((i@@24 Int) ) (!  (and (InRangeVec_18435 v@@18 i@@24) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_21145| v@@18) i@@24) e@@5))
 :qid |VASPbpl.109:13|
 :skolemid |0|
))) (= i@@23 (- 0 1))  (and (and (InRangeVec_18435 v@@18 i@@23) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_21145| v@@18) i@@23) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (>= j@@5 0) (< j@@5 i@@23)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_21145| v@@18) j@@5) e@@5)))
 :qid |VASPbpl.117:17|
 :skolemid |1|
)))))
 :qid |VASPbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_21145 v@@18 e@@5))
)))
(assert (forall ((|l#0| Bool) (i@@25 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@25) |l#0|)
 :qid |VASPbpl.275:54|
 :skolemid |182|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@25))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_20906|) (|l#1| |T@[$1_Event_EventHandle]Multiset_20906|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_20906_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_20906| (|Select__T@[$1_Event_EventHandle]Multiset_20906_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_20906| (|Select__T@[$1_Event_EventHandle]Multiset_20906_| |l#1| handle@@0))))
(Multiset_20906 (|lambda#12| (|v#Multiset_20906| (|Select__T@[$1_Event_EventHandle]Multiset_20906_| |l#0@@0| handle@@0)) (|v#Multiset_20906| (|Select__T@[$1_Event_EventHandle]Multiset_20906_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |VASPbpl.1511:13|
 :skolemid |183|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_20906_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5| Int) (|l#6| T@$1_DiemAccount_KeyRotationCapability) (i@@26 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@26) (ite  (and (>= i@@26 |l#0@@1|) (< i@@26 |l#1@@0|)) (ite (< i@@26 |l#2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3| i@@26) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4| (- i@@26 |l#5|))) |l#6|))
 :qid |VASPbpl.73:19|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@26))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_DiemAccount_KeyRotationCapability) (i@@27 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@27) (ite  (and (<= |l#0@@2| i@@27) (< i@@27 |l#1@@1|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@0| (- (- |l#3@@0| i@@27) |l#4@@0|)) |l#5@@0|))
 :qid |VASPbpl.82:30|
 :skolemid |185|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@27))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@1| Int) (|l#6@@0| T@$1_DiemAccount_KeyRotationCapability) (j@@6 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@6) (ite  (and (>= j@@6 |l#0@@3|) (< j@@6 |l#1@@2|)) (ite (< j@@6 |l#2@@1|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@1| j@@6) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@1| (+ j@@6 |l#5@@1|))) |l#6@@0|))
 :qid |VASPbpl.63:20|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@6))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@2| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@2| Int) (|l#6@@1| T@$1_ValidatorConfig_Config) (i@@28 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@28) (ite  (and (>= i@@28 |l#0@@4|) (< i@@28 |l#1@@3|)) (ite (< i@@28 |l#2@@2|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@2| i@@28) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@2| (- i@@28 |l#5@@2|))) |l#6@@1|))
 :qid |VASPbpl.73:19|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@28))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_ValidatorConfig_Config) (i@@29 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@29) (ite  (and (<= |l#0@@5| i@@29) (< i@@29 |l#1@@4|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@3| (- (- |l#3@@3| i@@29) |l#4@@3|)) |l#5@@3|))
 :qid |VASPbpl.82:30|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@29))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@4| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@4| Int) (|l#6@@2| T@$1_ValidatorConfig_Config) (j@@7 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@7) (ite  (and (>= j@@7 |l#0@@6|) (< j@@7 |l#1@@5|)) (ite (< j@@7 |l#2@@4|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@4| j@@7) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@4| (+ j@@7 |l#5@@4|))) |l#6@@2|))
 :qid |VASPbpl.63:20|
 :skolemid |189|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@7))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]Int|) (|l#4@@5| |T@[Int]Int|) (|l#5@@5| Int) (|l#6@@3| Int) (i@@30 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@30) (ite  (and (>= i@@30 |l#0@@7|) (< i@@30 |l#1@@6|)) (ite (< i@@30 |l#2@@5|) (|Select__T@[Int]Int_| |l#3@@5| i@@30) (|Select__T@[Int]Int_| |l#4@@5| (- i@@30 |l#5@@5|))) |l#6@@3|))
 :qid |VASPbpl.73:19|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@30))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]Int|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| Int) (i@@31 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@31) (ite  (and (<= |l#0@@8| i@@31) (< i@@31 |l#1@@7|)) (|Select__T@[Int]Int_| |l#2@@6| (- (- |l#3@@6| i@@31) |l#4@@6|)) |l#5@@6|))
 :qid |VASPbpl.82:30|
 :skolemid |191|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@31))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]Int|) (|l#4@@7| |T@[Int]Int|) (|l#5@@7| Int) (|l#6@@4| Int) (j@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@8) (ite  (and (>= j@@8 |l#0@@9|) (< j@@8 |l#1@@8|)) (ite (< j@@8 |l#2@@7|) (|Select__T@[Int]Int_| |l#3@@7| j@@8) (|Select__T@[Int]Int_| |l#4@@7| (+ j@@8 |l#5@@7|))) |l#6@@4|))
 :qid |VASPbpl.63:20|
 :skolemid |192|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@8))
)))
(assert (forall ((|l#0@@10| |T@[$EventRep]Int|) (|l#1@@9| |T@[$EventRep]Int|) (v@@19 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#12| |l#0@@10| |l#1@@9|) v@@19) (- (|Select__T@[$EventRep]Int_| |l#0@@10| v@@19) (|Select__T@[$EventRep]Int_| |l#1@@9| v@@19)))
 :qid |VASPbpl.154:29|
 :skolemid |193|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#12| |l#0@@10| |l#1@@9|) v@@19))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_35046)
(declare-fun $1_VASP_ParentVASP_$memory@1 () T@$Memory_35046)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_34982)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_35768)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_32909)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_33031)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t1 () T@$signer)
(declare-fun $t7 () Int)
(declare-fun $t5 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $t9@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_VASP_ParentVASP_$memory@0 () T@$Memory_35046)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int T@$1_VASP_ParentVASP) |T@[Int]$1_VASP_ParentVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ParentVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun $t20@0 () T@$1_VASP_ParentVASP)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t15 () Bool)
(declare-fun $t13 () Bool)
(declare-fun $t14 () Int)
(declare-fun $t12 () Int)
(declare-fun $t9 () Int)
(declare-fun $t11 () Bool)
(declare-fun $t10 () Int)
(declare-fun $t8 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_33358)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_33693)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_40324)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_40439)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_40499)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_VASP_publish_parent_vasp_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 62036) (let ((anon21_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 54607) (- 0 63425)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) addr) (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@1) addr)))
 :qid |VASPbpl.4144:15|
 :skolemid |169|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@1) addr@@0)))
 :qid |VASPbpl.4144:15|
 :skolemid |169|
)) (and (=> (= (ControlFlow 0 54607) (- 0 63449)) (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@1) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |VASPbpl.4150:15|
 :skolemid |170|
))) (=> (forall ((child_addr@@0 Int) ) (!  (=> (|$IsValid'address'| child_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) child_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@1) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) child_addr@@0)))))
 :qid |VASPbpl.4150:15|
 :skolemid |170|
)) (and (=> (= (ControlFlow 0 54607) (- 0 63480)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) a) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@1) a) a (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) a))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) a) a (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) a))))))
 :qid |VASPbpl.4156:15|
 :skolemid |171|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@0) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@1) a@@0) a@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) a@@0) a@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@0))))))
 :qid |VASPbpl.4156:15|
 :skolemid |171|
)) (and (=> (= (ControlFlow 0 54607) (- 0 63514)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35768| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@1) (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@1) addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) addr@@1))))
 :qid |VASPbpl.4162:15|
 :skolemid |172|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35768| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@2) (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@1) addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) addr@@2))))
 :qid |VASPbpl.4162:15|
 :skolemid |172|
)) (and (=> (= (ControlFlow 0 54607) (- 0 63544)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_32909| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_32909| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 54607) (- 0 63554)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 54607) (- 0 63566)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 54607) (- 0 63584)) (not (not (= (|$addr#$signer| _$t1) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1) 186537453))) (and (=> (= (ControlFlow 0 54607) (- 0 63598)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 54607) (- 0 63610)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t7)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t7)) 5))) (and (=> (= (ControlFlow 0 54607) (- 0 63628)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) $t5)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) $t5))) (and (=> (= (ControlFlow 0 54607) (- 0 63639)) (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@1) $t5)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@1) $t5) (and (=> (= (ControlFlow 0 54607) (- 0 63647)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory@1) $t5)) 0)) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory@1) $t5)) 0) (and (=> (= (ControlFlow 0 54607) (- 0 63659)) (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (= (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@1)))
 :qid |VASPbpl.4216:15|
 :skolemid |173|
))) (=> (forall ((a@@2 Int) ) (!  (=> (|$IsValid'address'| a@@2) (= (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@2)))
 :qid |VASPbpl.4216:15|
 :skolemid |173|
)) (=> (= (ControlFlow 0 54607) (- 0 63684)) (forall ((parent Int) ) (!  (=> (|$IsValid'address'| parent) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) parent) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory@1) parent)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) parent)))))
 :qid |VASPbpl.4221:15|
 :skolemid |174|
))))))))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 54259) (- 0 63221)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_32909| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t7)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) $t5)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_32909| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t7)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) $t5))) (=> (= (ControlFlow 0 54259) (- 0 63293)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_32909| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t6)) (= 5 $t9@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t9@0))) (and (not (= (|$addr#$signer| _$t1) 186537453)) (= 2 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t7)) (= 5 $t9@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t7)) 5)) (= 3 $t9@0))) (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) $t5)) (= 6 $t9@0))))))))
(let ((anon21_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t9@0 $abort_code@1) (= (ControlFlow 0 54621) 54259))) L3_correct)))
(let ((anon20_Then$1_correct  (=> (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 54673) 54621) anon21_Then_correct) (=> (= (ControlFlow 0 54673) 54607) anon21_Else_correct))))))
(let ((anon20_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 54671) 54673)) anon20_Then$1_correct)))
(let ((anon20_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0))) (=> (and (and (= $1_VASP_ParentVASP_$memory@0 ($Memory_35046 (|Store__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0) $t20@0))) (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 54303) 54621) anon21_Then_correct) (=> (= (ControlFlow 0 54303) 54607) anon21_Else_correct))))))
(let ((anon19_Then_correct  (=> inline$$Not$0$dst@1 (=> (and (|$IsValid'u64'| 0) (= $t20@0 ($1_VASP_ParentVASP 0))) (and (=> (= (ControlFlow 0 54281) 54671) anon20_Then_correct) (=> (= (ControlFlow 0 54281) 54303) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t18 $t18)) (and (= $t9@0 $t18) (= (ControlFlow 0 54035) 54259))) L3_correct)))
(let ((anon18_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t18) (= $t18 6)) (and (= $t18 $t18) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 54019) 54281) anon19_Then_correct) (=> (= (ControlFlow 0 54019) 54035) anon19_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t15)) (= (ControlFlow 0 53983) 54019)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (and (not $t13) (|$IsValid'address'| $t14)) (=> (and (and (= $t14 (|$addr#$signer| _$t0)) (= $t14 $t14)) (and (= $t15  (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t14) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) $t14))) (= (ControlFlow 0 53989) 53983))) inline$$Not$0$anon0_correct))))
(let ((anon18_Then_correct  (=> $t13 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t12)) (= 5 $t9)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t12)) 5)) (= 3 $t9))) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 54725) 54259))) L3_correct))))
(let ((anon17_Else_correct  (=> (not $t11) (=> (and (= $t12 (|$addr#$signer| _$t0)) (= $t13  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t12)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t12)) 5))))) (and (=> (= (ControlFlow 0 53909) 54725) anon18_Then_correct) (=> (= (ControlFlow 0 53909) 53989) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> $t11 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t10)) (= 5 $t9)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t10)) 1)) (= 3 $t9))) (and (not (= (|$addr#$signer| _$t1) 186537453)) (= 2 $t9))) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 54797) 54259))) L3_correct))))
(let ((anon16_Else_correct  (=> (not $t8) (=> (and (= $t10 (|$addr#$signer| _$t1)) (= $t11  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t10)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t10)) 1))) (not (= (|$addr#$signer| _$t1) 186537453))))) (and (=> (= (ControlFlow 0 53863) 54797) anon17_Then_correct) (=> (= (ControlFlow 0 53863) 53909) anon17_Else_correct))))))
(let ((anon16_Then_correct  (=> $t8 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_32909| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9)) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 54823) 54259))) L3_correct))))
(let ((anon0$1_correct  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_32909| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_32909| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@3)) 0)) (= addr@@3 173345816)))
 :qid |VASPbpl.3833:20|
 :skolemid |148|
))) (=> (and (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@4)) 1)) (= addr@@4 186537453)))
 :qid |VASPbpl.3837:20|
 :skolemid |149|
)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@5)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@5)) 2))))))
 :qid |VASPbpl.3841:20|
 :skolemid |150|
))) (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@6)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@6)) 2))))))
 :qid |VASPbpl.3845:20|
 :skolemid |151|
)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@7)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@7)) 2))))))
 :qid |VASPbpl.3849:20|
 :skolemid |152|
)))) (=> (and (and (and (and (and (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@8)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@8)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@8)) 2))))))
 :qid |VASPbpl.3853:20|
 :skolemid |153|
)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@9)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@9)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@9)) 2)))))
 :qid |VASPbpl.3857:20|
 :skolemid |154|
))) (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@10)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@10)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@10)) 2)))))
 :qid |VASPbpl.3861:20|
 :skolemid |155|
)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@11)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@11)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@11)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@11)) 2)))))
 :qid |VASPbpl.3865:20|
 :skolemid |156|
)))) (and (and (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_33358| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@12)) 4))))
 :qid |VASPbpl.3869:20|
 :skolemid |157|
)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_33693| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@13)) 3))))
 :qid |VASPbpl.3873:20|
 :skolemid |158|
))) (and (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_33693| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@14)) 3))))
 :qid |VASPbpl.3877:20|
 :skolemid |159|
)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33693| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15) (not (= (|l#Vec_20992| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_33693| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@15)) 3))))
 :qid |VASPbpl.3881:20|
 :skolemid |160|
))))) (and (and (and (forall ((child_addr@@1 Int) ) (!  (=> (|$IsValid'address'| child_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) child_addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) child_addr@@1)))))
 :qid |VASPbpl.3885:20|
 :skolemid |161|
)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_40324| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |VASPbpl.3889:20|
 :skolemid |162|
))) (and (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_40439| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_40499| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@16)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@16)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@16)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@16)) 2)))))
 :qid |VASPbpl.3893:20|
 :skolemid |163|
)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35768| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@17) (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) addr@@17) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) addr@@17))))
 :qid |VASPbpl.3897:20|
 :skolemid |164|
)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))))) (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1)) ($1_Signer_is_txn_signer _$t1)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t1))) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_32909| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |VASPbpl.3906:20|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_32909| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |VASPbpl.3910:20|
 :skolemid |166|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $a_0@@0))
)))) (and (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) $a_0@@1)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@1))
 :qid |VASPbpl.3914:20|
 :skolemid |167|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) $a_0@@2)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@2))
 :qid |VASPbpl.3918:20|
 :skolemid |168|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) $a_0@@2))
))) (and (= $t5 (|$addr#$signer| _$t0)) (= $t6 (|$addr#$signer| _$t1)))) (and (and (= $t7 (|$addr#$signer| _$t0)) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t8  (not (|Select__T@[Int]Bool_| (|domain#$Memory_32909| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 53805) 54823) anon16_Then_correct) (=> (= (ControlFlow 0 53805) 53863) anon16_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_20906_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_20906| stream@@0) 0) (forall ((v@@20 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_20906| stream@@0) v@@20) 0)
 :qid |VASPbpl.159:13|
 :skolemid |4|
))))
 :qid |VASPbpl.1501:13|
 :skolemid |49|
))) (= (ControlFlow 0 53168) 53805)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 62036) 53168) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
