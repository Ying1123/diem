(set-option :print-success false)
(set-option :pre-skolem-quant true)
(set-option :dt-share-sel false)
(set-option :ee-mode central)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_56132 0)) ((($Memory_56132 (|domain#$Memory_56132| |T@[Int]Bool|) (|contents#$Memory_56132| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_36036 0)) (((Vec_36036 (|v#Vec_36036| |T@[Int]#0|) (|l#Vec_36036| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_59787 0)) ((($Memory_59787 (|domain#$Memory_59787| |T@[Int]Bool|) (|contents#$Memory_59787| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_70341 0)) ((($Memory_70341 (|domain#$Memory_70341| |T@[Int]Bool|) (|contents#$Memory_70341| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_59754 0)) ((($Memory_59754 (|domain#$Memory_59754| |T@[Int]Bool|) (|contents#$Memory_59754| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_70645 0)) ((($Memory_70645 (|domain#$Memory_70645| |T@[Int]Bool|) (|contents#$Memory_70645| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_70745 0)) ((($Memory_70745 (|domain#$Memory_70745| |T@[Int]Bool|) (|contents#$Memory_70745| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_70122 0)) ((($Memory_70122 (|domain#$Memory_70122| |T@[Int]Bool|) (|contents#$Memory_70122| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_60687 0)) ((($Memory_60687 (|domain#$Memory_60687| |T@[Int]Bool|) (|contents#$Memory_60687| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_60627 0)) ((($Memory_60627 (|domain#$Memory_60627| |T@[Int]Bool|) (|contents#$Memory_60627| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_70475 0)) ((($Memory_70475 (|domain#$Memory_70475| |T@[Int]Bool|) (|contents#$Memory_70475| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_34787 0)) (((Vec_34787 (|v#Vec_34787| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_34787| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_34787) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_34748 0)) (((Vec_34748 (|v#Vec_34748| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_34748| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_34748) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_15835 0)) (((Vec_15835 (|v#Vec_15835| |T@[Int]Int|) (|l#Vec_15835| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_15835) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_70022 0)) ((($Memory_70022 (|domain#$Memory_70022| |T@[Int]Bool|) (|contents#$Memory_70022| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_15835) (|$base_url#$1_DualAttestation_Credential| T@Vec_15835) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_15835) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_60512 0)) ((($Memory_60512 (|domain#$Memory_60512| |T@[Int]Bool|) (|contents#$Memory_60512| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_15835) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_34944 0)) (((Vec_34944 (|v#Vec_34944| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_34944| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_34944) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_70207 0)) ((($Memory_70207 (|domain#$Memory_70207| |T@[Int]Bool|) (|contents#$Memory_70207| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_15835) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_15835) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_15835) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_34709 0)) (((Vec_34709 (|v#Vec_34709| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_34709| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_34709) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_34865 0)) (((Vec_34865 (|v#Vec_34865| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_34865| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_34865) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_69210 0)) ((($Memory_69210 (|domain#$Memory_69210| |T@[Int]Bool|) (|contents#$Memory_69210| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_15835) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_15835) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_59721 0)) ((($Memory_59721 (|domain#$Memory_59721| |T@[Int]Bool|) (|contents#$Memory_59721| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_15835) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_60174 0)) ((($Memory_60174 (|domain#$Memory_60174| |T@[Int]Bool|) (|contents#$Memory_60174| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_59348 0)) ((($Memory_59348 (|domain#$Memory_59348| |T@[Int]Bool|) (|contents#$Memory_59348| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_59226 0)) ((($Memory_59226 (|domain#$Memory_59226| |T@[Int]Bool|) (|contents#$Memory_59226| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_15835) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_15835) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_15835) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_15835) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_15835) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_15835) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_15835) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_34623 0)) (((Multiset_34623 (|v#Multiset_34623| |T@[$EventRep]Int|) (|l#Multiset_34623| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_34623| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_34623|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_72732 0)) ((($Mutation_72732 (|l#$Mutation_72732| T@$Location) (|p#$Mutation_72732| T@Vec_15835) (|v#$Mutation_72732| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) ) ))
(declare-datatypes ((T@$Mutation_69155 0)) ((($Mutation_69155 (|l#$Mutation_69155| T@$Location) (|p#$Mutation_69155| T@Vec_15835) (|v#$Mutation_69155| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_69114 0)) ((($Mutation_69114 (|l#$Mutation_69114| T@$Location) (|p#$Mutation_69114| T@Vec_15835) (|v#$Mutation_69114| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_56810 0)) ((($Mutation_56810 (|l#$Mutation_56810| T@$Location) (|p#$Mutation_56810| T@Vec_15835) (|v#$Mutation_56810| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_10447 0)) ((($Mutation_10447 (|l#$Mutation_10447| T@$Location) (|p#$Mutation_10447| T@Vec_15835) (|v#$Mutation_10447| Int) ) ) ))
(declare-datatypes ((T@$Mutation_52691 0)) ((($Mutation_52691 (|l#$Mutation_52691| T@$Location) (|p#$Mutation_52691| T@Vec_15835) (|v#$Mutation_52691| T@Vec_15835) ) ) ))
(declare-datatypes ((T@$Mutation_51114 0)) ((($Mutation_51114 (|l#$Mutation_51114| T@$Location) (|p#$Mutation_51114| T@Vec_15835) (|v#$Mutation_51114| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_50127 0)) ((($Mutation_50127 (|l#$Mutation_50127| T@$Location) (|p#$Mutation_50127| T@Vec_15835) (|v#$Mutation_50127| T@Vec_34709) ) ) ))
(declare-datatypes ((T@$Mutation_48472 0)) ((($Mutation_48472 (|l#$Mutation_48472| T@$Location) (|p#$Mutation_48472| T@Vec_15835) (|v#$Mutation_48472| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_47485 0)) ((($Mutation_47485 (|l#$Mutation_47485| T@$Location) (|p#$Mutation_47485| T@Vec_15835) (|v#$Mutation_47485| T@Vec_34944) ) ) ))
(declare-datatypes ((T@$Mutation_45807 0)) ((($Mutation_45807 (|l#$Mutation_45807| T@$Location) (|p#$Mutation_45807| T@Vec_15835) (|v#$Mutation_45807| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_44820 0)) ((($Mutation_44820 (|l#$Mutation_44820| T@$Location) (|p#$Mutation_44820| T@Vec_15835) (|v#$Mutation_44820| T@Vec_34865) ) ) ))
(declare-datatypes ((T@$Mutation_43020 0)) ((($Mutation_43020 (|l#$Mutation_43020| T@$Location) (|p#$Mutation_43020| T@Vec_15835) (|v#$Mutation_43020| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_42033 0)) ((($Mutation_42033 (|l#$Mutation_42033| T@$Location) (|p#$Mutation_42033| T@Vec_15835) (|v#$Mutation_42033| T@Vec_34787) ) ) ))
(declare-datatypes ((T@$Mutation_40368 0)) ((($Mutation_40368 (|l#$Mutation_40368| T@$Location) (|p#$Mutation_40368| T@Vec_15835) (|v#$Mutation_40368| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_39381 0)) ((($Mutation_39381 (|l#$Mutation_39381| T@$Location) (|p#$Mutation_39381| T@Vec_15835) (|v#$Mutation_39381| T@Vec_34748) ) ) ))
(declare-datatypes ((T@$Mutation_37668 0)) ((($Mutation_37668 (|l#$Mutation_37668| T@$Location) (|p#$Mutation_37668| T@Vec_15835) (|v#$Mutation_37668| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_36681 0)) ((($Mutation_36681 (|l#$Mutation_36681| T@$Location) (|p#$Mutation_36681| T@Vec_15835) (|v#$Mutation_36681| T@Vec_36036) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_36036 T@Vec_36036) Bool)
(declare-fun InRangeVec_30039 (T@Vec_36036 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_36036) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_36036 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_34748 T@Vec_34748) Bool)
(declare-fun InRangeVec_30240 (T@Vec_34748 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_34748) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_34748 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_34787 T@Vec_34787) Bool)
(declare-fun InRangeVec_30441 (T@Vec_34787 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_34787) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_34787 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_34865 T@Vec_34865) Bool)
(declare-fun InRangeVec_30642 (T@Vec_34865 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_15835 T@Vec_15835) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_34865) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_34865 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_34944 T@Vec_34944) Bool)
(declare-fun InRangeVec_30843 (T@Vec_34944 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_34944) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_34944 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_34709 T@Vec_34709) Bool)
(declare-fun InRangeVec_31044 (T@Vec_34709 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_34709) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_34709 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_15835 T@Vec_15835) Bool)
(declare-fun InRangeVec_9823 (T@Vec_15835 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_15835) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_15835 Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_15835) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_15835 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_15835) T@Vec_15835)
(declare-fun $1_Hash_sha3 (T@Vec_15835) T@Vec_15835)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_15835) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_15835 T@Vec_15835 T@Vec_15835) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_34623_| (|T@[$1_Event_EventHandle]Multiset_34623| T@$1_Event_EventHandle) T@Multiset_34623)
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
(declare-fun IndexOfVec_15835 (T@Vec_15835 Int) Int)
(declare-fun IndexOfVec_34709 (T@Vec_34709 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_34748 (T@Vec_34748 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_34787 (T@Vec_34787 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_34865 (T@Vec_34865 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_34944 (T@Vec_34944 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_36036 (T@Vec_36036 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_34623| |T@[$1_Event_EventHandle]Multiset_34623|) |T@[$1_Event_EventHandle]Multiset_34623|)
(declare-fun |lambda#24| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#22| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorConfigbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorConfigbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorConfigbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorConfigbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorConfigbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorConfigbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorConfigbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorConfigbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_36036) (v2 T@Vec_36036) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_36036| v1) (|l#Vec_36036| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_30039 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_36036| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_36036| v2) i@@0)))
 :qid |ValidatorConfigbpl.615:13|
 :skolemid |17|
))))
 :qid |ValidatorConfigbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_36036) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_36036| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_30039 v@@4 i@@1) true)
 :qid |ValidatorConfigbpl.621:13|
 :skolemid |19|
))))
 :qid |ValidatorConfigbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_36036) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_30039 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_36036| v@@5) i@@3) e))
 :qid |ValidatorConfigbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_30039 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_36036| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_36036| v@@5) j) e)))
 :qid |ValidatorConfigbpl.634:17|
 :skolemid |22|
)))))
 :qid |ValidatorConfigbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_34748) (v2@@0 T@Vec_34748) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_34748| v1@@0) (|l#Vec_34748| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_30240 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v2@@0) i@@4)))
 :qid |ValidatorConfigbpl.796:13|
 :skolemid |24|
))))
 :qid |ValidatorConfigbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_34748) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_34748| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_30240 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@6) i@@5)))
 :qid |ValidatorConfigbpl.802:13|
 :skolemid |26|
))))
 :qid |ValidatorConfigbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_34748) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_30240 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@7) i@@7) e@@0))
 :qid |ValidatorConfigbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_30240 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@7) j@@0) e@@0)))
 :qid |ValidatorConfigbpl.815:17|
 :skolemid |29|
)))))
 :qid |ValidatorConfigbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_34787) (v2@@1 T@Vec_34787) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_34787| v1@@1) (|l#Vec_34787| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_30441 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v2@@1) i@@8)))
 :qid |ValidatorConfigbpl.977:13|
 :skolemid |31|
))))
 :qid |ValidatorConfigbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_34787) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_34787| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_30441 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@8) i@@9)))
 :qid |ValidatorConfigbpl.983:13|
 :skolemid |33|
))))
 :qid |ValidatorConfigbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_34787) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_30441 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@9) i@@11) e@@1))
 :qid |ValidatorConfigbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_30441 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@9) j@@1) e@@1)))
 :qid |ValidatorConfigbpl.996:17|
 :skolemid |36|
)))))
 :qid |ValidatorConfigbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_34865) (v2@@2 T@Vec_34865) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_34865| v1@@2) (|l#Vec_34865| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_30642 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v2@@2) i@@12)))))
 :qid |ValidatorConfigbpl.1158:13|
 :skolemid |38|
))))
 :qid |ValidatorConfigbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_34865) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_34865| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_30642 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@10) i@@13)))
 :qid |ValidatorConfigbpl.1164:13|
 :skolemid |40|
))))
 :qid |ValidatorConfigbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_34865) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_30642 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |ValidatorConfigbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_30642 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |ValidatorConfigbpl.1177:17|
 :skolemid |43|
)))))
 :qid |ValidatorConfigbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_34944) (v2@@3 T@Vec_34944) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3)  (and (= (|l#Vec_34944| v1@@3) (|l#Vec_34944| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_30843 v1@@3 i@@16) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v1@@3) i@@16)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v2@@3) i@@16))))
 :qid |ValidatorConfigbpl.1339:13|
 :skolemid |45|
))))
 :qid |ValidatorConfigbpl.1337:50|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_34944) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_34944| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_30843 v@@12 i@@17) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@12) i@@17)))
 :qid |ValidatorConfigbpl.1345:13|
 :skolemid |47|
))))
 :qid |ValidatorConfigbpl.1343:50|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_34944) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@18 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_30843 v@@13 i@@19)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@13) i@@19)) (|$domain#$1_VASPDomain_VASPDomain| e@@3)))
 :qid |ValidatorConfigbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_30843 v@@13 i@@18)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@13) i@@18)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@13) j@@3)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))))
 :qid |ValidatorConfigbpl.1358:17|
 :skolemid |50|
)))))
 :qid |ValidatorConfigbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_34709) (v2@@4 T@Vec_34709) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4)  (and (= (|l#Vec_34709| v1@@4) (|l#Vec_34709| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_31044 v1@@4 i@@20) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v1@@4) i@@20)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v1@@4) i@@20)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v2@@4) i@@20)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v1@@4) i@@20)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v2@@4) i@@20)))))
 :qid |ValidatorConfigbpl.1520:13|
 :skolemid |52|
))))
 :qid |ValidatorConfigbpl.1518:51|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_34709) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_34709| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_31044 v@@14 i@@21) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@14) i@@21)))
 :qid |ValidatorConfigbpl.1526:13|
 :skolemid |54|
))))
 :qid |ValidatorConfigbpl.1524:51|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_34709) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_31044 v@@15 i@@23)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) i@@23)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) i@@23)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) i@@23)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4))))
 :qid |ValidatorConfigbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_31044 v@@15 i@@22)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) i@@22)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) i@@22)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) i@@22)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) j@@4)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) j@@4)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) j@@4)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))))
 :qid |ValidatorConfigbpl.1539:17|
 :skolemid |57|
)))))
 :qid |ValidatorConfigbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_15835) (v2@@5 T@Vec_15835) ) (! (= (|$IsEqual'vec'address''| v1@@5 v2@@5)  (and (= (|l#Vec_15835| v1@@5) (|l#Vec_15835| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_9823 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_15835| v2@@5) i@@24)))
 :qid |ValidatorConfigbpl.1701:13|
 :skolemid |59|
))))
 :qid |ValidatorConfigbpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'address''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_15835) ) (! (= (|$IsValid'vec'address''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_15835| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_9823 v@@16 i@@25) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_15835| v@@16) i@@25)))
 :qid |ValidatorConfigbpl.1707:13|
 :skolemid |61|
))))
 :qid |ValidatorConfigbpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'address''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_15835) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'address'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_9823 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@17) i@@27) e@@5))
 :qid |ValidatorConfigbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_9823 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@17) j@@5) e@@5)))
 :qid |ValidatorConfigbpl.1720:17|
 :skolemid |64|
)))))
 :qid |ValidatorConfigbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'address'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_15835) (v2@@6 T@Vec_15835) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6)  (and (= (|l#Vec_15835| v1@@6) (|l#Vec_15835| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_9823 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_15835| v2@@6) i@@28)))
 :qid |ValidatorConfigbpl.1882:13|
 :skolemid |66|
))))
 :qid |ValidatorConfigbpl.1880:28|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'u8''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_15835) ) (! (= (|$IsValid'vec'u8''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_15835| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_9823 v@@18 i@@29) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_15835| v@@18) i@@29)))
 :qid |ValidatorConfigbpl.1888:13|
 :skolemid |68|
))))
 :qid |ValidatorConfigbpl.1886:28|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'u8''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_15835) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'u8'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_9823 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@19) i@@31) e@@6))
 :qid |ValidatorConfigbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_9823 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@19) j@@6) e@@6)))
 :qid |ValidatorConfigbpl.1901:17|
 :skolemid |71|
)))))
 :qid |ValidatorConfigbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'u8'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_15835) (v2@@7 T@Vec_15835) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7)))
 :qid |ValidatorConfigbpl.2074:15|
 :skolemid |73|
 :pattern ( ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7))
)))
(assert (forall ((v1@@8 T@Vec_15835) (v2@@8 T@Vec_15835) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8)))
 :qid |ValidatorConfigbpl.2090:15|
 :skolemid |74|
 :pattern ( ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8))
)))
(assert (forall ((k1 T@Vec_15835) (k2 T@Vec_15835) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorConfigbpl.2161:15|
 :skolemid |75|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_15835) (s2 T@Vec_15835) (k1@@0 T@Vec_15835) (k2@@0 T@Vec_15835) (m1 T@Vec_15835) (m2 T@Vec_15835) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorConfigbpl.2164:15|
 :skolemid |76|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_34623_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_34623| stream) 0) (forall ((v@@20 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_34623| stream) v@@20) 0)
 :qid |ValidatorConfigbpl.159:13|
 :skolemid |4|
))))
 :qid |ValidatorConfigbpl.2225:13|
 :skolemid |77|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h) true)
 :qid |ValidatorConfigbpl.2266:80|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h))
)))
(assert (forall ((v1@@9 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@9 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@9) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@9)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@9) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@9))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@9) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@9))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@9) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@9)))
 :qid |ValidatorConfigbpl.2272:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@9) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@9))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0) true)
 :qid |ValidatorConfigbpl.2322:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0))
)))
(assert (forall ((v1@@10 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@10 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@10)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@10))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@10))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@10))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@10) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@10)))
 :qid |ValidatorConfigbpl.2328:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@10) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@10))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1) true)
 :qid |ValidatorConfigbpl.2378:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@11 T@$1_DiemAccount_SentPaymentEvent) (v2@@11 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@11)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@11))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@11))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@11))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@11) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@11)))
 :qid |ValidatorConfigbpl.2384:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@11) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@11))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@2) true)
 :qid |ValidatorConfigbpl.2434:82|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@2))
)))
(assert (forall ((v1@@12 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@12 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@12) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@12)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@12) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@12))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@12) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@12)))
 :qid |ValidatorConfigbpl.2440:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@12) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@12))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@3) true)
 :qid |ValidatorConfigbpl.2490:88|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@3))
)))
(assert (forall ((v1@@13 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@13 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@13) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@13)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@13) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@13))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@13) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@13)))
 :qid |ValidatorConfigbpl.2496:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@13) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@13))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@4) true)
 :qid |ValidatorConfigbpl.2546:72|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@4))
)))
(assert (forall ((v1@@14 T@$1_VASPDomain_VASPDomainEvent) (v2@@14 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@14) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@14)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@14)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@14)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@14) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@14))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@14) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@14)))
 :qid |ValidatorConfigbpl.2552:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@14) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@14))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |ValidatorConfigbpl.2621:61|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |ValidatorConfigbpl.2685:36|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |ValidatorConfigbpl.3083:71|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |ValidatorConfigbpl.3188:46|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |ValidatorConfigbpl.3200:64|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |ValidatorConfigbpl.3212:75|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |ValidatorConfigbpl.3224:72|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |ValidatorConfigbpl.3272:55|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |ValidatorConfigbpl.3295:46|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |ValidatorConfigbpl.6216:49|
 :skolemid |275|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |ValidatorConfigbpl.6241:71|
 :skolemid |276|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@10)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@10))))
 :qid |ValidatorConfigbpl.6262:45|
 :skolemid |277|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@11)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@11))))
 :qid |ValidatorConfigbpl.6285:48|
 :skolemid |278|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11))
)))
(assert (forall ((s@@12 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@12)))
 :qid |ValidatorConfigbpl.6303:45|
 :skolemid |279|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@13)))
 :qid |ValidatorConfigbpl.6316:45|
 :skolemid |280|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13))
)))
(assert (forall ((s@@14 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@14) true)
 :qid |ValidatorConfigbpl.6329:31|
 :skolemid |281|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@14))
)))
(assert (forall ((s@@15 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@15) true)
 :qid |ValidatorConfigbpl.6342:31|
 :skolemid |282|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@15))
)))
(assert (forall ((s@@16 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@16)))
 :qid |ValidatorConfigbpl.6355:45|
 :skolemid |283|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16))
)))
(assert (forall ((s@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@17))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@17))))
 :qid |ValidatorConfigbpl.6373:50|
 :skolemid |284|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17))
)))
(assert (forall ((s@@18 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@18)))
 :qid |ValidatorConfigbpl.6389:52|
 :skolemid |285|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18))
)))
(assert (forall ((s@@19 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@19)))
 :qid |ValidatorConfigbpl.6402:46|
 :skolemid |286|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19))
)))
(assert (forall ((s@@20 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@20) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@20)))
 :qid |ValidatorConfigbpl.6425:38|
 :skolemid |287|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@20))
)))
(assert (forall ((s@@21 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@21) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@21)))
 :qid |ValidatorConfigbpl.6439:39|
 :skolemid |288|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@22)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@22))))
 :qid |ValidatorConfigbpl.6466:60|
 :skolemid |289|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23))))
 :qid |ValidatorConfigbpl.6483:66|
 :skolemid |290|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@24)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@24)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@24))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@24))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@24))))
 :qid |ValidatorConfigbpl.6512:50|
 :skolemid |291|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@25) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@25)))
 :qid |ValidatorConfigbpl.6535:45|
 :skolemid |292|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@26) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@26)))
 :qid |ValidatorConfigbpl.6549:47|
 :skolemid |293|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@27)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@27)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@27))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@27))))
 :qid |ValidatorConfigbpl.6568:58|
 :skolemid |294|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@27))
)))
(assert (forall ((s@@28 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@28) true)
 :qid |ValidatorConfigbpl.6584:51|
 :skolemid |295|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@28))
)))
(assert (forall ((s@@29 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@29)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@29)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@29))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@29))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@29))))
 :qid |ValidatorConfigbpl.6618:47|
 :skolemid |296|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@29))
)))
(assert (forall ((s@@30 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@30) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@30)))
 :qid |ValidatorConfigbpl.6641:55|
 :skolemid |297|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@31) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@31)))
 :qid |ValidatorConfigbpl.6655:55|
 :skolemid |298|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@32) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@32)))
 :qid |ValidatorConfigbpl.6669:57|
 :skolemid |299|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@32))
)))
(assert (forall ((s@@33 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@33)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@33))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@33))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@33))))
 :qid |ValidatorConfigbpl.6691:56|
 :skolemid |300|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@34)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@34))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@34))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@34))))
 :qid |ValidatorConfigbpl.6718:52|
 :skolemid |301|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@35) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@35)))
 :qid |ValidatorConfigbpl.6736:54|
 :skolemid |302|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@35))
)))
(assert (forall ((v@@21 T@Vec_36036) (i@@32 Int) ) (! (= (InRangeVec_30039 v@@21 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_36036| v@@21))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_30039 v@@21 i@@32))
)))
(assert (forall ((v@@22 T@Vec_34748) (i@@33 Int) ) (! (= (InRangeVec_30240 v@@22 i@@33)  (and (>= i@@33 0) (< i@@33 (|l#Vec_34748| v@@22))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_30240 v@@22 i@@33))
)))
(assert (forall ((v@@23 T@Vec_34787) (i@@34 Int) ) (! (= (InRangeVec_30441 v@@23 i@@34)  (and (>= i@@34 0) (< i@@34 (|l#Vec_34787| v@@23))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_30441 v@@23 i@@34))
)))
(assert (forall ((v@@24 T@Vec_34865) (i@@35 Int) ) (! (= (InRangeVec_30642 v@@24 i@@35)  (and (>= i@@35 0) (< i@@35 (|l#Vec_34865| v@@24))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_30642 v@@24 i@@35))
)))
(assert (forall ((v@@25 T@Vec_34944) (i@@36 Int) ) (! (= (InRangeVec_30843 v@@25 i@@36)  (and (>= i@@36 0) (< i@@36 (|l#Vec_34944| v@@25))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_30843 v@@25 i@@36))
)))
(assert (forall ((v@@26 T@Vec_34709) (i@@37 Int) ) (! (= (InRangeVec_31044 v@@26 i@@37)  (and (>= i@@37 0) (< i@@37 (|l#Vec_34709| v@@26))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_31044 v@@26 i@@37))
)))
(assert (forall ((v@@27 T@Vec_15835) (i@@38 Int) ) (! (= (InRangeVec_9823 v@@27 i@@38)  (and (>= i@@38 0) (< i@@38 (|l#Vec_15835| v@@27))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9823 v@@27 i@@38))
)))
(assert (forall ((v@@28 T@Vec_15835) (e@@7 Int) ) (! (let ((i@@39 (IndexOfVec_15835 v@@28 e@@7)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_9823 v@@28 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@28) i@@40) e@@7))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_9823 v@@28 i@@39) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@28) i@@39) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@39)) (not (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@28) j@@7) e@@7)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_15835 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_34709) (e@@8 T@$1_ValidatorConfig_Config) ) (! (let ((i@@41 (IndexOfVec_34709 v@@29 e@@8)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_31044 v@@29 i@@42) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@29) i@@42) e@@8))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_31044 v@@29 i@@41) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@29) i@@41) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@41)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@29) j@@8) e@@8)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34709 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_34748) (e@@9 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@43 (IndexOfVec_34748 v@@30 e@@9)))
(ite  (not (exists ((i@@44 Int) ) (!  (and (InRangeVec_30240 v@@30 i@@44) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@30) i@@44) e@@9))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@43 (- 0 1))  (and (and (InRangeVec_30240 v@@30 i@@43) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@30) i@@43) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@43)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@30) j@@9) e@@9)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34748 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_34787) (e@@10 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@45 (IndexOfVec_34787 v@@31 e@@10)))
(ite  (not (exists ((i@@46 Int) ) (!  (and (InRangeVec_30441 v@@31 i@@46) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@31) i@@46) e@@10))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@45 (- 0 1))  (and (and (InRangeVec_30441 v@@31 i@@45) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@31) i@@45) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@45)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@31) j@@10) e@@10)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34787 v@@31 e@@10))
)))
(assert (forall ((v@@32 T@Vec_34865) (e@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@47 (IndexOfVec_34865 v@@32 e@@11)))
(ite  (not (exists ((i@@48 Int) ) (!  (and (InRangeVec_30642 v@@32 i@@48) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@32) i@@48) e@@11))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@47 (- 0 1))  (and (and (InRangeVec_30642 v@@32 i@@47) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@32) i@@47) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@47)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@32) j@@11) e@@11)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34865 v@@32 e@@11))
)))
(assert (forall ((v@@33 T@Vec_34944) (e@@12 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@49 (IndexOfVec_34944 v@@33 e@@12)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_30843 v@@33 i@@50) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@33) i@@50) e@@12))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_30843 v@@33 i@@49) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@33) i@@49) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@49)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@33) j@@12) e@@12)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34944 v@@33 e@@12))
)))
(assert (forall ((v@@34 T@Vec_36036) (e@@13 |T@#0|) ) (! (let ((i@@51 (IndexOfVec_36036 v@@34 e@@13)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_30039 v@@34 i@@52) (= (|Select__T@[Int]#0_| (|v#Vec_36036| v@@34) i@@52) e@@13))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_30039 v@@34 i@@51) (= (|Select__T@[Int]#0_| (|v#Vec_36036| v@@34) i@@51) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@51)) (not (= (|Select__T@[Int]#0_| (|v#Vec_36036| v@@34) j@@13) e@@13)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_36036 v@@34 e@@13))
)))
(assert (forall ((|l#0| Bool) (i@@53 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53) |l#0|)
 :qid |ValidatorConfigbpl.275:54|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_34623|) (|l#1| |T@[$1_Event_EventHandle]Multiset_34623|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_34623_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_34623| (|Select__T@[$1_Event_EventHandle]Multiset_34623_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_34623| (|Select__T@[$1_Event_EventHandle]Multiset_34623_| |l#1| handle@@0))))
(Multiset_34623 (|lambda#24| (|v#Multiset_34623| (|Select__T@[$1_Event_EventHandle]Multiset_34623_| |l#0@@0| handle@@0)) (|v#Multiset_34623| (|Select__T@[$1_Event_EventHandle]Multiset_34623_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorConfigbpl.2235:13|
 :skolemid |304|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_34623_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@54 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54) (ite  (and (>= i@@54 |l#0@@1|) (< i@@54 |l#1@@0|)) (ite (< i@@54 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@54) (|Select__T@[Int]#0_| |l#4| (- i@@54 |l#5|))) |l#6|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@55 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55) (ite  (and (<= |l#0@@2| i@@55) (< i@@55 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@55) |l#4@@0|)) |l#5@@0|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@14 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14) (ite  (and (>= j@@14 |l#0@@3|) (< j@@14 |l#1@@2|)) (ite (< j@@14 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@14) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@14 |l#5@@1|))) |l#6@@0|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |307|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@56 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56) (ite  (and (>= i@@56 |l#0@@4|) (< i@@56 |l#1@@3|)) (ite (< i@@56 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@56) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@56 |l#5@@2|))) |l#6@@1|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |308|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@57 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57) (ite  (and (<= |l#0@@5| i@@57) (< i@@57 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@57) |l#4@@3|)) |l#5@@3|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |309|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@15 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15) (ite  (and (>= j@@15 |l#0@@6|) (< j@@15 |l#1@@5|)) (ite (< j@@15 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@15) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@15 |l#5@@4|))) |l#6@@2|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |310|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@58 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58) (ite  (and (>= i@@58 |l#0@@7|) (< i@@58 |l#1@@6|)) (ite (< i@@58 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@58) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@58 |l#5@@5|))) |l#6@@3|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |311|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@59 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59) (ite  (and (<= |l#0@@8| i@@59) (< i@@59 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@59) |l#4@@6|)) |l#5@@6|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |312|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@16 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16) (ite  (and (>= j@@16 |l#0@@9|) (< j@@16 |l#1@@8|)) (ite (< j@@16 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@16) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@16 |l#5@@7|))) |l#6@@4|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |313|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@60 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60) (ite  (and (>= i@@60 |l#0@@10|) (< i@@60 |l#1@@9|)) (ite (< i@@60 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@60) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@60 |l#5@@8|))) |l#6@@5|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |314|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@61 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61) (ite  (and (<= |l#0@@11| i@@61) (< i@@61 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@61) |l#4@@9|)) |l#5@@9|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |315|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@17 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17) (ite  (and (>= j@@17 |l#0@@12|) (< j@@17 |l#1@@11|)) (ite (< j@@17 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@17) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@17 |l#5@@10|))) |l#6@@6|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |316|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@11| Int) (|l#6@@7| T@$1_VASPDomain_VASPDomain) (i@@62 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62) (ite  (and (>= i@@62 |l#0@@13|) (< i@@62 |l#1@@12|)) (ite (< i@@62 |l#2@@11|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@11| i@@62) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@11| (- i@@62 |l#5@@11|))) |l#6@@7|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |317|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_VASPDomain_VASPDomain) (i@@63 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63) (ite  (and (<= |l#0@@14| i@@63) (< i@@63 |l#1@@13|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@12| (- (- |l#3@@12| i@@63) |l#4@@12|)) |l#5@@12|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |318|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@13| Int) (|l#6@@8| T@$1_VASPDomain_VASPDomain) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18) (ite  (and (>= j@@18 |l#0@@15|) (< j@@18 |l#1@@14|)) (ite (< j@@18 |l#2@@13|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@13| j@@18) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@13| (+ j@@18 |l#5@@13|))) |l#6@@8|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |319|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@14| Int) (|l#6@@9| T@$1_ValidatorConfig_Config) (i@@64 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64) (ite  (and (>= i@@64 |l#0@@16|) (< i@@64 |l#1@@15|)) (ite (< i@@64 |l#2@@14|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@14| i@@64) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@14| (- i@@64 |l#5@@14|))) |l#6@@9|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |320|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@$1_ValidatorConfig_Config) (i@@65 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65) (ite  (and (<= |l#0@@17| i@@65) (< i@@65 |l#1@@16|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@15| (- (- |l#3@@15| i@@65) |l#4@@15|)) |l#5@@15|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |321|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@16| Int) (|l#6@@10| T@$1_ValidatorConfig_Config) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19) (ite  (and (>= j@@19 |l#0@@18|) (< j@@19 |l#1@@17|)) (ite (< j@@19 |l#2@@16|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@16| j@@19) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@16| (+ j@@19 |l#5@@16|))) |l#6@@10|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |322|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Int|) (|l#4@@17| |T@[Int]Int|) (|l#5@@17| Int) (|l#6@@11| Int) (i@@66 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66) (ite  (and (>= i@@66 |l#0@@19|) (< i@@66 |l#1@@18|)) (ite (< i@@66 |l#2@@17|) (|Select__T@[Int]Int_| |l#3@@17| i@@66) (|Select__T@[Int]Int_| |l#4@@17| (- i@@66 |l#5@@17|))) |l#6@@11|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |323|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Int|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| Int) (i@@67 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67) (ite  (and (<= |l#0@@20| i@@67) (< i@@67 |l#1@@19|)) (|Select__T@[Int]Int_| |l#2@@18| (- (- |l#3@@18| i@@67) |l#4@@18|)) |l#5@@18|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |324|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Int|) (|l#4@@19| |T@[Int]Int|) (|l#5@@19| Int) (|l#6@@12| Int) (j@@20 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20) (ite  (and (>= j@@20 |l#0@@21|) (< j@@20 |l#1@@20|)) (ite (< j@@20 |l#2@@19|) (|Select__T@[Int]Int_| |l#3@@19| j@@20) (|Select__T@[Int]Int_| |l#4@@19| (+ j@@20 |l#5@@19|))) |l#6@@12|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |325|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20))
)))
(assert (forall ((|l#0@@22| |T@[$EventRep]Int|) (|l#1@@21| |T@[$EventRep]Int|) (v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35) (- (|Select__T@[$EventRep]Int_| |l#0@@22| v@@35) (|Select__T@[$EventRep]Int_| |l#1@@21| v@@35)))
 :qid |ValidatorConfigbpl.154:29|
 :skolemid |326|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t25@1 () T@$Mutation_69114)
(declare-fun $t26@0 () T@$1_ValidatorConfig_Config)
(declare-fun _$t2 () T@Vec_15835)
(declare-fun _$t3 () T@Vec_15835)
(declare-fun _$t4 () T@Vec_15835)
(declare-fun $t27 () |T@$1_Option_Option'$1_ValidatorConfig_Config'|)
(declare-fun |Store__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_Config|) ( ?x1 Int) ( ?x2 T@$1_ValidatorConfig_Config)) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|Store__T@[Int]$1_ValidatorConfig_Config_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_Config|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorConfig_Config)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|Store__T@[Int]$1_ValidatorConfig_Config_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorConfig_Config_| ?x0 ?y1))) :weight 0)))
(declare-fun MapConstVec_31064 (T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun DefaultVecElem_31064 () T@$1_ValidatorConfig_Config)
(declare-fun $t28@0 () T@$Mutation_72732)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t28@1 () T@$Mutation_72732)
(declare-fun $t25@2 () T@$Mutation_69114)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0 () T@$Memory_59721)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_59721)
(declare-fun |Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int T@$1_ValidatorConfig_ValidatorConfig) |T@[Int]$1_ValidatorConfig_ValidatorConfig|)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_59348)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_69210)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t15@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t25 () T@$Mutation_69114)
(declare-fun $t25@0 () T@$Mutation_69114)
(declare-fun MapConstVec_10052 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_10052 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1 () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$modifies () |T@[Int]Bool|)
(declare-fun $t24 () Int)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun $t21 () Int)
(declare-fun $t16@0 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t14 () Bool)
(declare-fun $t13 () Int)
(declare-fun $t12 () Int)
(declare-fun $t15 () Int)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t11 () T@$Mutation_69114)
(declare-fun $t28 () T@$Mutation_72732)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_set_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 107173) (let ((anon29_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| (|v#$Mutation_69114| $t25@1))) (=> (and (and (and (= |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0|) (= $t26@0 ($1_ValidatorConfig_Config _$t2 _$t3 _$t4))) (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| $t27) (<= (|l#Vec_34709| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t27)) 1))) (and (and (|$IsEqual'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t27) (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$1_Option_Option'$1_ValidatorConfig_Config'| (Vec_34709 (|Store__T@[Int]$1_ValidatorConfig_Config_| (MapConstVec_31064 DefaultVecElem_31064) 0 $t26@0) 1)))) (= $t28@0 ($Mutation_72732 (|l#$Mutation_69114| $t25@1) (let ((l (|l#Vec_15835| (|p#$Mutation_69114| $t25@1))))
(Vec_15835 (|Store__T@[Int]Int_| (|v#Vec_15835| (|p#$Mutation_69114| $t25@1)) l 0) (+ l 1))) (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_69114| $t25@1))))) (and (= $t28@1 ($Mutation_72732 (|l#$Mutation_72732| $t28@0) (|p#$Mutation_72732| $t28@0) $t27)) (= $t25@2 ($Mutation_69114 (|l#$Mutation_69114| $t25@1) (|p#$Mutation_69114| $t25@1) ($1_ValidatorConfig_ValidatorConfig (|v#$Mutation_72732| $t28@1) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_69114| $t25@1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_69114| $t25@1)))))))) (and (=> (= (ControlFlow 0 92908) (- 0 108177)) (<= (|l#Vec_34709| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_69114| $t25@2)))) 1)) (=> (<= (|l#Vec_34709| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_69114| $t25@2)))) 1) (and (=> (= (ControlFlow 0 92908) (- 0 108190)) (<= (|l#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_69114| $t25@2)))) 1)) (=> (<= (|l#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_69114| $t25@2)))) 1) (=> (= $1_ValidatorConfig_ValidatorConfig_$memory@0 ($Memory_59721 (|Store__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_69114| $t25@2)) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_69114| $t25@2)) (|v#$Mutation_69114| $t25@2)))) (and (=> (= (ControlFlow 0 92908) (- 0 108234)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) a) (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) a)) (=> (not (|$IsEqual'vec'address''| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) a))) (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) a))))) (and ($1_Signer_is_txn_signer_addr a) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) a) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) a)) 3))))))
 :qid |ValidatorConfigbpl.5577:15|
 :skolemid |227|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) a@@0)) (=> (not (|$IsEqual'vec'address''| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) a@@0))) (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) a@@0))))) (and ($1_Signer_is_txn_signer_addr a@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) a@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) a@@0)) 3))))))
 :qid |ValidatorConfigbpl.5577:15|
 :skolemid |227|
)) (and (=> (= (ControlFlow 0 92908) (- 0 108292)) (forall ((validator Int) ) (!  (=> (|$IsValid'address'| validator) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) validator) (not (= (|l#Vec_34709| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) validator)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) validator) (not (= (|l#Vec_34709| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) validator)))) 0)))))
 :qid |ValidatorConfigbpl.5583:15|
 :skolemid |228|
))) (=> (forall ((validator@@0 Int) ) (!  (=> (|$IsValid'address'| validator@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@0) (not (= (|l#Vec_34709| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@0)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) validator@@0) (not (= (|l#Vec_34709| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) validator@@0)))) 0)))))
 :qid |ValidatorConfigbpl.5583:15|
 :skolemid |228|
)) (and (=> (= (ControlFlow 0 92908) (- 0 108316)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) addr)) 3))))
 :qid |ValidatorConfigbpl.5589:15|
 :skolemid |229|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) addr@@0)) 3))))
 :qid |ValidatorConfigbpl.5589:15|
 :skolemid |229|
)) (and (=> (= (ControlFlow 0 92908) (- 0 108341)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) addr@@1)) 3))))
 :qid |ValidatorConfigbpl.5595:15|
 :skolemid |230|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) addr@@2)) 3))))
 :qid |ValidatorConfigbpl.5595:15|
 :skolemid |230|
)) (and (=> (= (ControlFlow 0 92908) (- 0 108366)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@3) (not (= (|l#Vec_34709| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@3)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) addr@@3)) 3))))
 :qid |ValidatorConfigbpl.5601:15|
 :skolemid |231|
))) (=> (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@4) (not (= (|l#Vec_34709| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@4)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) addr@@4)) 3))))
 :qid |ValidatorConfigbpl.5601:15|
 :skolemid |231|
)) (and (=> (= (ControlFlow 0 92908) (- 0 108391)) (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= (|l#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@5))))) (|l#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@6 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@6))))))) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (let (($range_0 ($Range 0 (|l#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@8 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@8))))))))
(exists (($i_1 Int) ) (!  (and ($InRange $range_0 $i_1) (let ((i@@68 $i_1))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@9 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@9))))) i@@68)) addr@@7) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@10 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@10))))) i@@68))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@11))))) i@@68)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@10 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@10))))) i@@68))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@11))))) i@@68))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@10 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@10))))) i@@68))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@11))))) i@@68)))))))))
 :qid |ValidatorConfigbpl.5607:823|
 :skolemid |232|
))) (exists ((a@@1 Int) ) (!  (and (|$IsValid'address'| a@@1) (and ($1_Signer_is_txn_signer_addr a@@1) (= (let ((t_ref (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@7)))
(|Select__T@[Int]Int_| (|v#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref))) 0)) a@@1)))
 :qid |ValidatorConfigbpl.5608:674|
 :skolemid |233|
))))
 :qid |ValidatorConfigbpl.5607:592|
 :skolemid |234|
)))) (=> (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= (|l#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))) (|l#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))))) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (let (($range_0@@0 ($Range 0 (|l#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@15))))))))
(exists (($i_1@@0 Int) ) (!  (and ($InRange $range_0@@0 $i_1@@0) (let ((i@@69 $i_1@@0))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16))))) i@@69)) addr@@14) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@17))))) i@@69))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@18 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@18))))) i@@69)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@17))))) i@@69))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@18 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@18))))) i@@69))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@17))))) i@@69))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@18 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_69210| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@18))))) i@@69)))))))))
 :qid |ValidatorConfigbpl.5607:823|
 :skolemid |232|
))) (exists ((a@@2 Int) ) (!  (and (|$IsValid'address'| a@@2) (and ($1_Signer_is_txn_signer_addr a@@2) (= (let ((t_ref@@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@14)))
(|Select__T@[Int]Int_| (|v#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@0))) 0)) a@@2)))
 :qid |ValidatorConfigbpl.5608:674|
 :skolemid |233|
))))
 :qid |ValidatorConfigbpl.5607:592|
 :skolemid |234|
))) (and (=> (= (ControlFlow 0 92908) (- 0 108532)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (= (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@19)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) addr@@19)) 3))))
 :qid |ValidatorConfigbpl.5614:15|
 :skolemid |235|
))) (=> (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (= (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@20)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) addr@@20)) 3))))
 :qid |ValidatorConfigbpl.5614:15|
 :skolemid |235|
)) (and (=> (= (ControlFlow 0 92908) (- 0 108560)) (not (not (= (|$addr#$signer| _$t0) (let ((t_ref@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(|Select__T@[Int]Int_| (|v#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@1))) 0)))))) (=> (not (not (= (|$addr#$signer| _$t0) (let ((t_ref@@2 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(|Select__T@[Int]Int_| (|v#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@2))) 0))))) (and (=> (= (ControlFlow 0 92908) (- 0 108576)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t2)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t2))) (and (=> (= (ControlFlow 0 92908) (- 0 108586)) (not (not (not (= (|l#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))))) (=> (not (not (not (= (|l#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0)))) (and (=> (= (ControlFlow 0 92908) (- 0 108597)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) (and (=> (= (ControlFlow 0 92908) (- 0 108608)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1) (not (= (|l#Vec_34709| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1)))) 0)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1) (not (= (|l#Vec_34709| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1)))) 0))) (=> (= (ControlFlow 0 92908) (- 0 108615)) (and (and (|$IsEqual'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1))) (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| ($1_ValidatorConfig_ValidatorConfig (|$1_Option_Option'$1_ValidatorConfig_Config'| (Vec_34709 (|Store__T@[Int]$1_ValidatorConfig_Config_| (MapConstVec_31064 DefaultVecElem_31064) 0 ($1_ValidatorConfig_Config _$t2 _$t3 _$t4)) 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))))) (|$IsEqual'vec'address''| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1))) (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| ($1_ValidatorConfig_ValidatorConfig (|$1_Option_Option'$1_ValidatorConfig_Config'| (Vec_34709 (|Store__T@[Int]$1_ValidatorConfig_Config_| (MapConstVec_31064 DefaultVecElem_31064) 0 ($1_ValidatorConfig_Config _$t2 _$t3 _$t4)) 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))))))) (|$IsEqual'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| ($1_ValidatorConfig_ValidatorConfig (|$1_Option_Option'$1_ValidatorConfig_Config'| (Vec_34709 (|Store__T@[Int]$1_ValidatorConfig_Config_| (MapConstVec_31064 DefaultVecElem_31064) 0 ($1_ValidatorConfig_Config _$t2 _$t3 _$t4)) 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))))))))))))))))))))))))))))))))))))))))
(let ((anon26_Then_correct true))
(let ((anon24_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 92066) (- 0 107975)) (or (or (or (not (= (|$addr#$signer| _$t0) (let ((t_ref@@3 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(|Select__T@[Int]Int_| (|v#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@3))) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2))) (not (not (= (|l#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) (=> (or (or (or (not (= (|$addr#$signer| _$t0) (let ((t_ref@@4 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(|Select__T@[Int]Int_| (|v#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@4))) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2))) (not (not (= (|l#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) (=> (= (ControlFlow 0 92066) (- 0 108009)) (or (or (or (and (not (= (|$addr#$signer| _$t0) (let ((t_ref@@5 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(|Select__T@[Int]Int_| (|v#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@5))) 0)))) (= 7 $t15@0)) (and (not ($1_Signature_$ed25519_validate_pubkey _$t2)) (= 7 $t15@0))) (and (not (not (= (|l#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))) (= 7 $t15@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (= 5 $t15@0))))))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t15@0 $abort_code@1) (= (ControlFlow 0 92922) 92066))) L7_correct)))
(let ((anon28_Then$1_correct  (=> (= $t25@1 $t25) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 92974) 92922) anon29_Then_correct) (=> (= (ControlFlow 0 92974) 92908) anon29_Else_correct))))))
(let ((anon28_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (= (ControlFlow 0 92972) 92974)) anon28_Then$1_correct)))
(let ((anon28_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1) (=> (and (and (= $t25@0 ($Mutation_69114 ($Global _$t1) (Vec_15835 (MapConstVec_10052 DefaultVecElem_10052) 0) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) (= $t25@1 $t25@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 92353) 92922) anon29_Then_correct) (=> (= (ControlFlow 0 92353) 92908) anon29_Else_correct))))))
(let ((anon27_Then_correct  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1 (and (=> (= (ControlFlow 0 92331) (- 0 107847)) (|Select__T@[Int]Bool_| $1_ValidatorConfig_ValidatorConfig_$modifies _$t1)) (=> (|Select__T@[Int]Bool_| $1_ValidatorConfig_ValidatorConfig_$modifies _$t1) (and (=> (= (ControlFlow 0 92331) 92972) anon28_Then_correct) (=> (= (ControlFlow 0 92331) 92353) anon28_Else_correct)))))))
(let ((anon27_Else_correct  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1) (= $t24 $t24)) (and (= $t15@0 $t24) (= (ControlFlow 0 92321) 92066))) L7_correct)))
(let ((anon26_Else_correct  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t24) (= $t24 5)) (and (= $t24 $t24) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1))) (and (=> (= (ControlFlow 0 92305) 92331) anon27_Then_correct) (=> (= (ControlFlow 0 92305) 92321) anon27_Else_correct))))))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct  (=> (= _$t1 _$t1) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1)) (and (=> (= (ControlFlow 0 92263) 92988) anon26_Then_correct) (=> (= (ControlFlow 0 92263) 92305) anon26_Else_correct))))))
(let ((anon25_Then_correct  (=> (and inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (= (ControlFlow 0 92269) 92263)) inline$$1_ValidatorConfig_exists_config$0$anon0_correct)))
(let ((anon25_Else_correct  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= $t21 $t21)) (and (= $t15@0 $t21) (= (ControlFlow 0 92162) 92066))) L7_correct)))
(let ((anon24_Else_correct  (=> (and (not false) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t21) (= $t21 7)) (and (= $t21 $t21) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 92146) 92269) anon25_Then_correct) (=> (= (ControlFlow 0 92146) 92162) anon25_Else_correct))))))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t2)) (and (=> (= (ControlFlow 0 92100) 93002) anon24_Then_correct) (=> (= (ControlFlow 0 92100) 92146) anon24_Else_correct)))))
(let ((anon23_Then_correct  (=> (and $t16@0 (= (ControlFlow 0 92106) 92100)) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (and (and (not $t16@0) (= $t18 $t18)) (and (= $t15@0 $t18) (= (ControlFlow 0 91942) 92066))) L7_correct)))
(let ((anon22_Else_correct  (=> (not $t14) (=> (and (and (and (|$IsValid'address'| $t13) (= $t13 (let ((t_ref@@6 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(|Select__T@[Int]Int_| (|v#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@6))) 0)))) (and (= $t16@0 (= $t12 $t13)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t18) (= $t18 7)) (and (= $t18 $t18) (= $t16@0 $t16@0)))) (and (=> (= (ControlFlow 0 91926) 92106) anon23_Then_correct) (=> (= (ControlFlow 0 91926) 91942) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> $t14 (=> (and (and (or (and (not (not (= (|l#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))) (= 7 $t15)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (= 5 $t15))) (= $t15 $t15)) (and (= $t15@0 $t15) (= (ControlFlow 0 93048) 92066))) L7_correct))))
(let ((anon0$1_correct  (=> (and (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@21) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) addr@@21)) 3))))
 :qid |ValidatorConfigbpl.5261:20|
 :skolemid |222|
)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@22) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) addr@@22)) 3))))
 :qid |ValidatorConfigbpl.5265:20|
 :skolemid |223|
))) (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@23) (not (= (|l#Vec_34709| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@23)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) addr@@23)) 3))))
 :qid |ValidatorConfigbpl.5269:20|
 :skolemid |224|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (= (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@24)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_59348| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_59348| $1_Roles_RoleId_$memory) addr@@24)) 3))))
 :qid |ValidatorConfigbpl.5273:20|
 :skolemid |225|
)))) (=> (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (|$IsValid'address'| _$t1) (|$IsValid'vec'u8''| _$t2))) (and (and (|$IsValid'vec'u8''| _$t3) (|$IsValid'vec'u8''| _$t4)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc) (and (<= (|l#Vec_34709| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc))) 1) (<= (|l#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc))) 1))))
 :qid |ValidatorConfigbpl.5291:20|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0))
)) (|Select__T@[Int]Bool_| $1_ValidatorConfig_ValidatorConfig_$modifies _$t1)))) (and (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= _$t3 _$t3))) (and (and (= _$t4 _$t4) (|$IsValid'address'| $t12)) (and (= $t12 (|$addr#$signer| _$t0)) (= $t14  (or (not (not (= (|l#Vec_15835| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_59721| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))))))) (and (=> (= (ControlFlow 0 91868) 93048) anon22_Then_correct) (=> (= (ControlFlow 0 91868) 91926) anon22_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_34623_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_34623| stream@@0) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_34623| stream@@0) v@@36) 0)
 :qid |ValidatorConfigbpl.159:13|
 :skolemid |4|
))))
 :qid |ValidatorConfigbpl.2225:13|
 :skolemid |77|
))) (= (ControlFlow 0 91600) 91868)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_15835| (|p#$Mutation_69114| $t11)) 0) (= (|l#Vec_15835| (|p#$Mutation_69114| $t25)) 0)) (and (= (|l#Vec_15835| (|p#$Mutation_72732| $t28)) 0) (= (ControlFlow 0 91610) 91600))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 107173) 91610) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_56132 0)) ((($Memory_56132 (|domain#$Memory_56132| |T@[Int]Bool|) (|contents#$Memory_56132| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_36036 0)) (((Vec_36036 (|v#Vec_36036| |T@[Int]#0|) (|l#Vec_36036| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_59787 0)) ((($Memory_59787 (|domain#$Memory_59787| |T@[Int]Bool|) (|contents#$Memory_59787| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_70341 0)) ((($Memory_70341 (|domain#$Memory_70341| |T@[Int]Bool|) (|contents#$Memory_70341| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_59754 0)) ((($Memory_59754 (|domain#$Memory_59754| |T@[Int]Bool|) (|contents#$Memory_59754| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_70645 0)) ((($Memory_70645 (|domain#$Memory_70645| |T@[Int]Bool|) (|contents#$Memory_70645| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_70745 0)) ((($Memory_70745 (|domain#$Memory_70745| |T@[Int]Bool|) (|contents#$Memory_70745| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_70122 0)) ((($Memory_70122 (|domain#$Memory_70122| |T@[Int]Bool|) (|contents#$Memory_70122| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_60687 0)) ((($Memory_60687 (|domain#$Memory_60687| |T@[Int]Bool|) (|contents#$Memory_60687| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_60627 0)) ((($Memory_60627 (|domain#$Memory_60627| |T@[Int]Bool|) (|contents#$Memory_60627| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_70475 0)) ((($Memory_70475 (|domain#$Memory_70475| |T@[Int]Bool|) (|contents#$Memory_70475| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_34787 0)) (((Vec_34787 (|v#Vec_34787| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_34787| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_34787) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_34748 0)) (((Vec_34748 (|v#Vec_34748| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_34748| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_34748) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_15835 0)) (((Vec_15835 (|v#Vec_15835| |T@[Int]Int|) (|l#Vec_15835| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_15835) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_70022 0)) ((($Memory_70022 (|domain#$Memory_70022| |T@[Int]Bool|) (|contents#$Memory_70022| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_15835) (|$base_url#$1_DualAttestation_Credential| T@Vec_15835) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_15835) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_60512 0)) ((($Memory_60512 (|domain#$Memory_60512| |T@[Int]Bool|) (|contents#$Memory_60512| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_15835) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_34944 0)) (((Vec_34944 (|v#Vec_34944| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_34944| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_34944) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_70207 0)) ((($Memory_70207 (|domain#$Memory_70207| |T@[Int]Bool|) (|contents#$Memory_70207| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_15835) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_15835) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_15835) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_34709 0)) (((Vec_34709 (|v#Vec_34709| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_34709| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_34709) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_34865 0)) (((Vec_34865 (|v#Vec_34865| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_34865| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_34865) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_69210 0)) ((($Memory_69210 (|domain#$Memory_69210| |T@[Int]Bool|) (|contents#$Memory_69210| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_15835) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_15835) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_59721 0)) ((($Memory_59721 (|domain#$Memory_59721| |T@[Int]Bool|) (|contents#$Memory_59721| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_15835) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_60174 0)) ((($Memory_60174 (|domain#$Memory_60174| |T@[Int]Bool|) (|contents#$Memory_60174| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_59348 0)) ((($Memory_59348 (|domain#$Memory_59348| |T@[Int]Bool|) (|contents#$Memory_59348| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_59226 0)) ((($Memory_59226 (|domain#$Memory_59226| |T@[Int]Bool|) (|contents#$Memory_59226| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_15835) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_15835) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_15835) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_15835) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_15835) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_15835) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_15835) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_34623 0)) (((Multiset_34623 (|v#Multiset_34623| |T@[$EventRep]Int|) (|l#Multiset_34623| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_34623| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_34623|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_72732 0)) ((($Mutation_72732 (|l#$Mutation_72732| T@$Location) (|p#$Mutation_72732| T@Vec_15835) (|v#$Mutation_72732| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) ) ))
(declare-datatypes ((T@$Mutation_69155 0)) ((($Mutation_69155 (|l#$Mutation_69155| T@$Location) (|p#$Mutation_69155| T@Vec_15835) (|v#$Mutation_69155| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_69114 0)) ((($Mutation_69114 (|l#$Mutation_69114| T@$Location) (|p#$Mutation_69114| T@Vec_15835) (|v#$Mutation_69114| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_56810 0)) ((($Mutation_56810 (|l#$Mutation_56810| T@$Location) (|p#$Mutation_56810| T@Vec_15835) (|v#$Mutation_56810| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_10447 0)) ((($Mutation_10447 (|l#$Mutation_10447| T@$Location) (|p#$Mutation_10447| T@Vec_15835) (|v#$Mutation_10447| Int) ) ) ))
(declare-datatypes ((T@$Mutation_52691 0)) ((($Mutation_52691 (|l#$Mutation_52691| T@$Location) (|p#$Mutation_52691| T@Vec_15835) (|v#$Mutation_52691| T@Vec_15835) ) ) ))
(declare-datatypes ((T@$Mutation_51114 0)) ((($Mutation_51114 (|l#$Mutation_51114| T@$Location) (|p#$Mutation_51114| T@Vec_15835) (|v#$Mutation_51114| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_50127 0)) ((($Mutation_50127 (|l#$Mutation_50127| T@$Location) (|p#$Mutation_50127| T@Vec_15835) (|v#$Mutation_50127| T@Vec_34709) ) ) ))
(declare-datatypes ((T@$Mutation_48472 0)) ((($Mutation_48472 (|l#$Mutation_48472| T@$Location) (|p#$Mutation_48472| T@Vec_15835) (|v#$Mutation_48472| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_47485 0)) ((($Mutation_47485 (|l#$Mutation_47485| T@$Location) (|p#$Mutation_47485| T@Vec_15835) (|v#$Mutation_47485| T@Vec_34944) ) ) ))
(declare-datatypes ((T@$Mutation_45807 0)) ((($Mutation_45807 (|l#$Mutation_45807| T@$Location) (|p#$Mutation_45807| T@Vec_15835) (|v#$Mutation_45807| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_44820 0)) ((($Mutation_44820 (|l#$Mutation_44820| T@$Location) (|p#$Mutation_44820| T@Vec_15835) (|v#$Mutation_44820| T@Vec_34865) ) ) ))
(declare-datatypes ((T@$Mutation_43020 0)) ((($Mutation_43020 (|l#$Mutation_43020| T@$Location) (|p#$Mutation_43020| T@Vec_15835) (|v#$Mutation_43020| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_42033 0)) ((($Mutation_42033 (|l#$Mutation_42033| T@$Location) (|p#$Mutation_42033| T@Vec_15835) (|v#$Mutation_42033| T@Vec_34787) ) ) ))
(declare-datatypes ((T@$Mutation_40368 0)) ((($Mutation_40368 (|l#$Mutation_40368| T@$Location) (|p#$Mutation_40368| T@Vec_15835) (|v#$Mutation_40368| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_39381 0)) ((($Mutation_39381 (|l#$Mutation_39381| T@$Location) (|p#$Mutation_39381| T@Vec_15835) (|v#$Mutation_39381| T@Vec_34748) ) ) ))
(declare-datatypes ((T@$Mutation_37668 0)) ((($Mutation_37668 (|l#$Mutation_37668| T@$Location) (|p#$Mutation_37668| T@Vec_15835) (|v#$Mutation_37668| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_36681 0)) ((($Mutation_36681 (|l#$Mutation_36681| T@$Location) (|p#$Mutation_36681| T@Vec_15835) (|v#$Mutation_36681| T@Vec_36036) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_36036 T@Vec_36036) Bool)
(declare-fun InRangeVec_30039 (T@Vec_36036 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_36036) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_36036 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_34748 T@Vec_34748) Bool)
(declare-fun InRangeVec_30240 (T@Vec_34748 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_34748) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_34748 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_34787 T@Vec_34787) Bool)
(declare-fun InRangeVec_30441 (T@Vec_34787 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_34787) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_34787 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_34865 T@Vec_34865) Bool)
(declare-fun InRangeVec_30642 (T@Vec_34865 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_15835 T@Vec_15835) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_34865) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_34865 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_34944 T@Vec_34944) Bool)
(declare-fun InRangeVec_30843 (T@Vec_34944 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_34944) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_34944 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_34709 T@Vec_34709) Bool)
(declare-fun InRangeVec_31044 (T@Vec_34709 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_34709) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_34709 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_15835 T@Vec_15835) Bool)
(declare-fun InRangeVec_9823 (T@Vec_15835 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_15835) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_15835 Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_15835) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_15835 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_15835) T@Vec_15835)
(declare-fun $1_Hash_sha3 (T@Vec_15835) T@Vec_15835)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_15835) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_15835 T@Vec_15835 T@Vec_15835) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_34623_| (|T@[$1_Event_EventHandle]Multiset_34623| T@$1_Event_EventHandle) T@Multiset_34623)
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
(declare-fun IndexOfVec_15835 (T@Vec_15835 Int) Int)
(declare-fun IndexOfVec_34709 (T@Vec_34709 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_34748 (T@Vec_34748 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_34787 (T@Vec_34787 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_34865 (T@Vec_34865 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_34944 (T@Vec_34944 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_36036 (T@Vec_36036 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_34623| |T@[$1_Event_EventHandle]Multiset_34623|) |T@[$1_Event_EventHandle]Multiset_34623|)
(declare-fun |lambda#24| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#22| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorConfigbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorConfigbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorConfigbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorConfigbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorConfigbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorConfigbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorConfigbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorConfigbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_36036) (v2 T@Vec_36036) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_36036| v1) (|l#Vec_36036| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_30039 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_36036| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_36036| v2) i@@0)))
 :qid |ValidatorConfigbpl.615:13|
 :skolemid |17|
))))
 :qid |ValidatorConfigbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_36036) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_36036| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_30039 v@@4 i@@1) true)
 :qid |ValidatorConfigbpl.621:13|
 :skolemid |19|
))))
 :qid |ValidatorConfigbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_36036) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_30039 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_36036| v@@5) i@@3) e))
 :qid |ValidatorConfigbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_30039 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_36036| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_36036| v@@5) j) e)))
 :qid |ValidatorConfigbpl.634:17|
 :skolemid |22|
)))))
 :qid |ValidatorConfigbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_34748) (v2@@0 T@Vec_34748) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_34748| v1@@0) (|l#Vec_34748| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_30240 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v2@@0) i@@4)))
 :qid |ValidatorConfigbpl.796:13|
 :skolemid |24|
))))
 :qid |ValidatorConfigbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_34748) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_34748| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_30240 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@6) i@@5)))
 :qid |ValidatorConfigbpl.802:13|
 :skolemid |26|
))))
 :qid |ValidatorConfigbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_34748) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_30240 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@7) i@@7) e@@0))
 :qid |ValidatorConfigbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_30240 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@7) j@@0) e@@0)))
 :qid |ValidatorConfigbpl.815:17|
 :skolemid |29|
)))))
 :qid |ValidatorConfigbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_34787) (v2@@1 T@Vec_34787) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_34787| v1@@1) (|l#Vec_34787| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_30441 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v2@@1) i@@8)))
 :qid |ValidatorConfigbpl.977:13|
 :skolemid |31|
))))
 :qid |ValidatorConfigbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_34787) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_34787| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_30441 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@8) i@@9)))
 :qid |ValidatorConfigbpl.983:13|
 :skolemid |33|
))))
 :qid |ValidatorConfigbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_34787) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_30441 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@9) i@@11) e@@1))
 :qid |ValidatorConfigbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_30441 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@9) j@@1) e@@1)))
 :qid |ValidatorConfigbpl.996:17|
 :skolemid |36|
)))))
 :qid |ValidatorConfigbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_34865) (v2@@2 T@Vec_34865) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_34865| v1@@2) (|l#Vec_34865| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_30642 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v2@@2) i@@12)))))
 :qid |ValidatorConfigbpl.1158:13|
 :skolemid |38|
))))
 :qid |ValidatorConfigbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_34865) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_34865| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_30642 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@10) i@@13)))
 :qid |ValidatorConfigbpl.1164:13|
 :skolemid |40|
))))
 :qid |ValidatorConfigbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_34865) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_30642 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |ValidatorConfigbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_30642 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |ValidatorConfigbpl.1177:17|
 :skolemid |43|
)))))
 :qid |ValidatorConfigbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_34944) (v2@@3 T@Vec_34944) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3)  (and (= (|l#Vec_34944| v1@@3) (|l#Vec_34944| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_30843 v1@@3 i@@16) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v1@@3) i@@16)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v2@@3) i@@16))))
 :qid |ValidatorConfigbpl.1339:13|
 :skolemid |45|
))))
 :qid |ValidatorConfigbpl.1337:50|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_34944) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_34944| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_30843 v@@12 i@@17) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@12) i@@17)))
 :qid |ValidatorConfigbpl.1345:13|
 :skolemid |47|
))))
 :qid |ValidatorConfigbpl.1343:50|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_34944) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@18 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_30843 v@@13 i@@19)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@13) i@@19)) (|$domain#$1_VASPDomain_VASPDomain| e@@3)))
 :qid |ValidatorConfigbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_30843 v@@13 i@@18)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@13) i@@18)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@13) j@@3)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))))
 :qid |ValidatorConfigbpl.1358:17|
 :skolemid |50|
)))))
 :qid |ValidatorConfigbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_34709) (v2@@4 T@Vec_34709) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4)  (and (= (|l#Vec_34709| v1@@4) (|l#Vec_34709| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_31044 v1@@4 i@@20) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v1@@4) i@@20)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v1@@4) i@@20)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v2@@4) i@@20)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v1@@4) i@@20)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v2@@4) i@@20)))))
 :qid |ValidatorConfigbpl.1520:13|
 :skolemid |52|
))))
 :qid |ValidatorConfigbpl.1518:51|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_34709) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_34709| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_31044 v@@14 i@@21) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@14) i@@21)))
 :qid |ValidatorConfigbpl.1526:13|
 :skolemid |54|
))))
 :qid |ValidatorConfigbpl.1524:51|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_34709) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_31044 v@@15 i@@23)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) i@@23)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) i@@23)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) i@@23)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4))))
 :qid |ValidatorConfigbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_31044 v@@15 i@@22)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) i@@22)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) i@@22)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) i@@22)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) j@@4)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) j@@4)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@15) j@@4)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))))
 :qid |ValidatorConfigbpl.1539:17|
 :skolemid |57|
)))))
 :qid |ValidatorConfigbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_15835) (v2@@5 T@Vec_15835) ) (! (= (|$IsEqual'vec'address''| v1@@5 v2@@5)  (and (= (|l#Vec_15835| v1@@5) (|l#Vec_15835| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_9823 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_15835| v2@@5) i@@24)))
 :qid |ValidatorConfigbpl.1701:13|
 :skolemid |59|
))))
 :qid |ValidatorConfigbpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'address''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_15835) ) (! (= (|$IsValid'vec'address''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_15835| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_9823 v@@16 i@@25) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_15835| v@@16) i@@25)))
 :qid |ValidatorConfigbpl.1707:13|
 :skolemid |61|
))))
 :qid |ValidatorConfigbpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'address''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_15835) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'address'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_9823 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@17) i@@27) e@@5))
 :qid |ValidatorConfigbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_9823 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@17) j@@5) e@@5)))
 :qid |ValidatorConfigbpl.1720:17|
 :skolemid |64|
)))))
 :qid |ValidatorConfigbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'address'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_15835) (v2@@6 T@Vec_15835) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6)  (and (= (|l#Vec_15835| v1@@6) (|l#Vec_15835| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_9823 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_15835| v2@@6) i@@28)))
 :qid |ValidatorConfigbpl.1882:13|
 :skolemid |66|
))))
 :qid |ValidatorConfigbpl.1880:28|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'u8''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_15835) ) (! (= (|$IsValid'vec'u8''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_15835| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_9823 v@@18 i@@29) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_15835| v@@18) i@@29)))
 :qid |ValidatorConfigbpl.1888:13|
 :skolemid |68|
))))
 :qid |ValidatorConfigbpl.1886:28|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'u8''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_15835) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'u8'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_9823 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@19) i@@31) e@@6))
 :qid |ValidatorConfigbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_9823 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@19) j@@6) e@@6)))
 :qid |ValidatorConfigbpl.1901:17|
 :skolemid |71|
)))))
 :qid |ValidatorConfigbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'u8'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_15835) (v2@@7 T@Vec_15835) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7)))
 :qid |ValidatorConfigbpl.2074:15|
 :skolemid |73|
 :pattern ( ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7))
)))
(assert (forall ((v1@@8 T@Vec_15835) (v2@@8 T@Vec_15835) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8)))
 :qid |ValidatorConfigbpl.2090:15|
 :skolemid |74|
 :pattern ( ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8))
)))
(assert (forall ((k1 T@Vec_15835) (k2 T@Vec_15835) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorConfigbpl.2161:15|
 :skolemid |75|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_15835) (s2 T@Vec_15835) (k1@@0 T@Vec_15835) (k2@@0 T@Vec_15835) (m1 T@Vec_15835) (m2 T@Vec_15835) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorConfigbpl.2164:15|
 :skolemid |76|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_34623_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_34623| stream) 0) (forall ((v@@20 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_34623| stream) v@@20) 0)
 :qid |ValidatorConfigbpl.159:13|
 :skolemid |4|
))))
 :qid |ValidatorConfigbpl.2225:13|
 :skolemid |77|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h) true)
 :qid |ValidatorConfigbpl.2266:80|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h))
)))
(assert (forall ((v1@@9 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@9 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@9) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@9)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@9) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@9))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@9) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@9))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@9) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@9)))
 :qid |ValidatorConfigbpl.2272:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@9) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@9))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0) true)
 :qid |ValidatorConfigbpl.2322:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0))
)))
(assert (forall ((v1@@10 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@10 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@10)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@10))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@10))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@10) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@10))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@10) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@10)))
 :qid |ValidatorConfigbpl.2328:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@10) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@10))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1) true)
 :qid |ValidatorConfigbpl.2378:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@11 T@$1_DiemAccount_SentPaymentEvent) (v2@@11 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@11)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@11))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@11))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@11) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@11))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@11) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@11)))
 :qid |ValidatorConfigbpl.2384:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@11) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@11))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@2) true)
 :qid |ValidatorConfigbpl.2434:82|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@2))
)))
(assert (forall ((v1@@12 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@12 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@12) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@12)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@12) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@12))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@12) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@12)))
 :qid |ValidatorConfigbpl.2440:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@12) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@12))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@3) true)
 :qid |ValidatorConfigbpl.2490:88|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@3))
)))
(assert (forall ((v1@@13 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@13 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@13) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@13)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@13) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@13))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@13) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@13)))
 :qid |ValidatorConfigbpl.2496:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@13) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@13))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@4) true)
 :qid |ValidatorConfigbpl.2546:72|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@4))
)))
(assert (forall ((v1@@14 T@$1_VASPDomain_VASPDomainEvent) (v2@@14 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@14) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@14)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@14)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@14)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@14) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@14))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@14) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@14)))
 :qid |ValidatorConfigbpl.2552:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@14) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@14))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |ValidatorConfigbpl.2621:61|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |ValidatorConfigbpl.2685:36|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |ValidatorConfigbpl.3083:71|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |ValidatorConfigbpl.3188:46|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |ValidatorConfigbpl.3200:64|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |ValidatorConfigbpl.3212:75|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |ValidatorConfigbpl.3224:72|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |ValidatorConfigbpl.3272:55|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |ValidatorConfigbpl.3295:46|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |ValidatorConfigbpl.6216:49|
 :skolemid |275|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |ValidatorConfigbpl.6241:71|
 :skolemid |276|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@10)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@10))))
 :qid |ValidatorConfigbpl.6262:45|
 :skolemid |277|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@11)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@11))))
 :qid |ValidatorConfigbpl.6285:48|
 :skolemid |278|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11))
)))
(assert (forall ((s@@12 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@12)))
 :qid |ValidatorConfigbpl.6303:45|
 :skolemid |279|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@13)))
 :qid |ValidatorConfigbpl.6316:45|
 :skolemid |280|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13))
)))
(assert (forall ((s@@14 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@14) true)
 :qid |ValidatorConfigbpl.6329:31|
 :skolemid |281|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@14))
)))
(assert (forall ((s@@15 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@15) true)
 :qid |ValidatorConfigbpl.6342:31|
 :skolemid |282|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@15))
)))
(assert (forall ((s@@16 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@16)))
 :qid |ValidatorConfigbpl.6355:45|
 :skolemid |283|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16))
)))
(assert (forall ((s@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@17))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@17))))
 :qid |ValidatorConfigbpl.6373:50|
 :skolemid |284|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17))
)))
(assert (forall ((s@@18 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@18)))
 :qid |ValidatorConfigbpl.6389:52|
 :skolemid |285|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18))
)))
(assert (forall ((s@@19 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@19)))
 :qid |ValidatorConfigbpl.6402:46|
 :skolemid |286|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19))
)))
(assert (forall ((s@@20 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@20) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@20)))
 :qid |ValidatorConfigbpl.6425:38|
 :skolemid |287|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@20))
)))
(assert (forall ((s@@21 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@21) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@21)))
 :qid |ValidatorConfigbpl.6439:39|
 :skolemid |288|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@22)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@22))))
 :qid |ValidatorConfigbpl.6466:60|
 :skolemid |289|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23))))
 :qid |ValidatorConfigbpl.6483:66|
 :skolemid |290|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@24)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@24)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@24))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@24))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@24))))
 :qid |ValidatorConfigbpl.6512:50|
 :skolemid |291|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@25) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@25)))
 :qid |ValidatorConfigbpl.6535:45|
 :skolemid |292|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@26) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@26)))
 :qid |ValidatorConfigbpl.6549:47|
 :skolemid |293|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@27)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@27)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@27))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@27))))
 :qid |ValidatorConfigbpl.6568:58|
 :skolemid |294|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@27))
)))
(assert (forall ((s@@28 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@28) true)
 :qid |ValidatorConfigbpl.6584:51|
 :skolemid |295|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@28))
)))
(assert (forall ((s@@29 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@29)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@29)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@29))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@29))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@29))))
 :qid |ValidatorConfigbpl.6618:47|
 :skolemid |296|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@29))
)))
(assert (forall ((s@@30 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@30) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@30)))
 :qid |ValidatorConfigbpl.6641:55|
 :skolemid |297|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@31) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@31)))
 :qid |ValidatorConfigbpl.6655:55|
 :skolemid |298|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@32) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@32)))
 :qid |ValidatorConfigbpl.6669:57|
 :skolemid |299|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@32))
)))
(assert (forall ((s@@33 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@33)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@33))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@33))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@33))))
 :qid |ValidatorConfigbpl.6691:56|
 :skolemid |300|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@34)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@34))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@34))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@34))))
 :qid |ValidatorConfigbpl.6718:52|
 :skolemid |301|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@35) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@35)))
 :qid |ValidatorConfigbpl.6736:54|
 :skolemid |302|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@35))
)))
(assert (forall ((v@@21 T@Vec_36036) (i@@32 Int) ) (! (= (InRangeVec_30039 v@@21 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_36036| v@@21))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_30039 v@@21 i@@32))
)))
(assert (forall ((v@@22 T@Vec_34748) (i@@33 Int) ) (! (= (InRangeVec_30240 v@@22 i@@33)  (and (>= i@@33 0) (< i@@33 (|l#Vec_34748| v@@22))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_30240 v@@22 i@@33))
)))
(assert (forall ((v@@23 T@Vec_34787) (i@@34 Int) ) (! (= (InRangeVec_30441 v@@23 i@@34)  (and (>= i@@34 0) (< i@@34 (|l#Vec_34787| v@@23))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_30441 v@@23 i@@34))
)))
(assert (forall ((v@@24 T@Vec_34865) (i@@35 Int) ) (! (= (InRangeVec_30642 v@@24 i@@35)  (and (>= i@@35 0) (< i@@35 (|l#Vec_34865| v@@24))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_30642 v@@24 i@@35))
)))
(assert (forall ((v@@25 T@Vec_34944) (i@@36 Int) ) (! (= (InRangeVec_30843 v@@25 i@@36)  (and (>= i@@36 0) (< i@@36 (|l#Vec_34944| v@@25))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_30843 v@@25 i@@36))
)))
(assert (forall ((v@@26 T@Vec_34709) (i@@37 Int) ) (! (= (InRangeVec_31044 v@@26 i@@37)  (and (>= i@@37 0) (< i@@37 (|l#Vec_34709| v@@26))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_31044 v@@26 i@@37))
)))
(assert (forall ((v@@27 T@Vec_15835) (i@@38 Int) ) (! (= (InRangeVec_9823 v@@27 i@@38)  (and (>= i@@38 0) (< i@@38 (|l#Vec_15835| v@@27))))
 :qid |ValidatorConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9823 v@@27 i@@38))
)))
(assert (forall ((v@@28 T@Vec_15835) (e@@7 Int) ) (! (let ((i@@39 (IndexOfVec_15835 v@@28 e@@7)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_9823 v@@28 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@28) i@@40) e@@7))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_9823 v@@28 i@@39) (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@28) i@@39) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@39)) (not (= (|Select__T@[Int]Int_| (|v#Vec_15835| v@@28) j@@7) e@@7)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_15835 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_34709) (e@@8 T@$1_ValidatorConfig_Config) ) (! (let ((i@@41 (IndexOfVec_34709 v@@29 e@@8)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_31044 v@@29 i@@42) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@29) i@@42) e@@8))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_31044 v@@29 i@@41) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@29) i@@41) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@41)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_34709| v@@29) j@@8) e@@8)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34709 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_34748) (e@@9 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@43 (IndexOfVec_34748 v@@30 e@@9)))
(ite  (not (exists ((i@@44 Int) ) (!  (and (InRangeVec_30240 v@@30 i@@44) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@30) i@@44) e@@9))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@43 (- 0 1))  (and (and (InRangeVec_30240 v@@30 i@@43) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@30) i@@43) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@43)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_34748| v@@30) j@@9) e@@9)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34748 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_34787) (e@@10 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@45 (IndexOfVec_34787 v@@31 e@@10)))
(ite  (not (exists ((i@@46 Int) ) (!  (and (InRangeVec_30441 v@@31 i@@46) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@31) i@@46) e@@10))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@45 (- 0 1))  (and (and (InRangeVec_30441 v@@31 i@@45) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@31) i@@45) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@45)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_34787| v@@31) j@@10) e@@10)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34787 v@@31 e@@10))
)))
(assert (forall ((v@@32 T@Vec_34865) (e@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@47 (IndexOfVec_34865 v@@32 e@@11)))
(ite  (not (exists ((i@@48 Int) ) (!  (and (InRangeVec_30642 v@@32 i@@48) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@32) i@@48) e@@11))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@47 (- 0 1))  (and (and (InRangeVec_30642 v@@32 i@@47) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@32) i@@47) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@47)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_34865| v@@32) j@@11) e@@11)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34865 v@@32 e@@11))
)))
(assert (forall ((v@@33 T@Vec_34944) (e@@12 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@49 (IndexOfVec_34944 v@@33 e@@12)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_30843 v@@33 i@@50) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@33) i@@50) e@@12))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_30843 v@@33 i@@49) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@33) i@@49) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@49)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_34944| v@@33) j@@12) e@@12)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34944 v@@33 e@@12))
)))
(assert (forall ((v@@34 T@Vec_36036) (e@@13 |T@#0|) ) (! (let ((i@@51 (IndexOfVec_36036 v@@34 e@@13)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_30039 v@@34 i@@52) (= (|Select__T@[Int]#0_| (|v#Vec_36036| v@@34) i@@52) e@@13))
 :qid |ValidatorConfigbpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_30039 v@@34 i@@51) (= (|Select__T@[Int]#0_| (|v#Vec_36036| v@@34) i@@51) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@51)) (not (= (|Select__T@[Int]#0_| (|v#Vec_36036| v@@34) j@@13) e@@13)))
 :qid |ValidatorConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_36036 v@@34 e@@13))
)))
(assert (forall ((|l#0| Bool) (i@@53 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53) |l#0|)
 :qid |ValidatorConfigbpl.275:54|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_34623|) (|l#1| |T@[$1_Event_EventHandle]Multiset_34623|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_34623_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_34623| (|Select__T@[$1_Event_EventHandle]Multiset_34623_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_34623| (|Select__T@[$1_Event_EventHandle]Multiset_34623_| |l#1| handle@@0))))
(Multiset_34623 (|lambda#24| (|v#Multiset_34623| (|Select__T@[$1_Event_EventHandle]Multiset_34623_| |l#0@@0| handle@@0)) (|v#Multiset_34623| (|Select__T@[$1_Event_EventHandle]Multiset_34623_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorConfigbpl.2235:13|
 :skolemid |304|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_34623_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@54 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54) (ite  (and (>= i@@54 |l#0@@1|) (< i@@54 |l#1@@0|)) (ite (< i@@54 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@54) (|Select__T@[Int]#0_| |l#4| (- i@@54 |l#5|))) |l#6|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@55 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55) (ite  (and (<= |l#0@@2| i@@55) (< i@@55 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@55) |l#4@@0|)) |l#5@@0|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@14 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14) (ite  (and (>= j@@14 |l#0@@3|) (< j@@14 |l#1@@2|)) (ite (< j@@14 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@14) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@14 |l#5@@1|))) |l#6@@0|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |307|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@56 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56) (ite  (and (>= i@@56 |l#0@@4|) (< i@@56 |l#1@@3|)) (ite (< i@@56 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@56) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@56 |l#5@@2|))) |l#6@@1|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |308|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@57 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57) (ite  (and (<= |l#0@@5| i@@57) (< i@@57 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@57) |l#4@@3|)) |l#5@@3|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |309|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@15 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15) (ite  (and (>= j@@15 |l#0@@6|) (< j@@15 |l#1@@5|)) (ite (< j@@15 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@15) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@15 |l#5@@4|))) |l#6@@2|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |310|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@58 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58) (ite  (and (>= i@@58 |l#0@@7|) (< i@@58 |l#1@@6|)) (ite (< i@@58 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@58) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@58 |l#5@@5|))) |l#6@@3|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |311|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@59 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59) (ite  (and (<= |l#0@@8| i@@59) (< i@@59 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@59) |l#4@@6|)) |l#5@@6|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |312|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@16 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16) (ite  (and (>= j@@16 |l#0@@9|) (< j@@16 |l#1@@8|)) (ite (< j@@16 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@16) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@16 |l#5@@7|))) |l#6@@4|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |313|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@60 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60) (ite  (and (>= i@@60 |l#0@@10|) (< i@@60 |l#1@@9|)) (ite (< i@@60 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@60) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@60 |l#5@@8|))) |l#6@@5|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |314|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@61 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61) (ite  (and (<= |l#0@@11| i@@61) (< i@@61 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@61) |l#4@@9|)) |l#5@@9|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |315|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@17 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17) (ite  (and (>= j@@17 |l#0@@12|) (< j@@17 |l#1@@11|)) (ite (< j@@17 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@17) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@17 |l#5@@10|))) |l#6@@6|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |316|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@11| Int) (|l#6@@7| T@$1_VASPDomain_VASPDomain) (i@@62 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62) (ite  (and (>= i@@62 |l#0@@13|) (< i@@62 |l#1@@12|)) (ite (< i@@62 |l#2@@11|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@11| i@@62) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@11| (- i@@62 |l#5@@11|))) |l#6@@7|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |317|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_VASPDomain_VASPDomain) (i@@63 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63) (ite  (and (<= |l#0@@14| i@@63) (< i@@63 |l#1@@13|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@12| (- (- |l#3@@12| i@@63) |l#4@@12|)) |l#5@@12|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |318|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@13| Int) (|l#6@@8| T@$1_VASPDomain_VASPDomain) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18) (ite  (and (>= j@@18 |l#0@@15|) (< j@@18 |l#1@@14|)) (ite (< j@@18 |l#2@@13|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@13| j@@18) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@13| (+ j@@18 |l#5@@13|))) |l#6@@8|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |319|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@14| Int) (|l#6@@9| T@$1_ValidatorConfig_Config) (i@@64 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64) (ite  (and (>= i@@64 |l#0@@16|) (< i@@64 |l#1@@15|)) (ite (< i@@64 |l#2@@14|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@14| i@@64) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@14| (- i@@64 |l#5@@14|))) |l#6@@9|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |320|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@$1_ValidatorConfig_Config) (i@@65 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65) (ite  (and (<= |l#0@@17| i@@65) (< i@@65 |l#1@@16|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@15| (- (- |l#3@@15| i@@65) |l#4@@15|)) |l#5@@15|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |321|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@16| Int) (|l#6@@10| T@$1_ValidatorConfig_Config) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19) (ite  (and (>= j@@19 |l#0@@18|) (< j@@19 |l#1@@17|)) (ite (< j@@19 |l#2@@16|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@16| j@@19) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@16| (+ j@@19 |l#5@@16|))) |l#6@@10|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |322|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Int|) (|l#4@@17| |T@[Int]Int|) (|l#5@@17| Int) (|l#6@@11| Int) (i@@66 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66) (ite  (and (>= i@@66 |l#0@@19|) (< i@@66 |l#1@@18|)) (ite (< i@@66 |l#2@@17|) (|Select__T@[Int]Int_| |l#3@@17| i@@66) (|Select__T@[Int]Int_| |l#4@@17| (- i@@66 |l#5@@17|))) |l#6@@11|))
 :qid |ValidatorConfigbpl.73:19|
 :skolemid |323|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Int|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| Int) (i@@67 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67) (ite  (and (<= |l#0@@20| i@@67) (< i@@67 |l#1@@19|)) (|Select__T@[Int]Int_| |l#2@@18| (- (- |l#3@@18| i@@67) |l#4@@18|)) |l#5@@18|))
 :qid |ValidatorConfigbpl.82:30|
 :skolemid |324|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Int|) (|l#4@@19| |T@[Int]Int|) (|l#5@@19| Int) (|l#6@@12| Int) (j@@20 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20) (ite  (and (>= j@@20 |l#0@@21|) (< j@@20 |l#1@@20|)) (ite (< j@@20 |l#2@@19|) (|Select__T@[Int]Int_| |l#3@@19| j@@20) (|Select__T@[Int]Int_| |l#4@@19| (+ j@@20 |l#5@@19|))) |l#6@@12|))
 :qid |ValidatorConfigbpl.63:20|
 :skolemid |325|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20))
)))
(assert (forall ((|l#0@@22| |T@[$EventRep]Int|) (|l#1@@21| |T@[$EventRep]Int|) (v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35) (- (|Select__T@[$EventRep]Int_| |l#0@@22| v@@35) (|Select__T@[$EventRep]Int_| |l#1@@21| v@@35)))
 :qid |ValidatorConfigbpl.154:29|
 :skolemid |326|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35))
)))
; Valid

