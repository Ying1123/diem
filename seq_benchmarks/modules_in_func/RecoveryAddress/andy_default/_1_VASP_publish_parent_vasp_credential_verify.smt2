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
(declare-datatypes ((T@$Memory_40955 0)) ((($Memory_40955 (|domain#$Memory_40955| |T@[Int]Bool|) (|contents#$Memory_40955| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_54124 0)) ((($Memory_54124 (|domain#$Memory_54124| |T@[Int]Bool|) (|contents#$Memory_54124| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_52863 0)) ((($Memory_52863 (|domain#$Memory_52863| |T@[Int]Bool|) (|contents#$Memory_52863| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_46865 0)) ((($Memory_46865 (|domain#$Memory_46865| |T@[Int]Bool|) (|contents#$Memory_46865| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_45801 0)) ((($Memory_45801 (|domain#$Memory_45801| |T@[Int]Bool|) (|contents#$Memory_45801| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_45737 0)) ((($Memory_45737 (|domain#$Memory_45737| |T@[Int]Bool|) (|contents#$Memory_45737| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_53789 0)) ((($Memory_53789 (|domain#$Memory_53789| |T@[Int]Bool|) (|contents#$Memory_53789| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_47040 0)) ((($Memory_47040 (|domain#$Memory_47040| |T@[Int]Bool|) (|contents#$Memory_47040| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_46980 0)) ((($Memory_46980 (|domain#$Memory_46980| |T@[Int]Bool|) (|contents#$Memory_46980| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_47125 0)) ((($Memory_47125 (|domain#$Memory_47125| |T@[Int]Bool|) (|contents#$Memory_47125| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_52896 0)) ((($Memory_52896 (|domain#$Memory_52896| |T@[Int]Bool|) (|contents#$Memory_52896| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_45042 0)) ((($Memory_45042 (|domain#$Memory_45042| |T@[Int]Bool|) (|contents#$Memory_45042| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_44205 0)) ((($Memory_44205 (|domain#$Memory_44205| |T@[Int]Bool|) (|contents#$Memory_44205| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_43878 0)) ((($Memory_43878 (|domain#$Memory_43878| |T@[Int]Bool|) (|contents#$Memory_43878| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_43756 0)) ((($Memory_43756 (|domain#$Memory_43756| |T@[Int]Bool|) (|contents#$Memory_43756| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| (Seq Int)) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_28061 0)) (((Multiset_28061 (|v#Multiset_28061| |T@[$EventRep]Int|) (|l#Multiset_28061| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_28061| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_28061|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_59432 0)) ((($Mutation_59432 (|l#$Mutation_59432| T@$Location) (|p#$Mutation_59432| (Seq Int)) (|v#$Mutation_59432| T@$1_RecoveryAddress_RecoveryAddress) ) ) ))
(declare-datatypes ((T@$Mutation_54737 0)) ((($Mutation_54737 (|l#$Mutation_54737| T@$Location) (|p#$Mutation_54737| (Seq Int)) (|v#$Mutation_54737| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_46203 0)) ((($Mutation_46203 (|l#$Mutation_46203| T@$Location) (|p#$Mutation_46203| (Seq Int)) (|v#$Mutation_46203| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_41586 0)) ((($Mutation_41586 (|l#$Mutation_41586| T@$Location) (|p#$Mutation_41586| (Seq Int)) (|v#$Mutation_41586| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_7859 0)) ((($Mutation_7859 (|l#$Mutation_7859| T@$Location) (|p#$Mutation_7859| (Seq Int)) (|v#$Mutation_7859| Int) ) ) ))
(declare-datatypes ((T@$Mutation_38205 0)) ((($Mutation_38205 (|l#$Mutation_38205| T@$Location) (|p#$Mutation_38205| (Seq Int)) (|v#$Mutation_38205| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_36915 0)) ((($Mutation_36915 (|l#$Mutation_36915| T@$Location) (|p#$Mutation_36915| (Seq Int)) (|v#$Mutation_36915| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_36169 0)) ((($Mutation_36169 (|l#$Mutation_36169| T@$Location) (|p#$Mutation_36169| (Seq Int)) (|v#$Mutation_36169| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_34765 0)) ((($Mutation_34765 (|l#$Mutation_34765| T@$Location) (|p#$Mutation_34765| (Seq Int)) (|v#$Mutation_34765| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_34019 0)) ((($Mutation_34019 (|l#$Mutation_34019| T@$Location) (|p#$Mutation_34019| (Seq Int)) (|v#$Mutation_34019| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_32615 0)) ((($Mutation_32615 (|l#$Mutation_32615| T@$Location) (|p#$Mutation_32615| (Seq Int)) (|v#$Mutation_32615| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_31869 0)) ((($Mutation_31869 (|l#$Mutation_31869| T@$Location) (|p#$Mutation_31869| (Seq Int)) (|v#$Mutation_31869| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_30427 0)) ((($Mutation_30427 (|l#$Mutation_30427| T@$Location) (|p#$Mutation_30427| (Seq Int)) (|v#$Mutation_30427| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_29681 0)) ((($Mutation_29681 (|l#$Mutation_29681| T@$Location) (|p#$Mutation_29681| (Seq Int)) (|v#$Mutation_29681| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| ((Seq T@$1_ValidatorConfig_Config)) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| ((Seq T@$1_ValidatorConfig_Config) T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_28061_| (|T@[$1_Event_EventHandle]Multiset_28061| T@$1_Event_EventHandle) T@Multiset_28061)
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
(declare-fun ReverseVec_7712 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_25170 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_24776 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_24973 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_24579 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_28061| |T@[$1_Event_EventHandle]Multiset_28061|) |T@[$1_Event_EventHandle]Multiset_28061|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |RecoveryAddressbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |RecoveryAddressbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |RecoveryAddressbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |RecoveryAddressbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |RecoveryAddressbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |RecoveryAddressbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |RecoveryAddressbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |RecoveryAddressbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |RecoveryAddressbpl.595:13|
 :skolemid |15|
))))
 :qid |RecoveryAddressbpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |RecoveryAddressbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |RecoveryAddressbpl.608:17|
 :skolemid |18|
)))))
 :qid |RecoveryAddressbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |RecoveryAddressbpl.775:13|
 :skolemid |20|
))))
 :qid |RecoveryAddressbpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |RecoveryAddressbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |RecoveryAddressbpl.788:17|
 :skolemid |23|
)))))
 :qid |RecoveryAddressbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |RecoveryAddressbpl.955:13|
 :skolemid |25|
))))
 :qid |RecoveryAddressbpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |RecoveryAddressbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |RecoveryAddressbpl.968:17|
 :skolemid |28|
)))))
 :qid |RecoveryAddressbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@10 i@@9)))
 :qid |RecoveryAddressbpl.1135:13|
 :skolemid |30|
))))
 :qid |RecoveryAddressbpl.1133:51|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_ValidatorConfig_Config)) (e@@2 T@$1_ValidatorConfig_Config) ) (! (let ((i@@10 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |RecoveryAddressbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |RecoveryAddressbpl.1148:17|
 :skolemid |33|
)))))
 :qid |RecoveryAddressbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'address'| (seq.nth v@@12 i@@12)))
 :qid |RecoveryAddressbpl.1315:13|
 :skolemid |35|
))))
 :qid |RecoveryAddressbpl.1313:33|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'address''| v@@12))
)))
(assert (forall ((v@@13 (Seq Int)) (e@@3 Int) ) (! (let ((i@@13 (|$IndexOfVec'address'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |RecoveryAddressbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |RecoveryAddressbpl.1328:17|
 :skolemid |38|
)))))
 :qid |RecoveryAddressbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'address'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'u8'| (seq.nth v@@14 i@@15)))
 :qid |RecoveryAddressbpl.1495:13|
 :skolemid |40|
))))
 :qid |RecoveryAddressbpl.1493:28|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'u8''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'u8'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |RecoveryAddressbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |RecoveryAddressbpl.1508:17|
 :skolemid |43|
)))))
 :qid |RecoveryAddressbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'u8'| v@@15 e@@4))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |RecoveryAddressbpl.1681:15|
 :skolemid |45|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |RecoveryAddressbpl.1697:15|
 :skolemid |46|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |RecoveryAddressbpl.1768:15|
 :skolemid |47|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |RecoveryAddressbpl.1771:15|
 :skolemid |48|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_28061_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_28061| stream) 0) (forall ((v@@16 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_28061| stream) v@@16) 0)
 :qid |RecoveryAddressbpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddressbpl.1832:13|
 :skolemid |49|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h) true)
 :qid |RecoveryAddressbpl.1873:79|
 :skolemid |51|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_DiemAccount_AdminTransactionEvent) (v2@@1 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@1) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@1)))
 :qid |RecoveryAddressbpl.1879:15|
 :skolemid |52|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@1) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@0) true)
 :qid |RecoveryAddressbpl.1929:76|
 :skolemid |53|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_DiemAccount_CreateAccountEvent) (v2@@2 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@2)))
 :qid |RecoveryAddressbpl.1935:15|
 :skolemid |54|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@1) true)
 :qid |RecoveryAddressbpl.1985:78|
 :skolemid |55|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@3 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@3)))
 :qid |RecoveryAddressbpl.1991:15|
 :skolemid |56|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@2) true)
 :qid |RecoveryAddressbpl.2041:74|
 :skolemid |57|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_SentPaymentEvent) (v2@@4 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@4)))
 :qid |RecoveryAddressbpl.2047:15|
 :skolemid |58|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@3) true)
 :qid |RecoveryAddressbpl.2097:82|
 :skolemid |59|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@5 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@5)))
 :qid |RecoveryAddressbpl.2103:15|
 :skolemid |60|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@4) true)
 :qid |RecoveryAddressbpl.2153:88|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@6 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@6) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@6)))
 :qid |RecoveryAddressbpl.2159:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@6) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@6))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |RecoveryAddressbpl.2228:61|
 :skolemid |63|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |RecoveryAddressbpl.2287:36|
 :skolemid |64|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |RecoveryAddressbpl.2306:71|
 :skolemid |65|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |RecoveryAddressbpl.2443:46|
 :skolemid |66|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |RecoveryAddressbpl.2456:64|
 :skolemid |67|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |RecoveryAddressbpl.2469:75|
 :skolemid |68|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |RecoveryAddressbpl.2482:72|
 :skolemid |69|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |RecoveryAddressbpl.2511:55|
 :skolemid |70|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |RecoveryAddressbpl.2533:46|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@8) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@8)))
 :qid |RecoveryAddressbpl.2548:45|
 :skolemid |72|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@8))
)))
(assert (forall ((s@@9 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@9) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@9)))
 :qid |RecoveryAddressbpl.2561:45|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@9))
)))
(assert (forall ((s@@10 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@10) true)
 :qid |RecoveryAddressbpl.2574:68|
 :skolemid |74|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@10))
)))
(assert (forall ((s@@11 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@11) true)
 :qid |RecoveryAddressbpl.2587:31|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@11))
)))
(assert (forall ((s@@12 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@12) true)
 :qid |RecoveryAddressbpl.2600:31|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@12))
)))
(assert (forall ((s@@13 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@13) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@13)))
 :qid |RecoveryAddressbpl.2643:38|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@13))
)))
(assert (forall ((s@@14 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@14) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@14)))
 :qid |RecoveryAddressbpl.2657:39|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@15)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@15)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@15))))
 :qid |RecoveryAddressbpl.3785:60|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@16)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@16)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@16))))
 :qid |RecoveryAddressbpl.3802:66|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@17)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@17)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@17))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@17))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@17))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@17))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@17))))
 :qid |RecoveryAddressbpl.3831:50|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@17))
)))
(assert (forall ((s@@18 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@18) true)
 :qid |RecoveryAddressbpl.3850:51|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@19)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@19)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@19))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@19))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@19))))
 :qid |RecoveryAddressbpl.3944:47|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@19))
)))
(assert (forall ((s@@20 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@20)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@20)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@20))))
 :qid |RecoveryAddressbpl.3966:63|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@21) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@21)))
 :qid |RecoveryAddressbpl.3981:57|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@22) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@22)))
 :qid |RecoveryAddressbpl.3994:55|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@23) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@23)))
 :qid |RecoveryAddressbpl.4008:55|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@24)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@24)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@24))))
 :qid |RecoveryAddressbpl.4025:54|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@25) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@25)))
 :qid |RecoveryAddressbpl.4039:55|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@26) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@26)))
 :qid |RecoveryAddressbpl.4053:57|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@27)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@27))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@27))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@27))))
 :qid |RecoveryAddressbpl.4075:56|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@27))
)))
(assert (forall ((s@@28 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@28)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@28)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@28))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@28))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@28))))
 :qid |RecoveryAddressbpl.4100:52|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@28))
)))
(assert (forall ((s@@29 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@29) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@29)))
 :qid |RecoveryAddressbpl.4116:54|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@29))
)))
(assert (forall ((s@@30 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@30) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@30)))
 :qid |RecoveryAddressbpl.4421:55|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@30))
)))
(assert (forall ((v@@17 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_7712 v@@17)))
 (and (= (seq.len r@@0) (seq.len v@@17)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len r@@0))) (= (seq.nth r@@0 i@@18) (seq.nth v@@17 (- (- (seq.len v@@17) i@@18) 1))))
 :qid |RecoveryAddressbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@18))
))))
 :qid |RecoveryAddressbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7712 v@@17))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_25170 v@@18)))
 (and (= (seq.len r@@1) (seq.len v@@18)) (forall ((i@@19 Int) ) (!  (=> (and (>= i@@19 0) (< i@@19 (seq.len r@@1))) (= (seq.nth r@@1 i@@19) (seq.nth v@@18 (- (- (seq.len v@@18) i@@19) 1))))
 :qid |RecoveryAddressbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@19))
))))
 :qid |RecoveryAddressbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_25170 v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_24776 v@@19)))
 (and (= (seq.len r@@2) (seq.len v@@19)) (forall ((i@@20 Int) ) (!  (=> (and (>= i@@20 0) (< i@@20 (seq.len r@@2))) (= (seq.nth r@@2 i@@20) (seq.nth v@@19 (- (- (seq.len v@@19) i@@20) 1))))
 :qid |RecoveryAddressbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@20))
))))
 :qid |RecoveryAddressbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_24776 v@@19))
)))
(assert (forall ((v@@20 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_24973 v@@20)))
 (and (= (seq.len r@@3) (seq.len v@@20)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@3))) (= (seq.nth r@@3 i@@21) (seq.nth v@@20 (- (- (seq.len v@@20) i@@21) 1))))
 :qid |RecoveryAddressbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@21))
))))
 :qid |RecoveryAddressbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_24973 v@@20))
)))
(assert (forall ((v@@21 (Seq |T@#0|)) ) (! (let ((r@@4 (ReverseVec_24579 v@@21)))
 (and (= (seq.len r@@4) (seq.len v@@21)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@4))) (= (seq.nth r@@4 i@@22) (seq.nth v@@21 (- (- (seq.len v@@21) i@@22) 1))))
 :qid |RecoveryAddressbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@22))
))))
 :qid |RecoveryAddressbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_24579 v@@21))
)))
(assert (forall ((|l#0| Bool) (i@@23 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@23) |l#0|)
 :qid |RecoveryAddressbpl.250:54|
 :skolemid |192|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@23))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_28061|) (|l#1| |T@[$1_Event_EventHandle]Multiset_28061|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_28061_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_28061| (|Select__T@[$1_Event_EventHandle]Multiset_28061_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_28061| (|Select__T@[$1_Event_EventHandle]Multiset_28061_| |l#1| handle@@0))))
(Multiset_28061 (|lambda#3| (|v#Multiset_28061| (|Select__T@[$1_Event_EventHandle]Multiset_28061_| |l#0@@0| handle@@0)) (|v#Multiset_28061| (|Select__T@[$1_Event_EventHandle]Multiset_28061_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |RecoveryAddressbpl.1842:13|
 :skolemid |193|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_28061_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@22 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@22) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@22) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@22)))
 :qid |RecoveryAddressbpl.129:29|
 :skolemid |194|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@22))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_45737)
(declare-fun $1_VASP_ChildVASP_$memory@1 () T@$Memory_45737)
(declare-fun $1_VASP_ParentVASP_$memory@0 () T@$Memory_45801)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_47125)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_45801)
(declare-fun $t11 () Int)
(declare-fun $t12 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_43878)
(declare-fun $t13 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () T@$signer)
(declare-fun $t16@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun _$t1 () T@$signer)
(declare-fun $1_VASP_ChildVASP_$memory@0 () T@$Memory_45737)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int T@$1_VASP_ChildVASP) |T@[Int]$1_VASP_ChildVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ChildVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun $t37@0 () T@$1_VASP_ChildVASP)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t28@1 () T@$Mutation_7859)
(declare-fun $t28@0 () T@$Mutation_7859)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t27@2 () T@$Mutation_46203)
(declare-fun $t27@1 () T@$Mutation_46203)
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
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t27 () T@$Mutation_46203)
(declare-fun $t27@0 () T@$Mutation_46203)
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
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_44205)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_45042)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_46865)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_46980)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_47040)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t9 () T@$Mutation_7859)
(declare-fun $t28 () T@$Mutation_7859)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_VASP_ParentVASP_$memory@1 () T@$Memory_45801)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_43756)
(declare-fun $t6 () Int)
(declare-fun _$t1@@0 () T@$signer)
(declare-fun $t7 () Int)
(declare-fun $t5 () Int)
(declare-fun $t9@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $1_VASP_ParentVASP_$memory@0@@0 () T@$Memory_45801)
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
(push 1)
(set-info :boogie-vc-id $1_VASP_publish_parent_vasp_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 75452) (let ((anon21_Else_correct  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 66160) (- 0 76841)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) addr@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory@1) addr@@22)))
 :qid |RecoveryAddressbpl.3669:15|
 :skolemid |128|
))) (=> (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) addr@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory@1) addr@@23)))
 :qid |RecoveryAddressbpl.3669:15|
 :skolemid |128|
)) (and (=> (= (ControlFlow 0 66160) (- 0 76865)) (forall ((child_addr@@4 Int) ) (!  (=> (|$IsValid'address'| child_addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) child_addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory@1) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_45737| $1_VASP_ChildVASP_$memory) child_addr@@4)))))
 :qid |RecoveryAddressbpl.3675:15|
 :skolemid |129|
))) (=> (forall ((child_addr@@5 Int) ) (!  (=> (|$IsValid'address'| child_addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) child_addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory@1) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_45737| $1_VASP_ChildVASP_$memory) child_addr@@5)))))
 :qid |RecoveryAddressbpl.3675:15|
 :skolemid |129|
)) (and (=> (= (ControlFlow 0 66160) (- 0 76896)) (forall ((a@@3 Int) ) (!  (=> (|$IsValid'address'| a@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) a@@3) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory@1) a@@3) a@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_45737| $1_VASP_ChildVASP_$memory) a@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) a@@3) a@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_45737| $1_VASP_ChildVASP_$memory) a@@3))))))
 :qid |RecoveryAddressbpl.3681:15|
 :skolemid |130|
))) (=> (forall ((a@@4 Int) ) (!  (=> (|$IsValid'address'| a@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) a@@4) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory@1) a@@4) a@@4 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_45737| $1_VASP_ChildVASP_$memory) a@@4))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) a@@4) a@@4 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_45737| $1_VASP_ChildVASP_$memory) a@@4))))))
 :qid |RecoveryAddressbpl.3681:15|
 :skolemid |130|
)) (and (=> (= (ControlFlow 0 66160) (- 0 76930)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_47125| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@24) (or (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory@1) addr@@24) (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) addr@@24))))
 :qid |RecoveryAddressbpl.3687:15|
 :skolemid |131|
))) (=> (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_47125| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@25) (or (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory@1) addr@@25) (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) addr@@25))))
 :qid |RecoveryAddressbpl.3687:15|
 :skolemid |131|
)) (and (=> (= (ControlFlow 0 66160) (- 0 76960)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_43756| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_43756| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 66160) (- 0 76970)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 66160) (- 0 76982)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 66160) (- 0 77000)) (not (not (= (|$addr#$signer| _$t1@@0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@0) 186537453))) (and (=> (= (ControlFlow 0 66160) (- 0 77014)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 66160) (- 0 77026)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t7)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t7)) 5))) (and (=> (= (ControlFlow 0 66160) (- 0 77044)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) $t5)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) $t5))) (and (=> (= (ControlFlow 0 66160) (- 0 77055)) (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory@1) $t5)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory@1) $t5) (and (=> (= (ControlFlow 0 66160) (- 0 77063)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_45801| $1_VASP_ParentVASP_$memory@1) $t5)) 0)) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_45801| $1_VASP_ParentVASP_$memory@1) $t5)) 0) (and (=> (= (ControlFlow 0 66160) (- 0 77075)) (forall ((a@@5 Int) ) (!  (=> (|$IsValid'address'| a@@5) (= (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) a@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) a@@5)))
 :qid |RecoveryAddressbpl.3741:15|
 :skolemid |132|
))) (=> (forall ((a@@6 Int) ) (!  (=> (|$IsValid'address'| a@@6) (= (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) a@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) a@@6)))
 :qid |RecoveryAddressbpl.3741:15|
 :skolemid |132|
)) (=> (= (ControlFlow 0 66160) (- 0 77100)) (forall ((parent Int) ) (!  (=> (|$IsValid'address'| parent) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) parent) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_45801| $1_VASP_ParentVASP_$memory@1) parent)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_45801| $1_VASP_ParentVASP_$memory) parent)))))
 :qid |RecoveryAddressbpl.3746:15|
 :skolemid |133|
))))))))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 65812) (- 0 76637)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_43756| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t7)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) $t5)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_43756| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t7)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) $t5))) (=> (= (ControlFlow 0 65812) (- 0 76709)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_43756| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t6)) (= 5 $t9@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t9@0))) (and (not (= (|$addr#$signer| _$t1@@0) 186537453)) (= 2 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t7)) (= 5 $t9@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t7)) 5)) (= 3 $t9@0))) (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) $t5)) (= 6 $t9@0))))))))
(let ((anon21_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t9@0 $abort_code@1@@0) (= (ControlFlow 0 66174) 65812))) L3_correct)))
(let ((anon20_Then$1_correct  (=> (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 66226) 66174) anon21_Then_correct) (=> (= (ControlFlow 0 66226) 66160) anon21_Else_correct))))))
(let ((anon20_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 66224) 66226)) anon20_Then$1_correct)))
(let ((anon20_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@0))) (=> (and (and (= $1_VASP_ParentVASP_$memory@0@@0 ($Memory_45801 (|Store__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_45801| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@0) $t20@0))) (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 65856) 66174) anon21_Then_correct) (=> (= (ControlFlow 0 65856) 66160) anon21_Else_correct))))))
(let ((anon19_Then_correct  (=> inline$$Not$0$dst@1@@0 (=> (and (|$IsValid'u64'| 0) (= $t20@0 ($1_VASP_ParentVASP 0))) (and (=> (= (ControlFlow 0 65834) 66224) anon20_Then_correct) (=> (= (ControlFlow 0 65834) 65856) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t18@@0 $t18@@0)) (and (= $t9@0 $t18@@0) (= (ControlFlow 0 65588) 65812))) L3_correct)))
(let ((anon18_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t18@@0) (= $t18@@0 6)) (and (= $t18@@0 $t18@@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 65572) 65834) anon19_Then_correct) (=> (= (ControlFlow 0 65572) 65588) anon19_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t15@@0)) (= (ControlFlow 0 65536) 65572)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (and (not $t13@@0) (|$IsValid'address'| $t14@@0)) (=> (and (and (= $t14@@0 (|$addr#$signer| _$t0@@0)) (= $t14@@0 $t14@@0)) (and (= $t15@@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) $t14@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) $t14@@0))) (= (ControlFlow 0 65542) 65536))) inline$$Not$0$anon0_correct@@0))))
(let ((anon18_Then_correct  (=> $t13@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t12@@0)) (= 5 $t9@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t12@@0)) 5)) (= 3 $t9@@0))) (= $t9@@0 $t9@@0)) (and (= $t9@0 $t9@@0) (= (ControlFlow 0 66278) 65812))) L3_correct))))
(let ((anon17_Else_correct  (=> (not $t11@@0) (=> (and (= $t12@@0 (|$addr#$signer| _$t0@@0)) (= $t13@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t12@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t12@@0)) 5))))) (and (=> (= (ControlFlow 0 65462) 66278) anon18_Then_correct) (=> (= (ControlFlow 0 65462) 65542) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> $t11@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t10)) (= 5 $t9@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t10)) 1)) (= 3 $t9@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 186537453)) (= 2 $t9@@0))) (= $t9@@0 $t9@@0)) (and (= $t9@0 $t9@@0) (= (ControlFlow 0 66350) 65812))) L3_correct))))
(let ((anon16_Else_correct  (=> (not $t8) (=> (and (= $t10 (|$addr#$signer| _$t1@@0)) (= $t11@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) $t10)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $t10)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))))) (and (=> (= (ControlFlow 0 65416) 66350) anon17_Then_correct) (=> (= (ControlFlow 0 65416) 65462) anon17_Else_correct))))))
(let ((anon16_Then_correct  (=> $t8 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_43756| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@@0)) (= $t9@@0 $t9@@0)) (and (= $t9@0 $t9@@0) (= (ControlFlow 0 66376) 65812))) L3_correct))))
(let ((anon0$1_correct@@0  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_43756| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_43756| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@26)) 0)) (= addr@@26 173345816)))
 :qid |RecoveryAddressbpl.3358:20|
 :skolemid |107|
))) (=> (and (and (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@27)) 1)) (= addr@@27 186537453)))
 :qid |RecoveryAddressbpl.3362:20|
 :skolemid |108|
)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@28)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@28)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@28)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@28)) 2))))))
 :qid |RecoveryAddressbpl.3366:20|
 :skolemid |109|
))) (and (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@29)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@29)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@29)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@29)) 2))))))
 :qid |RecoveryAddressbpl.3370:20|
 :skolemid |110|
)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@30)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@30)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@30)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@30)) 2))))))
 :qid |RecoveryAddressbpl.3374:20|
 :skolemid |111|
)))) (=> (and (and (and (and (and (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@31)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@31)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@31)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@31)) 2))))))
 :qid |RecoveryAddressbpl.3378:20|
 :skolemid |112|
)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@32)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@32)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@32)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@32)) 2)))))
 :qid |RecoveryAddressbpl.3382:20|
 :skolemid |113|
))) (and (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@33)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@33)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@33)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@33)) 2)))))
 :qid |RecoveryAddressbpl.3386:20|
 :skolemid |114|
)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@34)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@34)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@34)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@34)) 2)))))
 :qid |RecoveryAddressbpl.3390:20|
 :skolemid |115|
)))) (and (and (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_44205| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@35) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@35)) 4))))
 :qid |RecoveryAddressbpl.3394:20|
 :skolemid |116|
)) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_45042| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@36) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@36)) 3))))
 :qid |RecoveryAddressbpl.3398:20|
 :skolemid |117|
))) (and (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_45042| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@37) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@37)) 3))))
 :qid |RecoveryAddressbpl.3402:20|
 :skolemid |118|
)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_45042| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@38) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_45042| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@38)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@38)) 3))))
 :qid |RecoveryAddressbpl.3406:20|
 :skolemid |119|
))))) (and (and (and (forall ((child_addr@@6 Int) ) (!  (=> (|$IsValid'address'| child_addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) child_addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_45737| $1_VASP_ChildVASP_$memory) child_addr@@6)))))
 :qid |RecoveryAddressbpl.3410:20|
 :skolemid |120|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_46865| $1_DualAttestation_Credential_$memory) addr1@@0) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr1@@0)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr1@@0)) 2)))))
 :qid |RecoveryAddressbpl.3414:20|
 :skolemid |121|
))) (and (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_46980| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@39) (|Select__T@[Int]Bool_| (|domain#$Memory_47040| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@39)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@39)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@39)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_43878| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) addr@@39)) 2)))))
 :qid |RecoveryAddressbpl.3418:20|
 :skolemid |122|
)) (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_47125| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@40) (or (|Select__T@[Int]Bool_| (|domain#$Memory_45801| $1_VASP_ParentVASP_$memory) addr@@40) (|Select__T@[Int]Bool_| (|domain#$Memory_45737| $1_VASP_ChildVASP_$memory) addr@@40))))
 :qid |RecoveryAddressbpl.3422:20|
 :skolemid |123|
)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) ($1_Signer_is_txn_signer _$t0@@0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@0))))) (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1@@0)) ($1_Signer_is_txn_signer _$t1@@0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t1@@0))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_43756| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@2))
 :qid |RecoveryAddressbpl.3431:20|
 :skolemid |124|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_43756| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $a_0@@3)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@3))
 :qid |RecoveryAddressbpl.3435:20|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_43878| $1_Roles_RoleId_$memory) $a_0@@3))
)))) (and (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_45737| $1_VASP_ChildVASP_$memory) $a_0@@4)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@4))
 :qid |RecoveryAddressbpl.3439:20|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_45737| $1_VASP_ChildVASP_$memory) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_45801| $1_VASP_ParentVASP_$memory) $a_0@@5)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@5))
 :qid |RecoveryAddressbpl.3443:20|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_45801| $1_VASP_ParentVASP_$memory) $a_0@@5))
))) (and (= $t5 (|$addr#$signer| _$t0@@0)) (= $t6 (|$addr#$signer| _$t1@@0)))) (and (and (= $t7 (|$addr#$signer| _$t0@@0)) (= _$t0@@0 _$t0@@0)) (and (= _$t1@@0 _$t1@@0) (= $t8  (not (|Select__T@[Int]Bool_| (|domain#$Memory_43756| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 65358) 66376) anon16_Then_correct) (=> (= (ControlFlow 0 65358) 65416) anon16_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_28061_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_28061| stream@@1) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_28061| stream@@1) v@@24) 0)
 :qid |RecoveryAddressbpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddressbpl.1832:13|
 :skolemid |49|
))) (= (ControlFlow 0 64721) 65358)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 75452) 64721) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
