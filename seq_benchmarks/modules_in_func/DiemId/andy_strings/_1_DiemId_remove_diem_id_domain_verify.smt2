(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-option :ee-mode central)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_50050 0)) ((($Memory_50050 (|domain#$Memory_50050| |T@[Int]Bool|) (|contents#$Memory_50050| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_57968 0)) ((($Memory_57968 (|domain#$Memory_57968| |T@[Int]Bool|) (|contents#$Memory_57968| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomains 0)) ((($1_DiemId_DiemIdDomains (|$domains#$1_DiemId_DiemIdDomains| (Seq T@$1_DiemId_DiemIdDomain)) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomains| 0)
(declare-datatypes ((T@$Memory_57904 0)) ((($Memory_57904 (|domain#$Memory_57904| |T@[Int]Bool|) (|contents#$Memory_57904| |T@[Int]$1_DiemId_DiemIdDomains|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_56611 0)) ((($Memory_56611 (|domain#$Memory_56611| |T@[Int]Bool|) (|contents#$Memory_56611| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_55917 0)) ((($Memory_55917 (|domain#$Memory_55917| |T@[Int]Bool|) (|contents#$Memory_55917| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_55737 0)) ((($Memory_55737 (|domain#$Memory_55737| |T@[Int]Bool|) (|contents#$Memory_55737| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_55673 0)) ((($Memory_55673 (|domain#$Memory_55673| |T@[Int]Bool|) (|contents#$Memory_55673| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_55541 0)) ((($Memory_55541 (|domain#$Memory_55541| |T@[Int]Bool|) (|contents#$Memory_55541| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_55640 0)) ((($Memory_55640 (|domain#$Memory_55640| |T@[Int]Bool|) (|contents#$Memory_55640| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_57393 0)) ((($Memory_57393 (|domain#$Memory_57393| |T@[Int]Bool|) (|contents#$Memory_57393| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_57302 0)) ((($Memory_57302 (|domain#$Memory_57302| |T@[Int]Bool|) (|contents#$Memory_57302| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_54600 0)) ((($Memory_54600 (|domain#$Memory_54600| |T@[Int]Bool|) (|contents#$Memory_54600| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_56772 0)) ((($Memory_56772 (|domain#$Memory_56772| |T@[Int]Bool|) (|contents#$Memory_56772| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_54633 0)) ((($Memory_54633 (|domain#$Memory_54633| |T@[Int]Bool|) (|contents#$Memory_54633| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_54089 0)) ((($Memory_54089 (|domain#$Memory_54089| |T@[Int]Bool|) (|contents#$Memory_54089| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_53657 0)) ((($Memory_53657 (|domain#$Memory_53657| |T@[Int]Bool|) (|contents#$Memory_53657| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_53330 0)) ((($Memory_53330 (|domain#$Memory_53330| |T@[Int]Bool|) (|contents#$Memory_53330| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_53208 0)) ((($Memory_53208 (|domain#$Memory_53208| |T@[Int]Bool|) (|contents#$Memory_53208| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainEvent 0)) ((($1_DiemId_DiemIdDomainEvent (|$removed#$1_DiemId_DiemIdDomainEvent| Bool) (|$domain#$1_DiemId_DiemIdDomainEvent| T@$1_DiemId_DiemIdDomain) (|$address#$1_DiemId_DiemIdDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| (Seq Int)) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| (Seq Int)) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| (|e#$ToEventRep'$1_DiemId_DiemIdDomainEvent'| T@$1_DiemId_DiemIdDomainEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_32802 0)) (((Multiset_32802 (|v#Multiset_32802| |T@[$EventRep]Int|) (|l#Multiset_32802| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_32802| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_32802|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_58573 0)) ((($Mutation_58573 (|l#$Mutation_58573| T@$Location) (|p#$Mutation_58573| (Seq Int)) (|v#$Mutation_58573| T@$1_DiemId_DiemIdDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_58512 0)) ((($Mutation_58512 (|l#$Mutation_58512| T@$Location) (|p#$Mutation_58512| (Seq Int)) (|v#$Mutation_58512| T@$1_DiemId_DiemIdDomains) ) ) ))
(declare-datatypes ((T@$Mutation_50681 0)) ((($Mutation_50681 (|l#$Mutation_50681| T@$Location) (|p#$Mutation_50681| (Seq Int)) (|v#$Mutation_50681| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_10069 0)) ((($Mutation_10069 (|l#$Mutation_10069| T@$Location) (|p#$Mutation_10069| (Seq Int)) (|v#$Mutation_10069| Int) ) ) ))
(declare-datatypes ((T@$Mutation_47300 0)) ((($Mutation_47300 (|l#$Mutation_47300| T@$Location) (|p#$Mutation_47300| (Seq Int)) (|v#$Mutation_47300| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_46010 0)) ((($Mutation_46010 (|l#$Mutation_46010| T@$Location) (|p#$Mutation_46010| (Seq Int)) (|v#$Mutation_46010| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_45264 0)) ((($Mutation_45264 (|l#$Mutation_45264| T@$Location) (|p#$Mutation_45264| (Seq Int)) (|v#$Mutation_45264| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_43860 0)) ((($Mutation_43860 (|l#$Mutation_43860| T@$Location) (|p#$Mutation_43860| (Seq Int)) (|v#$Mutation_43860| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_43114 0)) ((($Mutation_43114 (|l#$Mutation_43114| T@$Location) (|p#$Mutation_43114| (Seq Int)) (|v#$Mutation_43114| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_41710 0)) ((($Mutation_41710 (|l#$Mutation_41710| T@$Location) (|p#$Mutation_41710| (Seq Int)) (|v#$Mutation_41710| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_40964 0)) ((($Mutation_40964 (|l#$Mutation_40964| T@$Location) (|p#$Mutation_40964| (Seq Int)) (|v#$Mutation_40964| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_39560 0)) ((($Mutation_39560 (|l#$Mutation_39560| T@$Location) (|p#$Mutation_39560| (Seq Int)) (|v#$Mutation_39560| T@$1_DiemId_DiemIdDomain) ) ) ))
(declare-datatypes ((T@$Mutation_38814 0)) ((($Mutation_38814 (|l#$Mutation_38814| T@$Location) (|p#$Mutation_38814| (Seq Int)) (|v#$Mutation_38814| (Seq T@$1_DiemId_DiemIdDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_37410 0)) ((($Mutation_37410 (|l#$Mutation_37410| T@$Location) (|p#$Mutation_37410| (Seq Int)) (|v#$Mutation_37410| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_36664 0)) ((($Mutation_36664 (|l#$Mutation_36664| T@$Location) (|p#$Mutation_36664| (Seq Int)) (|v#$Mutation_36664| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_35222 0)) ((($Mutation_35222 (|l#$Mutation_35222| T@$Location) (|p#$Mutation_35222| (Seq Int)) (|v#$Mutation_35222| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_34476 0)) ((($Mutation_34476 (|l#$Mutation_34476| T@$Location) (|p#$Mutation_34476| (Seq Int)) (|v#$Mutation_34476| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_DiemId_DiemIdDomain''| ((Seq T@$1_DiemId_DiemIdDomain)) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomain'| (T@$1_DiemId_DiemIdDomain) Bool)
(declare-fun |$IndexOfVec'$1_DiemId_DiemIdDomain'| ((Seq T@$1_DiemId_DiemIdDomain) T@$1_DiemId_DiemIdDomain) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_32802_| (|T@[$1_Event_EventHandle]Multiset_32802| T@$1_Event_EventHandle) T@Multiset_32802)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (T@$1_Event_EventHandle) Bool)
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
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainEvent'| (T@$1_DiemId_DiemIdDomainEvent) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainManager'| (T@$1_DiemId_DiemIdDomainManager) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomains'| (T@$1_DiemId_DiemIdDomains) Bool)
(declare-fun ReverseVec_9922 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_29338 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_28353 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_28550 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_28944 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_29141 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_28747 ((Seq T@$1_DiemId_DiemIdDomain)) (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_32802| |T@[$1_Event_EventHandle]Multiset_32802|) |T@[$1_Event_EventHandle]Multiset_32802|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemIdbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemIdbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemIdbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemIdbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemIdbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemIdbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemIdbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemIdbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@4 i@@0)))
 :qid |DiemIdbpl.595:13|
 :skolemid |15|
))))
 :qid |DiemIdbpl.593:62|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@1 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemIdbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemIdbpl.608:17|
 :skolemid |18|
)))))
 :qid |DiemIdbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemIdbpl.775:13|
 :skolemid |20|
))))
 :qid |DiemIdbpl.773:59|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemIdbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemIdbpl.788:17|
 :skolemid |23|
)))))
 :qid |DiemIdbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemId_DiemIdDomain)) ) (! (= (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemId_DiemIdDomain'| (seq.nth v@@8 i@@6)))
 :qid |DiemIdbpl.955:13|
 :skolemid |25|
))))
 :qid |DiemIdbpl.953:48|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemId_DiemIdDomain)) (e@@1 T@$1_DiemId_DiemIdDomain) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemIdbpl.968:17|
 :skolemid |28|
)))))
 :qid |DiemIdbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemIdbpl.1135:13|
 :skolemid |30|
))))
 :qid |DiemIdbpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemIdbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemIdbpl.1148:17|
 :skolemid |33|
)))))
 :qid |DiemIdbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@12 i@@12)))
 :qid |DiemIdbpl.1315:13|
 :skolemid |35|
))))
 :qid |DiemIdbpl.1313:50|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_VASPDomain_VASPDomain)) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@13 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemIdbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemIdbpl.1328:17|
 :skolemid |38|
)))))
 :qid |DiemIdbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@14 i@@15)))
 :qid |DiemIdbpl.1495:13|
 :skolemid |40|
))))
 :qid |DiemIdbpl.1493:51|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 (Seq T@$1_ValidatorConfig_Config)) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@16 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemIdbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemIdbpl.1508:17|
 :skolemid |43|
)))))
 :qid |DiemIdbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'address'| (seq.nth v@@16 i@@18)))
 :qid |DiemIdbpl.1675:13|
 :skolemid |45|
))))
 :qid |DiemIdbpl.1673:33|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'address''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'address'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemIdbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemIdbpl.1688:17|
 :skolemid |48|
)))))
 :qid |DiemIdbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'address'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'u8'| (seq.nth v@@18 i@@21)))
 :qid |DiemIdbpl.1855:13|
 :skolemid |50|
))))
 :qid |DiemIdbpl.1853:28|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'u8''| v@@18))
)))
(assert (forall ((v@@19 (Seq Int)) (e@@6 Int) ) (! (let ((i@@22 (|$IndexOfVec'u8'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemIdbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemIdbpl.1868:17|
 :skolemid |53|
)))))
 :qid |DiemIdbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'u8'| v@@19 e@@6))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemIdbpl.2041:15|
 :skolemid |55|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemIdbpl.2057:15|
 :skolemid |56|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemIdbpl.2128:15|
 :skolemid |57|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemIdbpl.2131:15|
 :skolemid |58|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_32802| stream) 0) (forall ((v@@20 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| stream) v@@20) 0)
 :qid |DiemIdbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemIdbpl.2192:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h) true)
 :qid |DiemIdbpl.2233:80|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@1 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@1) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@1)))
 :qid |DiemIdbpl.2239:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@1) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0) true)
 :qid |DiemIdbpl.2289:78|
 :skolemid |63|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@2 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@2)))
 :qid |DiemIdbpl.2295:15|
 :skolemid |64|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1) true)
 :qid |DiemIdbpl.2345:74|
 :skolemid |65|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DiemAccount_SentPaymentEvent) (v2@@3 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@3)))
 :qid |DiemIdbpl.2351:15|
 :skolemid |66|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@2) true)
 :qid |DiemIdbpl.2401:70|
 :skolemid |67|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemId_DiemIdDomainEvent) (v2@@4 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@4) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@4)))
 :qid |DiemIdbpl.2407:15|
 :skolemid |68|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@4) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@3) true)
 :qid |DiemIdbpl.2457:82|
 :skolemid |69|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@5 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@5)))
 :qid |DiemIdbpl.2463:15|
 :skolemid |70|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@4) true)
 :qid |DiemIdbpl.2513:88|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@6 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@6) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@6)))
 :qid |DiemIdbpl.2519:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@6) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@5) true)
 :qid |DiemIdbpl.2569:72|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_VASPDomain_VASPDomainEvent) (v2@@7 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@7) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@7)))
 :qid |DiemIdbpl.2575:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@7) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@7))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemIdbpl.2636:61|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemIdbpl.2695:36|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemIdbpl.2714:71|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemIdbpl.2743:46|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemIdbpl.2756:64|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemIdbpl.2769:75|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemIdbpl.2782:72|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemIdbpl.2811:55|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemIdbpl.2833:46|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemIdbpl.2851:49|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemIdbpl.2871:71|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@10)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@10))))
 :qid |DiemIdbpl.2893:45|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@11)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@11))))
 :qid |DiemIdbpl.2916:48|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11))
)))
(assert (forall ((s@@12 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@12)))
 :qid |DiemIdbpl.2932:45|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@13)))
 :qid |DiemIdbpl.2945:45|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13))
)))
(assert (forall ((s@@14 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@14) true)
 :qid |DiemIdbpl.2958:31|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@14))
)))
(assert (forall ((s@@15 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@15) true)
 :qid |DiemIdbpl.2971:31|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@15))
)))
(assert (forall ((s@@16 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@16)))
 :qid |DiemIdbpl.2984:45|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16))
)))
(assert (forall ((s@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@17))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@17))))
 :qid |DiemIdbpl.3003:50|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17))
)))
(assert (forall ((s@@18 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@18)))
 :qid |DiemIdbpl.3018:52|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18))
)))
(assert (forall ((s@@19 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@19)))
 :qid |DiemIdbpl.3032:46|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19))
)))
(assert (forall ((s@@20 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@20) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@20)))
 :qid |DiemIdbpl.3056:38|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@20))
)))
(assert (forall ((s@@21 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@21) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@21)))
 :qid |DiemIdbpl.3070:39|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@22)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@22))))
 :qid |DiemIdbpl.3092:60|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23))))
 :qid |DiemIdbpl.3109:66|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@24)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@24)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@24))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@24))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@24))))
 :qid |DiemIdbpl.3138:50|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@25) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@25)))
 :qid |DiemIdbpl.3157:47|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@26)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@26)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@26))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@26))))
 :qid |DiemIdbpl.3177:58|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@27)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@27)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@27))))
 :qid |DiemIdbpl.3212:47|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@28)))
 :qid |DiemIdbpl.3231:55|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@29)))
 :qid |DiemIdbpl.3245:55|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@30) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@30)))
 :qid |DiemIdbpl.3259:57|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@30))
)))
(assert (forall ((s@@31 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@31)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@31))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@31))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@31))))
 :qid |DiemIdbpl.3281:56|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@32)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@32))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@32))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@32))))
 :qid |DiemIdbpl.3306:52|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@33) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@33)))
 :qid |DiemIdbpl.3322:54|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@33))
)))
(assert (forall ((s@@34 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@34) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@34)))
 :qid |DiemIdbpl.3345:43|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@34))
)))
(assert (forall ((s@@35 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@35)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@35))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@35))))
 :qid |DiemIdbpl.3364:48|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@36) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@36)))
 :qid |DiemIdbpl.3379:50|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@36))
)))
(assert (forall ((s@@37 T@$1_DiemId_DiemIdDomains) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomains'| s@@37) (|$IsValid'vec'$1_DiemId_DiemIdDomain''| (|$domains#$1_DiemId_DiemIdDomains| s@@37)))
 :qid |DiemIdbpl.3393:44|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomains'| s@@37))
)))
(assert (forall ((v@@21 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_9922 v@@21)))
 (and (= (seq.len r@@0) (seq.len v@@21)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@0))) (= (seq.nth r@@0 i@@24) (seq.nth v@@21 (- (- (seq.len v@@21) i@@24) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@24))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_9922 v@@21))
)))
(assert (forall ((v@@22 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_29338 v@@22)))
 (and (= (seq.len r@@1) (seq.len v@@22)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@1))) (= (seq.nth r@@1 i@@25) (seq.nth v@@22 (- (- (seq.len v@@22) i@@25) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@25))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_29338 v@@22))
)))
(assert (forall ((v@@23 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_28353 v@@23)))
 (and (= (seq.len r@@2) (seq.len v@@23)) (forall ((i@@26 Int) ) (!  (=> (and (>= i@@26 0) (< i@@26 (seq.len r@@2))) (= (seq.nth r@@2 i@@26) (seq.nth v@@23 (- (- (seq.len v@@23) i@@26) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@26))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_28353 v@@23))
)))
(assert (forall ((v@@24 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_28550 v@@24)))
 (and (= (seq.len r@@3) (seq.len v@@24)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len r@@3))) (= (seq.nth r@@3 i@@27) (seq.nth v@@24 (- (- (seq.len v@@24) i@@27) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@27))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_28550 v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_28944 v@@25)))
 (and (= (seq.len r@@4) (seq.len v@@25)) (forall ((i@@28 Int) ) (!  (=> (and (>= i@@28 0) (< i@@28 (seq.len r@@4))) (= (seq.nth r@@4 i@@28) (seq.nth v@@25 (- (- (seq.len v@@25) i@@28) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@28))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_28944 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@5 (ReverseVec_29141 v@@26)))
 (and (= (seq.len r@@5) (seq.len v@@26)) (forall ((i@@29 Int) ) (!  (=> (and (>= i@@29 0) (< i@@29 (seq.len r@@5))) (= (seq.nth r@@5 i@@29) (seq.nth v@@26 (- (- (seq.len v@@26) i@@29) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@29))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_29141 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemId_DiemIdDomain)) ) (! (let ((r@@6 (ReverseVec_28747 v@@27)))
 (and (= (seq.len r@@6) (seq.len v@@27)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@6))) (= (seq.nth r@@6 i@@30) (seq.nth v@@27 (- (- (seq.len v@@27) i@@30) 1))))
 :qid |DiemIdbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@30))
))))
 :qid |DiemIdbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_28747 v@@27))
)))
(assert (forall ((|l#0| Bool) (i@@31 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@31) |l#0|)
 :qid |DiemIdbpl.250:54|
 :skolemid |270|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@31))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_32802|) (|l#1| |T@[$1_Event_EventHandle]Multiset_32802|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| |l#1| handle@@0))))
(Multiset_32802 (|lambda#3| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| |l#0@@0| handle@@0)) (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemIdbpl.2202:13|
 :skolemid |271|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@28) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@28) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@28)))
 :qid |DiemIdbpl.129:29|
 :skolemid |272|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@28))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|T@[Int]$1_DiemId_DiemIdDomainManager| Int) T@$1_DiemId_DiemIdDomainManager)
(declare-fun $1_DiemId_DiemIdDomainManager_$memory () T@$Memory_57968)
(declare-fun $t1@0 () Bool)
(declare-fun $es () T@$EventStore)
; Valid
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t37 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun |Select__T@[Int]$1_DiemId_DiemIdDomains_| (|T@[Int]$1_DiemId_DiemIdDomains| Int) T@$1_DiemId_DiemIdDomains)
(declare-fun $1_DiemId_DiemIdDomains_$memory@0 () T@$Memory_57904)
(declare-fun _$t1 () Int)
(declare-fun $1_DiemId_DiemIdDomains_$memory () T@$Memory_57904)
(declare-fun $t11 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun _$t2 () (Seq Int))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_53330)
(declare-fun $t12 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () T@$signer)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $t13 () T@$1_Event_EventHandle)
(declare-fun $t14 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_32802_| (|T@[$1_Event_EventHandle]Multiset_32802| T@$1_Event_EventHandle T@Multiset_32802) |T@[$1_Event_EventHandle]Multiset_32802|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_32802|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_32802)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|Store__T@[$1_Event_EventHandle]Multiset_32802_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_32802|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_32802)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|Store__T@[$1_Event_EventHandle]Multiset_32802_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_32802_| ?x0 ?y1))) :weight 0)))
(declare-fun $t17@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0 () T@$Mutation_50681)
(declare-fun $t36@0 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun $t33@1 () T@$Mutation_58573)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun $t33 () T@$Mutation_58573)
(declare-fun $t33@0 () T@$Mutation_58573)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t24@2 () T@$Mutation_58512)
(declare-fun $t24@1 () T@$Mutation_58512)
(declare-fun |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$m'@1| () T@$Mutation_38814)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemId_DiemIdDomains_| (|T@[Int]$1_DiemId_DiemIdDomains| Int T@$1_DiemId_DiemIdDomains) |T@[Int]$1_DiemId_DiemIdDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomains|) ( ?x1 Int) ( ?x2 T@$1_DiemId_DiemIdDomains)) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|Store__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemId_DiemIdDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|Store__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun $t31@0 () T@$Mutation_38814)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t30 () Int)
(declare-fun |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1| () Bool)
(declare-fun $t26@0 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t4@1 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@0 () T@$1_DiemId_DiemIdDomain)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t8@0 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t9@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |$temp_0'$1_DiemId_DiemIdDomains'@0| () T@$1_DiemId_DiemIdDomains)
(declare-fun $t24 () T@$Mutation_58512)
(declare-fun $t24@0 () T@$Mutation_58512)
(declare-fun $abort_code@0 () Int)
(declare-fun $t21@0 () Bool)
(declare-fun $t23 () Int)
(declare-fun inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 () Bool)
(declare-fun $t20 () Int)
(declare-fun $t16 () Bool)
(declare-fun $t15 () Int)
(declare-fun $t17 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_53208)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_53657)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_54089)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_54633)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_55917)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_56772)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_55541)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_55640)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_57302)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_57393)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_56611)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_54600)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_55737)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_55673)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $t9 () T@$Mutation_58512)
(declare-fun $t31 () T@$Mutation_38814)
(declare-fun $t34 () T@$Mutation_50681)
; Valid
(declare-fun _$t0@@0 () (Seq Int))
(declare-fun $t4@0 () Int)
(declare-fun inline$$Le$0$dst@1@@0 () Bool)
(declare-fun $t8 () Int)
(declare-fun $t9@0 () T@$1_DiemId_DiemIdDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@0| () Int)
; Valid
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1@@0| () Bool)
(declare-fun _$t0@@1 () Int)
(declare-fun _$t1@@0 () (Seq Int))
(declare-fun $t6 () T@$1_DiemId_DiemIdDomain)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $t13@0 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@0 () T@$1_DiemId_DiemIdDomain)
(declare-fun $t11@1 () T@$1_DiemId_DiemIdDomains)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t4@1@@0 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@0@@0 () T@$1_DiemId_DiemIdDomain)
(declare-fun inline$$Le$0$dst@1@@1 () Bool)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@0 () T@$1_DiemId_DiemIdDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@1| () Int)
(declare-fun $t11@@0 () T@$1_DiemId_DiemIdDomains)
(declare-fun $t11@0 () T@$1_DiemId_DiemIdDomains)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t9@@0 () Int)
; Valid
(declare-fun _$t0@@2 () Int)
(declare-fun $t1@0@@0 () Bool)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t3 () Int)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun $1_DiemId_DiemIdDomainManager_$memory@1 () T@$Memory_57968)
(declare-fun $t6@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $1_DiemId_DiemIdDomainManager_$memory@0 () T@$Memory_57968)
(declare-fun |Store__T@[Int]$1_DiemId_DiemIdDomainManager_| (|T@[Int]$1_DiemId_DiemIdDomainManager| Int T@$1_DiemId_DiemIdDomainManager) |T@[Int]$1_DiemId_DiemIdDomainManager|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomainManager|) ( ?x1 Int) ( ?x2 T@$1_DiemId_DiemIdDomainManager)) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|Store__T@[Int]$1_DiemId_DiemIdDomainManager_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomainManager|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemId_DiemIdDomainManager)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|Store__T@[Int]$1_DiemId_DiemIdDomainManager_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| ?x0 ?y1))) :weight 0)))
(declare-fun $t13@0@@0 () T@$1_DiemId_DiemIdDomainManager)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DiemId_DiemIdDomainEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DiemId_DiemIdDomainManager_$modifies () |T@[Int]Bool|)
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
(declare-fun $1_DiemId_DiemIdDomains_$memory@1 () T@$Memory_57904)
(declare-fun $t7@0@@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun $1_DiemId_DiemIdDomains_$memory@0@@0 () T@$Memory_57904)
(declare-fun $t14@0 () T@$1_DiemId_DiemIdDomains)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun |inline$$1_Vector_empty'$1_DiemId_DiemIdDomain'$0$v@1| () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun $t12@@0 () Int)
(declare-fun $t9@0@@0 () Bool)
(declare-fun $t6@@1 () Bool)
(declare-fun $t8@@0 () Int)
(declare-fun $t5@@0 () Int)
(declare-fun $t7@@0 () Int)
; Valid
(declare-fun $abort_flag@3 () Bool)
(declare-fun $t38 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun $1_DiemId_DiemIdDomains_$memory@0@@1 () T@$Memory_57904)
(declare-fun _$t1@@1 () Int)
(declare-fun $t11@@2 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun _$t2@@0 () (Seq Int))
(declare-fun $t12@@1 () Int)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t13@@0 () T@$1_Event_EventHandle)
(declare-fun $t14@@0 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun $t17@0@@0 () Int)
(declare-fun $abort_code@4 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t35@0 () T@$Mutation_50681)
(declare-fun $t37@0 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun $t34@1 () T@$Mutation_58573)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun $t34@@0 () T@$Mutation_58573)
(declare-fun $t34@0@@0 () T@$Mutation_58573)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun $t24@2@@0 () T@$Mutation_58512)
(declare-fun $t24@1@@0 () T@$Mutation_58512)
(declare-fun |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@2| () T@$Mutation_38814)
(declare-fun |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@0| () T@$Mutation_38814)
(declare-fun |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| () Int)
(declare-fun |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1| () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$e@1| () T@$1_DiemId_DiemIdDomain)
(declare-fun |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@1| () T@$Mutation_38814)
(declare-fun $t31@0@@0 () T@$Mutation_38814)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1| () Bool)
(declare-fun $t30@@0 () Int)
(declare-fun |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@1| () Int)
(declare-fun $t26@0@@0 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t4@1@@1 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@0@@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun inline$$Le$0$dst@1@@2 () Bool)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@2| () Int)
(declare-fun |$temp_0'$1_DiemId_DiemIdDomains'@0@@0| () T@$1_DiemId_DiemIdDomains)
(declare-fun $t24@@0 () T@$Mutation_58512)
(declare-fun $t24@0@@0 () T@$Mutation_58512)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t21@0@@0 () Bool)
(declare-fun $t23@@0 () Int)
(declare-fun inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0 () Bool)
(declare-fun $t20@@0 () Int)
(declare-fun $t16@@0 () Bool)
(declare-fun $t15@@0 () Int)
(declare-fun $t17@@0 () Int)
(declare-fun $t7@@1 () T@$Mutation_58512)
(declare-fun $t31@@0 () T@$Mutation_38814)
(declare-fun $t35 () T@$Mutation_50681)
(push 1)
(set-info :boogie-vc-id $1_DiemId_remove_diem_id_domain$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 95255) (let ((anon46_Else_correct  (=> (and (not $abort_flag@3) (= $t38 (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_57904| $1_DiemId_DiemIdDomains_$memory@0@@1) _$t1@@1)))) (and (=> (= (ControlFlow 0 86733) (- 0 98210)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1@@1))) (and (=> (= (ControlFlow 0 86733) (- 0 98221)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (and (=> (= (ControlFlow 0 86733) (- 0 98231)) (not (not (exists ((i@@62 Int) ) (!  (and (and (|$IsValid'u64'| i@@62) (and (>= i@@62 0) (< i@@62 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@62) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
))))) (=> (not (not (exists ((i@@63 Int) ) (!  (and (and (|$IsValid'u64'| i@@63) (and (>= i@@63 0) (< i@@63 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@63) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
)))) (and (=> (= (ControlFlow 0 86733) (- 0 98245)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t12@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t12@@1))) (and (=> (= (ControlFlow 0 86733) (- 0 98257)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t12@@1)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t12@@1)) 1))) (and (=> (= (ControlFlow 0 86733) (- 0 98275)) (not (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 186537453))) (and (=> (= (ControlFlow 0 86733) (- 0 98289)) (not (> (seq.len _$t2@@0) 63))) (=> (not (> (seq.len _$t2@@0) 63)) (and (=> (= (ControlFlow 0 86733) (- 0 98301)) (not (exists ((i@@64 Int) ) (!  (and (and (|$IsValid'u64'| i@@64) (and (>= i@@64 0) (< i@@64 (seq.len $t38)))) (= (seq.nth $t38 i@@64) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
)))) (=> (not (exists ((i@@65 Int) ) (!  (and (and (|$IsValid'u64'| i@@65) (and (>= i@@65 0) (< i@@65 (seq.len $t38)))) (= (seq.nth $t38 i@@65) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
))) (and (=> (= (ControlFlow 0 86733) (- 0 98313)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_32802| stream@@11)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@11) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14@@0))))
(Multiset_32802 (|Store__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@11) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14@@0) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@3))))))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@11 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| expected@@2) handle@@11)) (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| actual@@2) handle@@11))) (forall ((v@@39 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| expected@@2) handle@@11)) v@@39) (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| actual@@2) handle@@11)) v@@39))
 :qid |DiemIdbpl.139:13|
 :skolemid |3|
)))
 :qid |DiemIdbpl.2208:13|
 :skolemid |60|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_32802| stream@@12)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@12) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14@@0))))
(Multiset_32802 (|Store__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@12) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14@@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@4))))))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@12 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| expected@@3) handle@@12)) (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| actual@@3) handle@@12))) (forall ((v@@40 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| expected@@3) handle@@12)) v@@40) (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| actual@@3) handle@@12)) v@@40))
 :qid |DiemIdbpl.139:13|
 :skolemid |3|
)))
 :qid |DiemIdbpl.2208:13|
 :skolemid |60|
))))) (=> (= (ControlFlow 0 86733) (- 0 98338)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_32802| stream@@13)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@13) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14@@0))))
(Multiset_32802 (|Store__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@13) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14@@0) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@5))))))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@13 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| actual@@4) handle@@13)) (|l#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| expected@@4) handle@@13))) (forall ((v@@41 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| actual@@4) handle@@13)) v@@41) (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| expected@@4) handle@@13)) v@@41))
 :qid |DiemIdbpl.139:13|
 :skolemid |3|
)))
 :qid |DiemIdbpl.2208:13|
 :skolemid |60|
)))))))))))))))))))))))))))
(let ((L7_correct@@0  (and (=> (= (ControlFlow 0 85118) (- 0 97998)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (not (exists ((i@@66 Int) ) (!  (and (and (|$IsValid'u64'| i@@66) (and (>= i@@66 0) (< i@@66 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@66) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t12@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t12@@1)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (> (seq.len _$t2@@0) 63))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (not (exists ((i@@67 Int) ) (!  (and (and (|$IsValid'u64'| i@@67) (and (>= i@@67 0) (< i@@67 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@67) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t12@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t12@@1)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (> (seq.len _$t2@@0) 63)) (=> (= (ControlFlow 0 85118) (- 0 98066)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1@@1)) (= 5 $t17@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= 5 $t17@0@@0))) (and (not (exists ((i@@68 Int) ) (!  (and (and (|$IsValid'u64'| i@@68) (and (>= i@@68 0) (< i@@68 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@68) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdbpl.960:13|
 :skolemid |27|
))) (= 7 $t17@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t12@@1)) (= 5 $t17@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t12@@1)) 1)) (= 3 $t17@0@@0))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t17@0@@0))) (and (> (seq.len _$t2@@0) 63) (= 7 $t17@0@@0))))))))
(let ((anon46_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t17@0@@0 $abort_code@4) (= (ControlFlow 0 86747) 85118))) L7_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct@@0|  (=> (and (= |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1@@0| (|v#$Mutation_50681| $t35@0)) (= $es@0@@0 (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1@@0|)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_32802| stream@@14)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@14) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t37@0))))
(Multiset_32802 (|Store__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@14) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t37@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1@@0| stream_new@@6)))))) (and (=> (= (ControlFlow 0 86543) 86747) anon46_Then_correct) (=> (= (ControlFlow 0 86543) 86733) anon46_Else_correct)))))
(let ((anon45_Else_correct@@0  (=> (and (and (not $abort_flag@3) (= $t35@0 ($Mutation_50681 (|l#$Mutation_58573| $t34@1) (seq.++ (|p#$Mutation_58573| $t34@1) (seq.unit 0)) (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| (|v#$Mutation_58573| $t34@1))))) (and (= $t37@0 ($1_DiemId_DiemIdDomainEvent true inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1 _$t1@@1)) (= (ControlFlow 0 86549) 86543))) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct@@0|)))
(let ((anon45_Then_correct@@0  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t17@0@@0 $abort_code@4) (= (ControlFlow 0 86761) 85118))) L7_correct@@0)))
(let ((anon44_Then$1_correct  (=> (= $t34@1 $t34@@0) (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 86813) 86761) anon45_Then_correct@@0) (=> (= (ControlFlow 0 86813) 86549) anon45_Else_correct@@0))))))
(let ((anon44_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= (ControlFlow 0 86811) 86813)) anon44_Then$1_correct)))
(let ((anon44_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453) (=> (and (and (= $t34@0@@0 ($Mutation_58573 ($Global 186537453) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (= $t34@1 $t34@0@@0)) (and (= $abort_flag@3 $abort_flag@2@@0) (= $abort_code@4 $abort_code@3@@0))) (and (=> (= (ControlFlow 0 86434) 86761) anon45_Then_correct@@0) (=> (= (ControlFlow 0 86434) 86549) anon45_Else_correct@@0))))))
(let ((anon43_Else_correct@@0  (=> (and (not $abort_flag@2@@0) (= $t24@2@@0 ($Mutation_58512 (|l#$Mutation_58512| $t24@1@@0) (|p#$Mutation_58512| $t24@1@@0) ($1_DiemId_DiemIdDomains (|v#$Mutation_38814| |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@2|))))) (and (=> (= (ControlFlow 0 86412) (- 0 97588)) (let (($range_0@@18 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0))))))
(forall (($i_1@@18 Int) ) (!  (=> ($InRange $range_0@@18 $i_1@@18) (let ((i@@69 $i_1@@18))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0)) i@@69))) 63)))
 :qid |DiemIdbpl.5827:105|
 :skolemid |266|
)))) (=> (let (($range_0@@19 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0))))))
(forall (($i_1@@19 Int) ) (!  (=> ($InRange $range_0@@19 $i_1@@19) (let ((i@@70 $i_1@@19))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0)) i@@70))) 63)))
 :qid |DiemIdbpl.5827:105|
 :skolemid |266|
))) (and (=> (= (ControlFlow 0 86412) (- 0 97636)) (let (($range_0@@20 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0))))))
(forall (($i_1@@20 Int) ) (!  (=> ($InRange $range_0@@20 $i_1@@20) (let ((i@@71 $i_1@@20))
(let (($range_2@@5 ($Range (+ i@@71 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0))))))
(forall (($i_3@@5 Int) ) (!  (=> ($InRange $range_2@@5 $i_3@@5) (let ((j@@17 $i_3@@5))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0)) i@@71) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0)) j@@17)))))
 :qid |DiemIdbpl.5835:110|
 :skolemid |267|
)))))
 :qid |DiemIdbpl.5834:105|
 :skolemid |268|
)))) (=> (let (($range_0@@21 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0))))))
(forall (($i_1@@21 Int) ) (!  (=> ($InRange $range_0@@21 $i_1@@21) (let ((i@@72 $i_1@@21))
(let (($range_2@@6 ($Range (+ i@@72 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0))))))
(forall (($i_3@@6 Int) ) (!  (=> ($InRange $range_2@@6 $i_3@@6) (let ((j@@18 $i_3@@6))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0)) i@@72) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0)) j@@18)))))
 :qid |DiemIdbpl.5835:110|
 :skolemid |267|
)))))
 :qid |DiemIdbpl.5834:105|
 :skolemid |268|
))) (and (=> (= (ControlFlow 0 86412) (- 0 97721)) (let (($range_0@@22 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0))))
(forall (($i_1@@22 Int) ) (!  (=> (and (>= $i_1@@22 0) (< $i_1@@22 (seq.len $range_0@@22))) (let (($elem@@7 (seq.nth $range_0@@22 $i_1@@22)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@7)) 63)))
 :qid |DiemIdbpl.5842:86|
 :skolemid |269|
)))) (=> (let (($range_0@@23 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@2@@0))))
(forall (($i_1@@23 Int) ) (!  (=> (and (>= $i_1@@23 0) (< $i_1@@23 (seq.len $range_0@@23))) (let (($elem@@8 (seq.nth $range_0@@23 $i_1@@23)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@8)) 63)))
 :qid |DiemIdbpl.5842:86|
 :skolemid |269|
))) (=> (and (= $1_DiemId_DiemIdDomains_$memory@0@@1 ($Memory_57904 (|Store__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) (|a#$Global| (|l#$Mutation_58512| $t24@2@@0)) true) (|Store__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) (|a#$Global| (|l#$Mutation_58512| $t24@2@@0)) (|v#$Mutation_58512| $t24@2@@0)))) (|$IsValid'address'| 186537453)) (and (=> (= (ControlFlow 0 86412) 86811) anon44_Then_correct@@0) (=> (= (ControlFlow 0 86412) 86434) anon44_Else_correct@@0))))))))))))
(let ((anon43_Then_correct@@0  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t17@0@@0 $abort_code@3@@0) (= (ControlFlow 0 86827) 85118))) L7_correct@@0)))
(let ((|inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon3_Then$1_correct|  (=> (= $abort_code@3@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2@@0 true) (= |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@2| |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@0|)) (and (=> (= (ControlFlow 0 86184) 86827) anon43_Then_correct@@0) (=> (= (ControlFlow 0 86184) 86412) anon43_Else_correct@@0))))))
(let ((|inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon3_Then_correct|  (=> (and (not (and (>= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| 0) (< |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| (seq.len |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1|)))) (= (ControlFlow 0 86182) 86184)) |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon3_Else_correct|  (=> (and (and (and (>= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| 0) (< |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| (seq.len |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1|))) (= |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$e@1| (seq.nth |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1| |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2|))) (and (and (= |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@1| ($Mutation_38814 (|l#$Mutation_38814| $t31@0@@0) (|p#$Mutation_38814| $t31@0@@0) (seq.++ (seq.extract |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1| 0 (- |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| 0)) (seq.extract |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1| (+ |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| 1) (- (seq.len |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1|) (+ |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| 1)))))) (= $abort_code@3@@0 $abort_code@2@@1)) (and (= $abort_flag@2@@0 $abort_flag@1@@1) (= |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@2| |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@1|)))) (and (=> (= (ControlFlow 0 86132) 86827) anon43_Then_correct@@0) (=> (= (ControlFlow 0 86132) 86412) anon43_Else_correct@@0)))))
(let ((|inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1| (|v#$Mutation_38814| $t31@0@@0)) (and (=> (= (ControlFlow 0 86108) 86182) |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 86108) 86132) |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon3_Else_correct|)))))
(let ((anon42_Then_correct@@0  (=> |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1| (=> (and (= $t31@0@@0 ($Mutation_38814 (|l#$Mutation_58512| $t24@1@@0) (seq.++ (|p#$Mutation_58512| $t24@1@@0) (seq.unit 0)) (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0)))) (= (ControlFlow 0 86192) 86108)) |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon0_correct|))))
(let ((anon42_Else_correct@@0  (=> (not |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1|) (and (=> (= (ControlFlow 0 85997) (- 0 97252)) (let (($range_0@@24 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0))))))
(forall (($i_1@@24 Int) ) (!  (=> ($InRange $range_0@@24 $i_1@@24) (let ((i@@73 $i_1@@24))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0)) i@@73))) 63)))
 :qid |DiemIdbpl.5759:105|
 :skolemid |262|
)))) (=> (let (($range_0@@25 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0))))))
(forall (($i_1@@25 Int) ) (!  (=> ($InRange $range_0@@25 $i_1@@25) (let ((i@@74 $i_1@@25))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0)) i@@74))) 63)))
 :qid |DiemIdbpl.5759:105|
 :skolemid |262|
))) (and (=> (= (ControlFlow 0 85997) (- 0 97300)) (let (($range_0@@26 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0))))))
(forall (($i_1@@26 Int) ) (!  (=> ($InRange $range_0@@26 $i_1@@26) (let ((i@@75 $i_1@@26))
(let (($range_2@@7 ($Range (+ i@@75 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0))))))
(forall (($i_3@@7 Int) ) (!  (=> ($InRange $range_2@@7 $i_3@@7) (let ((j@@19 $i_3@@7))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0)) i@@75) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0)) j@@19)))))
 :qid |DiemIdbpl.5767:110|
 :skolemid |263|
)))))
 :qid |DiemIdbpl.5766:105|
 :skolemid |264|
)))) (=> (let (($range_0@@27 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0))))))
(forall (($i_1@@27 Int) ) (!  (=> ($InRange $range_0@@27 $i_1@@27) (let ((i@@76 $i_1@@27))
(let (($range_2@@8 ($Range (+ i@@76 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0))))))
(forall (($i_3@@8 Int) ) (!  (=> ($InRange $range_2@@8 $i_3@@8) (let ((j@@20 $i_3@@8))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0)) i@@76) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0)) j@@20)))))
 :qid |DiemIdbpl.5767:110|
 :skolemid |263|
)))))
 :qid |DiemIdbpl.5766:105|
 :skolemid |264|
))) (and (=> (= (ControlFlow 0 85997) (- 0 97385)) (let (($range_0@@28 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0))))
(forall (($i_1@@28 Int) ) (!  (=> (and (>= $i_1@@28 0) (< $i_1@@28 (seq.len $range_0@@28))) (let (($elem@@9 (seq.nth $range_0@@28 $i_1@@28)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@9)) 63)))
 :qid |DiemIdbpl.5774:86|
 :skolemid |265|
)))) (=> (let (($range_0@@29 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0))))
(forall (($i_1@@29 Int) ) (!  (=> (and (>= $i_1@@29 0) (< $i_1@@29 (seq.len $range_0@@29))) (let (($elem@@10 (seq.nth $range_0@@29 $i_1@@29)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@10)) 63)))
 :qid |DiemIdbpl.5774:86|
 :skolemid |265|
))) (=> (and (|$IsValid'u64'| 2) (|$IsValid'u64'| $t30@@0)) (=> (and (and (= $t30@@0 7) (= $t30@@0 $t30@@0)) (and (= $t17@0@@0 $t30@@0) (= (ControlFlow 0 85997) 85118))) L7_correct@@0)))))))))))
(let ((anon41_Else_correct@@0  (=> (not $abort_flag@1@@1) (=> (and (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2|) (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1| |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1|)) (and (=> (= (ControlFlow 0 85787) 86192) anon42_Then_correct@@0) (=> (= (ControlFlow 0 85787) 85997) anon42_Else_correct@@0))))))
(let ((anon41_Then_correct@@0  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@1 $abort_code@2@@1)) (and (= $t17@0@@0 $abort_code@2@@1) (= (ControlFlow 0 86841) 85118))) L7_correct@@0)))
(let ((|inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$anon3_Else_correct|  (=> (> 0 |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@1|) (=> (and (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1| false) (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| 0)) (and (=> (= (ControlFlow 0 85747) 86841) anon41_Then_correct@@0) (=> (= (ControlFlow 0 85747) 85787) anon41_Else_correct@@0))))))
(let ((|inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$anon3_Then_correct|  (=> (>= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@1| 0) (=> (and (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1| true) (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@1|)) (and (=> (= (ControlFlow 0 85757) 86841) anon41_Then_correct@@0) (=> (= (ControlFlow 0 85757) 85787) anon41_Else_correct@@0))))))
(let ((|inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@1| (|$IndexOfVec'$1_DiemId_DiemIdDomain'| $t26@0@@0 inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1)) (and (=> (= (ControlFlow 0 85735) 85757) |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 85735) 85747) |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$anon3_Else_correct|)))))
(let ((anon40_Else_correct@@0  (=> (and (and (not $abort_flag@1@@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1 inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1)) (and (= $t26@0@@0 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_58512| $t24@1@@0))) (= (ControlFlow 0 85765) 85735))) |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$anon0_correct|)))
(let ((anon40_Then_correct@@0  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@1 $abort_code@2@@1)) (and (= $t17@0@@0 $abort_code@2@@1) (= (ControlFlow 0 86855) 85118))) L7_correct@@0)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$L3_correct@@1  (=> (= $abort_flag@1@@1 true) (=> (and (= $abort_code@2@@1 inline$$1_DiemId_create_diem_id_domain$0$$t4@1@@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1 inline$$1_DiemId_create_diem_id_domain$0$$ret0@0@@1)) (and (=> (= (ControlFlow 0 85598) 86855) anon40_Then_correct@@0) (=> (= (ControlFlow 0 85598) 85765) anon40_Else_correct@@0))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct@@1  (=> (and (and (not inline$$Le$0$dst@1@@2) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1 inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1@@1 inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1) (= (ControlFlow 0 85592) 85598))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct@@1)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct@@1  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1@@1 $abort_code@1@@3) (= (ControlFlow 0 85630) 85598))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct@@1)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct@@1  (=> (and inline$$Le$0$dst@1@@2 (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@1 ($1_DiemId_DiemIdDomain _$t2@@0))) (=> (and (and (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@1 inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@1) (= $abort_flag@1@@1 $abort_flag@0@@3)) (and (= $abort_code@2@@1 $abort_code@1@@3) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1 inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@1))) (and (=> (= (ControlFlow 0 85616) 86855) anon40_Then_correct@@0) (=> (= (ControlFlow 0 85616) 85765) anon40_Else_correct@@0))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct@@1  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1 7)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1 inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1) (= inline$$Le$0$dst@1@@2 inline$$Le$0$dst@1@@2))) (and (=> (= (ControlFlow 0 85576) 85616) inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct@@1) (=> (= (ControlFlow 0 85576) 85592) inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct@@1))))))
(let ((inline$$Le$0$anon0_correct@@2  (=> (and (= inline$$Le$0$dst@1@@2 (<= |inline$$1_Vector_length'u8'$0$l@1@@2| 63)) (= (ControlFlow 0 85540) 85576)) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct@@1)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct@@1  (=> (not $abort_flag@0@@3) (=> (and (|$IsValid'u64'| 63) (= (ControlFlow 0 85546) 85540)) inline$$Le$0$anon0_correct@@2))))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@2|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@2| (seq.len _$t2@@0)) (and (=> (= (ControlFlow 0 85480) 85630) inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct@@1) (=> (= (ControlFlow 0 85480) 85546) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct@@1)))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon0_correct@@1  (=> (and (= _$t2@@0 _$t2@@0) (= (ControlFlow 0 85486) 85480)) |inline$$1_Vector_length'u8'$0$anon0_correct@@2|)))
(let ((anon39_Else_correct@@0  (=> (and (and (not $abort_flag@0@@3) (= |$temp_0'$1_DiemId_DiemIdDomains'@0@@0| (|v#$Mutation_58512| $t24@1@@0))) (and (= |$temp_0'$1_DiemId_DiemIdDomains'@0@@0| |$temp_0'$1_DiemId_DiemIdDomains'@0@@0|) (= (ControlFlow 0 85636) 85486))) inline$$1_DiemId_create_diem_id_domain$0$anon0_correct@@1)))
(let ((anon39_Then_correct@@0  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t17@0@@0 $abort_code@1@@3) (= (ControlFlow 0 86869) 85118))) L7_correct@@0)))
(let ((anon38_Then$1_correct  (=> (= $t24@1@@0 $t24@@0) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 86921) 86869) anon39_Then_correct@@0) (=> (= (ControlFlow 0 86921) 85636) anon39_Else_correct@@0))))))
(let ((anon38_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1@@1)) (= (ControlFlow 0 86919) 86921)) anon38_Then$1_correct)))
(let ((anon38_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1@@1) (=> (and (and (= $t24@0@@0 ($Mutation_58512 ($Global _$t1@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1@@1))) (= $t24@1@@0 $t24@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 85202) 86869) anon39_Then_correct@@0) (=> (= (ControlFlow 0 85202) 85636) anon39_Else_correct@@0))))))
(let ((anon37_Then_correct@@0  (=> $t21@0@@0 (and (=> (= (ControlFlow 0 85180) 86919) anon38_Then_correct@@0) (=> (= (ControlFlow 0 85180) 85202) anon38_Else_correct@@0)))))
(let ((anon37_Else_correct@@0  (=> (and (and (not $t21@0@@0) (= $t23@@0 $t23@@0)) (and (= $t17@0@@0 $t23@@0) (= (ControlFlow 0 85176) 85118))) L7_correct@@0)))
(let ((anon36_Then_correct@@0  (=> inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0 (=> (and (= $t21@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1@@1)) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t23@@0) (= $t23@@0 5)) (and (= $t23@@0 $t23@@0) (= $t21@0@@0 $t21@0@@0))) (and (=> (= (ControlFlow 0 85160) 85180) anon37_Then_correct@@0) (=> (= (ControlFlow 0 85160) 85176) anon37_Else_correct@@0)))))))
(let ((anon36_Else_correct@@0  (=> (and (and (not inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0) (= $t20@@0 $t20@@0)) (and (= $t17@0@@0 $t20@@0) (= (ControlFlow 0 84902) 85118))) L7_correct@@0)))
(let ((anon35_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t20@@0) (= $t20@@0 5)) (and (= $t20@@0 $t20@@0) (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0 inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 84886) 85160) anon36_Then_correct@@0) (=> (= (ControlFlow 0 84886) 84902) anon36_Else_correct@@0))))))
(let ((anon34_Then_correct@@0  (=> $t16@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t15@@0)) (= 5 $t17@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t15@@0)) 1)) (= 3 $t17@@0))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t17@@0))) (= $t17@@0 $t17@@0)) (and (= $t17@0@@0 $t17@@0) (= (ControlFlow 0 87007) 85118))) L7_correct@@0))))
(let ((anon35_Then_correct@@0 true))
(let ((inline$$1_DiemId_tc_domain_manager_exists$0$anon0_correct@@0  (=> (|$IsValid'address'| 186537453) (=> (and (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0 inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 84844) 86935) anon35_Then_correct@@0) (=> (= (ControlFlow 0 84844) 84886) anon35_Else_correct@@0))))))
(let ((anon34_Else_correct@@0  (=> (and (not $t16@@0) (= (ControlFlow 0 84850) 84844)) inline$$1_DiemId_tc_domain_manager_exists$0$anon0_correct@@0)))
(let ((anon0$1_correct@@6  (=> (and (and (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@77)) 0)) (= addr@@77 173345816)))
 :qid |DiemIdbpl.5401:20|
 :skolemid |229|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_53208| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) 173345816)) 0)))) (and (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@78)) 1)) (= addr@@78 186537453)))
 :qid |DiemIdbpl.5409:20|
 :skolemid |230|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_53208| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) 186537453)) 1))))) (=> (and (and (and (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@79)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@79)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@79)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@79)) 2))))))
 :qid |DiemIdbpl.5417:20|
 :skolemid |231|
)) (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@80)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@80)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@80)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@80)) 2))))))
 :qid |DiemIdbpl.5421:20|
 :skolemid |232|
))) (and (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@81)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@81)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@81)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@81)) 2))))))
 :qid |DiemIdbpl.5425:20|
 :skolemid |233|
)) (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@82)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@82)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@82)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@82)) 2))))))
 :qid |DiemIdbpl.5429:20|
 :skolemid |234|
)))) (and (and (forall ((addr@@83 Int) ) (!  (=> (|$IsValid'address'| addr@@83) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@83)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@83)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@83)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@83)) 2)))))
 :qid |DiemIdbpl.5433:20|
 :skolemid |235|
)) (forall ((addr@@84 Int) ) (!  (=> (|$IsValid'address'| addr@@84) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@84)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@84)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@84)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@84)) 2)))))
 :qid |DiemIdbpl.5437:20|
 :skolemid |236|
))) (and (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@85)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@85)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@85)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@85)) 2)))))
 :qid |DiemIdbpl.5441:20|
 :skolemid |237|
)) (forall ((addr@@86 Int) ) (!  (=> (|$IsValid'address'| addr@@86) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_53657| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@86) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@86)) 4))))
 :qid |DiemIdbpl.5445:20|
 :skolemid |238|
))))) (=> (and (and (and (and (forall ((addr@@87 Int) ) (!  (=> (|$IsValid'address'| addr@@87) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54089| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@87) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@87)) 3))))
 :qid |DiemIdbpl.5449:20|
 :skolemid |239|
)) (forall ((addr@@88 Int) ) (!  (=> (|$IsValid'address'| addr@@88) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54089| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@88) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@88)) 3))))
 :qid |DiemIdbpl.5453:20|
 :skolemid |240|
))) (and (forall ((addr@@89 Int) ) (!  (=> (|$IsValid'address'| addr@@89) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_54089| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@89) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54089| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@89)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@89)) 3))))
 :qid |DiemIdbpl.5457:20|
 :skolemid |241|
)) (let (($range_0@@30 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@90 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_54633| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@90))))))))
(forall (($i_1@@30 Int) ) (!  (=> ($InRange $range_0@@30 $i_1@@30) (let ((i1@@2 $i_1@@30))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@91 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_54633| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@91)))) i1@@2))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@91 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_54633| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@91)))) i1@@2)))) 3))))
 :qid |DiemIdbpl.5461:151|
 :skolemid |242|
))))) (and (and (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_55917| $1_DualAttestation_Credential_$memory) addr1@@2) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr1@@2)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr1@@2)) 2)))))
 :qid |DiemIdbpl.5466:20|
 :skolemid |243|
)) (forall ((addr@@92 Int) ) (!  (=> (|$IsValid'address'| addr@@92) (= (|Select__T@[Int]Bool_| (|domain#$Memory_56772| $1_DiemAccount_DiemAccount_$memory) addr@@92) (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@92)))
 :qid |DiemIdbpl.5470:20|
 :skolemid |244|
))) (and (forall ((addr@@93 Int) ) (!  (=> (|$IsValid'address'| addr@@93) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55541| $1_VASPDomain_VASPDomainManager_$memory) addr@@93)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@93)) 1))))
 :qid |DiemIdbpl.5474:20|
 :skolemid |245|
)) (forall ((addr@@94 Int) ) (!  (=> (|$IsValid'address'| addr@@94) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55640| $1_VASPDomain_VASPDomains_$memory) addr@@94)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@94)) 5))))
 :qid |DiemIdbpl.5478:20|
 :skolemid |246|
))))) (and (and (and (forall ((addr@@95 Int) ) (!  (=> (|$IsValid'address'| addr@@95) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_57302| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@95) (|Select__T@[Int]Bool_| (|domain#$Memory_57393| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@95)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@95)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@95)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@95)) 2)))))
 :qid |DiemIdbpl.5482:20|
 :skolemid |247|
)) (forall ((addr@@96 Int) ) (!  (=> (|$IsValid'address'| addr@@96) (= (|Select__T@[Int]Bool_| (|domain#$Memory_56611| $1_DesignatedDealer_Dealer_$memory) addr@@96)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@96)) 2))))
 :qid |DiemIdbpl.5486:20|
 :skolemid |248|
))) (and (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55917| $1_DualAttestation_Credential_$memory) addr@@97)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@97)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@97)) 5)))))
 :qid |DiemIdbpl.5490:20|
 :skolemid |249|
)) (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (= (|Select__T@[Int]Bool_| (|domain#$Memory_54600| $1_SlidingNonce_SlidingNonce_$memory) addr@@98)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@98)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@98)) 1)))))
 :qid |DiemIdbpl.5494:20|
 :skolemid |250|
)))) (and (and (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (= (|Select__T@[Int]Bool_| (|domain#$Memory_54089| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@99)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@99)) 3))))
 :qid |DiemIdbpl.5498:20|
 :skolemid |251|
)) (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (= (|Select__T@[Int]Bool_| (|domain#$Memory_53657| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@100)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@100)) 4))))
 :qid |DiemIdbpl.5502:20|
 :skolemid |252|
))) (and (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55737| $1_VASP_ParentVASP_$memory) addr@@101)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@101) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@101)) 5))))
 :qid |DiemIdbpl.5506:20|
 :skolemid |253|
)) (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55673| $1_VASP_ChildVASP_$memory) addr@@102)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) addr@@102) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) addr@@102)) 6))))
 :qid |DiemIdbpl.5510:20|
 :skolemid |254|
)))))) (=> (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) ($1_Signer_is_txn_signer _$t0@@5)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@5))) (and (|$IsValid'address'| _$t1@@1) (|$IsValid'vec'u8''| _$t2@@0))) (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |DiemIdbpl.5522:20|
 :skolemid |255|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@10)))
(|$IsValid'$1_DiemId_DiemIdDomainManager'| $rsc@@10))
 :qid |DiemIdbpl.5526:20|
 :skolemid |256|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@10))
))) (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) $a_0@@11)))
 (and (|$IsValid'$1_DiemId_DiemIdDomains'| $rsc@@11) (and (and (let (($range_1@@3 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11)))))
(forall (($i_2@@3 Int) ) (!  (=> ($InRange $range_1@@3 $i_2@@3) (let ((i@@77 $i_2@@3))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11) i@@77))) 63)))
 :qid |DiemIdbpl.5531:136|
 :skolemid |257|
))) (let (($range_3@@3 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11)))))
(forall (($i_4@@3 Int) ) (!  (=> ($InRange $range_3@@3 $i_4@@3) (let ((i@@78 $i_4@@3))
(let (($range_5@@3 ($Range (+ i@@78 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11)))))
(forall (($i_6@@3 Int) ) (!  (=> ($InRange $range_5@@3 $i_6@@3) (let ((j@@21 $i_6@@3))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11) i@@78) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11) j@@21)))))
 :qid |DiemIdbpl.5533:96|
 :skolemid |258|
)))))
 :qid |DiemIdbpl.5532:196|
 :skolemid |259|
)))) (let (($range_7@@3 (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11)))
(forall (($i_8@@3 Int) ) (!  (=> (and (>= $i_8@@3 0) (< $i_8@@3 (seq.len $range_7@@3))) (let (($elem@@11 (seq.nth $range_7@@3 $i_8@@3)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@11)) 63)))
 :qid |DiemIdbpl.5534:221|
 :skolemid |260|
))))))
 :qid |DiemIdbpl.5530:20|
 :skolemid |261|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) $a_0@@11))
)) (= $t11@@2 (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_57904| $1_DiemId_DiemIdDomains_$memory) _$t1@@1)))))) (and (and (and (= $t12@@1 (|$addr#$signer| _$t0@@5)) (= $t13@@0 (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_57968| $1_DiemId_DiemIdDomainManager_$memory) 186537453)))) (and (= $t14@@0 ($1_DiemId_DiemIdDomainEvent true ($1_DiemId_DiemIdDomain _$t2@@0) _$t1@@1)) (= _$t0@@5 _$t0@@5))) (and (and (= _$t1@@1 _$t1@@1) (= _$t2@@0 _$t2@@0)) (and (= $t15@@0 (|$addr#$signer| _$t0@@5)) (= $t16@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_53330| $1_Roles_RoleId_$memory) $t15@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53330| $1_Roles_RoleId_$memory) $t15@@0)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453)))))))) (and (=> (= (ControlFlow 0 84757) 87007) anon34_Then_correct@@0) (=> (= (ControlFlow 0 84757) 84850) anon34_Else_correct@@0))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_32802_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_32802| stream@@15) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_32802| stream@@15) v@@42) 0)
 :qid |DiemIdbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemIdbpl.2192:13|
 :skolemid |59|
))) (= (ControlFlow 0 83677) 84757)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (and (= (seq.len (|p#$Mutation_58512| $t7@@1)) 0) (= (seq.len (|p#$Mutation_58512| $t24@@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_38814| $t31@@0)) 0) (= (seq.len (|p#$Mutation_58573| $t34@@0)) 0)) (and (= (seq.len (|p#$Mutation_50681| $t35)) 0) (= (ControlFlow 0 83687) 83677))) inline$$InitEventStore$0$anon0_correct@@6))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 95255) 83687) anon0_correct@@6)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 95255)))
(get-value ((ControlFlow 0 83687)))
(get-value ((ControlFlow 0 83677)))
(get-value ((ControlFlow 0 84757)))
(get-value ((ControlFlow 0 84850)))
(get-value ((ControlFlow 0 84844)))
(get-value ((ControlFlow 0 84886)))
(get-value ((ControlFlow 0 85160)))
(get-value ((ControlFlow 0 85180)))
(get-value ((ControlFlow 0 85202)))
(get-value ((ControlFlow 0 85636)))
(get-value ((ControlFlow 0 85486)))
(get-value ((ControlFlow 0 85480)))
(get-value ((ControlFlow 0 85546)))
(get-value ((ControlFlow 0 85540)))
(get-value ((ControlFlow 0 85576)))
(get-value ((ControlFlow 0 85616)))
(get-value ((ControlFlow 0 85765)))
(get-value ((ControlFlow 0 85735)))
(get-value ((ControlFlow 0 85757)))
(get-value ((ControlFlow 0 85787)))
(get-value ((ControlFlow 0 86192)))
(get-value ((ControlFlow 0 86108)))
(get-value ((ControlFlow 0 86132)))
(get-value ((ControlFlow 0 86412)))
(assert (not (= (ControlFlow 0 86412) (- 97588))))
(check-sat)
