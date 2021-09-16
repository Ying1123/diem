(set-option :print-success false)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_50884 0)) ((($Memory_50884 (|domain#$Memory_50884| |T@[Int]Bool|) (|contents#$Memory_50884| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_54246 0)) ((($Memory_54246 (|domain#$Memory_54246| |T@[Int]Bool|) (|contents#$Memory_54246| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_64527 0)) ((($Memory_64527 (|domain#$Memory_64527| |T@[Int]Bool|) (|contents#$Memory_64527| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_54213 0)) ((($Memory_54213 (|domain#$Memory_54213| |T@[Int]Bool|) (|contents#$Memory_54213| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_54970 0)) ((($Memory_54970 (|domain#$Memory_54970| |T@[Int]Bool|) (|contents#$Memory_54970| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_64831 0)) ((($Memory_64831 (|domain#$Memory_64831| |T@[Int]Bool|) (|contents#$Memory_64831| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_64931 0)) ((($Memory_64931 (|domain#$Memory_64931| |T@[Int]Bool|) (|contents#$Memory_64931| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_64308 0)) ((($Memory_64308 (|domain#$Memory_64308| |T@[Int]Bool|) (|contents#$Memory_64308| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_64393 0)) ((($Memory_64393 (|domain#$Memory_64393| |T@[Int]Bool|) (|contents#$Memory_64393| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_55145 0)) ((($Memory_55145 (|domain#$Memory_55145| |T@[Int]Bool|) (|contents#$Memory_55145| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_55085 0)) ((($Memory_55085 (|domain#$Memory_55085| |T@[Int]Bool|) (|contents#$Memory_55085| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_64661 0)) ((($Memory_64661 (|domain#$Memory_64661| |T@[Int]Bool|) (|contents#$Memory_64661| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_64208 0)) ((($Memory_64208 (|domain#$Memory_64208| |T@[Int]Bool|) (|contents#$Memory_64208| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_63396 0)) ((($Memory_63396 (|domain#$Memory_63396| |T@[Int]Bool|) (|contents#$Memory_63396| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_54180 0)) ((($Memory_54180 (|domain#$Memory_54180| |T@[Int]Bool|) (|contents#$Memory_54180| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_54633 0)) ((($Memory_54633 (|domain#$Memory_54633| |T@[Int]Bool|) (|contents#$Memory_54633| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_53807 0)) ((($Memory_53807 (|domain#$Memory_53807| |T@[Int]Bool|) (|contents#$Memory_53807| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_53685 0)) ((($Memory_53685 (|domain#$Memory_53685| |T@[Int]Bool|) (|contents#$Memory_53685| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| (Seq Int)) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| (Seq Int)) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_33654 0)) (((Multiset_33654 (|v#Multiset_33654| |T@[$EventRep]Int|) (|l#Multiset_33654| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_33654| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_33654|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_66915 0)) ((($Mutation_66915 (|l#$Mutation_66915| T@$Location) (|p#$Mutation_66915| (Seq Int)) (|v#$Mutation_66915| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) ) ))
(declare-datatypes ((T@$Mutation_63342 0)) ((($Mutation_63342 (|l#$Mutation_63342| T@$Location) (|p#$Mutation_63342| (Seq Int)) (|v#$Mutation_63342| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_63302 0)) ((($Mutation_63302 (|l#$Mutation_63302| T@$Location) (|p#$Mutation_63302| (Seq Int)) (|v#$Mutation_63302| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_51515 0)) ((($Mutation_51515 (|l#$Mutation_51515| T@$Location) (|p#$Mutation_51515| (Seq Int)) (|v#$Mutation_51515| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_10069 0)) ((($Mutation_10069 (|l#$Mutation_10069| T@$Location) (|p#$Mutation_10069| (Seq Int)) (|v#$Mutation_10069| Int) ) ) ))
(declare-datatypes ((T@$Mutation_48134 0)) ((($Mutation_48134 (|l#$Mutation_48134| T@$Location) (|p#$Mutation_48134| (Seq Int)) (|v#$Mutation_48134| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_46844 0)) ((($Mutation_46844 (|l#$Mutation_46844| T@$Location) (|p#$Mutation_46844| (Seq Int)) (|v#$Mutation_46844| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_46098 0)) ((($Mutation_46098 (|l#$Mutation_46098| T@$Location) (|p#$Mutation_46098| (Seq Int)) (|v#$Mutation_46098| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_44694 0)) ((($Mutation_44694 (|l#$Mutation_44694| T@$Location) (|p#$Mutation_44694| (Seq Int)) (|v#$Mutation_44694| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_43948 0)) ((($Mutation_43948 (|l#$Mutation_43948| T@$Location) (|p#$Mutation_43948| (Seq Int)) (|v#$Mutation_43948| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_42544 0)) ((($Mutation_42544 (|l#$Mutation_42544| T@$Location) (|p#$Mutation_42544| (Seq Int)) (|v#$Mutation_42544| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_41798 0)) ((($Mutation_41798 (|l#$Mutation_41798| T@$Location) (|p#$Mutation_41798| (Seq Int)) (|v#$Mutation_41798| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_40394 0)) ((($Mutation_40394 (|l#$Mutation_40394| T@$Location) (|p#$Mutation_40394| (Seq Int)) (|v#$Mutation_40394| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_39648 0)) ((($Mutation_39648 (|l#$Mutation_39648| T@$Location) (|p#$Mutation_39648| (Seq Int)) (|v#$Mutation_39648| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_38244 0)) ((($Mutation_38244 (|l#$Mutation_38244| T@$Location) (|p#$Mutation_38244| (Seq Int)) (|v#$Mutation_38244| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_37498 0)) ((($Mutation_37498 (|l#$Mutation_37498| T@$Location) (|p#$Mutation_37498| (Seq Int)) (|v#$Mutation_37498| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_36056 0)) ((($Mutation_36056 (|l#$Mutation_36056| T@$Location) (|p#$Mutation_36056| (Seq Int)) (|v#$Mutation_36056| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_35310 0)) ((($Mutation_35310 (|l#$Mutation_35310| T@$Location) (|p#$Mutation_35310| (Seq Int)) (|v#$Mutation_35310| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_33654_| (|T@[$1_Event_EventHandle]Multiset_33654| T@$1_Event_EventHandle) T@Multiset_33654)
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
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemAccount'| (T@$1_DiemAccount_DiemAccount) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun ReverseVec_9922 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_30310 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_29522 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_29719 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_29916 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_30113 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_29325 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_33654| |T@[$1_Event_EventHandle]Multiset_33654|) |T@[$1_Event_EventHandle]Multiset_33654|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorConfigbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorConfigbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorConfigbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorConfigbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorConfigbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorConfigbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorConfigbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorConfigbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |ValidatorConfigbpl.595:13|
 :skolemid |15|
))))
 :qid |ValidatorConfigbpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ValidatorConfigbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ValidatorConfigbpl.608:17|
 :skolemid |18|
)))))
 :qid |ValidatorConfigbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |ValidatorConfigbpl.775:13|
 :skolemid |20|
))))
 :qid |ValidatorConfigbpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |ValidatorConfigbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |ValidatorConfigbpl.788:17|
 :skolemid |23|
)))))
 :qid |ValidatorConfigbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |ValidatorConfigbpl.955:13|
 :skolemid |25|
))))
 :qid |ValidatorConfigbpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |ValidatorConfigbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |ValidatorConfigbpl.968:17|
 :skolemid |28|
)))))
 :qid |ValidatorConfigbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |ValidatorConfigbpl.1135:13|
 :skolemid |30|
))))
 :qid |ValidatorConfigbpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |ValidatorConfigbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |ValidatorConfigbpl.1148:17|
 :skolemid |33|
)))))
 :qid |ValidatorConfigbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@12 i@@12)))
 :qid |ValidatorConfigbpl.1315:13|
 :skolemid |35|
))))
 :qid |ValidatorConfigbpl.1313:50|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_VASPDomain_VASPDomain)) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@13 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |ValidatorConfigbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |ValidatorConfigbpl.1328:17|
 :skolemid |38|
)))))
 :qid |ValidatorConfigbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@14 i@@15)))
 :qid |ValidatorConfigbpl.1495:13|
 :skolemid |40|
))))
 :qid |ValidatorConfigbpl.1493:51|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 (Seq T@$1_ValidatorConfig_Config)) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@16 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |ValidatorConfigbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |ValidatorConfigbpl.1508:17|
 :skolemid |43|
)))))
 :qid |ValidatorConfigbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'address'| (seq.nth v@@16 i@@18)))
 :qid |ValidatorConfigbpl.1675:13|
 :skolemid |45|
))))
 :qid |ValidatorConfigbpl.1673:33|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'address''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'address'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |ValidatorConfigbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |ValidatorConfigbpl.1688:17|
 :skolemid |48|
)))))
 :qid |ValidatorConfigbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'address'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'u8'| (seq.nth v@@18 i@@21)))
 :qid |ValidatorConfigbpl.1855:13|
 :skolemid |50|
))))
 :qid |ValidatorConfigbpl.1853:28|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'u8''| v@@18))
)))
(assert (forall ((v@@19 (Seq Int)) (e@@6 Int) ) (! (let ((i@@22 (|$IndexOfVec'u8'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |ValidatorConfigbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |ValidatorConfigbpl.1868:17|
 :skolemid |53|
)))))
 :qid |ValidatorConfigbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'u8'| v@@19 e@@6))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ValidatorConfigbpl.2041:15|
 :skolemid |55|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ValidatorConfigbpl.2057:15|
 :skolemid |56|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorConfigbpl.2128:15|
 :skolemid |57|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorConfigbpl.2131:15|
 :skolemid |58|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_33654_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_33654| stream) 0) (forall ((v@@20 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_33654| stream) v@@20) 0)
 :qid |ValidatorConfigbpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigbpl.2192:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h) true)
 :qid |ValidatorConfigbpl.2233:80|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@1 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@1) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@1)))
 :qid |ValidatorConfigbpl.2239:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@1) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0) true)
 :qid |ValidatorConfigbpl.2289:78|
 :skolemid |63|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@2 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@2)))
 :qid |ValidatorConfigbpl.2295:15|
 :skolemid |64|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1) true)
 :qid |ValidatorConfigbpl.2345:74|
 :skolemid |65|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DiemAccount_SentPaymentEvent) (v2@@3 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@3)))
 :qid |ValidatorConfigbpl.2351:15|
 :skolemid |66|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@2) true)
 :qid |ValidatorConfigbpl.2401:82|
 :skolemid |67|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@4 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@4) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@4)))
 :qid |ValidatorConfigbpl.2407:15|
 :skolemid |68|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@4) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@3) true)
 :qid |ValidatorConfigbpl.2457:88|
 :skolemid |69|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@5 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@5)))
 :qid |ValidatorConfigbpl.2463:15|
 :skolemid |70|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@5) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@4) true)
 :qid |ValidatorConfigbpl.2513:72|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_VASPDomain_VASPDomainEvent) (v2@@6 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@6) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@6)))
 :qid |ValidatorConfigbpl.2519:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@6) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@6))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |ValidatorConfigbpl.2588:61|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |ValidatorConfigbpl.2652:36|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |ValidatorConfigbpl.3050:71|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |ValidatorConfigbpl.3156:46|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |ValidatorConfigbpl.3169:64|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |ValidatorConfigbpl.3182:75|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |ValidatorConfigbpl.3195:72|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |ValidatorConfigbpl.3244:55|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |ValidatorConfigbpl.3266:46|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |ValidatorConfigbpl.6186:49|
 :skolemid |257|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |ValidatorConfigbpl.6211:71|
 :skolemid |258|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@10)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@10))))
 :qid |ValidatorConfigbpl.6233:45|
 :skolemid |259|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@11)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@11))))
 :qid |ValidatorConfigbpl.6256:48|
 :skolemid |260|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11))
)))
(assert (forall ((s@@12 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@12)))
 :qid |ValidatorConfigbpl.6272:45|
 :skolemid |261|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@13)))
 :qid |ValidatorConfigbpl.6285:45|
 :skolemid |262|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13))
)))
(assert (forall ((s@@14 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@14) true)
 :qid |ValidatorConfigbpl.6298:31|
 :skolemid |263|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@14))
)))
(assert (forall ((s@@15 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@15) true)
 :qid |ValidatorConfigbpl.6311:31|
 :skolemid |264|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@15))
)))
(assert (forall ((s@@16 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@16)))
 :qid |ValidatorConfigbpl.6324:45|
 :skolemid |265|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16))
)))
(assert (forall ((s@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@17))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@17))))
 :qid |ValidatorConfigbpl.6343:50|
 :skolemid |266|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17))
)))
(assert (forall ((s@@18 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@18)))
 :qid |ValidatorConfigbpl.6358:52|
 :skolemid |267|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18))
)))
(assert (forall ((s@@19 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@19)))
 :qid |ValidatorConfigbpl.6372:46|
 :skolemid |268|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19))
)))
(assert (forall ((s@@20 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@20) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@20)))
 :qid |ValidatorConfigbpl.6396:38|
 :skolemid |269|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@20))
)))
(assert (forall ((s@@21 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@21) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@21)))
 :qid |ValidatorConfigbpl.6410:39|
 :skolemid |270|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@22)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@22))))
 :qid |ValidatorConfigbpl.6437:60|
 :skolemid |271|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23))))
 :qid |ValidatorConfigbpl.6454:66|
 :skolemid |272|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@24)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@24)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@24))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@24))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@24))))
 :qid |ValidatorConfigbpl.6483:50|
 :skolemid |273|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@25) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@25)))
 :qid |ValidatorConfigbpl.6502:45|
 :skolemid |274|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@26) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@26)))
 :qid |ValidatorConfigbpl.6516:47|
 :skolemid |275|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@27)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@27)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@27))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@27))))
 :qid |ValidatorConfigbpl.6536:58|
 :skolemid |276|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@27))
)))
(assert (forall ((s@@28 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@28) true)
 :qid |ValidatorConfigbpl.6551:51|
 :skolemid |277|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@28))
)))
(assert (forall ((s@@29 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@29)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@29)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@29))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@29))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@29))))
 :qid |ValidatorConfigbpl.6585:47|
 :skolemid |278|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@29))
)))
(assert (forall ((s@@30 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@30) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@30)))
 :qid |ValidatorConfigbpl.6604:55|
 :skolemid |279|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@31) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@31)))
 :qid |ValidatorConfigbpl.6618:55|
 :skolemid |280|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@32) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@32)))
 :qid |ValidatorConfigbpl.6632:57|
 :skolemid |281|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@32))
)))
(assert (forall ((s@@33 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@33)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@33))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@33))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@33))))
 :qid |ValidatorConfigbpl.6654:56|
 :skolemid |282|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@34)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@34))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@34))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@34))))
 :qid |ValidatorConfigbpl.6679:52|
 :skolemid |283|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@35) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@35)))
 :qid |ValidatorConfigbpl.6695:54|
 :skolemid |284|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@35))
)))
(assert (forall ((v@@21 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_9922 v@@21)))
 (and (= (seq.len r@@0) (seq.len v@@21)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@0))) (= (seq.nth r@@0 i@@24) (seq.nth v@@21 (- (- (seq.len v@@21) i@@24) 1))))
 :qid |ValidatorConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@24))
))))
 :qid |ValidatorConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_9922 v@@21))
)))
(assert (forall ((v@@22 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_30310 v@@22)))
 (and (= (seq.len r@@1) (seq.len v@@22)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@1))) (= (seq.nth r@@1 i@@25) (seq.nth v@@22 (- (- (seq.len v@@22) i@@25) 1))))
 :qid |ValidatorConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@25))
))))
 :qid |ValidatorConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_30310 v@@22))
)))
(assert (forall ((v@@23 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_29522 v@@23)))
 (and (= (seq.len r@@2) (seq.len v@@23)) (forall ((i@@26 Int) ) (!  (=> (and (>= i@@26 0) (< i@@26 (seq.len r@@2))) (= (seq.nth r@@2 i@@26) (seq.nth v@@23 (- (- (seq.len v@@23) i@@26) 1))))
 :qid |ValidatorConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@26))
))))
 :qid |ValidatorConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_29522 v@@23))
)))
(assert (forall ((v@@24 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_29719 v@@24)))
 (and (= (seq.len r@@3) (seq.len v@@24)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len r@@3))) (= (seq.nth r@@3 i@@27) (seq.nth v@@24 (- (- (seq.len v@@24) i@@27) 1))))
 :qid |ValidatorConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@27))
))))
 :qid |ValidatorConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_29719 v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_29916 v@@25)))
 (and (= (seq.len r@@4) (seq.len v@@25)) (forall ((i@@28 Int) ) (!  (=> (and (>= i@@28 0) (< i@@28 (seq.len r@@4))) (= (seq.nth r@@4 i@@28) (seq.nth v@@25 (- (- (seq.len v@@25) i@@28) 1))))
 :qid |ValidatorConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@28))
))))
 :qid |ValidatorConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_29916 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@5 (ReverseVec_30113 v@@26)))
 (and (= (seq.len r@@5) (seq.len v@@26)) (forall ((i@@29 Int) ) (!  (=> (and (>= i@@29 0) (< i@@29 (seq.len r@@5))) (= (seq.nth r@@5 i@@29) (seq.nth v@@26 (- (- (seq.len v@@26) i@@29) 1))))
 :qid |ValidatorConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@29))
))))
 :qid |ValidatorConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_30113 v@@26))
)))
(assert (forall ((v@@27 (Seq |T@#0|)) ) (! (let ((r@@6 (ReverseVec_29325 v@@27)))
 (and (= (seq.len r@@6) (seq.len v@@27)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@6))) (= (seq.nth r@@6 i@@30) (seq.nth v@@27 (- (- (seq.len v@@27) i@@30) 1))))
 :qid |ValidatorConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@30))
))))
 :qid |ValidatorConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_29325 v@@27))
)))
(assert (forall ((|l#0| Bool) (i@@31 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@31) |l#0|)
 :qid |ValidatorConfigbpl.250:54|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@31))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_33654|) (|l#1| |T@[$1_Event_EventHandle]Multiset_33654|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_33654_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_33654| (|Select__T@[$1_Event_EventHandle]Multiset_33654_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_33654| (|Select__T@[$1_Event_EventHandle]Multiset_33654_| |l#1| handle@@0))))
(Multiset_33654 (|lambda#3| (|v#Multiset_33654| (|Select__T@[$1_Event_EventHandle]Multiset_33654_| |l#0@@0| handle@@0)) (|v#Multiset_33654| (|Select__T@[$1_Event_EventHandle]Multiset_33654_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorConfigbpl.2202:13|
 :skolemid |286|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_33654_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@28) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@28) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@28)))
 :qid |ValidatorConfigbpl.129:29|
 :skolemid |287|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@28))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_53807)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_53807)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_54633)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_54180)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_54213)
(declare-fun |Select__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int) T@$1_DualAttestation_Limit)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_54970)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_54246)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_55085)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_55145)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_53807)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun $t11@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(declare-fun $t9 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $t4 () Int)
(declare-fun $t5 () Int)
(declare-fun $es () T@$EventStore)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $t8@1 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t9@0 () (Seq Int))
(declare-fun _$t0@@0 () Int)
(declare-fun $t7@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t8 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t8@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t4@0 () Bool)
(declare-fun $t6 () Int)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@1 () T@$Memory_54180)
(declare-fun $t5@@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_53685)
(declare-fun $t6@@0 () Int)
(declare-fun _$t1@@0 () T@$signer)
(declare-fun $t7 () Int)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $t9@0@@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0 () T@$Memory_54180)
(declare-fun |Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int T@$1_ValidatorConfig_ValidatorConfig) |T@[Int]$1_ValidatorConfig_ValidatorConfig|)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun $t21@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t19 () |T@$1_Option_Option'$1_ValidatorConfig_Config'|)
(declare-fun $t20 () |T@$1_Option_Option'address'|)
(declare-fun _$t2 () (Seq Int))
(declare-fun $t18 () Int)
(declare-fun $t15@0 () Bool)
(declare-fun $t13 () Bool)
(declare-fun $t14 () Int)
(declare-fun $t12 () Int)
(declare-fun $t9@@0 () Int)
(declare-fun $t11 () Bool)
(declare-fun $t10 () Int)
(declare-fun $t8@@0 () Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
; Valid
(declare-fun _$t0@@2 () Int)
(declare-fun $t1@0 () Bool)
; Valid
(declare-fun $t16 () Bool)
(declare-fun $t15 () T@$1_ValidatorConfig_Config)
(declare-fun $t11@0@@0 () |T@$1_Option_Option'$1_ValidatorConfig_Config'|)
(declare-fun _$t0@@3 () Int)
(declare-fun $t7@0@@0 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun $t12@@0 () Bool)
(declare-fun $t14@@0 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t10@1 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t10@@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t10@0@@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1 () Bool)
(declare-fun $t9@@1 () Int)
; Valid
(declare-fun _$t0@@4 () T@$1_ValidatorConfig_Config)
(declare-fun $t1@0@@0 () (Seq Int))
; Valid
(declare-fun $t17 () Bool)
(declare-fun $t16@@0 () Int)
(declare-fun $t15@0@@0 () |T@$1_Option_Option'address'|)
(declare-fun _$t0@@5 () Int)
(declare-fun $t9@0@@1 () Int)
(declare-fun $t9@@2 () Int)
(declare-fun $t12@@1 () Bool)
(declare-fun $t10@1@@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t14@@1 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $t11@0@@1 () |T@$1_Option_Option'address'|)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t10@@1 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t10@0@@1 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t6@0@@0 () Bool)
(declare-fun $t8@@1 () Int)
; Valid
(declare-fun _$t0@@6 () T@$1_ValidatorConfig_Config)
(declare-fun $t1@0@@1 () (Seq Int))
; Valid
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t1@0@@2 () Bool)
(declare-fun _$t0@@7 () Int)
(declare-fun $t5@0 () |T@$1_Option_Option'$1_ValidatorConfig_Config'|)
(declare-fun $t3@1 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t6@@1 () Bool)
(declare-fun $t3 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t3@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t2@0 () Bool)
; Valid
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $t15@0@@1 () T@$Mutation_63342)
(declare-fun $t14@1 () T@$Mutation_63302)
(declare-fun $t15@1 () T@$Mutation_63342)
(declare-fun $t13@@0 () |T@$1_Option_Option'address'|)
(declare-fun $t14@2 () T@$Mutation_63302)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@0 () T@$Memory_54180)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_63396)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t5@@1 () Int)
(declare-fun $t4@@0 () Int)
(declare-fun _$t0@@8 () T@$signer)
(declare-fun $t8@0@@0 () Int)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $t14@@2 () T@$Mutation_63302)
(declare-fun $t9@@3 () Int)
(declare-fun $t14@0 () T@$Mutation_63302)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 () Bool)
(declare-fun $t12@@2 () Int)
(declare-fun $t7@@1 () Bool)
(declare-fun $t6@@2 () Int)
(declare-fun $t8@@2 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_64208)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_64308)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_64393)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_64527)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_64661)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_64831)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_64931)
(declare-fun $t15@@0 () T@$Mutation_63342)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_remove_operator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 95062) (let ((anon18_Else_correct@@2  (=> (and (and (not $abort_flag@0@@5) (= $t15@0@@1 ($Mutation_63342 (|l#$Mutation_63302| $t14@1) (seq.++ (|p#$Mutation_63302| $t14@1) (seq.unit 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_63302| $t14@1))))) (and (= $t15@1 ($Mutation_63342 (|l#$Mutation_63342| $t15@0@@1) (|p#$Mutation_63342| $t15@0@@1) $t13@@0)) (= $t14@2 ($Mutation_63302 (|l#$Mutation_63302| $t14@1) (|p#$Mutation_63302| $t14@1) ($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_63302| $t14@1)) (|v#$Mutation_63342| $t15@1) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_63302| $t14@1))))))) (and (=> (= (ControlFlow 0 84666) (- 0 96444)) (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_63302| $t14@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_63302| $t14@2)))) 1) (and (=> (= (ControlFlow 0 84666) (- 0 96457)) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_63302| $t14@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_63302| $t14@2)))) 1) (=> (= $1_ValidatorConfig_ValidatorConfig_$memory@0@@0 ($Memory_54180 (|Store__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_63302| $t14@2)) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_63302| $t14@2)) (|v#$Mutation_63302| $t14@2)))) (and (=> (= (ControlFlow 0 84666) (- 0 96501)) (forall ((a@@9 Int) ) (!  (=> (|$IsValid'address'| a@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) a@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) a@@9)) (=> (not (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) a@@9)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) a@@9)))) (and ($1_Signer_is_txn_signer_addr a@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) a@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) a@@9)) 3))))))
 :qid |ValidatorConfigbpl.5081:15|
 :skolemid |194|
))) (=> (forall ((a@@10 Int) ) (!  (=> (|$IsValid'address'| a@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) a@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) a@@10)) (=> (not (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) a@@10)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) a@@10)))) (and ($1_Signer_is_txn_signer_addr a@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) a@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) a@@10)) 3))))))
 :qid |ValidatorConfigbpl.5081:15|
 :skolemid |194|
)) (and (=> (= (ControlFlow 0 84666) (- 0 96559)) (forall ((validator@@1 Int) ) (!  (=> (|$IsValid'address'| validator@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@1)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) validator@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) validator@@1)))) 0)))))
 :qid |ValidatorConfigbpl.5087:15|
 :skolemid |195|
))) (=> (forall ((validator@@2 Int) ) (!  (=> (|$IsValid'address'| validator@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@2) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@2)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) validator@@2) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) validator@@2)))) 0)))))
 :qid |ValidatorConfigbpl.5087:15|
 :skolemid |195|
)) (and (=> (= (ControlFlow 0 84666) (- 0 96583)) (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@85) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@85)) 3))))
 :qid |ValidatorConfigbpl.5093:15|
 :skolemid |196|
))) (=> (forall ((addr@@86 Int) ) (!  (=> (|$IsValid'address'| addr@@86) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@86) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@86)) 3))))
 :qid |ValidatorConfigbpl.5093:15|
 :skolemid |196|
)) (and (=> (= (ControlFlow 0 84666) (- 0 96608)) (forall ((addr@@87 Int) ) (!  (=> (|$IsValid'address'| addr@@87) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@87) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@87)) 3))))
 :qid |ValidatorConfigbpl.5099:15|
 :skolemid |197|
))) (=> (forall ((addr@@88 Int) ) (!  (=> (|$IsValid'address'| addr@@88) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@88) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@88)) 3))))
 :qid |ValidatorConfigbpl.5099:15|
 :skolemid |197|
)) (and (=> (= (ControlFlow 0 84666) (- 0 96633)) (forall ((addr@@89 Int) ) (!  (=> (|$IsValid'address'| addr@@89) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@89) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@89)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@89)) 3))))
 :qid |ValidatorConfigbpl.5105:15|
 :skolemid |198|
))) (=> (forall ((addr@@90 Int) ) (!  (=> (|$IsValid'address'| addr@@90) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@90) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@90)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@90)) 3))))
 :qid |ValidatorConfigbpl.5105:15|
 :skolemid |198|
)) (and (=> (= (ControlFlow 0 84666) (- 0 96658)) (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@91 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@91))))) (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@92 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@92))))))) (forall ((addr@@93 Int) ) (!  (=> (|$IsValid'address'| addr@@93) (=> (let (($range_0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@94 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@94))))))))
(exists (($i_1 Int) ) (!  (and ($InRange $range_0 $i_1) (let ((i@@32 $i_1))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@95 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@95)))) i@@32)) addr@@93) (not (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@96 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@96)))) i@@32)) (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@97 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@97)))) i@@32)))))))
 :qid |ValidatorConfigbpl.5111:823|
 :skolemid |199|
))) (exists ((a@@11 Int) ) (!  (and (|$IsValid'address'| a@@11) (and ($1_Signer_is_txn_signer_addr a@@11) (= (let ((t_ref@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@93)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@1)) 0)) a@@11)))
 :qid |ValidatorConfigbpl.5112:674|
 :skolemid |200|
))))
 :qid |ValidatorConfigbpl.5111:592|
 :skolemid |201|
)))) (=> (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@98 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@98))))) (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@99 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@99))))))) (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (let (($range_0@@0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@101 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@101))))))))
(exists (($i_1@@0 Int) ) (!  (and ($InRange $range_0@@0 $i_1@@0) (let ((i@@33 $i_1@@0))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@102 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@102)))) i@@33)) addr@@100) (not (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@103 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@103)))) i@@33)) (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@104 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@104)))) i@@33)))))))
 :qid |ValidatorConfigbpl.5111:823|
 :skolemid |199|
))) (exists ((a@@12 Int) ) (!  (and (|$IsValid'address'| a@@12) (and ($1_Signer_is_txn_signer_addr a@@12) (= (let ((t_ref@@2 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@100)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@2)) 0)) a@@12)))
 :qid |ValidatorConfigbpl.5112:674|
 :skolemid |200|
))))
 :qid |ValidatorConfigbpl.5111:592|
 :skolemid |201|
))) (and (=> (= (ControlFlow 0 84666) (- 0 96799)) (forall ((addr@@105 Int) ) (!  (=> (|$IsValid'address'| addr@@105) (= (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@105)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@105) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@105)) 3))))
 :qid |ValidatorConfigbpl.5118:15|
 :skolemid |202|
))) (=> (forall ((addr@@106 Int) ) (!  (=> (|$IsValid'address'| addr@@106) (= (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@106)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@106) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@106)) 3))))
 :qid |ValidatorConfigbpl.5118:15|
 :skolemid |202|
)) (and (=> (= (ControlFlow 0 84666) (- 0 96827)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) $t5@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) $t5@@1))) (and (=> (= (ControlFlow 0 84666) (- 0 96839)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) $t5@@1)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) $t5@@1)) 3))) (and (=> (= (ControlFlow 0 84666) (- 0 96857)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@0))) (and (=> (= (ControlFlow 0 84666) (- 0 96869)) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) (|$addr#$signer| _$t0@@8))))) 0)))) (=> (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) (|$addr#$signer| _$t0@@8))))) 0))) (=> (= (ControlFlow 0 84666) (- 0 96880)) (forall ((addr@@107 Int) ) (!  (=> (|$IsValid'address'| addr@@107) (=> (not (= addr@@107 $t4@@0)) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@107)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@107)))))
 :qid |ValidatorConfigbpl.5147:15|
 :skolemid |203|
)))))))))))))))))))))))))))))))))
(let ((L3_correct@@3  (and (=> (= (ControlFlow 0 84102) (- 0 96306)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) $t5@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) $t5@@1)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@0)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) $t5@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) $t5@@1)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@0))) (=> (= (ControlFlow 0 84102) (- 0 96337)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) $t5@@1)) (= 5 $t8@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) $t5@@1)) 3)) (= 3 $t8@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@0)) (= 5 $t8@0@@0))))))))
(let ((anon18_Then_correct@@2  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t8@0@@0 $abort_code@1@@5) (= (ControlFlow 0 84680) 84102))) L3_correct@@3)))
(let ((anon17_Then$1_correct  (=> (= $t14@1 $t14@@2) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 84732) 84680) anon18_Then_correct@@2) (=> (= (ControlFlow 0 84732) 84666) anon18_Else_correct@@2))))))
(let ((anon17_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) $t9@@3)) (= (ControlFlow 0 84730) 84732)) anon17_Then$1_correct)))
(let ((anon17_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) $t9@@3) (=> (and (and (= $t14@0 ($Mutation_63302 ($Global $t9@@3) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) $t9@@3))) (= $t14@1 $t14@0)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 84150) 84680) anon18_Then_correct@@2) (=> (= (ControlFlow 0 84150) 84666) anon18_Else_correct@@2))))))
(let ((anon16_Then_correct@@1  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 (=> (and (and (|$IsValid'$1_Option_Option'address''| $t13@@0) (<= (seq.len (|$vec#$1_Option_Option'address'| $t13@@0)) 1)) (= $t13@@0 (|$1_Option_Option'address'| (as seq.empty (Seq Int))))) (and (=> (= (ControlFlow 0 84128) 84730) anon17_Then_correct@@2) (=> (= (ControlFlow 0 84128) 84150) anon17_Else_correct@@2))))))
(let ((anon16_Else_correct@@1  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0) (= $t12@@2 $t12@@2)) (and (= $t8@0@@0 $t12@@2) (= (ControlFlow 0 84002) 84102))) L3_correct@@3)))
(let ((anon15_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t12@@2) (= $t12@@2 5)) (and (= $t12@@2 $t12@@2) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 83986) 84128) anon16_Then_correct@@1) (=> (= (ControlFlow 0 83986) 84002) anon16_Else_correct@@1))))))
(let ((anon14_Then_correct  (=> $t7@@1 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) $t6@@2)) (= 5 $t8@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) $t6@@2)) 3)) (= 3 $t8@@2))) (= $t8@@2 $t8@@2)) (and (= $t8@0@@0 $t8@@2) (= (ControlFlow 0 84798) 84102))) L3_correct@@3))))
(let ((anon15_Then_correct@@0 true))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@0  (=> (= $t9@@3 $t9@@3) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) $t9@@3)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 83944) 84746) anon15_Then_correct@@0) (=> (= (ControlFlow 0 83944) 83986) anon15_Else_correct@@0))))))
(let ((anon14_Else_correct  (=> (not $t7@@1) (=> (and (and (|$IsValid'address'| $t9@@3) (= $t9@@3 (|$addr#$signer| _$t0@@8))) (and (= $t9@@3 $t9@@3) (= (ControlFlow 0 83950) 83944))) inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@0))))
(let ((anon0$1_correct@@8  (=> (and (and (forall ((addr@@108 Int) ) (!  (=> (|$IsValid'address'| addr@@108) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@108) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@108)) 0)) (= addr@@108 173345816)))
 :qid |ValidatorConfigbpl.4786:20|
 :skolemid |166|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_53685| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) 173345816)) 0)))) (and (forall ((addr@@109 Int) ) (!  (=> (|$IsValid'address'| addr@@109) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@109) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@109)) 1)) (= addr@@109 186537453)))
 :qid |ValidatorConfigbpl.4794:20|
 :skolemid |167|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_53685| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) 186537453)) 1))))) (=> (and (and (and (forall ((addr@@110 Int) ) (!  (=> (|$IsValid'address'| addr@@110) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@110) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@110)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@110) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@110)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@110) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@110)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@110) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@110)) 2))))))
 :qid |ValidatorConfigbpl.4802:20|
 :skolemid |168|
)) (forall ((addr@@111 Int) ) (!  (=> (|$IsValid'address'| addr@@111) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@111)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@111)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@111)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@111)) 2))))))
 :qid |ValidatorConfigbpl.4806:20|
 :skolemid |169|
))) (and (forall ((addr@@112 Int) ) (!  (=> (|$IsValid'address'| addr@@112) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@112)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@112)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@112)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@112)) 2))))))
 :qid |ValidatorConfigbpl.4810:20|
 :skolemid |170|
)) (forall ((addr@@113 Int) ) (!  (=> (|$IsValid'address'| addr@@113) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@113)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@113)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@113)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@113)) 2))))))
 :qid |ValidatorConfigbpl.4814:20|
 :skolemid |171|
)))) (and (and (forall ((addr@@114 Int) ) (!  (=> (|$IsValid'address'| addr@@114) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@114)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@114)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@114)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@114)) 2)))))
 :qid |ValidatorConfigbpl.4818:20|
 :skolemid |172|
)) (forall ((addr@@115 Int) ) (!  (=> (|$IsValid'address'| addr@@115) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@115)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@115)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@115)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@115)) 2)))))
 :qid |ValidatorConfigbpl.4822:20|
 :skolemid |173|
))) (and (forall ((addr@@116 Int) ) (!  (=> (|$IsValid'address'| addr@@116) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@116)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@116)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@116)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@116)) 2)))))
 :qid |ValidatorConfigbpl.4826:20|
 :skolemid |174|
)) (forall ((addr@@117 Int) ) (!  (=> (|$IsValid'address'| addr@@117) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54633| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@117) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@117) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@117)) 4))))
 :qid |ValidatorConfigbpl.4830:20|
 :skolemid |175|
))))) (=> (and (and (and (and (forall ((addr@@118 Int) ) (!  (=> (|$IsValid'address'| addr@@118) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@118) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@118) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@118)) 3))))
 :qid |ValidatorConfigbpl.4834:20|
 :skolemid |176|
)) (forall ((addr@@119 Int) ) (!  (=> (|$IsValid'address'| addr@@119) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@119) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@119) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@119)) 3))))
 :qid |ValidatorConfigbpl.4838:20|
 :skolemid |177|
))) (and (forall ((addr@@120 Int) ) (!  (=> (|$IsValid'address'| addr@@120) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@120) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@120)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@120) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@120)) 3))))
 :qid |ValidatorConfigbpl.4842:20|
 :skolemid |178|
)) (let (($range_0@@1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@121 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@121))))))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i1 $i_1@@1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@122 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@122)))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@122 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_63396| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@122)))) i1)))) 3))))
 :qid |ValidatorConfigbpl.4846:151|
 :skolemid |179|
))))) (and (and (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54970| $1_DualAttestation_Credential_$memory) addr1@@3) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr1@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr1@@3)) 2)))))
 :qid |ValidatorConfigbpl.4851:20|
 :skolemid |180|
)) (forall ((addr@@123 Int) ) (!  (=> (|$IsValid'address'| addr@@123) (= (|Select__T@[Int]Bool_| (|domain#$Memory_64208| $1_DiemAccount_DiemAccount_$memory) addr@@123) (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@123)))
 :qid |ValidatorConfigbpl.4855:20|
 :skolemid |181|
))) (and (forall ((addr@@124 Int) ) (!  (=> (|$IsValid'address'| addr@@124) (= (|Select__T@[Int]Bool_| (|domain#$Memory_64308| $1_VASPDomain_VASPDomainManager_$memory) addr@@124)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@124) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@124)) 1))))
 :qid |ValidatorConfigbpl.4859:20|
 :skolemid |182|
)) (forall ((addr@@125 Int) ) (!  (=> (|$IsValid'address'| addr@@125) (= (|Select__T@[Int]Bool_| (|domain#$Memory_64393| $1_VASPDomain_VASPDomains_$memory) addr@@125)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@125) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@125)) 5))))
 :qid |ValidatorConfigbpl.4863:20|
 :skolemid |183|
))))) (and (and (and (forall ((addr@@126 Int) ) (!  (=> (|$IsValid'address'| addr@@126) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_55085| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@126) (|Select__T@[Int]Bool_| (|domain#$Memory_55145| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@126)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@126) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@126)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@126) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@126)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@126) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@126)) 2)))))
 :qid |ValidatorConfigbpl.4867:20|
 :skolemid |184|
)) (forall ((addr@@127 Int) ) (!  (=> (|$IsValid'address'| addr@@127) (= (|Select__T@[Int]Bool_| (|domain#$Memory_64527| $1_DesignatedDealer_Dealer_$memory) addr@@127)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@127) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@127)) 2))))
 :qid |ValidatorConfigbpl.4871:20|
 :skolemid |185|
))) (and (forall ((addr@@128 Int) ) (!  (=> (|$IsValid'address'| addr@@128) (= (|Select__T@[Int]Bool_| (|domain#$Memory_54970| $1_DualAttestation_Credential_$memory) addr@@128)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@128) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@128)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@128) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@128)) 5)))))
 :qid |ValidatorConfigbpl.4875:20|
 :skolemid |186|
)) (forall ((addr@@129 Int) ) (!  (=> (|$IsValid'address'| addr@@129) (= (|Select__T@[Int]Bool_| (|domain#$Memory_64661| $1_SlidingNonce_SlidingNonce_$memory) addr@@129)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@129) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@129)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@129) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@129)) 1)))))
 :qid |ValidatorConfigbpl.4879:20|
 :skolemid |187|
)))) (and (and (forall ((addr@@130 Int) ) (!  (=> (|$IsValid'address'| addr@@130) (= (|Select__T@[Int]Bool_| (|domain#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@130)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@130) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@130)) 3))))
 :qid |ValidatorConfigbpl.4883:20|
 :skolemid |188|
)) (forall ((addr@@131 Int) ) (!  (=> (|$IsValid'address'| addr@@131) (= (|Select__T@[Int]Bool_| (|domain#$Memory_54633| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@131)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@131) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@131)) 4))))
 :qid |ValidatorConfigbpl.4887:20|
 :skolemid |189|
))) (and (forall ((addr@@132 Int) ) (!  (=> (|$IsValid'address'| addr@@132) (= (|Select__T@[Int]Bool_| (|domain#$Memory_64831| $1_VASP_ParentVASP_$memory) addr@@132)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@132) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@132)) 5))))
 :qid |ValidatorConfigbpl.4891:20|
 :skolemid |190|
)) (forall ((addr@@133 Int) ) (!  (=> (|$IsValid'address'| addr@@133) (= (|Select__T@[Int]Bool_| (|domain#$Memory_64931| $1_VASP_ChildVASP_$memory) addr@@133)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) addr@@133) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) addr@@133)) 6))))
 :qid |ValidatorConfigbpl.4895:20|
 :skolemid |191|
)))))) (=> (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@8)) ($1_Signer_is_txn_signer _$t0@@8)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@8))) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |ValidatorConfigbpl.4901:20|
 :skolemid |192|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) $a_0@@8))
))) (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@9)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@9) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@9))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@9))) 1))))
 :qid |ValidatorConfigbpl.4905:20|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54180| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@9))
)) (= $t4@@0 (|$addr#$signer| _$t0@@8)))) (and (and (= $t5@@1 (|$addr#$signer| _$t0@@8)) (= _$t0@@8 _$t0@@8)) (and (= $t6@@2 (|$addr#$signer| _$t0@@8)) (= $t7@@1  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_53807| $1_Roles_RoleId_$memory) $t6@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53807| $1_Roles_RoleId_$memory) $t6@@2)) 3))))))) (and (=> (= (ControlFlow 0 83819) 84798) anon14_Then_correct) (=> (= (ControlFlow 0 83819) 83950) anon14_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_33654_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_33654| stream@@9) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_33654| stream@@9) v@@38) 0)
 :qid |ValidatorConfigbpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigbpl.2192:13|
 :skolemid |59|
))) (= (ControlFlow 0 82963) 83819)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (seq.len (|p#$Mutation_63302| $t14@@2)) 0) (=> (and (= (seq.len (|p#$Mutation_63342| $t15@@0)) 0) (= (ControlFlow 0 82973) 82963)) inline$$InitEventStore$0$anon0_correct@@8))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 95062) 82973) anon0_correct@@8)))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
