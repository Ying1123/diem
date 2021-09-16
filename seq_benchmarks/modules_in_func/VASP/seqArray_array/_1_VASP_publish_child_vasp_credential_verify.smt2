(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-option :ee-mode central)
(set-logic ALL)
; done setting options


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
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1| () Bool)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_34982)
(declare-fun $t1 () Int)
(declare-fun |$1_AccountLimits_Window'#0'_$memory| () T@$Memory_34774)
(declare-fun $t2 () Bool)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_35046)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun |$1_AccountLimits_LimitsDefinition'#0'_$memory| () T@$Memory_34487)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'#0'_| (|T@[Int]$1_AccountLimits_Window'#0'| Int) |T@$1_AccountLimits_Window'#0'|)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_33031)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_35768)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $es () T@$EventStore)
; Valid
(declare-fun _$t0@@0 () Int)
(declare-fun $t1@0 () Bool)
; Valid
(declare-fun _$t0@@1 () Int)
(declare-fun $t1@0@@0 () Bool)
; Valid
(declare-fun $t11 () Bool)
(declare-fun _$t1 () Int)
(declare-fun $t9 () Int)
(declare-fun $t8 () Bool)
(declare-fun _$t0@@2 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t10 () Int)
(declare-fun $t12@0 () Bool)
(declare-fun $t7 () Int)
(declare-fun $t2@0 () Bool)
(declare-fun $t4 () Bool)
(declare-fun $t5 () Bool)
; Valid
(declare-fun $t1@0@@1 () Bool)
(declare-fun _$t0@@3 () Int)
(declare-fun $t2@@0 () Bool)
(declare-fun $t4@@0 () Bool)
; Valid
(declare-fun _$t0@@4 () Int)
(declare-fun $t3@0@@0 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2@@1 () Bool)
(declare-fun $t3 () Int)
(declare-fun $t5@0 () Int)
(declare-fun $t4@1 () T@$1_VASP_ParentVASP)
(declare-fun $t4@@1 () T@$1_VASP_ParentVASP)
(declare-fun $t1@@0 () Int)
(declare-fun $t4@0 () T@$1_VASP_ParentVASP)
(declare-fun $abort_code@0 () Int)
; Valid
(declare-fun $t2@0@@0 () Int)
(declare-fun _$t0@@5 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $t9@0 () Int)
(declare-fun $t8@1 () T@$1_VASP_ChildVASP)
(declare-fun $t3@@0 () Bool)
(declare-fun $t7@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t8@@0 () T@$1_VASP_ChildVASP)
(declare-fun $t8@0 () T@$1_VASP_ChildVASP)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t4@@2 () Bool)
(declare-fun $t6 () Int)
; Valid
(declare-fun $abort_flag@2 () Bool)
(declare-fun $1_VASP_ChildVASP_$memory@1 () T@$Memory_34982)
(declare-fun $1_VASP_ParentVASP_$memory@0 () T@$Memory_35046)
(declare-fun $t11@@0 () Int)
(declare-fun $t12 () Int)
(declare-fun $t13 () Int)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun $t16@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun _$t1@@0 () T@$signer)
(declare-fun $1_VASP_ChildVASP_$memory@0 () T@$Memory_34982)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int T@$1_VASP_ChildVASP) |T@[Int]$1_VASP_ChildVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ChildVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun $t37@0 () T@$1_VASP_ChildVASP)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t28@1 () T@$Mutation_5883)
(declare-fun $t28@0 () T@$Mutation_5883)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t27@2 () T@$Mutation_39658)
(declare-fun $t27@1 () T@$Mutation_39658)
(declare-fun |Store__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int T@$1_VASP_ParentVASP) |T@[Int]$1_VASP_ParentVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ParentVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun $t23 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t34@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t33 () Int)
(declare-fun $t29@0 () Int)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t27 () T@$Mutation_39658)
(declare-fun $t27@0 () T@$Mutation_39658)
(declare-fun MapConstVec_5488 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_5488 () Int)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t24 () Bool)
(declare-fun $t26 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t22 () Int)
(declare-fun $t19 () Bool)
(declare-fun $t17 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t16 () Int)
(declare-fun $t15 () Bool)
(declare-fun $t14 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_33358)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_33693)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_40324)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_40439)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_40499)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $t9@@0 () T@$Mutation_5883)
(declare-fun $t28 () T@$Mutation_5883)
(push 1)
(set-info :boogie-vc-id $1_VASP_publish_child_vasp_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 59837) (let ((anon37_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 52654) (- 0 61771)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) addr@@15) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory@1) addr@@15)))
 :qid |VASPbpl.3678:15|
 :skolemid |144|
))) (=> (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) addr@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory@1) addr@@16)))
 :qid |VASPbpl.3678:15|
 :skolemid |144|
)) (and (=> (= (ControlFlow 0 52654) (- 0 61795)) (forall ((child_addr@@6 Int) ) (!  (=> (|$IsValid'address'| child_addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory@1) child_addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory@1) child_addr@@6)))))
 :qid |VASPbpl.3684:15|
 :skolemid |145|
))) (=> (forall ((child_addr@@7 Int) ) (!  (=> (|$IsValid'address'| child_addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory@1) child_addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory@1) child_addr@@7)))))
 :qid |VASPbpl.3684:15|
 :skolemid |145|
)) (and (=> (= (ControlFlow 0 52654) (- 0 61824)) (forall ((a@@12 Int) ) (!  (=> (|$IsValid'address'| a@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@12) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) a@@12) a@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory@1) a@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) a@@12) a@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@12))))))
 :qid |VASPbpl.3690:15|
 :skolemid |146|
))) (=> (forall ((a@@13 Int) ) (!  (=> (|$IsValid'address'| a@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@13) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) a@@13) a@@13 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory@1) a@@13))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) a@@13) a@@13 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@13))))))
 :qid |VASPbpl.3690:15|
 :skolemid |146|
)) (and (=> (= (ControlFlow 0 52654) (- 0 61857)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35768| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@17) (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) addr@@17) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory@1) addr@@17))))
 :qid |VASPbpl.3696:15|
 :skolemid |147|
))) (=> (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35768| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@18) (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) addr@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory@1) addr@@18))))
 :qid |VASPbpl.3696:15|
 :skolemid |147|
)) (and (=> (= (ControlFlow 0 52654) (- 0 61886)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) $t11@@0)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) $t11@@0))) (and (=> (= (ControlFlow 0 52654) (- 0 61897)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t12))) (and (=> (= (ControlFlow 0 52654) (- 0 61909)) (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536))) (=> (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (and (=> (= (ControlFlow 0 52654) (- 0 61927)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t13)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t13))) (and (=> (= (ControlFlow 0 52654) (- 0 61939)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t13)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t13)) 5))) (and (=> (= (ControlFlow 0 52654) (- 0 61957)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t11@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t11@@0))) (and (=> (= (ControlFlow 0 52654) (- 0 61969)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t11@@0)) 6)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t11@@0)) 6))) (and (=> (= (ControlFlow 0 52654) (- 0 61987)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory@0) (|$addr#$signer| _$t0@@6))) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@6))) 1))) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory@0) (|$addr#$signer| _$t0@@6))) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@6))) 1)) (and (=> (= (ControlFlow 0 52654) (- 0 62008)) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory@1) $t11@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory@1) $t11@@0) (=> (= (ControlFlow 0 52654) (- 0 62016)) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) $t11@@0) $t11@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory@1) $t11@@0))) (|$addr#$signer| _$t0@@6))))))))))))))))))))))))))))))))
(let ((L7_correct@@1  (and (=> (= (ControlFlow 0 51761) (- 0 61555)) (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) $t11@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t12))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t13))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t13)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t11@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t11@@0)) 6)))) (=> (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) $t11@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t12))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t13))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t13)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t11@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t11@@0)) 6))) (=> (= (ControlFlow 0 51761) (- 0 61633)) (or (or (or (or (or (or (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) $t11@@0)) (= 6 $t16@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t12)) (= 7 $t16@0))) (and (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536) (= 8 $t16@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t13)) (= 5 $t16@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t13)) 5)) (= 3 $t16@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t11@@0)) (= 5 $t16@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t11@@0)) 6)) (= 3 $t16@0))))))))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t16@0 $abort_code@3) (= (ControlFlow 0 52668) 51761))) L7_correct@@1)))
(let ((anon36_Then$1_correct  (=> (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 52720) 52668) anon37_Then_correct) (=> (= (ControlFlow 0 52720) 52654) anon37_Else_correct))))))
(let ((anon36_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t1@@0)) (= (ControlFlow 0 52718) 52720)) anon36_Then$1_correct)))
(let ((anon36_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t1@@0))) (=> (and (and (= $1_VASP_ChildVASP_$memory@0 ($Memory_34982 (|Store__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t1@@0) true) (|Store__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t1@@0) $t37@0))) (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory@0)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 52374) 52668) anon37_Then_correct) (=> (= (ControlFlow 0 52374) 52654) anon37_Else_correct))))))
(let ((anon35_Else_correct  (=> (and (and (not $abort_flag@1) (= $t28@1 ($Mutation_5883 (|l#$Mutation_5883| $t28@0) (|p#$Mutation_5883| $t28@0) inline$$AddU64$0$dst@2))) (and (= $t27@2 ($Mutation_39658 (|l#$Mutation_39658| $t27@1) (|p#$Mutation_39658| $t27@1) ($1_VASP_ParentVASP (|v#$Mutation_5883| $t28@1)))) (= $1_VASP_ParentVASP_$memory@0 ($Memory_35046 (|Store__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_39658| $t27@2)) true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_39658| $t27@2)) (|v#$Mutation_39658| $t27@2)))))) (and (=> (= (ControlFlow 0 52352) (- 0 61307)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) addr@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) addr@@19)))
 :qid |VASPbpl.3628:15|
 :skolemid |140|
))) (=> (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) addr@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) addr@@20)))
 :qid |VASPbpl.3628:15|
 :skolemid |140|
)) (and (=> (= (ControlFlow 0 52352) (- 0 61331)) (forall ((child_addr@@8 Int) ) (!  (=> (|$IsValid'address'| child_addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) child_addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) child_addr@@8)))))
 :qid |VASPbpl.3634:15|
 :skolemid |141|
))) (=> (forall ((child_addr@@9 Int) ) (!  (=> (|$IsValid'address'| child_addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) child_addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) child_addr@@9)))))
 :qid |VASPbpl.3634:15|
 :skolemid |141|
)) (and (=> (= (ControlFlow 0 52352) (- 0 61362)) (forall ((a@@14 Int) ) (!  (=> (|$IsValid'address'| a@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@14) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) a@@14) a@@14 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@14))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) a@@14) a@@14 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@14))))))
 :qid |VASPbpl.3640:15|
 :skolemid |142|
))) (=> (forall ((a@@15 Int) ) (!  (=> (|$IsValid'address'| a@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@15) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) a@@15) a@@15 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@15))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) a@@15) a@@15 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) a@@15))))))
 :qid |VASPbpl.3640:15|
 :skolemid |142|
)) (and (=> (= (ControlFlow 0 52352) (- 0 61396)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35768| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@21) (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) addr@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) addr@@21))))
 :qid |VASPbpl.3646:15|
 :skolemid |143|
))) (=> (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35768| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@22) (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory@0) addr@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) addr@@22))))
 :qid |VASPbpl.3646:15|
 :skolemid |143|
)) (=> (= $t37@0 ($1_VASP_ChildVASP $t23)) (and (=> (= (ControlFlow 0 52352) 52718) anon36_Then_correct) (=> (= (ControlFlow 0 52352) 52374) anon36_Else_correct))))))))))))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t16@0 $abort_code@2) (= (ControlFlow 0 52734) 51761))) L7_correct@@1)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 52164) 52734) anon35_Then_correct) (=> (= (ControlFlow 0 52164) 52352) anon35_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t34@0 1) $MAX_U64) (= (ControlFlow 0 52162) 52164)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t34@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t34@0 1)) (= $abort_flag@1 $abort_flag@0@@1)) (and (= $abort_code@2 $abort_code@1@@1) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 52110) 52734) anon35_Then_correct) (=> (= (ControlFlow 0 52110) 52352) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> inline$$Lt$0$dst@1 (=> (and (= $t34@0 (|v#$Mutation_5883| $t28@0)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 52170) 52162) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 52170) 52110) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon34_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t33 $t33)) (and (= $t16@0 $t33) (= (ControlFlow 0 52003) 51761))) L7_correct@@1)))
(let ((anon33_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t33) (= $t33 8)) (and (= $t33 $t33) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 51987) 52170) anon34_Then_correct) (=> (= (ControlFlow 0 51987) 52003) anon34_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t29@0 65536)) (= (ControlFlow 0 51951) 51987)) anon33_Else$1_correct)))
(let ((anon33_Else_correct  (=> (not $abort_flag@0@@1) (=> (and (= $t28@0 ($Mutation_5883 (|l#$Mutation_39658| $t27@1) (let ((l (|l#Vec_9036| (|p#$Mutation_39658| $t27@1))))
(Vec_9036 (|Store__T@[Int]Int_| (|v#Vec_9036| (|p#$Mutation_39658| $t27@1)) l 0) (+ l 1))) (|$num_children#$1_VASP_ParentVASP| (|v#$Mutation_39658| $t27@1)))) (= |$temp_0'u64'@0| (|v#$Mutation_5883| $t28@0))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= $t29@0 (|v#$Mutation_5883| $t28@0))) (and (|$IsValid'u64'| 65536) (= (ControlFlow 0 51957) 51951))) inline$$Lt$0$anon0_correct)))))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t16@0 $abort_code@1@@1) (= (ControlFlow 0 52748) 51761))) L7_correct@@1)))
(let ((anon32_Then$1_correct  (=> (= $t27@1 $t27) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 52800) 52748) anon33_Then_correct) (=> (= (ControlFlow 0 52800) 51957) anon33_Else_correct))))))
(let ((anon32_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t23)) (= (ControlFlow 0 52798) 52800)) anon32_Then$1_correct)))
(let ((anon32_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t23) (=> (and (and (= $t27@0 ($Mutation_39658 ($Global $t23) (Vec_9036 (MapConstVec_5488 DefaultVecElem_5488) 0) (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) $t23))) (= $t27@1 $t27@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 51869) 52748) anon33_Then_correct) (=> (= (ControlFlow 0 51869) 51957) anon33_Else_correct))))))
(let ((anon31_Then_correct  (=> $t24 (and (=> (= (ControlFlow 0 51847) 52798) anon32_Then_correct) (=> (= (ControlFlow 0 51847) 51869) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (and (and (not $t24) (= $t26 $t26)) (and (= $t16@0 $t26) (= (ControlFlow 0 51843) 51761))) L7_correct@@1)))
(let ((anon30_Then_correct  (=> (and inline$$Not$0$dst@1 (|$IsValid'address'| $t23)) (=> (and (and (and (= $t23 (|$addr#$signer| _$t0@@6)) (= $t23 $t23)) (and (= $t24 (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t23)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t26) (= $t26 7)) (and (= $t26 $t26) (= $t24 $t24)))) (and (=> (= (ControlFlow 0 51827) 51847) anon31_Then_correct) (=> (= (ControlFlow 0 51827) 51843) anon31_Else_correct))))))
(let ((anon30_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t22 $t22)) (and (= $t16@0 $t22) (= (ControlFlow 0 51525) 51761))) L7_correct@@1)))
(let ((anon29_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t22) (= $t22 6)) (and (= $t22 $t22) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 51509) 51827) anon30_Then_correct) (=> (= (ControlFlow 0 51509) 51525) anon30_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t19)) (= (ControlFlow 0 51473) 51509)) anon29_Else$1_correct)))
(let ((anon29_Else_correct  (=> (and (not $t17) (|$IsValid'address'| $t18)) (=> (and (and (= $t18 (|$addr#$signer| _$t1@@0)) (= $t18 $t18)) (and (= $t19  (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) $t18) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) $t18))) (= (ControlFlow 0 51479) 51473))) inline$$Not$0$anon0_correct))))
(let ((anon29_Then_correct  (=> $t17 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@0))) (= 5 $t16)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@0))) 6)) (= 3 $t16))) (= $t16 $t16)) (and (= $t16@0 $t16) (= (ControlFlow 0 52856) 51761))) L7_correct@@1))))
(let ((anon28_Else_correct  (=> (and (not $t15) (= $t17  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@0))) 6))))) (and (=> (= (ControlFlow 0 51399) 52856) anon29_Then_correct) (=> (= (ControlFlow 0 51399) 51479) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> $t15 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t14)) (= 5 $t16)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t14)) 5)) (= 3 $t16))) (= $t16 $t16)) (and (= $t16@0 $t16) (= (ControlFlow 0 52908) 51761))) L7_correct@@1))))
(let ((anon0$1_correct@@6  (=> (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@23)) 0)) (= addr@@23 173345816)))
 :qid |VASPbpl.3206:20|
 :skolemid |120|
)) (=> (and (and (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@24)) 1)) (= addr@@24 186537453)))
 :qid |VASPbpl.3210:20|
 :skolemid |121|
)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@25)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@25)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@25)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@25)) 2))))))
 :qid |VASPbpl.3214:20|
 :skolemid |122|
))) (and (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@26)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@26)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@26)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@26)) 2))))))
 :qid |VASPbpl.3218:20|
 :skolemid |123|
)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@27)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@27)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@27)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@27)) 2))))))
 :qid |VASPbpl.3222:20|
 :skolemid |124|
)))) (=> (and (and (and (and (and (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@28)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@28)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@28)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@28)) 2))))))
 :qid |VASPbpl.3226:20|
 :skolemid |125|
)) (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@29)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@29)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@29)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@29)) 2)))))
 :qid |VASPbpl.3230:20|
 :skolemid |126|
))) (and (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@30)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@30)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@30)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@30)) 2)))))
 :qid |VASPbpl.3234:20|
 :skolemid |127|
)) (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@31)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@31)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@31)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@31)) 2)))))
 :qid |VASPbpl.3238:20|
 :skolemid |128|
)))) (and (and (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_33358| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@32) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@32)) 4))))
 :qid |VASPbpl.3242:20|
 :skolemid |129|
)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_33693| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@33) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@33)) 3))))
 :qid |VASPbpl.3246:20|
 :skolemid |130|
))) (and (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_33693| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@34) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@34)) 3))))
 :qid |VASPbpl.3250:20|
 :skolemid |131|
)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_33693| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@35) (not (= (|l#Vec_20992| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_33693| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@35)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@35)) 3))))
 :qid |VASPbpl.3254:20|
 :skolemid |132|
))))) (and (and (and (forall ((child_addr@@10 Int) ) (!  (=> (|$IsValid'address'| child_addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) child_addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) child_addr@@10)))))
 :qid |VASPbpl.3258:20|
 :skolemid |133|
)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_40324| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |VASPbpl.3262:20|
 :skolemid |134|
))) (and (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_40439| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@36) (|Select__T@[Int]Bool_| (|domain#$Memory_40499| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@36)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@36)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@36)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) addr@@36)) 2)))))
 :qid |VASPbpl.3266:20|
 :skolemid |135|
)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_35768| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@37) (or (|Select__T@[Int]Bool_| (|domain#$Memory_35046| $1_VASP_ParentVASP_$memory) addr@@37) (|Select__T@[Int]Bool_| (|domain#$Memory_34982| $1_VASP_ChildVASP_$memory) addr@@37))))
 :qid |VASPbpl.3270:20|
 :skolemid |136|
)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@6)) ($1_Signer_is_txn_signer _$t0@@6)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@6))))) (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1@@0)) ($1_Signer_is_txn_signer _$t1@@0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t1@@0))) (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $a_0@@12)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@12))
 :qid |VASPbpl.3279:20|
 :skolemid |137|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) $a_0@@13)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@13))
 :qid |VASPbpl.3283:20|
 :skolemid |138|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_34982| $1_VASP_ChildVASP_$memory) $a_0@@13))
)))) (and (and (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) $a_0@@14)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@14))
 :qid |VASPbpl.3287:20|
 :skolemid |139|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_35046| $1_VASP_ParentVASP_$memory) $a_0@@14))
)) (= $t11@@0 (|$addr#$signer| _$t1@@0))) (and (= $t12 (|$addr#$signer| _$t0@@6)) (= $t13 (|$addr#$signer| _$t0@@6)))) (and (and (= _$t0@@6 _$t0@@6) (= _$t1@@0 _$t1@@0)) (and (= $t14 (|$addr#$signer| _$t0@@6)) (= $t15  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_33031| $1_Roles_RoleId_$memory) $t14)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_33031| $1_Roles_RoleId_$memory) $t14)) 5))))))))) (and (=> (= (ControlFlow 0 51359) 52908) anon28_Then_correct) (=> (= (ControlFlow 0 51359) 51399) anon28_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_20906_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_20906| stream@@7) 0) (forall ((v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_20906| stream@@7) v@@27) 0)
 :qid |VASPbpl.159:13|
 :skolemid |4|
))))
 :qid |VASPbpl.1501:13|
 :skolemid |49|
))) (= (ControlFlow 0 50730) 51359)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (and (and (= (|l#Vec_9036| (|p#$Mutation_5883| $t9@@0)) 0) (= (|l#Vec_9036| (|p#$Mutation_39658| $t27)) 0)) (and (= (|l#Vec_9036| (|p#$Mutation_5883| $t28)) 0) (= (ControlFlow 0 50740) 50730))) inline$$InitEventStore$0$anon0_correct@@6)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 59837) 50740) anon0_correct@@6)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
