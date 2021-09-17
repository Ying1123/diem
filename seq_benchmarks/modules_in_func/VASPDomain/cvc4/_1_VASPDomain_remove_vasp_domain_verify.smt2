(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_45277 0)) ((($Memory_45277 (|domain#$Memory_45277| |T@[Int]Bool|) (|contents#$Memory_45277| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_51875 0)) ((($Memory_51875 (|domain#$Memory_51875| |T@[Int]Bool|) (|contents#$Memory_51875| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_51443 0)) ((($Memory_51443 (|domain#$Memory_51443| |T@[Int]Bool|) (|contents#$Memory_51443| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_52150 0)) ((($Memory_52150 (|domain#$Memory_52150| |T@[Int]Bool|) (|contents#$Memory_52150| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_52250 0)) ((($Memory_52250 (|domain#$Memory_52250| |T@[Int]Bool|) (|contents#$Memory_52250| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_50235 0)) ((($Memory_50235 (|domain#$Memory_50235| |T@[Int]Bool|) (|contents#$Memory_50235| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_50171 0)) ((($Memory_50171 (|domain#$Memory_50171| |T@[Int]Bool|) (|contents#$Memory_50171| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_51790 0)) ((($Memory_51790 (|domain#$Memory_51790| |T@[Int]Bool|) (|contents#$Memory_51790| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_51730 0)) ((($Memory_51730 (|domain#$Memory_51730| |T@[Int]Bool|) (|contents#$Memory_51730| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_49463 0)) ((($Memory_49463 (|domain#$Memory_49463| |T@[Int]Bool|) (|contents#$Memory_49463| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_51556 0)) ((($Memory_51556 (|domain#$Memory_51556| |T@[Int]Bool|) (|contents#$Memory_51556| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_49496 0)) ((($Memory_49496 (|domain#$Memory_49496| |T@[Int]Bool|) (|contents#$Memory_49496| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_48952 0)) ((($Memory_48952 (|domain#$Memory_48952| |T@[Int]Bool|) (|contents#$Memory_48952| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_48520 0)) ((($Memory_48520 (|domain#$Memory_48520| |T@[Int]Bool|) (|contents#$Memory_48520| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_48193 0)) ((($Memory_48193 (|domain#$Memory_48193| |T@[Int]Bool|) (|contents#$Memory_48193| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_48071 0)) ((($Memory_48071 (|domain#$Memory_48071| |T@[Int]Bool|) (|contents#$Memory_48071| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| (Seq Int)) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| (Seq Int)) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_30205 0)) (((Multiset_30205 (|v#Multiset_30205| |T@[$EventRep]Int|) (|l#Multiset_30205| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_30205| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_30205|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_50669 0)) ((($Mutation_50669 (|l#$Mutation_50669| T@$Location) (|p#$Mutation_50669| (Seq Int)) (|v#$Mutation_50669| T@$1_VASPDomain_VASPDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_50608 0)) ((($Mutation_50608 (|l#$Mutation_50608| T@$Location) (|p#$Mutation_50608| (Seq Int)) (|v#$Mutation_50608| T@$1_VASPDomain_VASPDomains) ) ) ))
(declare-datatypes ((T@$Mutation_45908 0)) ((($Mutation_45908 (|l#$Mutation_45908| T@$Location) (|p#$Mutation_45908| (Seq Int)) (|v#$Mutation_45908| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_8964 0)) ((($Mutation_8964 (|l#$Mutation_8964| T@$Location) (|p#$Mutation_8964| (Seq Int)) (|v#$Mutation_8964| Int) ) ) ))
(declare-datatypes ((T@$Mutation_42527 0)) ((($Mutation_42527 (|l#$Mutation_42527| T@$Location) (|p#$Mutation_42527| (Seq Int)) (|v#$Mutation_42527| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_41237 0)) ((($Mutation_41237 (|l#$Mutation_41237| T@$Location) (|p#$Mutation_41237| (Seq Int)) (|v#$Mutation_41237| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_40491 0)) ((($Mutation_40491 (|l#$Mutation_40491| T@$Location) (|p#$Mutation_40491| (Seq Int)) (|v#$Mutation_40491| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_39087 0)) ((($Mutation_39087 (|l#$Mutation_39087| T@$Location) (|p#$Mutation_39087| (Seq Int)) (|v#$Mutation_39087| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_38341 0)) ((($Mutation_38341 (|l#$Mutation_38341| T@$Location) (|p#$Mutation_38341| (Seq Int)) (|v#$Mutation_38341| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_36937 0)) ((($Mutation_36937 (|l#$Mutation_36937| T@$Location) (|p#$Mutation_36937| (Seq Int)) (|v#$Mutation_36937| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_36191 0)) ((($Mutation_36191 (|l#$Mutation_36191| T@$Location) (|p#$Mutation_36191| (Seq Int)) (|v#$Mutation_36191| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_34787 0)) ((($Mutation_34787 (|l#$Mutation_34787| T@$Location) (|p#$Mutation_34787| (Seq Int)) (|v#$Mutation_34787| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_34041 0)) ((($Mutation_34041 (|l#$Mutation_34041| T@$Location) (|p#$Mutation_34041| (Seq Int)) (|v#$Mutation_34041| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_32599 0)) ((($Mutation_32599 (|l#$Mutation_32599| T@$Location) (|p#$Mutation_32599| (Seq Int)) (|v#$Mutation_32599| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_31853 0)) ((($Mutation_31853 (|l#$Mutation_31853| T@$Location) (|p#$Mutation_31853| (Seq Int)) (|v#$Mutation_31853| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| ((Seq T@$1_DiemAccount_KeyRotationCapability)) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| ((Seq T@$1_DiemAccount_KeyRotationCapability) T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| ((Seq T@$1_DiemAccount_WithdrawCapability)) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| ((Seq T@$1_DiemAccount_WithdrawCapability) T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| ((Seq T@$1_DiemSystem_ValidatorInfo)) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| ((Seq T@$1_DiemSystem_ValidatorInfo) T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| ((Seq T@$1_VASPDomain_VASPDomain)) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| ((Seq T@$1_VASPDomain_VASPDomain) T@$1_VASPDomain_VASPDomain) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_30205_| (|T@[$1_Event_EventHandle]Multiset_30205| T@$1_Event_EventHandle) T@Multiset_30205)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun |$IsValid'$1_SlidingNonce_SlidingNonce'| (T@$1_SlidingNonce_SlidingNonce) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemSystem_DiemSystem'| (T@$1_DiemSystem_DiemSystem) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemAccount'| (T@$1_DiemAccount_DiemAccount) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun ReverseVec_8817 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_26988 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_26200 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_26397 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_26594 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_26791 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_30205| |T@[$1_Event_EventHandle]Multiset_30205|) |T@[$1_Event_EventHandle]Multiset_30205|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |VASPDomainbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |VASPDomainbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |VASPDomainbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |VASPDomainbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |VASPDomainbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |VASPDomainbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |VASPDomainbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |VASPDomainbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@4 i@@0)))
 :qid |VASPDomainbpl.595:13|
 :skolemid |15|
))))
 :qid |VASPDomainbpl.593:62|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@1 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |VASPDomainbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |VASPDomainbpl.608:17|
 :skolemid |18|
)))))
 :qid |VASPDomainbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@6 i@@3)))
 :qid |VASPDomainbpl.775:13|
 :skolemid |20|
))))
 :qid |VASPDomainbpl.773:59|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |VASPDomainbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |VASPDomainbpl.788:17|
 :skolemid |23|
)))))
 :qid |VASPDomainbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@8 i@@6)))
 :qid |VASPDomainbpl.955:13|
 :skolemid |25|
))))
 :qid |VASPDomainbpl.953:53|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@1 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |VASPDomainbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |VASPDomainbpl.968:17|
 :skolemid |28|
)))))
 :qid |VASPDomainbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@10 i@@9)))
 :qid |VASPDomainbpl.1135:13|
 :skolemid |30|
))))
 :qid |VASPDomainbpl.1133:50|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_VASPDomain_VASPDomain)) (e@@2 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@10 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |VASPDomainbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |VASPDomainbpl.1148:17|
 :skolemid |33|
)))))
 :qid |VASPDomainbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@12 i@@12)))
 :qid |VASPDomainbpl.1315:13|
 :skolemid |35|
))))
 :qid |VASPDomainbpl.1313:51|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_ValidatorConfig_Config)) (e@@3 T@$1_ValidatorConfig_Config) ) (! (let ((i@@13 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |VASPDomainbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |VASPDomainbpl.1328:17|
 :skolemid |38|
)))))
 :qid |VASPDomainbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'address'| (seq.nth v@@14 i@@15)))
 :qid |VASPDomainbpl.1495:13|
 :skolemid |40|
))))
 :qid |VASPDomainbpl.1493:33|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'address''| v@@14))
)))
(assert (forall ((v@@15 (Seq Int)) (e@@4 Int) ) (! (let ((i@@16 (|$IndexOfVec'address'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |VASPDomainbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |VASPDomainbpl.1508:17|
 :skolemid |43|
)))))
 :qid |VASPDomainbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'address'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'u8'| (seq.nth v@@16 i@@18)))
 :qid |VASPDomainbpl.1675:13|
 :skolemid |45|
))))
 :qid |VASPDomainbpl.1673:28|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |VASPDomainbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |VASPDomainbpl.1688:17|
 :skolemid |48|
)))))
 :qid |VASPDomainbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |VASPDomainbpl.1861:15|
 :skolemid |50|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |VASPDomainbpl.1877:15|
 :skolemid |51|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |VASPDomainbpl.1948:15|
 :skolemid |52|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |VASPDomainbpl.1951:15|
 :skolemid |53|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_30205| stream) 0) (forall ((v@@18 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_30205| stream) v@@18) 0)
 :qid |VASPDomainbpl.134:13|
 :skolemid |2|
))))
 :qid |VASPDomainbpl.2012:13|
 :skolemid |54|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h) true)
 :qid |VASPDomainbpl.2053:80|
 :skolemid |56|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@1 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@1) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@1)))
 :qid |VASPDomainbpl.2059:15|
 :skolemid |57|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@1) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0) true)
 :qid |VASPDomainbpl.2109:78|
 :skolemid |58|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@2 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@2)))
 :qid |VASPDomainbpl.2115:15|
 :skolemid |59|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1) true)
 :qid |VASPDomainbpl.2165:74|
 :skolemid |60|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DiemAccount_SentPaymentEvent) (v2@@3 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@3)))
 :qid |VASPDomainbpl.2171:15|
 :skolemid |61|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@2) true)
 :qid |VASPDomainbpl.2221:82|
 :skolemid |62|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@4 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@4) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@4)))
 :qid |VASPDomainbpl.2227:15|
 :skolemid |63|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@4) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@3) true)
 :qid |VASPDomainbpl.2277:88|
 :skolemid |64|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@5 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@5)))
 :qid |VASPDomainbpl.2283:15|
 :skolemid |65|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@4) true)
 :qid |VASPDomainbpl.2333:72|
 :skolemid |66|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_VASPDomain_VASPDomainEvent) (v2@@6 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@6) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@6)))
 :qid |VASPDomainbpl.2339:15|
 :skolemid |67|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@6) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@6))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |VASPDomainbpl.2400:61|
 :skolemid |68|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |VASPDomainbpl.2459:36|
 :skolemid |69|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |VASPDomainbpl.2478:71|
 :skolemid |70|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |VASPDomainbpl.2507:46|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |VASPDomainbpl.2520:64|
 :skolemid |72|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |VASPDomainbpl.2533:75|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |VASPDomainbpl.2546:72|
 :skolemid |74|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |VASPDomainbpl.2575:55|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |VASPDomainbpl.2597:46|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |VASPDomainbpl.2615:49|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |VASPDomainbpl.2635:71|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@10)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@10))))
 :qid |VASPDomainbpl.2657:45|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@11)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@11))))
 :qid |VASPDomainbpl.2680:48|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11))
)))
(assert (forall ((s@@12 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@12)))
 :qid |VASPDomainbpl.2696:45|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@13)))
 :qid |VASPDomainbpl.2709:45|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13))
)))
(assert (forall ((s@@14 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@14) true)
 :qid |VASPDomainbpl.2722:31|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@14))
)))
(assert (forall ((s@@15 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@15) true)
 :qid |VASPDomainbpl.2735:31|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@15))
)))
(assert (forall ((s@@16 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@16)))
 :qid |VASPDomainbpl.2758:45|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16))
)))
(assert (forall ((s@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@17))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@17))))
 :qid |VASPDomainbpl.2777:50|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17))
)))
(assert (forall ((s@@18 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@18)))
 :qid |VASPDomainbpl.2792:52|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18))
)))
(assert (forall ((s@@19 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@19)))
 :qid |VASPDomainbpl.2806:46|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19))
)))
(assert (forall ((s@@20 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@20) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@20)))
 :qid |VASPDomainbpl.5324:38|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@20))
)))
(assert (forall ((s@@21 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@21) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@21)))
 :qid |VASPDomainbpl.5338:39|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@22)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@22))))
 :qid |VASPDomainbpl.5360:60|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23))))
 :qid |VASPDomainbpl.5377:66|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@24)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@24)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@24))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@24))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@24))))
 :qid |VASPDomainbpl.5406:50|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@25) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@25)))
 :qid |VASPDomainbpl.5425:47|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@26)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@26)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@26))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@26))))
 :qid |VASPDomainbpl.5445:58|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@27)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@27)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@27))))
 :qid |VASPDomainbpl.5480:47|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@28)))
 :qid |VASPDomainbpl.5499:55|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@29)))
 :qid |VASPDomainbpl.5513:55|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@30) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@30)))
 :qid |VASPDomainbpl.5527:57|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@30))
)))
(assert (forall ((s@@31 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@31)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@31))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@31))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@31))))
 :qid |VASPDomainbpl.5549:56|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@32)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@32))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@32))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@32))))
 :qid |VASPDomainbpl.5574:52|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@33) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@33)))
 :qid |VASPDomainbpl.5590:54|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@33))
)))
(assert (forall ((v@@19 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_8817 v@@19)))
 (and (= (seq.len r@@0) (seq.len v@@19)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len r@@0))) (= (seq.nth r@@0 i@@21) (seq.nth v@@19 (- (- (seq.len v@@19) i@@21) 1))))
 :qid |VASPDomainbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@21))
))))
 :qid |VASPDomainbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_8817 v@@19))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_26988 v@@20)))
 (and (= (seq.len r@@1) (seq.len v@@20)) (forall ((i@@22 Int) ) (!  (=> (and (>= i@@22 0) (< i@@22 (seq.len r@@1))) (= (seq.nth r@@1 i@@22) (seq.nth v@@20 (- (- (seq.len v@@20) i@@22) 1))))
 :qid |VASPDomainbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@22))
))))
 :qid |VASPDomainbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_26988 v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_26200 v@@21)))
 (and (= (seq.len r@@2) (seq.len v@@21)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 (seq.len r@@2))) (= (seq.nth r@@2 i@@23) (seq.nth v@@21 (- (- (seq.len v@@21) i@@23) 1))))
 :qid |VASPDomainbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@23))
))))
 :qid |VASPDomainbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_26200 v@@21))
)))
(assert (forall ((v@@22 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_26397 v@@22)))
 (and (= (seq.len r@@3) (seq.len v@@22)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@3))) (= (seq.nth r@@3 i@@24) (seq.nth v@@22 (- (- (seq.len v@@22) i@@24) 1))))
 :qid |VASPDomainbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@24))
))))
 :qid |VASPDomainbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_26397 v@@22))
)))
(assert (forall ((v@@23 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_26594 v@@23)))
 (and (= (seq.len r@@4) (seq.len v@@23)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@4))) (= (seq.nth r@@4 i@@25) (seq.nth v@@23 (- (- (seq.len v@@23) i@@25) 1))))
 :qid |VASPDomainbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@25))
))))
 :qid |VASPDomainbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_26594 v@@23))
)))
(assert (forall ((v@@24 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@5 (ReverseVec_26791 v@@24)))
 (and (= (seq.len r@@5) (seq.len v@@24)) (forall ((i@@26 Int) ) (!  (=> (and (>= i@@26 0) (< i@@26 (seq.len r@@5))) (= (seq.nth r@@5 i@@26) (seq.nth v@@24 (- (- (seq.len v@@24) i@@26) 1))))
 :qid |VASPDomainbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@26))
))))
 :qid |VASPDomainbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_26791 v@@24))
)))
(assert (forall ((|l#0| Bool) (i@@27 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@27) |l#0|)
 :qid |VASPDomainbpl.250:54|
 :skolemid |242|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@27))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_30205|) (|l#1| |T@[$1_Event_EventHandle]Multiset_30205|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| |l#1| handle@@0))))
(Multiset_30205 (|lambda#3| (|v#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| |l#0@@0| handle@@0)) (|v#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |VASPDomainbpl.2022:13|
 :skolemid |243|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@25 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@25) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@25) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@25)))
 :qid |VASPDomainbpl.129:29|
 :skolemid |244|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@25))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t37 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int) T@$1_VASPDomain_VASPDomains)
(declare-fun $1_VASPDomain_VASPDomains_$memory@0 () T@$Memory_50171)
(declare-fun _$t1 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_50171)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_50235)
(declare-fun $t11 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun _$t2 () (Seq Int))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_48193)
(declare-fun $t12 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () T@$signer)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t13 () T@$1_Event_EventHandle)
(declare-fun $t14 () T@$1_VASPDomain_VASPDomainEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_30205_| (|T@[$1_Event_EventHandle]Multiset_30205| T@$1_Event_EventHandle T@Multiset_30205) |T@[$1_Event_EventHandle]Multiset_30205|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_30205|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_30205)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|Store__T@[$1_Event_EventHandle]Multiset_30205_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_30205|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_30205)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|Store__T@[$1_Event_EventHandle]Multiset_30205_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_30205_| ?x0 ?y1))) :weight 0)))
(declare-fun $t17@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0 () T@$Mutation_45908)
(declare-fun $t36@0 () T@$1_VASPDomain_VASPDomainEvent)
(declare-fun $t33@1 () T@$Mutation_50669)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 () T@$1_VASPDomain_VASPDomain)
(declare-fun $t33 () T@$Mutation_50669)
(declare-fun $t33@0 () T@$Mutation_50669)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|T@[Int]$1_VASPDomain_VASPDomainManager| Int) T@$1_VASPDomain_VASPDomainManager)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t24@2 () T@$Mutation_50608)
(declare-fun $t24@1 () T@$Mutation_50608)
(declare-fun |inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$m'@1| () T@$Mutation_38341)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int T@$1_VASPDomain_VASPDomains) |T@[Int]$1_VASPDomain_VASPDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun $t31@0 () T@$Mutation_38341)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t30 () Int)
(declare-fun |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$res@1| () Bool)
(declare-fun $t26@0 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t4@1 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@0 () T@$1_VASPDomain_VASPDomain)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t8@0 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t9@1 () T@$1_VASPDomain_VASPDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |$temp_0'$1_VASPDomain_VASPDomains'@0| () T@$1_VASPDomain_VASPDomains)
(declare-fun $t24 () T@$Mutation_50608)
(declare-fun $t24@0 () T@$Mutation_50608)
(declare-fun $abort_code@0 () Int)
(declare-fun $t21@0 () Bool)
(declare-fun $t23 () Int)
(declare-fun inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 () Bool)
(declare-fun $t20 () Int)
(declare-fun $t16 () Bool)
(declare-fun $t15 () Int)
(declare-fun $t17 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_48071)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_48520)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_48952)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_49496)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_51443)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_51556)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_51730)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_51790)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_51875)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_49463)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_52150)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_52250)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $t9 () T@$Mutation_50608)
(declare-fun $t31 () T@$Mutation_38341)
(declare-fun $t34 () T@$Mutation_45908)
; Valid
(declare-fun _$t0@@0 () (Seq Int))
(declare-fun $t4@0 () Int)
(declare-fun inline$$Le$0$dst@1@@0 () Bool)
(declare-fun $t8 () Int)
(declare-fun $t9@0 () T@$1_VASPDomain_VASPDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@0| () Int)
; Valid
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$res@1@@0| () Bool)
(declare-fun _$t0@@1 () Int)
(declare-fun _$t1@@0 () (Seq Int))
(declare-fun $t6 () T@$1_VASPDomain_VASPDomain)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $t13@0 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@0 () T@$1_VASPDomain_VASPDomain)
(declare-fun $t11@1 () T@$1_VASPDomain_VASPDomains)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t4@1@@0 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@0@@0 () T@$1_VASPDomain_VASPDomain)
(declare-fun inline$$Le$0$dst@1@@1 () Bool)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t9@1@@0 () T@$1_VASPDomain_VASPDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@1| () Int)
(declare-fun $t11@@0 () T@$1_VASPDomain_VASPDomains)
(declare-fun $t11@0 () T@$1_VASPDomain_VASPDomains)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t9@@0 () Int)
; Valid
(declare-fun _$t0@@2 () Int)
(declare-fun $t1@0 () Bool)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t3 () Int)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory@1 () T@$Memory_50235)
(declare-fun $t6@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory@0 () T@$Memory_50235)
(declare-fun |Store__T@[Int]$1_VASPDomain_VASPDomainManager_| (|T@[Int]$1_VASPDomain_VASPDomainManager| Int T@$1_VASPDomain_VASPDomainManager) |T@[Int]$1_VASPDomain_VASPDomainManager|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomainManager|) ( ?x1 Int) ( ?x2 T@$1_VASPDomain_VASPDomainManager)) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|Store__T@[Int]$1_VASPDomain_VASPDomainManager_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomainManager|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASPDomain_VASPDomainManager)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|Store__T@[Int]$1_VASPDomain_VASPDomainManager_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| ?x0 ?y1))) :weight 0)))
(declare-fun $t13@0@@0 () T@$1_VASPDomain_VASPDomainManager)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_VASPDomain_VASPDomainEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_VASPDomain_VASPDomainManager_$modifies () |T@[Int]Bool|)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t11@@1 () Int)
(declare-fun $t8@0 () Bool)
(declare-fun $t5 () Bool)
(declare-fun $t7 () Int)
(declare-fun $t4 () Int)
(declare-fun $t6@@0 () Int)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t4@@0 () Int)
(declare-fun $t3@@0 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@1 () T@$Memory_50171)
(declare-fun $t7@0@@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun $1_VASPDomain_VASPDomains_$memory@0@@0 () T@$Memory_50171)
(declare-fun $t14@0 () T@$1_VASPDomain_VASPDomains)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1| () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun $t12@@0 () Int)
(declare-fun $t9@0@@0 () Bool)
(declare-fun $t6@@1 () Bool)
(declare-fun $t8@@0 () Int)
(declare-fun $t5@@0 () Int)
(declare-fun $t7@@0 () Int)
; Valid
(declare-fun $abort_flag@3 () Bool)
(declare-fun $t38 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun $1_VASPDomain_VASPDomains_$memory@0@@1 () T@$Memory_50171)
(declare-fun _$t1@@1 () Int)
(declare-fun $t11@@2 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun _$t2@@0 () (Seq Int))
(declare-fun $t12@@1 () Int)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t13@@0 () T@$1_Event_EventHandle)
(declare-fun $t14@@0 () T@$1_VASPDomain_VASPDomainEvent)
(declare-fun $t17@0@@0 () Int)
(declare-fun $abort_code@4 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t35@0 () T@$Mutation_45908)
(declare-fun $t37@0 () T@$1_VASPDomain_VASPDomainEvent)
(declare-fun $t34@1 () T@$Mutation_50669)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@1 () T@$1_VASPDomain_VASPDomain)
(declare-fun $t34@@0 () T@$Mutation_50669)
(declare-fun $t34@0@@0 () T@$Mutation_50669)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun $t24@2@@0 () T@$Mutation_50608)
(declare-fun $t24@1@@0 () T@$Mutation_50608)
(declare-fun |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$m'@2| () T@$Mutation_38341)
(declare-fun |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$m'@0| () T@$Mutation_38341)
(declare-fun |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| () Int)
(declare-fun |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1| () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$e@1| () T@$1_VASPDomain_VASPDomain)
(declare-fun |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$m'@1| () T@$Mutation_38341)
(declare-fun $t31@0@@0 () T@$Mutation_38341)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1| () Bool)
(declare-fun $t30@@0 () Int)
(declare-fun |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@1| () Int)
(declare-fun $t26@0@@0 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t4@1@@1 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@0@@1 () T@$1_VASPDomain_VASPDomain)
(declare-fun inline$$Le$0$dst@1@@2 () Bool)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@1 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t9@1@@1 () T@$1_VASPDomain_VASPDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@2| () Int)
(declare-fun |$temp_0'$1_VASPDomain_VASPDomains'@0@@0| () T@$1_VASPDomain_VASPDomains)
(declare-fun $t24@@0 () T@$Mutation_50608)
(declare-fun $t24@0@@0 () T@$Mutation_50608)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t21@0@@0 () Bool)
(declare-fun $t23@@0 () Int)
(declare-fun inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0 () Bool)
(declare-fun $t20@@0 () Int)
(declare-fun $t16@@0 () Bool)
(declare-fun $t15@@0 () Int)
(declare-fun $t17@@0 () Int)
(declare-fun $t7@@1 () T@$Mutation_50608)
(declare-fun $t31@@0 () T@$Mutation_38341)
(declare-fun $t35 () T@$Mutation_45908)
(push 1)
(set-info :boogie-vc-id $1_VASPDomain_remove_vasp_domain$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 87518) (let ((anon46_Else_correct  (=> (and (not $abort_flag@3) (= $t38 (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_50171| $1_VASPDomain_VASPDomains_$memory@0@@1) _$t1@@1)))) (and (=> (= (ControlFlow 0 79491) (- 0 90501)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) _$t1@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) _$t1@@1))) (and (=> (= (ControlFlow 0 79491) (- 0 90512)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_50235| $1_VASPDomain_VASPDomainManager_$memory) 186537453)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_50235| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (and (=> (= (ControlFlow 0 79491) (- 0 90522)) (not (not (exists ((i@@58 Int) ) (!  (and (and (|$IsValid'u64'| i@@58) (and (>= i@@58 0) (< i@@58 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@58) ($1_VASPDomain_VASPDomain _$t2@@0)))
 :qid |VASPDomainbpl.1140:13|
 :skolemid |32|
))))) (=> (not (not (exists ((i@@59 Int) ) (!  (and (and (|$IsValid'u64'| i@@59) (and (>= i@@59 0) (< i@@59 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@59) ($1_VASPDomain_VASPDomain _$t2@@0)))
 :qid |VASPDomainbpl.1140:13|
 :skolemid |32|
)))) (and (=> (= (ControlFlow 0 79491) (- 0 90536)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) $t12@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) $t12@@1))) (and (=> (= (ControlFlow 0 79491) (- 0 90548)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) $t12@@1)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) $t12@@1)) 1))) (and (=> (= (ControlFlow 0 79491) (- 0 90566)) (not (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 186537453))) (and (=> (= (ControlFlow 0 79491) (- 0 90580)) (not (> (seq.len _$t2@@0) 63))) (=> (not (> (seq.len _$t2@@0) 63)) (and (=> (= (ControlFlow 0 79491) (- 0 90592)) (not (exists ((i@@60 Int) ) (!  (and (and (|$IsValid'u64'| i@@60) (and (>= i@@60 0) (< i@@60 (seq.len $t38)))) (= (seq.nth $t38 i@@60) ($1_VASPDomain_VASPDomain _$t2@@0)))
 :qid |VASPDomainbpl.1140:13|
 :skolemid |32|
)))) (=> (not (exists ((i@@61 Int) ) (!  (and (and (|$IsValid'u64'| i@@61) (and (>= i@@61 0) (< i@@61 (seq.len $t38)))) (= (seq.nth $t38 i@@61) ($1_VASPDomain_VASPDomain _$t2@@0)))
 :qid |VASPDomainbpl.1140:13|
 :skolemid |32|
))) (and (=> (= (ControlFlow 0 79491) (- 0 90604)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_30205| stream@@10)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_30205| stream@@10) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14@@0))))
(Multiset_30205 (|Store__T@[$EventRep]Int_| (|v#Multiset_30205| stream@@10) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14@@0) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@3))))))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@10 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| expected@@2) handle@@10)) (|l#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| actual@@2) handle@@10))) (forall ((v@@35 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| expected@@2) handle@@10)) v@@35) (|Select__T@[$EventRep]Int_| (|v#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| actual@@2) handle@@10)) v@@35))
 :qid |VASPDomainbpl.139:13|
 :skolemid |3|
)))
 :qid |VASPDomainbpl.2028:13|
 :skolemid |55|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_30205| stream@@11)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_30205| stream@@11) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14@@0))))
(Multiset_30205 (|Store__T@[$EventRep]Int_| (|v#Multiset_30205| stream@@11) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14@@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@4))))))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@11 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| expected@@3) handle@@11)) (|l#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| actual@@3) handle@@11))) (forall ((v@@36 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| expected@@3) handle@@11)) v@@36) (|Select__T@[$EventRep]Int_| (|v#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| actual@@3) handle@@11)) v@@36))
 :qid |VASPDomainbpl.139:13|
 :skolemid |3|
)))
 :qid |VASPDomainbpl.2028:13|
 :skolemid |55|
))))) (=> (= (ControlFlow 0 79491) (- 0 90629)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_30205| stream@@12)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_30205| stream@@12) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14@@0))))
(Multiset_30205 (|Store__T@[$EventRep]Int_| (|v#Multiset_30205| stream@@12) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14@@0) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@5))))))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@12 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| actual@@4) handle@@12)) (|l#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| expected@@4) handle@@12))) (forall ((v@@37 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| actual@@4) handle@@12)) v@@37) (|Select__T@[$EventRep]Int_| (|v#Multiset_30205| (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| expected@@4) handle@@12)) v@@37))
 :qid |VASPDomainbpl.139:13|
 :skolemid |3|
)))
 :qid |VASPDomainbpl.2028:13|
 :skolemid |55|
)))))))))))))))))))))))))))
(let ((L7_correct@@0  (and (=> (= (ControlFlow 0 77849) (- 0 90289)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) _$t1@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_50235| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (not (exists ((i@@62 Int) ) (!  (and (and (|$IsValid'u64'| i@@62) (and (>= i@@62 0) (< i@@62 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@62) ($1_VASPDomain_VASPDomain _$t2@@0)))
 :qid |VASPDomainbpl.1140:13|
 :skolemid |32|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) $t12@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) $t12@@1)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (> (seq.len _$t2@@0) 63))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) _$t1@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_50235| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (not (exists ((i@@63 Int) ) (!  (and (and (|$IsValid'u64'| i@@63) (and (>= i@@63 0) (< i@@63 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@63) ($1_VASPDomain_VASPDomain _$t2@@0)))
 :qid |VASPDomainbpl.1140:13|
 :skolemid |32|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) $t12@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) $t12@@1)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (> (seq.len _$t2@@0) 63)) (=> (= (ControlFlow 0 77849) (- 0 90357)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) _$t1@@1)) (= 5 $t17@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_50235| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= 5 $t17@0@@0))) (and (not (exists ((i@@64 Int) ) (!  (and (and (|$IsValid'u64'| i@@64) (and (>= i@@64 0) (< i@@64 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@64) ($1_VASPDomain_VASPDomain _$t2@@0)))
 :qid |VASPDomainbpl.1140:13|
 :skolemid |32|
))) (= 7 $t17@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) $t12@@1)) (= 5 $t17@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) $t12@@1)) 1)) (= 3 $t17@0@@0))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t17@0@@0))) (and (> (seq.len _$t2@@0) 63) (= 7 $t17@0@@0))))))))
(let ((anon46_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t17@0@@0 $abort_code@4) (= (ControlFlow 0 79505) 77849))) L7_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$anon0_correct@@0|  (=> (and (= |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1@@0| (|v#$Mutation_45908| $t35@0)) (= $es@0@@0 (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1@@0|)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_30205| stream@@13)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_30205| stream@@13) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t37@0))))
(Multiset_30205 (|Store__T@[$EventRep]Int_| (|v#Multiset_30205| stream@@13) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t37@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1@@0| stream_new@@6)))))) (and (=> (= (ControlFlow 0 79301) 79505) anon46_Then_correct) (=> (= (ControlFlow 0 79301) 79491) anon46_Else_correct)))))
(let ((anon45_Else_correct@@0  (=> (and (and (not $abort_flag@3) (= $t35@0 ($Mutation_45908 (|l#$Mutation_50669| $t34@1) (seq.++ (|p#$Mutation_50669| $t34@1) (seq.unit 0)) (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| (|v#$Mutation_50669| $t34@1))))) (and (= $t37@0 ($1_VASPDomain_VASPDomainEvent true inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@1 _$t1@@1)) (= (ControlFlow 0 79307) 79301))) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$anon0_correct@@0|)))
(let ((anon45_Then_correct@@0  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t17@0@@0 $abort_code@4) (= (ControlFlow 0 79519) 77849))) L7_correct@@0)))
(let ((anon44_Then$1_correct  (=> (= $t34@1 $t34@@0) (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 79571) 79519) anon45_Then_correct@@0) (=> (= (ControlFlow 0 79571) 79307) anon45_Else_correct@@0))))))
(let ((anon44_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_50235| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= (ControlFlow 0 79569) 79571)) anon44_Then$1_correct)))
(let ((anon44_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_50235| $1_VASPDomain_VASPDomainManager_$memory) 186537453) (=> (and (and (= $t34@0@@0 ($Mutation_50669 ($Global 186537453) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_50235| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (= $t34@1 $t34@0@@0)) (and (= $abort_flag@3 $abort_flag@2@@0) (= $abort_code@4 $abort_code@3@@0))) (and (=> (= (ControlFlow 0 79192) 79519) anon45_Then_correct@@0) (=> (= (ControlFlow 0 79192) 79307) anon45_Else_correct@@0))))))
(let ((anon43_Else_correct@@0  (=> (and (not $abort_flag@2@@0) (= $t24@2@@0 ($Mutation_50608 (|l#$Mutation_50608| $t24@1@@0) (|p#$Mutation_50608| $t24@1@@0) ($1_VASPDomain_VASPDomains (|v#$Mutation_38341| |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$m'@2|))))) (and (=> (= (ControlFlow 0 79170) (- 0 89851)) (let (($range_0@@16 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0))))))
(forall (($i_1@@16 Int) ) (!  (=> ($InRange $range_0@@16 $i_1@@16) (let ((i@@65 $i_1@@16))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0)) i@@65))) 63)))
 :qid |VASPDomainbpl.5072:107|
 :skolemid |221|
)))) (=> (let (($range_0@@17 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0))))))
(forall (($i_1@@17 Int) ) (!  (=> ($InRange $range_0@@17 $i_1@@17) (let ((i@@66 $i_1@@17))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0)) i@@66))) 63)))
 :qid |VASPDomainbpl.5072:107|
 :skolemid |221|
))) (and (=> (= (ControlFlow 0 79170) (- 0 89899)) (let (($range_0@@18 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0))))))
(forall (($i_1@@18 Int) ) (!  (=> ($InRange $range_0@@18 $i_1@@18) (let ((i@@67 $i_1@@18))
(let (($range_2@@5 ($Range (+ i@@67 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0))))))
(forall (($i_3@@5 Int) ) (!  (=> ($InRange $range_2@@5 $i_3@@5) (let ((j@@16 $i_3@@5))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0)) i@@67) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0)) j@@16)))))
 :qid |VASPDomainbpl.5080:112|
 :skolemid |222|
)))))
 :qid |VASPDomainbpl.5079:107|
 :skolemid |223|
)))) (=> (let (($range_0@@19 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0))))))
(forall (($i_1@@19 Int) ) (!  (=> ($InRange $range_0@@19 $i_1@@19) (let ((i@@68 $i_1@@19))
(let (($range_2@@6 ($Range (+ i@@68 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0))))))
(forall (($i_3@@6 Int) ) (!  (=> ($InRange $range_2@@6 $i_3@@6) (let ((j@@17 $i_3@@6))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0)) i@@68) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0)) j@@17)))))
 :qid |VASPDomainbpl.5080:112|
 :skolemid |222|
)))))
 :qid |VASPDomainbpl.5079:107|
 :skolemid |223|
))) (and (=> (= (ControlFlow 0 79170) (- 0 89984)) (let (($range_0@@20 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0))))
(forall (($i_1@@20 Int) ) (!  (=> (and (>= $i_1@@20 0) (< $i_1@@20 (seq.len $range_0@@20))) (let (($elem@@7 (seq.nth $range_0@@20 $i_1@@20)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem@@7)) 63)))
 :qid |VASPDomainbpl.5087:88|
 :skolemid |224|
)))) (=> (let (($range_0@@21 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@2@@0))))
(forall (($i_1@@21 Int) ) (!  (=> (and (>= $i_1@@21 0) (< $i_1@@21 (seq.len $range_0@@21))) (let (($elem@@8 (seq.nth $range_0@@21 $i_1@@21)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem@@8)) 63)))
 :qid |VASPDomainbpl.5087:88|
 :skolemid |224|
))) (=> (= $1_VASPDomain_VASPDomains_$memory@0@@1 ($Memory_50171 (|Store__T@[Int]Bool_| (|domain#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) (|a#$Global| (|l#$Mutation_50608| $t24@2@@0)) true) (|Store__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) (|a#$Global| (|l#$Mutation_50608| $t24@2@@0)) (|v#$Mutation_50608| $t24@2@@0)))) (and (=> (= (ControlFlow 0 79170) (- 0 90042)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (= (|Select__T@[Int]Bool_| (|domain#$Memory_50171| $1_VASPDomain_VASPDomains_$memory@0@@1) addr@@57)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@57)) 5))))
 :qid |VASPDomainbpl.5099:15|
 :skolemid |225|
))) (=> (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (= (|Select__T@[Int]Bool_| (|domain#$Memory_50171| $1_VASPDomain_VASPDomains_$memory@0@@1) addr@@58)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@58)) 5))))
 :qid |VASPDomainbpl.5099:15|
 :skolemid |225|
)) (=> (|$IsValid'address'| 186537453) (and (=> (= (ControlFlow 0 79170) 79569) anon44_Then_correct@@0) (=> (= (ControlFlow 0 79170) 79192) anon44_Else_correct@@0)))))))))))))))
(let ((anon43_Then_correct@@0  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t17@0@@0 $abort_code@3@@0) (= (ControlFlow 0 79585) 77849))) L7_correct@@0)))
(let ((|inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon3_Then$1_correct|  (=> (= $abort_code@3@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2@@0 true) (= |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$m'@2| |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$m'@0|)) (and (=> (= (ControlFlow 0 78915) 79585) anon43_Then_correct@@0) (=> (= (ControlFlow 0 78915) 79170) anon43_Else_correct@@0))))))
(let ((|inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon3_Then_correct|  (=> (and (not (and (>= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| 0) (< |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| (seq.len |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1|)))) (= (ControlFlow 0 78913) 78915)) |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon3_Else_correct|  (=> (and (and (and (>= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| 0) (< |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| (seq.len |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1|))) (= |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$e@1| (seq.nth |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1| |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2|))) (and (and (= |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$m'@1| ($Mutation_38341 (|l#$Mutation_38341| $t31@0@@0) (|p#$Mutation_38341| $t31@0@@0) (seq.++ (seq.extract |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1| 0 (- |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| 0)) (seq.extract |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1| (+ |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| 1) (- (seq.len |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1|) (+ |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| 1)))))) (= $abort_code@3@@0 $abort_code@2@@1)) (and (= $abort_flag@2@@0 $abort_flag@1@@1) (= |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$m'@2| |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$m'@1|)))) (and (=> (= (ControlFlow 0 78863) 79585) anon43_Then_correct@@0) (=> (= (ControlFlow 0 78863) 79170) anon43_Else_correct@@0)))))
(let ((|inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1| (|v#$Mutation_38341| $t31@0@@0)) (and (=> (= (ControlFlow 0 78839) 78913) |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 78839) 78863) |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon3_Else_correct|)))))
(let ((anon42_Then_correct@@0  (=> |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1| (=> (and (= $t31@0@@0 ($Mutation_38341 (|l#$Mutation_50608| $t24@1@@0) (seq.++ (|p#$Mutation_50608| $t24@1@@0) (seq.unit 0)) (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0)))) (= (ControlFlow 0 78923) 78839)) |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon0_correct|))))
(let ((anon42_Else_correct@@0  (=> (not |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1|) (and (=> (= (ControlFlow 0 78728) (- 0 89515)) (let (($range_0@@22 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0))))))
(forall (($i_1@@22 Int) ) (!  (=> ($InRange $range_0@@22 $i_1@@22) (let ((i@@69 $i_1@@22))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0)) i@@69))) 63)))
 :qid |VASPDomainbpl.5004:107|
 :skolemid |217|
)))) (=> (let (($range_0@@23 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0))))))
(forall (($i_1@@23 Int) ) (!  (=> ($InRange $range_0@@23 $i_1@@23) (let ((i@@70 $i_1@@23))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0)) i@@70))) 63)))
 :qid |VASPDomainbpl.5004:107|
 :skolemid |217|
))) (and (=> (= (ControlFlow 0 78728) (- 0 89563)) (let (($range_0@@24 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0))))))
(forall (($i_1@@24 Int) ) (!  (=> ($InRange $range_0@@24 $i_1@@24) (let ((i@@71 $i_1@@24))
(let (($range_2@@7 ($Range (+ i@@71 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0))))))
(forall (($i_3@@7 Int) ) (!  (=> ($InRange $range_2@@7 $i_3@@7) (let ((j@@18 $i_3@@7))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0)) i@@71) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0)) j@@18)))))
 :qid |VASPDomainbpl.5012:112|
 :skolemid |218|
)))))
 :qid |VASPDomainbpl.5011:107|
 :skolemid |219|
)))) (=> (let (($range_0@@25 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0))))))
(forall (($i_1@@25 Int) ) (!  (=> ($InRange $range_0@@25 $i_1@@25) (let ((i@@72 $i_1@@25))
(let (($range_2@@8 ($Range (+ i@@72 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0))))))
(forall (($i_3@@8 Int) ) (!  (=> ($InRange $range_2@@8 $i_3@@8) (let ((j@@19 $i_3@@8))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0)) i@@72) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0)) j@@19)))))
 :qid |VASPDomainbpl.5012:112|
 :skolemid |218|
)))))
 :qid |VASPDomainbpl.5011:107|
 :skolemid |219|
))) (and (=> (= (ControlFlow 0 78728) (- 0 89648)) (let (($range_0@@26 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0))))
(forall (($i_1@@26 Int) ) (!  (=> (and (>= $i_1@@26 0) (< $i_1@@26 (seq.len $range_0@@26))) (let (($elem@@9 (seq.nth $range_0@@26 $i_1@@26)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem@@9)) 63)))
 :qid |VASPDomainbpl.5019:88|
 :skolemid |220|
)))) (=> (let (($range_0@@27 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0))))
(forall (($i_1@@27 Int) ) (!  (=> (and (>= $i_1@@27 0) (< $i_1@@27 (seq.len $range_0@@27))) (let (($elem@@10 (seq.nth $range_0@@27 $i_1@@27)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem@@10)) 63)))
 :qid |VASPDomainbpl.5019:88|
 :skolemid |220|
))) (=> (and (|$IsValid'u64'| 2) (|$IsValid'u64'| $t30@@0)) (=> (and (and (= $t30@@0 7) (= $t30@@0 $t30@@0)) (and (= $t17@0@@0 $t30@@0) (= (ControlFlow 0 78728) 77849))) L7_correct@@0)))))))))))
(let ((anon41_Else_correct@@0  (=> (not $abort_flag@1@@1) (=> (and (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2|) (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1| |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1|)) (and (=> (= (ControlFlow 0 78518) 78923) anon42_Then_correct@@0) (=> (= (ControlFlow 0 78518) 78728) anon42_Else_correct@@0))))))
(let ((anon41_Then_correct@@0  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@1 $abort_code@2@@1)) (and (= $t17@0@@0 $abort_code@2@@1) (= (ControlFlow 0 79599) 77849))) L7_correct@@0)))
(let ((|inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$anon3_Else_correct|  (=> (> 0 |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@1|) (=> (and (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1| false) (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| 0)) (and (=> (= (ControlFlow 0 78478) 79599) anon41_Then_correct@@0) (=> (= (ControlFlow 0 78478) 78518) anon41_Else_correct@@0))))))
(let ((|inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$anon3_Then_correct|  (=> (>= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@1| 0) (=> (and (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1| true) (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@1|)) (and (=> (= (ControlFlow 0 78488) 79599) anon41_Then_correct@@0) (=> (= (ControlFlow 0 78488) 78518) anon41_Else_correct@@0))))))
(let ((|inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@1| (|$IndexOfVec'$1_VASPDomain_VASPDomain'| $t26@0@@0 inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@1)) (and (=> (= (ControlFlow 0 78466) 78488) |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 78466) 78478) |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$anon3_Else_correct|)))))
(let ((anon40_Else_correct@@0  (=> (and (and (not $abort_flag@1@@1) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@1 inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@1)) (and (= $t26@0@@0 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_50608| $t24@1@@0))) (= (ControlFlow 0 78496) 78466))) |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$anon0_correct|)))
(let ((anon40_Then_correct@@0  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@1 $abort_code@2@@1)) (and (= $t17@0@@0 $abort_code@2@@1) (= (ControlFlow 0 79613) 77849))) L7_correct@@0)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$L3_correct@@1  (=> (= $abort_flag@1@@1 true) (=> (and (= $abort_code@2@@1 inline$$1_VASPDomain_create_vasp_domain$0$$t4@1@@1) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@1 inline$$1_VASPDomain_create_vasp_domain$0$$ret0@0@@1)) (and (=> (= (ControlFlow 0 78329) 79613) anon40_Then_correct@@0) (=> (= (ControlFlow 0 78329) 78496) anon40_Else_correct@@0))))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon7_Else_correct@@1  (=> (and (and (not inline$$Le$0$dst@1@@2) (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@1 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@1)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t4@1@@1 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@1) (= (ControlFlow 0 78323) 78329))) inline$$1_VASPDomain_create_vasp_domain$0$L3_correct@@1)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Then_correct@@1  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t4@1@@1 $abort_code@1@@3) (= (ControlFlow 0 78361) 78329))) inline$$1_VASPDomain_create_vasp_domain$0$L3_correct@@1)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon7_Then_correct@@1  (=> (and inline$$Le$0$dst@1@@2 (= inline$$1_VASPDomain_create_vasp_domain$0$$t9@1@@1 ($1_VASPDomain_VASPDomain _$t2@@0))) (=> (and (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t9@1@@1 inline$$1_VASPDomain_create_vasp_domain$0$$t9@1@@1) (= $abort_flag@1@@1 $abort_flag@0@@3)) (and (= $abort_code@2@@1 $abort_code@1@@3) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@1 inline$$1_VASPDomain_create_vasp_domain$0$$t9@1@@1))) (and (=> (= (ControlFlow 0 78347) 79613) anon40_Then_correct@@0) (=> (= (ControlFlow 0 78347) 78496) anon40_Else_correct@@0))))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else$1_correct@@1  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@1) (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@1 7)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@1 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@1) (= inline$$Le$0$dst@1@@2 inline$$Le$0$dst@1@@2))) (and (=> (= (ControlFlow 0 78307) 78347) inline$$1_VASPDomain_create_vasp_domain$0$anon7_Then_correct@@1) (=> (= (ControlFlow 0 78307) 78323) inline$$1_VASPDomain_create_vasp_domain$0$anon7_Else_correct@@1))))))
(let ((inline$$Le$0$anon0_correct@@2  (=> (and (= inline$$Le$0$dst@1@@2 (<= |inline$$1_Vector_length'u8'$0$l@1@@2| 63)) (= (ControlFlow 0 78271) 78307)) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else$1_correct@@1)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else_correct@@1  (=> (not $abort_flag@0@@3) (=> (and (|$IsValid'u64'| 63) (= (ControlFlow 0 78277) 78271)) inline$$Le$0$anon0_correct@@2))))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@2|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@2| (seq.len _$t2@@0)) (and (=> (= (ControlFlow 0 78211) 78361) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Then_correct@@1) (=> (= (ControlFlow 0 78211) 78277) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else_correct@@1)))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon0_correct@@1  (=> (and (= _$t2@@0 _$t2@@0) (= (ControlFlow 0 78217) 78211)) |inline$$1_Vector_length'u8'$0$anon0_correct@@2|)))
(let ((anon39_Else_correct@@0  (=> (and (and (not $abort_flag@0@@3) (= |$temp_0'$1_VASPDomain_VASPDomains'@0@@0| (|v#$Mutation_50608| $t24@1@@0))) (and (= |$temp_0'$1_VASPDomain_VASPDomains'@0@@0| |$temp_0'$1_VASPDomain_VASPDomains'@0@@0|) (= (ControlFlow 0 78367) 78217))) inline$$1_VASPDomain_create_vasp_domain$0$anon0_correct@@1)))
(let ((anon39_Then_correct@@0  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t17@0@@0 $abort_code@1@@3) (= (ControlFlow 0 79627) 77849))) L7_correct@@0)))
(let ((anon38_Then$1_correct  (=> (= $t24@1@@0 $t24@@0) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 79679) 79627) anon39_Then_correct@@0) (=> (= (ControlFlow 0 79679) 78367) anon39_Else_correct@@0))))))
(let ((anon38_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) _$t1@@1)) (= (ControlFlow 0 79677) 79679)) anon38_Then$1_correct)))
(let ((anon38_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) _$t1@@1) (=> (and (and (= $t24@0@@0 ($Mutation_50608 ($Global _$t1@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) _$t1@@1))) (= $t24@1@@0 $t24@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 77933) 79627) anon39_Then_correct@@0) (=> (= (ControlFlow 0 77933) 78367) anon39_Else_correct@@0))))))
(let ((anon37_Then_correct@@0  (=> $t21@0@@0 (and (=> (= (ControlFlow 0 77911) 79677) anon38_Then_correct@@0) (=> (= (ControlFlow 0 77911) 77933) anon38_Else_correct@@0)))))
(let ((anon37_Else_correct@@0  (=> (and (and (not $t21@0@@0) (= $t23@@0 $t23@@0)) (and (= $t17@0@@0 $t23@@0) (= (ControlFlow 0 77907) 77849))) L7_correct@@0)))
(let ((anon36_Then_correct@@0  (=> inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0 (=> (and (= $t21@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) _$t1@@1)) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t23@@0) (= $t23@@0 5)) (and (= $t23@@0 $t23@@0) (= $t21@0@@0 $t21@0@@0))) (and (=> (= (ControlFlow 0 77891) 77911) anon37_Then_correct@@0) (=> (= (ControlFlow 0 77891) 77907) anon37_Else_correct@@0)))))))
(let ((anon36_Else_correct@@0  (=> (and (and (not inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0) (= $t20@@0 $t20@@0)) (and (= $t17@0@@0 $t20@@0) (= (ControlFlow 0 77633) 77849))) L7_correct@@0)))
(let ((anon35_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t20@@0) (= $t20@@0 5)) (and (= $t20@@0 $t20@@0) (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0 inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 77617) 77891) anon36_Then_correct@@0) (=> (= (ControlFlow 0 77617) 77633) anon36_Else_correct@@0))))))
(let ((anon34_Then_correct@@0  (=> $t16@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) $t15@@0)) (= 5 $t17@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) $t15@@0)) 1)) (= 3 $t17@@0))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t17@@0))) (= $t17@@0 $t17@@0)) (and (= $t17@0@@0 $t17@@0) (= (ControlFlow 0 79765) 77849))) L7_correct@@0))))
(let ((anon35_Then_correct@@0 true))
(let ((inline$$1_VASPDomain_tc_domain_manager_exists$0$anon0_correct@@0  (=> (|$IsValid'address'| 186537453) (=> (and (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_50235| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0 inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 77575) 79693) anon35_Then_correct@@0) (=> (= (ControlFlow 0 77575) 77617) anon35_Else_correct@@0))))))
(let ((anon34_Else_correct@@0  (=> (and (not $t16@@0) (= (ControlFlow 0 77581) 77575)) inline$$1_VASPDomain_tc_domain_manager_exists$0$anon0_correct@@0)))
(let ((anon0$1_correct@@5  (=> (and (and (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@59)) 0)) (= addr@@59 173345816)))
 :qid |VASPDomainbpl.4646:20|
 :skolemid |184|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_48071| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) 173345816)) 0)))) (and (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@60)) 1)) (= addr@@60 186537453)))
 :qid |VASPDomainbpl.4654:20|
 :skolemid |185|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_48071| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) 186537453)) 1))))) (=> (and (and (and (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@61)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@61)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@61)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@61)) 2))))))
 :qid |VASPDomainbpl.4662:20|
 :skolemid |186|
)) (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@62)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@62)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@62)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@62)) 2))))))
 :qid |VASPDomainbpl.4666:20|
 :skolemid |187|
))) (and (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@63)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@63)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@63)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@63)) 2))))))
 :qid |VASPDomainbpl.4670:20|
 :skolemid |188|
)) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@64)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@64)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@64)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@64)) 2))))))
 :qid |VASPDomainbpl.4674:20|
 :skolemid |189|
)))) (and (and (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@65)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@65)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@65)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@65)) 2)))))
 :qid |VASPDomainbpl.4678:20|
 :skolemid |190|
)) (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@66)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@66)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@66)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@66)) 2)))))
 :qid |VASPDomainbpl.4682:20|
 :skolemid |191|
))) (and (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@67)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@67)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@67)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@67)) 2)))))
 :qid |VASPDomainbpl.4686:20|
 :skolemid |192|
)) (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_48520| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@68) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@68)) 4))))
 :qid |VASPDomainbpl.4690:20|
 :skolemid |193|
))))) (=> (and (and (and (and (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_48952| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@69) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@69)) 3))))
 :qid |VASPDomainbpl.4694:20|
 :skolemid |194|
)) (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_48952| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@70) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@70)) 3))))
 :qid |VASPDomainbpl.4698:20|
 :skolemid |195|
))) (and (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_48952| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@71) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_48952| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@71)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@71)) 3))))
 :qid |VASPDomainbpl.4702:20|
 :skolemid |196|
)) (let (($range_0@@28 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@72 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_49496| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@72))))))))
(forall (($i_1@@28 Int) ) (!  (=> ($InRange $range_0@@28 $i_1@@28) (let ((i1@@0 $i_1@@28))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@73 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_49496| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@73)))) i1@@0))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@73 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_49496| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@73)))) i1@@0)))) 3))))
 :qid |VASPDomainbpl.4706:151|
 :skolemid |197|
))))) (and (and (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_51443| $1_DualAttestation_Credential_$memory) addr1@@2) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr1@@2)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr1@@2)) 2)))))
 :qid |VASPDomainbpl.4711:20|
 :skolemid |198|
)) (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (= (|Select__T@[Int]Bool_| (|domain#$Memory_51556| $1_DiemAccount_DiemAccount_$memory) addr@@74) (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@74)))
 :qid |VASPDomainbpl.4715:20|
 :skolemid |199|
))) (and (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (= (|Select__T@[Int]Bool_| (|domain#$Memory_50235| $1_VASPDomain_VASPDomainManager_$memory) addr@@75)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@75)) 1))))
 :qid |VASPDomainbpl.4719:20|
 :skolemid |200|
)) (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (= (|Select__T@[Int]Bool_| (|domain#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) addr@@76)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@76)) 5))))
 :qid |VASPDomainbpl.4723:20|
 :skolemid |201|
))))) (and (and (and (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_51730| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@77) (|Select__T@[Int]Bool_| (|domain#$Memory_51790| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@77)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@77)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@77)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@77)) 2)))))
 :qid |VASPDomainbpl.4727:20|
 :skolemid |202|
)) (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (= (|Select__T@[Int]Bool_| (|domain#$Memory_51875| $1_DesignatedDealer_Dealer_$memory) addr@@78)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@78)) 2))))
 :qid |VASPDomainbpl.4731:20|
 :skolemid |203|
))) (and (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (= (|Select__T@[Int]Bool_| (|domain#$Memory_51443| $1_DualAttestation_Credential_$memory) addr@@79)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@79)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@79)) 5)))))
 :qid |VASPDomainbpl.4735:20|
 :skolemid |204|
)) (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (= (|Select__T@[Int]Bool_| (|domain#$Memory_49463| $1_SlidingNonce_SlidingNonce_$memory) addr@@80)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@80)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@80)) 1)))))
 :qid |VASPDomainbpl.4739:20|
 :skolemid |205|
)))) (and (and (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (= (|Select__T@[Int]Bool_| (|domain#$Memory_48952| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@81)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@81)) 3))))
 :qid |VASPDomainbpl.4743:20|
 :skolemid |206|
)) (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (= (|Select__T@[Int]Bool_| (|domain#$Memory_48520| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@82)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@82)) 4))))
 :qid |VASPDomainbpl.4747:20|
 :skolemid |207|
))) (and (forall ((addr@@83 Int) ) (!  (=> (|$IsValid'address'| addr@@83) (= (|Select__T@[Int]Bool_| (|domain#$Memory_52150| $1_VASP_ParentVASP_$memory) addr@@83)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@83)) 5))))
 :qid |VASPDomainbpl.4751:20|
 :skolemid |208|
)) (forall ((addr@@84 Int) ) (!  (=> (|$IsValid'address'| addr@@84) (= (|Select__T@[Int]Bool_| (|domain#$Memory_52250| $1_VASP_ChildVASP_$memory) addr@@84)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) addr@@84)) 6))))
 :qid |VASPDomainbpl.4755:20|
 :skolemid |209|
)))))) (=> (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) ($1_Signer_is_txn_signer _$t0@@5)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@5))) (and (|$IsValid'address'| _$t1@@1) (|$IsValid'vec'u8''| _$t2@@0))) (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |VASPDomainbpl.4767:20|
 :skolemid |210|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) $a_0@@8))
)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_50235| $1_VASPDomain_VASPDomainManager_$memory) $a_0@@9)))
(|$IsValid'$1_VASPDomain_VASPDomainManager'| $rsc@@9))
 :qid |VASPDomainbpl.4771:20|
 :skolemid |211|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_50235| $1_VASPDomain_VASPDomainManager_$memory) $a_0@@9))
))) (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) $a_0@@10)))
 (and (|$IsValid'$1_VASPDomain_VASPDomains'| $rsc@@10) (and (and (let (($range_1@@3 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@10)))))
(forall (($i_2@@3 Int) ) (!  (=> ($InRange $range_1@@3 $i_2@@3) (let ((i@@73 $i_2@@3))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@10) i@@73))) 63)))
 :qid |VASPDomainbpl.4776:140|
 :skolemid |212|
))) (let (($range_3@@3 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@10)))))
(forall (($i_4@@3 Int) ) (!  (=> ($InRange $range_3@@3 $i_4@@3) (let ((i@@74 $i_4@@3))
(let (($range_5@@3 ($Range (+ i@@74 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@10)))))
(forall (($i_6@@3 Int) ) (!  (=> ($InRange $range_5@@3 $i_6@@3) (let ((j@@20 $i_6@@3))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@10) i@@74) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@10) j@@20)))))
 :qid |VASPDomainbpl.4778:98|
 :skolemid |213|
)))))
 :qid |VASPDomainbpl.4777:202|
 :skolemid |214|
)))) (let (($range_7@@3 (|$domains#$1_VASPDomain_VASPDomains| $rsc@@10)))
(forall (($i_8@@3 Int) ) (!  (=> (and (>= $i_8@@3 0) (< $i_8@@3 (seq.len $range_7@@3))) (let (($elem@@11 (seq.nth $range_7@@3 $i_8@@3)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem@@11)) 63)))
 :qid |VASPDomainbpl.4779:229|
 :skolemid |215|
))))))
 :qid |VASPDomainbpl.4775:20|
 :skolemid |216|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) $a_0@@10))
)) (= $t11@@2 (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_50171| $1_VASPDomain_VASPDomains_$memory) _$t1@@1)))))) (and (and (and (= $t12@@1 (|$addr#$signer| _$t0@@5)) (= $t13@@0 (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_50235| $1_VASPDomain_VASPDomainManager_$memory) 186537453)))) (and (= $t14@@0 ($1_VASPDomain_VASPDomainEvent true ($1_VASPDomain_VASPDomain _$t2@@0) _$t1@@1)) (= _$t0@@5 _$t0@@5))) (and (and (= _$t1@@1 _$t1@@1) (= _$t2@@0 _$t2@@0)) (and (= $t15@@0 (|$addr#$signer| _$t0@@5)) (= $t16@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_48193| $1_Roles_RoleId_$memory) $t15@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_48193| $1_Roles_RoleId_$memory) $t15@@0)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453)))))))) (and (=> (= (ControlFlow 0 77488) 79765) anon34_Then_correct@@0) (=> (= (ControlFlow 0 77488) 77581) anon34_Else_correct@@0))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_30205_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_30205| stream@@14) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_30205| stream@@14) v@@38) 0)
 :qid |VASPDomainbpl.134:13|
 :skolemid |2|
))))
 :qid |VASPDomainbpl.2012:13|
 :skolemid |54|
))) (= (ControlFlow 0 76408) 77488)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (and (= (seq.len (|p#$Mutation_50608| $t7@@1)) 0) (= (seq.len (|p#$Mutation_50608| $t24@@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_38341| $t31@@0)) 0) (= (seq.len (|p#$Mutation_50669| $t34@@0)) 0)) (and (= (seq.len (|p#$Mutation_45908| $t35)) 0) (= (ControlFlow 0 76418) 76408))) inline$$InitEventStore$0$anon0_correct@@5))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 87518) 76418) anon0_correct@@5)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
