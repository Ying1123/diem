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
(declare-datatypes ((T@$Memory_44869 0)) ((($Memory_44869 (|domain#$Memory_44869| |T@[Int]Bool|) (|contents#$Memory_44869| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_30152 0)) (((Vec_30152 (|v#Vec_30152| |T@[Int]#0|) (|l#Vec_30152| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_58748 0)) ((($Memory_58748 (|domain#$Memory_58748| |T@[Int]Bool|) (|contents#$Memory_58748| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_57320 0)) ((($Memory_57320 (|domain#$Memory_57320| |T@[Int]Bool|) (|contents#$Memory_57320| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_50099 0)) ((($Memory_50099 (|domain#$Memory_50099| |T@[Int]Bool|) (|contents#$Memory_50099| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_50035 0)) ((($Memory_50035 (|domain#$Memory_50035| |T@[Int]Bool|) (|contents#$Memory_50035| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_58402 0)) ((($Memory_58402 (|domain#$Memory_58402| |T@[Int]Bool|) (|contents#$Memory_58402| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_51342 0)) ((($Memory_51342 (|domain#$Memory_51342| |T@[Int]Bool|) (|contents#$Memory_51342| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_51282 0)) ((($Memory_51282 (|domain#$Memory_51282| |T@[Int]Bool|) (|contents#$Memory_51282| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_29001 0)) (((Vec_29001 (|v#Vec_29001| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_29001| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_29001) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_28962 0)) (((Vec_28962 (|v#Vec_28962| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_28962| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_28962) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_51427 0)) ((($Memory_51427 (|domain#$Memory_51427| |T@[Int]Bool|) (|contents#$Memory_51427| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_28962) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_12290 0)) (((Vec_12290 (|v#Vec_12290| |T@[Int]Int|) (|l#Vec_12290| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_12290) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_57353 0)) ((($Memory_57353 (|domain#$Memory_57353| |T@[Int]Bool|) (|contents#$Memory_57353| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_12290) (|$base_url#$1_DualAttestation_Credential| T@Vec_12290) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_12290) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_51167 0)) ((($Memory_51167 (|domain#$Memory_51167| |T@[Int]Bool|) (|contents#$Memory_51167| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_12290) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_12290) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_12290) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_28923 0)) (((Vec_28923 (|v#Vec_28923| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_28923| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_28923) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_12290) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_12290) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_49265 0)) ((($Memory_49265 (|domain#$Memory_49265| |T@[Int]Bool|) (|contents#$Memory_49265| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_12290) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_48320 0)) ((($Memory_48320 (|domain#$Memory_48320| |T@[Int]Bool|) (|contents#$Memory_48320| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_47993 0)) ((($Memory_47993 (|domain#$Memory_47993| |T@[Int]Bool|) (|contents#$Memory_47993| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_47871 0)) ((($Memory_47871 (|domain#$Memory_47871| |T@[Int]Bool|) (|contents#$Memory_47871| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_12290) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_12290) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_12290) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_12290) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_12290) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_12290) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_28837 0)) (((Multiset_28837 (|v#Multiset_28837| |T@[$EventRep]Int|) (|l#Multiset_28837| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_28837| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_28837|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_64149 0)) ((($Mutation_64149 (|l#$Mutation_64149| T@$Location) (|p#$Mutation_64149| T@Vec_12290) (|v#$Mutation_64149| T@$1_RecoveryAddress_RecoveryAddress) ) ) ))
(declare-datatypes ((T@$Mutation_59386 0)) ((($Mutation_59386 (|l#$Mutation_59386| T@$Location) (|p#$Mutation_59386| T@Vec_12290) (|v#$Mutation_59386| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_50501 0)) ((($Mutation_50501 (|l#$Mutation_50501| T@$Location) (|p#$Mutation_50501| T@Vec_12290) (|v#$Mutation_50501| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_45500 0)) ((($Mutation_45500 (|l#$Mutation_45500| T@$Location) (|p#$Mutation_45500| T@Vec_12290) (|v#$Mutation_45500| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8165 0)) ((($Mutation_8165 (|l#$Mutation_8165| T@$Location) (|p#$Mutation_8165| T@Vec_12290) (|v#$Mutation_8165| Int) ) ) ))
(declare-datatypes ((T@$Mutation_41428 0)) ((($Mutation_41428 (|l#$Mutation_41428| T@$Location) (|p#$Mutation_41428| T@Vec_12290) (|v#$Mutation_41428| T@Vec_12290) ) ) ))
(declare-datatypes ((T@$Mutation_39851 0)) ((($Mutation_39851 (|l#$Mutation_39851| T@$Location) (|p#$Mutation_39851| T@Vec_12290) (|v#$Mutation_39851| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_38864 0)) ((($Mutation_38864 (|l#$Mutation_38864| T@$Location) (|p#$Mutation_38864| T@Vec_12290) (|v#$Mutation_38864| T@Vec_28923) ) ) ))
(declare-datatypes ((T@$Mutation_37136 0)) ((($Mutation_37136 (|l#$Mutation_37136| T@$Location) (|p#$Mutation_37136| T@Vec_12290) (|v#$Mutation_37136| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_36149 0)) ((($Mutation_36149 (|l#$Mutation_36149| T@$Location) (|p#$Mutation_36149| T@Vec_12290) (|v#$Mutation_36149| T@Vec_29001) ) ) ))
(declare-datatypes ((T@$Mutation_34484 0)) ((($Mutation_34484 (|l#$Mutation_34484| T@$Location) (|p#$Mutation_34484| T@Vec_12290) (|v#$Mutation_34484| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_33497 0)) ((($Mutation_33497 (|l#$Mutation_33497| T@$Location) (|p#$Mutation_33497| T@Vec_12290) (|v#$Mutation_33497| T@Vec_28962) ) ) ))
(declare-datatypes ((T@$Mutation_31784 0)) ((($Mutation_31784 (|l#$Mutation_31784| T@$Location) (|p#$Mutation_31784| T@Vec_12290) (|v#$Mutation_31784| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_30797 0)) ((($Mutation_30797 (|l#$Mutation_30797| T@$Location) (|p#$Mutation_30797| T@Vec_12290) (|v#$Mutation_30797| T@Vec_30152) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_30152 T@Vec_30152) Bool)
(declare-fun InRangeVec_25128 (T@Vec_30152 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_30152) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_30152 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_28962 T@Vec_28962) Bool)
(declare-fun InRangeVec_25329 (T@Vec_28962 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_28962) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_28962 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_29001 T@Vec_29001) Bool)
(declare-fun InRangeVec_25530 (T@Vec_29001 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_29001) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_29001 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_28923 T@Vec_28923) Bool)
(declare-fun InRangeVec_25731 (T@Vec_28923 Int) Bool)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_12290 T@Vec_12290) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_28923) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_28923 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_12290 T@Vec_12290) Bool)
(declare-fun InRangeVec_7541 (T@Vec_12290 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_12290) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_12290 Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_12290) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_12290 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_12290) T@Vec_12290)
(declare-fun $1_Hash_sha3 (T@Vec_12290) T@Vec_12290)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_12290) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_12290 T@Vec_12290 T@Vec_12290) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_28837_| (|T@[$1_Event_EventHandle]Multiset_28837| T@$1_Event_EventHandle) T@Multiset_28837)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemAccount'| (T@$1_DiemAccount_DiemAccount) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AccountOperationsCapability'| (T@$1_DiemAccount_AccountOperationsCapability) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AdminTransactionEvent'| (T@$1_DiemAccount_AdminTransactionEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_RecoveryAddress_RecoveryAddress'| (T@$1_RecoveryAddress_RecoveryAddress) Bool)
(declare-fun IndexOfVec_12290 (T@Vec_12290 Int) Int)
(declare-fun IndexOfVec_28923 (T@Vec_28923 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_28962 (T@Vec_28962 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_29001 (T@Vec_29001 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_30152 (T@Vec_30152 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_28837| |T@[$1_Event_EventHandle]Multiset_28837|) |T@[$1_Event_EventHandle]Multiset_28837|)
(declare-fun |lambda#18| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#16| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |RecoveryAddressbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |RecoveryAddressbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |RecoveryAddressbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |RecoveryAddressbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |RecoveryAddressbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |RecoveryAddressbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |RecoveryAddressbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |RecoveryAddressbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_30152) (v2 T@Vec_30152) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_30152| v1) (|l#Vec_30152| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_25128 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_30152| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_30152| v2) i@@0)))
 :qid |RecoveryAddressbpl.615:13|
 :skolemid |17|
))))
 :qid |RecoveryAddressbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_30152) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_30152| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_25128 v@@4 i@@1) true)
 :qid |RecoveryAddressbpl.621:13|
 :skolemid |19|
))))
 :qid |RecoveryAddressbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_30152) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_25128 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_30152| v@@5) i@@3) e))
 :qid |RecoveryAddressbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_25128 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_30152| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_30152| v@@5) j) e)))
 :qid |RecoveryAddressbpl.634:17|
 :skolemid |22|
)))))
 :qid |RecoveryAddressbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_28962) (v2@@0 T@Vec_28962) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_28962| v1@@0) (|l#Vec_28962| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_25329 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| v2@@0) i@@4)))
 :qid |RecoveryAddressbpl.796:13|
 :skolemid |24|
))))
 :qid |RecoveryAddressbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_28962) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_28962| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_25329 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| v@@6) i@@5)))
 :qid |RecoveryAddressbpl.802:13|
 :skolemid |26|
))))
 :qid |RecoveryAddressbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_28962) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_25329 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| v@@7) i@@7) e@@0))
 :qid |RecoveryAddressbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_25329 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| v@@7) j@@0) e@@0)))
 :qid |RecoveryAddressbpl.815:17|
 :skolemid |29|
)))))
 :qid |RecoveryAddressbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_29001) (v2@@1 T@Vec_29001) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_29001| v1@@1) (|l#Vec_29001| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_25530 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_29001| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_29001| v2@@1) i@@8)))
 :qid |RecoveryAddressbpl.977:13|
 :skolemid |31|
))))
 :qid |RecoveryAddressbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_29001) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_29001| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_25530 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_29001| v@@8) i@@9)))
 :qid |RecoveryAddressbpl.983:13|
 :skolemid |33|
))))
 :qid |RecoveryAddressbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_29001) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_25530 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_29001| v@@9) i@@11) e@@1))
 :qid |RecoveryAddressbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_25530 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_29001| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_29001| v@@9) j@@1) e@@1)))
 :qid |RecoveryAddressbpl.996:17|
 :skolemid |36|
)))))
 :qid |RecoveryAddressbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_28923) (v2@@2 T@Vec_28923) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@2 v2@@2)  (and (= (|l#Vec_28923| v1@@2) (|l#Vec_28923| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_25731 v1@@2 i@@12) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v1@@2) i@@12)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v2@@2) i@@12))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v1@@2) i@@12)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v1@@2) i@@12)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v2@@2) i@@12)))))
 :qid |RecoveryAddressbpl.1158:13|
 :skolemid |38|
))))
 :qid |RecoveryAddressbpl.1156:51|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_28923) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_28923| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_25731 v@@10 i@@13) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v@@10) i@@13)))
 :qid |RecoveryAddressbpl.1164:13|
 :skolemid |40|
))))
 :qid |RecoveryAddressbpl.1162:51|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_28923) (e@@2 T@$1_ValidatorConfig_Config) ) (! (let ((i@@14 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_25731 v@@11 i@@15)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v@@11) i@@15)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@2)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v@@11) i@@15)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@2))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v@@11) i@@15)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@2))))
 :qid |RecoveryAddressbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_25731 v@@11 i@@14)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v@@11) i@@14)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@2)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v@@11) i@@14)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@2))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v@@11) i@@14)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v@@11) j@@2)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@2)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v@@11) j@@2)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@2))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v@@11) j@@2)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@2)))))
 :qid |RecoveryAddressbpl.1177:17|
 :skolemid |43|
)))))
 :qid |RecoveryAddressbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_12290) (v2@@3 T@Vec_12290) ) (! (= (|$IsEqual'vec'address''| v1@@3 v2@@3)  (and (= (|l#Vec_12290| v1@@3) (|l#Vec_12290| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_7541 v1@@3 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_12290| v1@@3) i@@16) (|Select__T@[Int]Int_| (|v#Vec_12290| v2@@3) i@@16)))
 :qid |RecoveryAddressbpl.1339:13|
 :skolemid |45|
))))
 :qid |RecoveryAddressbpl.1337:33|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'address''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_12290) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_12290| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_7541 v@@12 i@@17) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_12290| v@@12) i@@17)))
 :qid |RecoveryAddressbpl.1345:13|
 :skolemid |47|
))))
 :qid |RecoveryAddressbpl.1343:33|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_12290) (e@@3 Int) ) (! (let ((i@@18 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_7541 v@@13 i@@19)) (= (|Select__T@[Int]Int_| (|v#Vec_12290| v@@13) i@@19) e@@3))
 :qid |RecoveryAddressbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_7541 v@@13 i@@18)) (= (|Select__T@[Int]Int_| (|v#Vec_12290| v@@13) i@@18) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (= (|Select__T@[Int]Int_| (|v#Vec_12290| v@@13) j@@3) e@@3)))
 :qid |RecoveryAddressbpl.1358:17|
 :skolemid |50|
)))))
 :qid |RecoveryAddressbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_12290) (v2@@4 T@Vec_12290) ) (! (= (|$IsEqual'vec'u8''| v1@@4 v2@@4)  (and (= (|l#Vec_12290| v1@@4) (|l#Vec_12290| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_7541 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_12290| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_12290| v2@@4) i@@20)))
 :qid |RecoveryAddressbpl.1520:13|
 :skolemid |52|
))))
 :qid |RecoveryAddressbpl.1518:28|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'u8''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_12290) ) (! (= (|$IsValid'vec'u8''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_12290| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_7541 v@@14 i@@21) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_12290| v@@14) i@@21)))
 :qid |RecoveryAddressbpl.1526:13|
 :skolemid |54|
))))
 :qid |RecoveryAddressbpl.1524:28|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'u8''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_12290) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'u8'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_7541 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_12290| v@@15) i@@23) e@@4))
 :qid |RecoveryAddressbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_7541 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_12290| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_12290| v@@15) j@@4) e@@4)))
 :qid |RecoveryAddressbpl.1539:17|
 :skolemid |57|
)))))
 :qid |RecoveryAddressbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'u8'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_12290) (v2@@5 T@Vec_12290) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@5) ($1_Hash_sha2 v2@@5)))
 :qid |RecoveryAddressbpl.1712:15|
 :skolemid |59|
 :pattern ( ($1_Hash_sha2 v1@@5) ($1_Hash_sha2 v2@@5))
)))
(assert (forall ((v1@@6 T@Vec_12290) (v2@@6 T@Vec_12290) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@6) ($1_Hash_sha3 v2@@6)))
 :qid |RecoveryAddressbpl.1728:15|
 :skolemid |60|
 :pattern ( ($1_Hash_sha3 v1@@6) ($1_Hash_sha3 v2@@6))
)))
(assert (forall ((k1 T@Vec_12290) (k2 T@Vec_12290) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |RecoveryAddressbpl.1799:15|
 :skolemid |61|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_12290) (s2 T@Vec_12290) (k1@@0 T@Vec_12290) (k2@@0 T@Vec_12290) (m1 T@Vec_12290) (m2 T@Vec_12290) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |RecoveryAddressbpl.1802:15|
 :skolemid |62|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_28837_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_28837| stream) 0) (forall ((v@@16 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_28837| stream) v@@16) 0)
 :qid |RecoveryAddressbpl.159:13|
 :skolemid |4|
))))
 :qid |RecoveryAddressbpl.1863:13|
 :skolemid |63|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h) true)
 :qid |RecoveryAddressbpl.1904:79|
 :skolemid |65|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_AdminTransactionEvent) (v2@@7 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@7)))
 :qid |RecoveryAddressbpl.1910:15|
 :skolemid |66|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@7))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@0) true)
 :qid |RecoveryAddressbpl.1960:76|
 :skolemid |67|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@0))
)))
(assert (forall ((v1@@8 T@$1_DiemAccount_CreateAccountEvent) (v2@@8 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@8)))
 :qid |RecoveryAddressbpl.1966:15|
 :skolemid |68|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@8))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@1) true)
 :qid |RecoveryAddressbpl.2016:78|
 :skolemid |69|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@9 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@9 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@9) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@9)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@9) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@9))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@9) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@9))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@9) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@9))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@9) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@9)))
 :qid |RecoveryAddressbpl.2022:15|
 :skolemid |70|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@9) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@9))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@2) true)
 :qid |RecoveryAddressbpl.2072:74|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@2))
)))
(assert (forall ((v1@@10 T@$1_DiemAccount_SentPaymentEvent) (v2@@10 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@10) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@10)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@10) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@10))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@10) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@10))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@10) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@10))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@10) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@10)))
 :qid |RecoveryAddressbpl.2078:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@10) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@10))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@3) true)
 :qid |RecoveryAddressbpl.2128:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@3))
)))
(assert (forall ((v1@@11 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@11 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@11) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@11)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@11) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@11))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@11) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@11)))
 :qid |RecoveryAddressbpl.2134:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@11) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@11))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@4) true)
 :qid |RecoveryAddressbpl.2184:88|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@4))
)))
(assert (forall ((v1@@12 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@12 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@12) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@12)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@12) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@12))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@12) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@12)))
 :qid |RecoveryAddressbpl.2190:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@12) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@12))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |RecoveryAddressbpl.2259:61|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |RecoveryAddressbpl.2318:36|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |RecoveryAddressbpl.2337:71|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |RecoveryAddressbpl.2473:46|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |RecoveryAddressbpl.2485:64|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |RecoveryAddressbpl.2497:75|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |RecoveryAddressbpl.2509:72|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |RecoveryAddressbpl.2537:55|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |RecoveryAddressbpl.2560:46|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@8) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@8)))
 :qid |RecoveryAddressbpl.2576:45|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@8))
)))
(assert (forall ((s@@9 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@9) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@9)))
 :qid |RecoveryAddressbpl.2589:45|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@9))
)))
(assert (forall ((s@@10 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@10) true)
 :qid |RecoveryAddressbpl.2602:68|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@10))
)))
(assert (forall ((s@@11 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@11) true)
 :qid |RecoveryAddressbpl.2615:31|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@11))
)))
(assert (forall ((s@@12 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@12) true)
 :qid |RecoveryAddressbpl.2628:31|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@12))
)))
(assert (forall ((s@@13 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@13) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@13)))
 :qid |RecoveryAddressbpl.2671:38|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@13))
)))
(assert (forall ((s@@14 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@14) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@14)))
 :qid |RecoveryAddressbpl.2685:39|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@15)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@15)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@15))))
 :qid |RecoveryAddressbpl.3813:60|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@16)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@16)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@16))))
 :qid |RecoveryAddressbpl.3830:66|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@17)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@17)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@17))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@17))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@17))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@17))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@17))))
 :qid |RecoveryAddressbpl.3859:50|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@17))
)))
(assert (forall ((s@@18 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@18) true)
 :qid |RecoveryAddressbpl.3882:51|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@19)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@19)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@19))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@19))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@19))))
 :qid |RecoveryAddressbpl.3976:47|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@19))
)))
(assert (forall ((s@@20 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@20)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@20)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@20))))
 :qid |RecoveryAddressbpl.4002:63|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@21) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@21)))
 :qid |RecoveryAddressbpl.4017:57|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@22) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@22)))
 :qid |RecoveryAddressbpl.4030:55|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@23) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@23)))
 :qid |RecoveryAddressbpl.4044:55|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@24)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@24)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@24))))
 :qid |RecoveryAddressbpl.4061:54|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@25) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@25)))
 :qid |RecoveryAddressbpl.4075:55|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@26) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@26)))
 :qid |RecoveryAddressbpl.4088:57|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@27)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@27))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@27))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@27))))
 :qid |RecoveryAddressbpl.4110:56|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@27))
)))
(assert (forall ((s@@28 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@28)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@28)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@28))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@28))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@28))))
 :qid |RecoveryAddressbpl.4137:52|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@28))
)))
(assert (forall ((s@@29 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@29) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@29)))
 :qid |RecoveryAddressbpl.4155:54|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@29))
)))
(assert (forall ((s@@30 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@30) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@30)))
 :qid |RecoveryAddressbpl.4460:55|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@30))
)))
(assert (forall ((v@@17 T@Vec_30152) (i@@24 Int) ) (! (= (InRangeVec_25128 v@@17 i@@24)  (and (>= i@@24 0) (< i@@24 (|l#Vec_30152| v@@17))))
 :qid |RecoveryAddressbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_25128 v@@17 i@@24))
)))
(assert (forall ((v@@18 T@Vec_28962) (i@@25 Int) ) (! (= (InRangeVec_25329 v@@18 i@@25)  (and (>= i@@25 0) (< i@@25 (|l#Vec_28962| v@@18))))
 :qid |RecoveryAddressbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_25329 v@@18 i@@25))
)))
(assert (forall ((v@@19 T@Vec_29001) (i@@26 Int) ) (! (= (InRangeVec_25530 v@@19 i@@26)  (and (>= i@@26 0) (< i@@26 (|l#Vec_29001| v@@19))))
 :qid |RecoveryAddressbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_25530 v@@19 i@@26))
)))
(assert (forall ((v@@20 T@Vec_28923) (i@@27 Int) ) (! (= (InRangeVec_25731 v@@20 i@@27)  (and (>= i@@27 0) (< i@@27 (|l#Vec_28923| v@@20))))
 :qid |RecoveryAddressbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_25731 v@@20 i@@27))
)))
(assert (forall ((v@@21 T@Vec_12290) (i@@28 Int) ) (! (= (InRangeVec_7541 v@@21 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_12290| v@@21))))
 :qid |RecoveryAddressbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_7541 v@@21 i@@28))
)))
(assert (forall ((v@@22 T@Vec_12290) (e@@5 Int) ) (! (let ((i@@29 (IndexOfVec_12290 v@@22 e@@5)))
(ite  (not (exists ((i@@30 Int) ) (!  (and (InRangeVec_7541 v@@22 i@@30) (= (|Select__T@[Int]Int_| (|v#Vec_12290| v@@22) i@@30) e@@5))
 :qid |RecoveryAddressbpl.109:13|
 :skolemid |0|
))) (= i@@29 (- 0 1))  (and (and (InRangeVec_7541 v@@22 i@@29) (= (|Select__T@[Int]Int_| (|v#Vec_12290| v@@22) i@@29) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (>= j@@5 0) (< j@@5 i@@29)) (not (= (|Select__T@[Int]Int_| (|v#Vec_12290| v@@22) j@@5) e@@5)))
 :qid |RecoveryAddressbpl.117:17|
 :skolemid |1|
)))))
 :qid |RecoveryAddressbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_12290 v@@22 e@@5))
)))
(assert (forall ((v@@23 T@Vec_28923) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@31 (IndexOfVec_28923 v@@23 e@@6)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (InRangeVec_25731 v@@23 i@@32) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v@@23) i@@32) e@@6))
 :qid |RecoveryAddressbpl.109:13|
 :skolemid |0|
))) (= i@@31 (- 0 1))  (and (and (InRangeVec_25731 v@@23 i@@31) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v@@23) i@@31) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@31)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_28923| v@@23) j@@6) e@@6)))
 :qid |RecoveryAddressbpl.117:17|
 :skolemid |1|
)))))
 :qid |RecoveryAddressbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_28923 v@@23 e@@6))
)))
(assert (forall ((v@@24 T@Vec_28962) (e@@7 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@33 (IndexOfVec_28962 v@@24 e@@7)))
(ite  (not (exists ((i@@34 Int) ) (!  (and (InRangeVec_25329 v@@24 i@@34) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| v@@24) i@@34) e@@7))
 :qid |RecoveryAddressbpl.109:13|
 :skolemid |0|
))) (= i@@33 (- 0 1))  (and (and (InRangeVec_25329 v@@24 i@@33) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| v@@24) i@@33) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@33)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| v@@24) j@@7) e@@7)))
 :qid |RecoveryAddressbpl.117:17|
 :skolemid |1|
)))))
 :qid |RecoveryAddressbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_28962 v@@24 e@@7))
)))
(assert (forall ((v@@25 T@Vec_29001) (e@@8 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@35 (IndexOfVec_29001 v@@25 e@@8)))
(ite  (not (exists ((i@@36 Int) ) (!  (and (InRangeVec_25530 v@@25 i@@36) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_29001| v@@25) i@@36) e@@8))
 :qid |RecoveryAddressbpl.109:13|
 :skolemid |0|
))) (= i@@35 (- 0 1))  (and (and (InRangeVec_25530 v@@25 i@@35) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_29001| v@@25) i@@35) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@35)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_29001| v@@25) j@@8) e@@8)))
 :qid |RecoveryAddressbpl.117:17|
 :skolemid |1|
)))))
 :qid |RecoveryAddressbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_29001 v@@25 e@@8))
)))
(assert (forall ((v@@26 T@Vec_30152) (e@@9 |T@#0|) ) (! (let ((i@@37 (IndexOfVec_30152 v@@26 e@@9)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (InRangeVec_25128 v@@26 i@@38) (= (|Select__T@[Int]#0_| (|v#Vec_30152| v@@26) i@@38) e@@9))
 :qid |RecoveryAddressbpl.109:13|
 :skolemid |0|
))) (= i@@37 (- 0 1))  (and (and (InRangeVec_25128 v@@26 i@@37) (= (|Select__T@[Int]#0_| (|v#Vec_30152| v@@26) i@@37) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@37)) (not (= (|Select__T@[Int]#0_| (|v#Vec_30152| v@@26) j@@9) e@@9)))
 :qid |RecoveryAddressbpl.117:17|
 :skolemid |1|
)))))
 :qid |RecoveryAddressbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_30152 v@@26 e@@9))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |RecoveryAddressbpl.275:54|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_28837|) (|l#1| |T@[$1_Event_EventHandle]Multiset_28837|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_28837_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_28837| (|Select__T@[$1_Event_EventHandle]Multiset_28837_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_28837| (|Select__T@[$1_Event_EventHandle]Multiset_28837_| |l#1| handle@@0))))
(Multiset_28837 (|lambda#18| (|v#Multiset_28837| (|Select__T@[$1_Event_EventHandle]Multiset_28837_| |l#0@@0| handle@@0)) (|v#Multiset_28837| (|Select__T@[$1_Event_EventHandle]Multiset_28837_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |RecoveryAddressbpl.1873:13|
 :skolemid |207|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_28837_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@40 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@40) (ite  (and (>= i@@40 |l#0@@1|) (< i@@40 |l#1@@0|)) (ite (< i@@40 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@40) (|Select__T@[Int]#0_| |l#4| (- i@@40 |l#5|))) |l#6|))
 :qid |RecoveryAddressbpl.73:19|
 :skolemid |208|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@40))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@41 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@41) (ite  (and (<= |l#0@@2| i@@41) (< i@@41 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@41) |l#4@@0|)) |l#5@@0|))
 :qid |RecoveryAddressbpl.82:30|
 :skolemid |209|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@41))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@10 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@10) (ite  (and (>= j@@10 |l#0@@3|) (< j@@10 |l#1@@2|)) (ite (< j@@10 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@10) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@10 |l#5@@1|))) |l#6@@0|))
 :qid |RecoveryAddressbpl.63:20|
 :skolemid |210|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@10))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@42 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@42) (ite  (and (>= i@@42 |l#0@@4|) (< i@@42 |l#1@@3|)) (ite (< i@@42 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@42) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@42 |l#5@@2|))) |l#6@@1|))
 :qid |RecoveryAddressbpl.73:19|
 :skolemid |211|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@42))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@43 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@43) (ite  (and (<= |l#0@@5| i@@43) (< i@@43 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@43) |l#4@@3|)) |l#5@@3|))
 :qid |RecoveryAddressbpl.82:30|
 :skolemid |212|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@43))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@11 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@11) (ite  (and (>= j@@11 |l#0@@6|) (< j@@11 |l#1@@5|)) (ite (< j@@11 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@11) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@11 |l#5@@4|))) |l#6@@2|))
 :qid |RecoveryAddressbpl.63:20|
 :skolemid |213|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@11))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@44 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@44) (ite  (and (>= i@@44 |l#0@@7|) (< i@@44 |l#1@@6|)) (ite (< i@@44 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@44) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@44 |l#5@@5|))) |l#6@@3|))
 :qid |RecoveryAddressbpl.73:19|
 :skolemid |214|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@44))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@45 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@45) (ite  (and (<= |l#0@@8| i@@45) (< i@@45 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@45) |l#4@@6|)) |l#5@@6|))
 :qid |RecoveryAddressbpl.82:30|
 :skolemid |215|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@45))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@12 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@12) (ite  (and (>= j@@12 |l#0@@9|) (< j@@12 |l#1@@8|)) (ite (< j@@12 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@12) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@12 |l#5@@7|))) |l#6@@4|))
 :qid |RecoveryAddressbpl.63:20|
 :skolemid |216|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@12))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@8| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@8| Int) (|l#6@@5| T@$1_ValidatorConfig_Config) (i@@46 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@46) (ite  (and (>= i@@46 |l#0@@10|) (< i@@46 |l#1@@9|)) (ite (< i@@46 |l#2@@8|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@8| i@@46) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@8| (- i@@46 |l#5@@8|))) |l#6@@5|))
 :qid |RecoveryAddressbpl.73:19|
 :skolemid |217|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@46))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_ValidatorConfig_Config) (i@@47 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@47) (ite  (and (<= |l#0@@11| i@@47) (< i@@47 |l#1@@10|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@9| (- (- |l#3@@9| i@@47) |l#4@@9|)) |l#5@@9|))
 :qid |RecoveryAddressbpl.82:30|
 :skolemid |218|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@47))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@10| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@10| Int) (|l#6@@6| T@$1_ValidatorConfig_Config) (j@@13 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@13) (ite  (and (>= j@@13 |l#0@@12|) (< j@@13 |l#1@@11|)) (ite (< j@@13 |l#2@@10|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@10| j@@13) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@10| (+ j@@13 |l#5@@10|))) |l#6@@6|))
 :qid |RecoveryAddressbpl.63:20|
 :skolemid |219|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@13))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]Int|) (|l#4@@11| |T@[Int]Int|) (|l#5@@11| Int) (|l#6@@7| Int) (i@@48 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@48) (ite  (and (>= i@@48 |l#0@@13|) (< i@@48 |l#1@@12|)) (ite (< i@@48 |l#2@@11|) (|Select__T@[Int]Int_| |l#3@@11| i@@48) (|Select__T@[Int]Int_| |l#4@@11| (- i@@48 |l#5@@11|))) |l#6@@7|))
 :qid |RecoveryAddressbpl.73:19|
 :skolemid |220|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@48))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]Int|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| Int) (i@@49 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@49) (ite  (and (<= |l#0@@14| i@@49) (< i@@49 |l#1@@13|)) (|Select__T@[Int]Int_| |l#2@@12| (- (- |l#3@@12| i@@49) |l#4@@12|)) |l#5@@12|))
 :qid |RecoveryAddressbpl.82:30|
 :skolemid |221|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@49))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]Int|) (|l#4@@13| |T@[Int]Int|) (|l#5@@13| Int) (|l#6@@8| Int) (j@@14 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@14) (ite  (and (>= j@@14 |l#0@@15|) (< j@@14 |l#1@@14|)) (ite (< j@@14 |l#2@@13|) (|Select__T@[Int]Int_| |l#3@@13| j@@14) (|Select__T@[Int]Int_| |l#4@@13| (+ j@@14 |l#5@@13|))) |l#6@@8|))
 :qid |RecoveryAddressbpl.63:20|
 :skolemid |222|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@14))
)))
(assert (forall ((|l#0@@16| |T@[$EventRep]Int|) (|l#1@@15| |T@[$EventRep]Int|) (v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@27) (- (|Select__T@[$EventRep]Int_| |l#0@@16| v@@27) (|Select__T@[$EventRep]Int_| |l#1@@15| v@@27)))
 :qid |RecoveryAddressbpl.154:29|
 :skolemid |223|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#18| |l#0@@16| |l#1@@15|) v@@27))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_50035)
(declare-fun $1_VASP_ChildVASP_$memory@1 () T@$Memory_50035)
(declare-fun $1_VASP_ParentVASP_$memory@0 () T@$Memory_50099)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_51427)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_50099)
(declare-fun $t11 () Int)
(declare-fun $t12 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_47993)
(declare-fun $t13 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () T@$signer)
(declare-fun $t16@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun _$t1 () T@$signer)
(declare-fun $1_VASP_ChildVASP_$memory@0 () T@$Memory_50035)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int T@$1_VASP_ChildVASP) |T@[Int]$1_VASP_ChildVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ChildVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun $t37@0 () T@$1_VASP_ChildVASP)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t28@1 () T@$Mutation_8165)
(declare-fun $t28@0 () T@$Mutation_8165)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t27@2 () T@$Mutation_50501)
(declare-fun $t27@1 () T@$Mutation_50501)
(declare-fun |Store__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int T@$1_VASP_ParentVASP) |T@[Int]$1_VASP_ParentVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ParentVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun $t23 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t34@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t33 () Int)
(declare-fun $t29@0 () Int)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t27 () T@$Mutation_50501)
(declare-fun $t27@0 () T@$Mutation_50501)
(declare-fun MapConstVec_7770 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_7770 () Int)
(declare-fun $abort_code@0 () Int)
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
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_48320)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_49265)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_51167)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_51282)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_51342)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t9 () T@$Mutation_8165)
(declare-fun $t28 () T@$Mutation_8165)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_VASP_ParentVASP_$memory@1 () T@$Memory_50099)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_47871)
(declare-fun $t6 () Int)
(declare-fun _$t1@@0 () T@$signer)
(declare-fun $t7 () Int)
(declare-fun $t5 () Int)
(declare-fun $t9@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $1_VASP_ParentVASP_$memory@0@@0 () T@$Memory_50099)
(declare-fun $t20@0 () T@$1_VASP_ParentVASP)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t18@@0 () Int)
(declare-fun $t15@@0 () Bool)
(declare-fun $t13@@0 () Bool)
(declare-fun $t14@@0 () Int)
(declare-fun $t12@@0 () Int)
(declare-fun $t9@@0 () Int)
(declare-fun $t11@@0 () Bool)
(declare-fun $t10 () Int)
(declare-fun $t8 () Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
; Valid
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@1 () T@$Memory_51427)
(declare-fun |Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|T@[Int]$1_RecoveryAddress_RecoveryAddress| Int) T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $t9@@1 () Int)
(declare-fun _$t1@@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun $t10@@0 () Int)
(declare-fun $t15@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@0 () T@$Memory_51427)
(declare-fun |Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|T@[Int]$1_RecoveryAddress_RecoveryAddress| Int T@$1_RecoveryAddress_RecoveryAddress) |T@[Int]$1_RecoveryAddress_RecoveryAddress|)
(assert (forall ( ( ?x0 |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ( ?x1 Int) ( ?x2 T@$1_RecoveryAddress_RecoveryAddress)) (! (= (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_RecoveryAddress_RecoveryAddress)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?y1))) :weight 0)))
(declare-fun $t25@0 () T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1| () T@Vec_28962)
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| () T@Vec_28962)
(declare-fun |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1| () T@$Mutation_33497)
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1| () T@$Mutation_33497)
(declare-fun |Store__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_KeyRotationCapability|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_KeyRotationCapability)) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|Store__T@[Int]$1_DiemAccount_KeyRotationCapability_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_KeyRotationCapability|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_KeyRotationCapability)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|Store__T@[Int]$1_DiemAccount_KeyRotationCapability_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| () T@Vec_28962)
(declare-fun MapConstVec_25349 (T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun DefaultVecElem_25349 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@0| () T@$Mutation_33497)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun $t23@@0 () Int)
(declare-fun $t20@0@@0 () Bool)
(declare-fun $t17@0 () Bool)
(declare-fun $t11@@1 () Int)
(declare-fun $t19@@0 () Int)
(declare-fun inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 () Int)
(declare-fun $t12@@1 () Bool)
(declare-fun $t14@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_RecoveryAddress_publish$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 84681) (let ((anon26_Else_correct  (=> (not $abort_flag@1@@0) (and (=> (= (ControlFlow 0 72979) (- 0 85774)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@41) (and (> (|l#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@41))) 0) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@41))) 0)) addr@@41))))
 :qid |RecoveryAddressbpl.4783:15|
 :skolemid |173|
))) (=> (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@42) (and (> (|l#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@42))) 0) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@42))) 0)) addr@@42))))
 :qid |RecoveryAddressbpl.4783:15|
 :skolemid |173|
)) (and (=> (= (ControlFlow 0 72979) (- 0 85821)) (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@43) (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@43)))
 :qid |RecoveryAddressbpl.4789:15|
 :skolemid |174|
))) (=> (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@44) (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@44)))
 :qid |RecoveryAddressbpl.4789:15|
 :skolemid |174|
)) (and (=> (= (ControlFlow 0 72979) (- 0 85845)) (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@45) (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@45)))
 :qid |RecoveryAddressbpl.4795:15|
 :skolemid |175|
))) (=> (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@46) (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@46)))
 :qid |RecoveryAddressbpl.4795:15|
 :skolemid |175|
)) (and (=> (= (ControlFlow 0 72979) (- 0 85869)) (forall ((recovery_addr Int) (to_recovery_addr Int) ) (!  (=> (|$IsValid'address'| recovery_addr) (=> (|$IsValid'address'| to_recovery_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr) (=> (exists ((i@@50 Int) ) (!  (and (and (|$IsValid'u64'| i@@50) (and (<= 0 i@@50) (< i@@50 (|l#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr))) i@@50)) to_recovery_addr))
 :qid |RecoveryAddressbpl.4451:13|
 :skolemid |163|
)) (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (and (<= 0 i@@51) (< i@@51 (|l#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) recovery_addr)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) recovery_addr))) i@@51)) to_recovery_addr))
 :qid |RecoveryAddressbpl.4451:13|
 :skolemid |163|
))))))
 :qid |RecoveryAddressbpl.4801:15|
 :skolemid |176|
))) (=> (forall ((recovery_addr@@0 Int) (to_recovery_addr@@0 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@0) (=> (|$IsValid'address'| to_recovery_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@0) (=> (exists ((i@@52 Int) ) (!  (and (and (|$IsValid'u64'| i@@52) (and (<= 0 i@@52) (< i@@52 (|l#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@0)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@0))) i@@52)) to_recovery_addr@@0))
 :qid |RecoveryAddressbpl.4451:13|
 :skolemid |163|
)) (exists ((i@@53 Int) ) (!  (and (and (|$IsValid'u64'| i@@53) (and (<= 0 i@@53) (< i@@53 (|l#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) recovery_addr@@0)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) recovery_addr@@0))) i@@53)) to_recovery_addr@@0))
 :qid |RecoveryAddressbpl.4451:13|
 :skolemid |163|
))))))
 :qid |RecoveryAddressbpl.4801:15|
 :skolemid |176|
)) (and (=> (= (ControlFlow 0 72979) (- 0 85910)) (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@47) (or (|Select__T@[Int]Bool_| (|domain#$Memory_50099| $1_VASP_ParentVASP_$memory) addr@@47) (|Select__T@[Int]Bool_| (|domain#$Memory_50035| $1_VASP_ChildVASP_$memory) addr@@47))))
 :qid |RecoveryAddressbpl.4807:15|
 :skolemid |177|
))) (=> (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@48) (or (|Select__T@[Int]Bool_| (|domain#$Memory_50099| $1_VASP_ParentVASP_$memory) addr@@48) (|Select__T@[Int]Bool_| (|domain#$Memory_50035| $1_VASP_ChildVASP_$memory) addr@@48))))
 :qid |RecoveryAddressbpl.4807:15|
 :skolemid |177|
)) (and (=> (= (ControlFlow 0 72979) (- 0 85940)) (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_50099| $1_VASP_ParentVASP_$memory) $t9@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_50035| $1_VASP_ChildVASP_$memory) $t9@@1))))) (=> (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_50099| $1_VASP_ParentVASP_$memory) $t9@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_50035| $1_VASP_ChildVASP_$memory) $t9@@1)))) (and (=> (= (ControlFlow 0 72979) (- 0 85953)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) $t9@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) $t9@@1)) (and (=> (= (ControlFlow 0 72979) (- 0 85963)) (not (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| _$t1@@1) $t9@@1)))) (=> (not (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| _$t1@@1) $t9@@1))) (and (=> (= (ControlFlow 0 72979) (- 0 85977)) (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) $t10@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) $t10@@0) (and (=> (= (ControlFlow 0 72979) (- 0 85985)) (= (|l#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) $t10@@0))) 1)) (=> (= (|l#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) $t10@@0))) 1) (=> (= (ControlFlow 0 72979) (- 0 85999)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory@1) $t10@@0))) 0) _$t1@@1)))))))))))))))))))))))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Then_correct| true))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Then_correct| true))
(let ((anon21_Then_correct@@0 true))
(let ((L7_correct@@0  (and (=> (= (ControlFlow 0 72022) (- 0 85690)) (or (or (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_50099| $1_VASP_ParentVASP_$memory) $t9@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_50035| $1_VASP_ChildVASP_$memory) $t9@@1))) (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) $t9@@1)) (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| _$t1@@1) $t9@@1)))) (=> (or (or (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_50099| $1_VASP_ParentVASP_$memory) $t9@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_50035| $1_VASP_ChildVASP_$memory) $t9@@1))) (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) $t9@@1)) (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| _$t1@@1) $t9@@1))) (=> (= (ControlFlow 0 72022) (- 0 85716)) (or (or (and (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_50099| $1_VASP_ParentVASP_$memory) $t9@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_50035| $1_VASP_ChildVASP_$memory) $t9@@1))) (= 7 $t15@0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) $t9@@1) (= 6 $t15@0))) (and (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| _$t1@@1) $t9@@1)) (= 7 $t15@0))))))))
(let ((anon26_Then_correct  (=> (and (and $abort_flag@1@@0 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t15@0 $abort_code@1@@1) (= (ControlFlow 0 72993) 72022))) L7_correct@@0)))
(let ((anon25_Then$1_correct  (=> (= $1_RecoveryAddress_RecoveryAddress_$memory@1 $1_RecoveryAddress_RecoveryAddress_$memory) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= $abort_flag@1@@0 true)) (and (=> (= (ControlFlow 0 73045) 72993) anon26_Then_correct) (=> (= (ControlFlow 0 73045) 72979) anon26_Else_correct))))))
(let ((anon25_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 73043) 73045)) anon25_Then$1_correct)))
(let ((anon25_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) (|$addr#$signer| _$t0@@1))) (=> (and (and (= $1_RecoveryAddress_RecoveryAddress_$memory@0 ($Memory_51427 (|Store__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) (|$addr#$signer| _$t0@@1) $t25@0))) (= $1_RecoveryAddress_RecoveryAddress_$memory@1 $1_RecoveryAddress_RecoveryAddress_$memory@0)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= $abort_flag@1@@0 $abort_flag@0@@1))) (and (=> (= (ControlFlow 0 72724) 72993) anon26_Then_correct) (=> (= (ControlFlow 0 72724) 72979) anon26_Else_correct))))))
(let ((anon24_Else_correct  (=> (and (not $abort_flag@0@@1) (= $t25@0 ($1_RecoveryAddress_RecoveryAddress |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 72702) 73043) anon25_Then_correct) (=> (= (ControlFlow 0 72702) 72724) anon25_Else_correct)))))
(let ((anon24_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@0@@1 $abort_code@0@@1)) (and (= $t15@0 $abort_code@0@@1) (= (ControlFlow 0 73059) 72022))) L7_correct@@0)))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Else_correct|  (=> (not false) (=> (and (and (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| (|v#$Mutation_33497| |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1|)) (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1|)) (and (= $abort_flag@0@@1 false) (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1|))) (and (=> (= (ControlFlow 0 72644) 73059) anon24_Then_correct) (=> (= (ControlFlow 0 72644) 72702) anon24_Else_correct))))))
(let ((|inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1| ($Mutation_33497 (|l#$Mutation_33497| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (|p#$Mutation_33497| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (let ((l@@0 (|l#Vec_28962| (|v#$Mutation_33497| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|))))
(Vec_28962 (|Store__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| (|v#$Mutation_33497| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|)) l@@0 _$t1@@1) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 72612) 72658) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Then_correct|) (=> (= (ControlFlow 0 72612) 72644) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Else_correct|)))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Else_correct|  (=> (and (and (not false) (= |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1|)) (and (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1| ($Mutation_33497 ($Local 1) (Vec_12290 (MapConstVec_7770 DefaultVecElem_7770) 0) |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1|)) (= (ControlFlow 0 72618) 72612))) |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|)))
(let ((|inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| (Vec_28962 (MapConstVec_25349 DefaultVecElem_25349) 0)) (and (=> (= (ControlFlow 0 72529) 72678) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Then_correct|) (=> (= (ControlFlow 0 72529) 72618) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Else_correct|)))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= (|l#Vec_12290| (|p#$Mutation_33497| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@0|)) 0) (=> (and (= _$t1@@1 _$t1@@1) (= (ControlFlow 0 72535) 72529)) |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|))))
(let ((anon23_Then_correct  (=> (and inline$$Not$0$dst@1@@1 (= (ControlFlow 0 72684) 72535)) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|)))
(let ((anon23_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@1) (= $t23@@0 $t23@@0)) (and (= $t15@0 $t23@@0) (= (ControlFlow 0 72279) 72022))) L7_correct@@0)))
(let ((anon22_Then$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| $t23@@0) (= $t23@@0 6)) (and (= $t23@@0 $t23@@0) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 72263) 72684) anon23_Then_correct) (=> (= (ControlFlow 0 72263) 72279) anon23_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not $t20@0@@0)) (= (ControlFlow 0 72227) 72263)) anon22_Then$1_correct)))
(let ((anon22_Then_correct  (=> $t17@0 (=> (and (= $t20@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) $t11@@1)) (= (ControlFlow 0 72233) 72227)) inline$$Not$0$anon0_correct@@1))))
(let ((anon22_Else_correct  (=> (and (and (not $t17@0) (= $t19@@0 $t19@@0)) (and (= $t15@0 $t19@@0) (= (ControlFlow 0 72187) 72022))) L7_correct@@0)))
(let ((anon21_Else_correct@@0  (=> (not false) (=> (and (= $t17@0 (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 $t11@@1)) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t19@@0) (= $t19@@0 7)) (and (= $t19@@0 $t19@@0) (= $t17@0 $t17@0))) (and (=> (= (ControlFlow 0 72171) 72233) anon22_Then_correct) (=> (= (ControlFlow 0 72171) 72187) anon22_Else_correct)))))))
(let ((inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct  (=> (= _$t1@@1 _$t1@@1) (=> (and (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| _$t1@@1)) (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1)) (and (=> (= (ControlFlow 0 72119) 73073) anon21_Then_correct@@0) (=> (= (ControlFlow 0 72119) 72171) anon21_Else_correct@@0))))))
(let ((anon20_Then_correct@@0  (=> (and $t12@@1 (= (ControlFlow 0 72125) 72119)) inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct)))
(let ((anon20_Else_correct@@0  (=> (and (and (not $t12@@1) (= $t14@@1 $t14@@1)) (and (= $t15@0 $t14@@1) (= (ControlFlow 0 71930) 72022))) L7_correct@@0)))
(let ((anon0$1_correct@@1  (=> (forall ((child_addr@@7 Int) ) (!  (=> (|$IsValid'address'| child_addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_50035| $1_VASP_ChildVASP_$memory) child_addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_50099| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_50035| $1_VASP_ChildVASP_$memory) child_addr@@7)))))
 :qid |RecoveryAddressbpl.4516:20|
 :skolemid |165|
)) (=> (and (and (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (= (|Select__T@[Int]Bool_| (|domain#$Memory_50099| $1_VASP_ParentVASP_$memory) addr@@49)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_47993| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_47993| $1_Roles_RoleId_$memory) addr@@49)) 5))))
 :qid |RecoveryAddressbpl.4520:20|
 :skolemid |166|
)) (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (= (|Select__T@[Int]Bool_| (|domain#$Memory_50035| $1_VASP_ChildVASP_$memory) addr@@50)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_47993| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_47993| $1_Roles_RoleId_$memory) addr@@50)) 6))))
 :qid |RecoveryAddressbpl.4524:20|
 :skolemid |167|
))) (and (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@51) (and (> (|l#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@51))) 0) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_28962| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@51))) 0)) addr@@51))))
 :qid |RecoveryAddressbpl.4528:20|
 :skolemid |168|
)) (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@52) (or (|Select__T@[Int]Bool_| (|domain#$Memory_50099| $1_VASP_ParentVASP_$memory) addr@@52) (|Select__T@[Int]Bool_| (|domain#$Memory_50035| $1_VASP_ChildVASP_$memory) addr@@52))))
 :qid |RecoveryAddressbpl.4532:20|
 :skolemid |169|
)))) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) ($1_Signer_is_txn_signer _$t0@@1)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@1))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| _$t1@@1)) (=> (and (and (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_50035| $1_VASP_ChildVASP_$memory) $a_0@@6)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@6))
 :qid |RecoveryAddressbpl.4541:20|
 :skolemid |170|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_50035| $1_VASP_ChildVASP_$memory) $a_0@@6))
)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_50099| $1_VASP_ParentVASP_$memory) $a_0@@7)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@7))
 :qid |RecoveryAddressbpl.4545:20|
 :skolemid |171|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_50099| $1_VASP_ParentVASP_$memory) $a_0@@7))
))) (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@8)))
(|$IsValid'$1_RecoveryAddress_RecoveryAddress'| $rsc@@8))
 :qid |RecoveryAddressbpl.4549:20|
 :skolemid |172|
 :pattern ( (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_51427| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@8))
)) (= $t9@@1 (|$addr#$signer| _$t0@@1)))) (and (and (= $t10@@0 (|$addr#$signer| _$t0@@1)) (= _$t0@@1 _$t0@@1)) (and (= _$t1@@1 _$t1@@1) (|$IsValid'address'| $t11@@1)))) (and (and (and (= $t11@@1 (|$addr#$signer| _$t0@@1)) (= $t11@@1 $t11@@1)) (and (= $t12@@1  (or (|Select__T@[Int]Bool_| (|domain#$Memory_50099| $1_VASP_ParentVASP_$memory) $t11@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_50035| $1_VASP_ChildVASP_$memory) $t11@@1))) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14@@1) (= $t14@@1 7)) (and (= $t14@@1 $t14@@1) (= $t12@@1 $t12@@1))))) (and (=> (= (ControlFlow 0 71914) 72125) anon20_Then_correct@@0) (=> (= (ControlFlow 0 71914) 71930) anon20_Else_correct@@0))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_28837_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_28837| stream@@2) 0) (forall ((v@@30 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_28837| stream@@2) v@@30) 0)
 :qid |RecoveryAddressbpl.159:13|
 :skolemid |4|
))))
 :qid |RecoveryAddressbpl.1863:13|
 :skolemid |63|
))) (= (ControlFlow 0 71559) 71914)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 84681) 71559) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
