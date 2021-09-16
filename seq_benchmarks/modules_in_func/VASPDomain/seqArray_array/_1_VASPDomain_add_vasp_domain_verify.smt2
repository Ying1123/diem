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
(declare-datatypes ((T@$Memory_49945 0)) ((($Memory_49945 (|domain#$Memory_49945| |T@[Int]Bool|) (|contents#$Memory_49945| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_57093 0)) ((($Memory_57093 (|domain#$Memory_57093| |T@[Int]Bool|) (|contents#$Memory_57093| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_57368 0)) ((($Memory_57368 (|domain#$Memory_57368| |T@[Int]Bool|) (|contents#$Memory_57368| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_57468 0)) ((($Memory_57468 (|domain#$Memory_57468| |T@[Int]Bool|) (|contents#$Memory_57468| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_55405 0)) ((($Memory_55405 (|domain#$Memory_55405| |T@[Int]Bool|) (|contents#$Memory_55405| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_57008 0)) ((($Memory_57008 (|domain#$Memory_57008| |T@[Int]Bool|) (|contents#$Memory_57008| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_56948 0)) ((($Memory_56948 (|domain#$Memory_56948| |T@[Int]Bool|) (|contents#$Memory_56948| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_54588 0)) ((($Memory_54588 (|domain#$Memory_54588| |T@[Int]Bool|) (|contents#$Memory_54588| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_31288 0)) (((Vec_31288 (|v#Vec_31288| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_31288| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_31288) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_31249 0)) (((Vec_31249 (|v#Vec_31249| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_31249| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_31249) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_13392 0)) (((Vec_13392 (|v#Vec_13392| |T@[Int]Int|) (|l#Vec_13392| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_13392) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_56774 0)) ((($Memory_56774 (|domain#$Memory_56774| |T@[Int]Bool|) (|contents#$Memory_56774| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_13392) (|$base_url#$1_DualAttestation_Credential| T@Vec_13392) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_13392) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_56661 0)) ((($Memory_56661 (|domain#$Memory_56661| |T@[Int]Bool|) (|contents#$Memory_56661| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_13392) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_31445 0)) (((Vec_31445 (|v#Vec_31445| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_31445| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_31445) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_55341 0)) ((($Memory_55341 (|domain#$Memory_55341| |T@[Int]Bool|) (|contents#$Memory_55341| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_13392) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_13392) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_13392) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_31210 0)) (((Vec_31210 (|v#Vec_31210| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_31210| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_31210) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_31366 0)) (((Vec_31366 (|v#Vec_31366| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_31366| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_31366) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_54621 0)) ((($Memory_54621 (|domain#$Memory_54621| |T@[Int]Bool|) (|contents#$Memory_54621| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_13392) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_13392) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_54002 0)) ((($Memory_54002 (|domain#$Memory_54002| |T@[Int]Bool|) (|contents#$Memory_54002| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_13392) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_53481 0)) ((($Memory_53481 (|domain#$Memory_53481| |T@[Int]Bool|) (|contents#$Memory_53481| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_53154 0)) ((($Memory_53154 (|domain#$Memory_53154| |T@[Int]Bool|) (|contents#$Memory_53154| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_53032 0)) ((($Memory_53032 (|domain#$Memory_53032| |T@[Int]Bool|) (|contents#$Memory_53032| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_13392) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_13392) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_13392) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_13392) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_13392) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_13392) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_13392) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_31124 0)) (((Multiset_31124 (|v#Multiset_31124| |T@[$EventRep]Int|) (|l#Multiset_31124| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_31124| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_31124|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_55876 0)) ((($Mutation_55876 (|l#$Mutation_55876| T@$Location) (|p#$Mutation_55876| T@Vec_13392) (|v#$Mutation_55876| T@$1_VASPDomain_VASPDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_55811 0)) ((($Mutation_55811 (|l#$Mutation_55811| T@$Location) (|p#$Mutation_55811| T@Vec_13392) (|v#$Mutation_55811| T@$1_VASPDomain_VASPDomains) ) ) ))
(declare-datatypes ((T@$Mutation_50623 0)) ((($Mutation_50623 (|l#$Mutation_50623| T@$Location) (|p#$Mutation_50623| T@Vec_13392) (|v#$Mutation_50623| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_9306 0)) ((($Mutation_9306 (|l#$Mutation_9306| T@$Location) (|p#$Mutation_9306| T@Vec_13392) (|v#$Mutation_9306| Int) ) ) ))
(declare-datatypes ((T@$Mutation_46504 0)) ((($Mutation_46504 (|l#$Mutation_46504| T@$Location) (|p#$Mutation_46504| T@Vec_13392) (|v#$Mutation_46504| T@Vec_13392) ) ) ))
(declare-datatypes ((T@$Mutation_44927 0)) ((($Mutation_44927 (|l#$Mutation_44927| T@$Location) (|p#$Mutation_44927| T@Vec_13392) (|v#$Mutation_44927| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_43940 0)) ((($Mutation_43940 (|l#$Mutation_43940| T@$Location) (|p#$Mutation_43940| T@Vec_13392) (|v#$Mutation_43940| T@Vec_31210) ) ) ))
(declare-datatypes ((T@$Mutation_42285 0)) ((($Mutation_42285 (|l#$Mutation_42285| T@$Location) (|p#$Mutation_42285| T@Vec_13392) (|v#$Mutation_42285| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_41298 0)) ((($Mutation_41298 (|l#$Mutation_41298| T@$Location) (|p#$Mutation_41298| T@Vec_13392) (|v#$Mutation_41298| T@Vec_31445) ) ) ))
(declare-datatypes ((T@$Mutation_39620 0)) ((($Mutation_39620 (|l#$Mutation_39620| T@$Location) (|p#$Mutation_39620| T@Vec_13392) (|v#$Mutation_39620| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_38633 0)) ((($Mutation_38633 (|l#$Mutation_38633| T@$Location) (|p#$Mutation_38633| T@Vec_13392) (|v#$Mutation_38633| T@Vec_31366) ) ) ))
(declare-datatypes ((T@$Mutation_36833 0)) ((($Mutation_36833 (|l#$Mutation_36833| T@$Location) (|p#$Mutation_36833| T@Vec_13392) (|v#$Mutation_36833| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_35846 0)) ((($Mutation_35846 (|l#$Mutation_35846| T@$Location) (|p#$Mutation_35846| T@Vec_13392) (|v#$Mutation_35846| T@Vec_31288) ) ) ))
(declare-datatypes ((T@$Mutation_34133 0)) ((($Mutation_34133 (|l#$Mutation_34133| T@$Location) (|p#$Mutation_34133| T@Vec_13392) (|v#$Mutation_34133| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_33146 0)) ((($Mutation_33146 (|l#$Mutation_33146| T@$Location) (|p#$Mutation_33146| T@Vec_13392) (|v#$Mutation_33146| T@Vec_31249) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_31249 T@Vec_31249) Bool)
(declare-fun InRangeVec_26878 (T@Vec_31249 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_31249) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_31249 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_31288 T@Vec_31288) Bool)
(declare-fun InRangeVec_27079 (T@Vec_31288 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_31288) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_31288 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_31366 T@Vec_31366) Bool)
(declare-fun InRangeVec_27280 (T@Vec_31366 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_13392 T@Vec_13392) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_31366) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_31366 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_31445 T@Vec_31445) Bool)
(declare-fun InRangeVec_27481 (T@Vec_31445 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_31445) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_31445 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_31210 T@Vec_31210) Bool)
(declare-fun InRangeVec_27682 (T@Vec_31210 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_31210) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_31210 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_13392 T@Vec_13392) Bool)
(declare-fun InRangeVec_8682 (T@Vec_13392 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_13392) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_13392 Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_13392) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_13392 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_13392) T@Vec_13392)
(declare-fun $1_Hash_sha3 (T@Vec_13392) T@Vec_13392)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_13392) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_13392 T@Vec_13392 T@Vec_13392) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_31124_| (|T@[$1_Event_EventHandle]Multiset_31124| T@$1_Event_EventHandle) T@Multiset_31124)
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
(declare-fun IndexOfVec_13392 (T@Vec_13392 Int) Int)
(declare-fun IndexOfVec_31210 (T@Vec_31210 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_31249 (T@Vec_31249 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_31288 (T@Vec_31288 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_31366 (T@Vec_31366 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_31445 (T@Vec_31445 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_31124| |T@[$1_Event_EventHandle]Multiset_31124|) |T@[$1_Event_EventHandle]Multiset_31124|)
(declare-fun |lambda#21| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#4| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#19| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |VASPDomainbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |VASPDomainbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |VASPDomainbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |VASPDomainbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |VASPDomainbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |VASPDomainbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |VASPDomainbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |VASPDomainbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_31249) (v2 T@Vec_31249) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2)  (and (= (|l#Vec_31249| v1) (|l#Vec_31249| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_26878 v1 i@@0) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_31249| v1) i@@0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_31249| v2) i@@0)))
 :qid |VASPDomainbpl.615:13|
 :skolemid |17|
))))
 :qid |VASPDomainbpl.613:62|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_31249) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_31249| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_26878 v@@4 i@@1) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_31249| v@@4) i@@1)))
 :qid |VASPDomainbpl.621:13|
 :skolemid |19|
))))
 :qid |VASPDomainbpl.619:62|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_31249) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@2 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_26878 v@@5 i@@3)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_31249| v@@5) i@@3) e))
 :qid |VASPDomainbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_26878 v@@5 i@@2)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_31249| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_31249| v@@5) j) e)))
 :qid |VASPDomainbpl.634:17|
 :skolemid |22|
)))))
 :qid |VASPDomainbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_31288) (v2@@0 T@Vec_31288) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_31288| v1@@0) (|l#Vec_31288| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_27079 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_31288| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_31288| v2@@0) i@@4)))
 :qid |VASPDomainbpl.796:13|
 :skolemid |24|
))))
 :qid |VASPDomainbpl.794:59|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_31288) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_31288| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_27079 v@@6 i@@5) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_31288| v@@6) i@@5)))
 :qid |VASPDomainbpl.802:13|
 :skolemid |26|
))))
 :qid |VASPDomainbpl.800:59|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_31288) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_27079 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_31288| v@@7) i@@7) e@@0))
 :qid |VASPDomainbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_27079 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_31288| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_31288| v@@7) j@@0) e@@0)))
 :qid |VASPDomainbpl.815:17|
 :skolemid |29|
)))))
 :qid |VASPDomainbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_31366) (v2@@1 T@Vec_31366) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1)  (and (= (|l#Vec_31366| v1@@1) (|l#Vec_31366| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_27280 v1@@1 i@@8) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v1@@1) i@@8)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v2@@1) i@@8))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v1@@1) i@@8)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v2@@1) i@@8)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v1@@1) i@@8))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v2@@1) i@@8)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v1@@1) i@@8))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v2@@1) i@@8))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v1@@1) i@@8))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v2@@1) i@@8)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v1@@1) i@@8)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v2@@1) i@@8)))))
 :qid |VASPDomainbpl.977:13|
 :skolemid |31|
))))
 :qid |VASPDomainbpl.975:53|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_31366) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_31366| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_27280 v@@8 i@@9) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@8) i@@9)))
 :qid |VASPDomainbpl.983:13|
 :skolemid |33|
))))
 :qid |VASPDomainbpl.981:53|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_31366) (e@@1 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_27280 v@@9 i@@11)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) i@@11)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) i@@11)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) i@@11))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) i@@11))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) i@@11))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) i@@11)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1))))
 :qid |VASPDomainbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_27280 v@@9 i@@10)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) i@@10)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) i@@10)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) i@@10))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) i@@10))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) i@@10))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) i@@10)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) j@@1)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) j@@1)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) j@@1))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) j@@1))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) j@@1))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@9) j@@1)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))))
 :qid |VASPDomainbpl.996:17|
 :skolemid |36|
)))))
 :qid |VASPDomainbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_31445) (v2@@2 T@Vec_31445) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@2 v2@@2)  (and (= (|l#Vec_31445| v1@@2) (|l#Vec_31445| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_27481 v1@@2 i@@12) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| v1@@2) i@@12)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| v2@@2) i@@12))))
 :qid |VASPDomainbpl.1158:13|
 :skolemid |38|
))))
 :qid |VASPDomainbpl.1156:50|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_31445) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_31445| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_27481 v@@10 i@@13) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| v@@10) i@@13)))
 :qid |VASPDomainbpl.1164:13|
 :skolemid |40|
))))
 :qid |VASPDomainbpl.1162:50|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_31445) (e@@2 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@14 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_27481 v@@11 i@@15)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| v@@11) i@@15)) (|$domain#$1_VASPDomain_VASPDomain| e@@2)))
 :qid |VASPDomainbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_27481 v@@11 i@@14)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| v@@11) i@@14)) (|$domain#$1_VASPDomain_VASPDomain| e@@2))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| v@@11) j@@2)) (|$domain#$1_VASPDomain_VASPDomain| e@@2))))
 :qid |VASPDomainbpl.1177:17|
 :skolemid |43|
)))))
 :qid |VASPDomainbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_31210) (v2@@3 T@Vec_31210) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@3 v2@@3)  (and (= (|l#Vec_31210| v1@@3) (|l#Vec_31210| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_27682 v1@@3 i@@16) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v1@@3) i@@16)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v1@@3) i@@16)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v2@@3) i@@16)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v1@@3) i@@16)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v2@@3) i@@16)))))
 :qid |VASPDomainbpl.1339:13|
 :skolemid |45|
))))
 :qid |VASPDomainbpl.1337:51|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_31210) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_31210| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_27682 v@@12 i@@17) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v@@12) i@@17)))
 :qid |VASPDomainbpl.1345:13|
 :skolemid |47|
))))
 :qid |VASPDomainbpl.1343:51|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_31210) (e@@3 T@$1_ValidatorConfig_Config) ) (! (let ((i@@18 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_27682 v@@13 i@@19)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v@@13) i@@19)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v@@13) i@@19)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v@@13) i@@19)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3))))
 :qid |VASPDomainbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_27682 v@@13 i@@18)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v@@13) i@@18)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v@@13) i@@18)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v@@13) i@@18)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v@@13) j@@3)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v@@13) j@@3)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v@@13) j@@3)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3)))))
 :qid |VASPDomainbpl.1358:17|
 :skolemid |50|
)))))
 :qid |VASPDomainbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_13392) (v2@@4 T@Vec_13392) ) (! (= (|$IsEqual'vec'address''| v1@@4 v2@@4)  (and (= (|l#Vec_13392| v1@@4) (|l#Vec_13392| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_8682 v1@@4 i@@20) (= (|Select__T@[Int]Int_| (|v#Vec_13392| v1@@4) i@@20) (|Select__T@[Int]Int_| (|v#Vec_13392| v2@@4) i@@20)))
 :qid |VASPDomainbpl.1520:13|
 :skolemid |52|
))))
 :qid |VASPDomainbpl.1518:33|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'address''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_13392) ) (! (= (|$IsValid'vec'address''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_13392| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_8682 v@@14 i@@21) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_13392| v@@14) i@@21)))
 :qid |VASPDomainbpl.1526:13|
 :skolemid |54|
))))
 :qid |VASPDomainbpl.1524:33|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'address''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_13392) (e@@4 Int) ) (! (let ((i@@22 (|$IndexOfVec'address'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_8682 v@@15 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_13392| v@@15) i@@23) e@@4))
 :qid |VASPDomainbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_8682 v@@15 i@@22)) (= (|Select__T@[Int]Int_| (|v#Vec_13392| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (= (|Select__T@[Int]Int_| (|v#Vec_13392| v@@15) j@@4) e@@4)))
 :qid |VASPDomainbpl.1539:17|
 :skolemid |57|
)))))
 :qid |VASPDomainbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'address'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_13392) (v2@@5 T@Vec_13392) ) (! (= (|$IsEqual'vec'u8''| v1@@5 v2@@5)  (and (= (|l#Vec_13392| v1@@5) (|l#Vec_13392| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_8682 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_13392| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_13392| v2@@5) i@@24)))
 :qid |VASPDomainbpl.1701:13|
 :skolemid |59|
))))
 :qid |VASPDomainbpl.1699:28|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'u8''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_13392) ) (! (= (|$IsValid'vec'u8''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_13392| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_8682 v@@16 i@@25) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_13392| v@@16) i@@25)))
 :qid |VASPDomainbpl.1707:13|
 :skolemid |61|
))))
 :qid |VASPDomainbpl.1705:28|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'u8''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_13392) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'u8'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_8682 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_13392| v@@17) i@@27) e@@5))
 :qid |VASPDomainbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_8682 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_13392| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_13392| v@@17) j@@5) e@@5)))
 :qid |VASPDomainbpl.1720:17|
 :skolemid |64|
)))))
 :qid |VASPDomainbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'u8'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_13392) (v2@@6 T@Vec_13392) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6)))
 :qid |VASPDomainbpl.1893:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha2 v1@@6) ($1_Hash_sha2 v2@@6))
)))
(assert (forall ((v1@@7 T@Vec_13392) (v2@@7 T@Vec_13392) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7)))
 :qid |VASPDomainbpl.1909:15|
 :skolemid |67|
 :pattern ( ($1_Hash_sha3 v1@@7) ($1_Hash_sha3 v2@@7))
)))
(assert (forall ((k1 T@Vec_13392) (k2 T@Vec_13392) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |VASPDomainbpl.1980:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_13392) (s2 T@Vec_13392) (k1@@0 T@Vec_13392) (k2@@0 T@Vec_13392) (m1 T@Vec_13392) (m2 T@Vec_13392) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |VASPDomainbpl.1983:15|
 :skolemid |69|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_31124| stream) 0) (forall ((v@@18 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_31124| stream) v@@18) 0)
 :qid |VASPDomainbpl.159:13|
 :skolemid |4|
))))
 :qid |VASPDomainbpl.2044:13|
 :skolemid |70|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h) true)
 :qid |VASPDomainbpl.2085:80|
 :skolemid |72|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h))
)))
(assert (forall ((v1@@8 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@8 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@8) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@8)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@8) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@8))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@8) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@8))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@8)))
 :qid |VASPDomainbpl.2091:15|
 :skolemid |73|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@8))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0) true)
 :qid |VASPDomainbpl.2141:78|
 :skolemid |74|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0))
)))
(assert (forall ((v1@@9 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@9 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@9) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@9)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@9) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@9))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@9) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@9))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@9) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@9))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@9) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@9)))
 :qid |VASPDomainbpl.2147:15|
 :skolemid |75|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@9) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@9))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1) true)
 :qid |VASPDomainbpl.2197:74|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@10 T@$1_DiemAccount_SentPaymentEvent) (v2@@10 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@10) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@10)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@10) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@10))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@10) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@10))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@10) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@10))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@10) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@10)))
 :qid |VASPDomainbpl.2203:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@10) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@10))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@2) true)
 :qid |VASPDomainbpl.2253:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@2))
)))
(assert (forall ((v1@@11 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@11 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@11) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@11)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@11) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@11))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@11) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@11)))
 :qid |VASPDomainbpl.2259:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@11) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@11))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@3) true)
 :qid |VASPDomainbpl.2309:88|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@3))
)))
(assert (forall ((v1@@12 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@12 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@12) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@12)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@12) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@12))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@12) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@12)))
 :qid |VASPDomainbpl.2315:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@12) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@12))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@4) true)
 :qid |VASPDomainbpl.2365:72|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@4))
)))
(assert (forall ((v1@@13 T@$1_VASPDomain_VASPDomainEvent) (v2@@13 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@13) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@13)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@13)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@13)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@13) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@13))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@13) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@13)))
 :qid |VASPDomainbpl.2371:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@13) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@13))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |VASPDomainbpl.2432:61|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |VASPDomainbpl.2491:36|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |VASPDomainbpl.2510:71|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |VASPDomainbpl.2538:46|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |VASPDomainbpl.2550:64|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |VASPDomainbpl.2562:75|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |VASPDomainbpl.2574:72|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |VASPDomainbpl.2602:55|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |VASPDomainbpl.2625:46|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |VASPDomainbpl.2644:49|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |VASPDomainbpl.2664:71|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@10)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@10))))
 :qid |VASPDomainbpl.2685:45|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@11)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@11))))
 :qid |VASPDomainbpl.2708:48|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11))
)))
(assert (forall ((s@@12 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@12)))
 :qid |VASPDomainbpl.2726:45|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@13)))
 :qid |VASPDomainbpl.2739:45|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@13))
)))
(assert (forall ((s@@14 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@14) true)
 :qid |VASPDomainbpl.2752:31|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@14))
)))
(assert (forall ((s@@15 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@15) true)
 :qid |VASPDomainbpl.2765:31|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@15))
)))
(assert (forall ((s@@16 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@16)))
 :qid |VASPDomainbpl.2788:45|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@16))
)))
(assert (forall ((s@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@17))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@17))))
 :qid |VASPDomainbpl.2806:50|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@17))
)))
(assert (forall ((s@@18 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@18)))
 :qid |VASPDomainbpl.2822:52|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@18))
)))
(assert (forall ((s@@19 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@19)))
 :qid |VASPDomainbpl.2835:46|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@19))
)))
(assert (forall ((s@@20 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@20) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@20)))
 :qid |VASPDomainbpl.5352:38|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@20))
)))
(assert (forall ((s@@21 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@21) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@21)))
 :qid |VASPDomainbpl.5366:39|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@22)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@22))))
 :qid |VASPDomainbpl.5388:60|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@23))))
 :qid |VASPDomainbpl.5405:66|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@24)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@24)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@24))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@24))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@24))))
 :qid |VASPDomainbpl.5434:50|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@25) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@25)))
 :qid |VASPDomainbpl.5457:47|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@26)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@26)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@26))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@26))))
 :qid |VASPDomainbpl.5476:58|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@27)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@27)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@27))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@27))))
 :qid |VASPDomainbpl.5512:47|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@28)))
 :qid |VASPDomainbpl.5535:55|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@29)))
 :qid |VASPDomainbpl.5549:55|
 :skolemid |253|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@30) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@30)))
 :qid |VASPDomainbpl.5563:57|
 :skolemid |254|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@30))
)))
(assert (forall ((s@@31 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@31)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@31))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@31))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@31))))
 :qid |VASPDomainbpl.5585:56|
 :skolemid |255|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@32)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@32))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@32))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@32))))
 :qid |VASPDomainbpl.5612:52|
 :skolemid |256|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@33) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@33)))
 :qid |VASPDomainbpl.5630:54|
 :skolemid |257|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@33))
)))
(assert (forall ((v@@19 T@Vec_31249) (i@@28 Int) ) (! (= (InRangeVec_26878 v@@19 i@@28)  (and (>= i@@28 0) (< i@@28 (|l#Vec_31249| v@@19))))
 :qid |VASPDomainbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_26878 v@@19 i@@28))
)))
(assert (forall ((v@@20 T@Vec_31288) (i@@29 Int) ) (! (= (InRangeVec_27079 v@@20 i@@29)  (and (>= i@@29 0) (< i@@29 (|l#Vec_31288| v@@20))))
 :qid |VASPDomainbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_27079 v@@20 i@@29))
)))
(assert (forall ((v@@21 T@Vec_31366) (i@@30 Int) ) (! (= (InRangeVec_27280 v@@21 i@@30)  (and (>= i@@30 0) (< i@@30 (|l#Vec_31366| v@@21))))
 :qid |VASPDomainbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_27280 v@@21 i@@30))
)))
(assert (forall ((v@@22 T@Vec_31445) (i@@31 Int) ) (! (= (InRangeVec_27481 v@@22 i@@31)  (and (>= i@@31 0) (< i@@31 (|l#Vec_31445| v@@22))))
 :qid |VASPDomainbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_27481 v@@22 i@@31))
)))
(assert (forall ((v@@23 T@Vec_31210) (i@@32 Int) ) (! (= (InRangeVec_27682 v@@23 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_31210| v@@23))))
 :qid |VASPDomainbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_27682 v@@23 i@@32))
)))
(assert (forall ((v@@24 T@Vec_13392) (i@@33 Int) ) (! (= (InRangeVec_8682 v@@24 i@@33)  (and (>= i@@33 0) (< i@@33 (|l#Vec_13392| v@@24))))
 :qid |VASPDomainbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_8682 v@@24 i@@33))
)))
(assert (forall ((v@@25 T@Vec_13392) (e@@6 Int) ) (! (let ((i@@34 (IndexOfVec_13392 v@@25 e@@6)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (InRangeVec_8682 v@@25 i@@35) (= (|Select__T@[Int]Int_| (|v#Vec_13392| v@@25) i@@35) e@@6))
 :qid |VASPDomainbpl.109:13|
 :skolemid |0|
))) (= i@@34 (- 0 1))  (and (and (InRangeVec_8682 v@@25 i@@34) (= (|Select__T@[Int]Int_| (|v#Vec_13392| v@@25) i@@34) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (>= j@@6 0) (< j@@6 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_13392| v@@25) j@@6) e@@6)))
 :qid |VASPDomainbpl.117:17|
 :skolemid |1|
)))))
 :qid |VASPDomainbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_13392 v@@25 e@@6))
)))
(assert (forall ((v@@26 T@Vec_31210) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@36 (IndexOfVec_31210 v@@26 e@@7)))
(ite  (not (exists ((i@@37 Int) ) (!  (and (InRangeVec_27682 v@@26 i@@37) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v@@26) i@@37) e@@7))
 :qid |VASPDomainbpl.109:13|
 :skolemid |0|
))) (= i@@36 (- 0 1))  (and (and (InRangeVec_27682 v@@26 i@@36) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v@@26) i@@36) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@36)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_31210| v@@26) j@@7) e@@7)))
 :qid |VASPDomainbpl.117:17|
 :skolemid |1|
)))))
 :qid |VASPDomainbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_31210 v@@26 e@@7))
)))
(assert (forall ((v@@27 T@Vec_31249) (e@@8 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@38 (IndexOfVec_31249 v@@27 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (InRangeVec_26878 v@@27 i@@39) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_31249| v@@27) i@@39) e@@8))
 :qid |VASPDomainbpl.109:13|
 :skolemid |0|
))) (= i@@38 (- 0 1))  (and (and (InRangeVec_26878 v@@27 i@@38) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_31249| v@@27) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_31249| v@@27) j@@8) e@@8)))
 :qid |VASPDomainbpl.117:17|
 :skolemid |1|
)))))
 :qid |VASPDomainbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_31249 v@@27 e@@8))
)))
(assert (forall ((v@@28 T@Vec_31288) (e@@9 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@40 (IndexOfVec_31288 v@@28 e@@9)))
(ite  (not (exists ((i@@41 Int) ) (!  (and (InRangeVec_27079 v@@28 i@@41) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_31288| v@@28) i@@41) e@@9))
 :qid |VASPDomainbpl.109:13|
 :skolemid |0|
))) (= i@@40 (- 0 1))  (and (and (InRangeVec_27079 v@@28 i@@40) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_31288| v@@28) i@@40) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@40)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_31288| v@@28) j@@9) e@@9)))
 :qid |VASPDomainbpl.117:17|
 :skolemid |1|
)))))
 :qid |VASPDomainbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_31288 v@@28 e@@9))
)))
(assert (forall ((v@@29 T@Vec_31366) (e@@10 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@42 (IndexOfVec_31366 v@@29 e@@10)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (InRangeVec_27280 v@@29 i@@43) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@29) i@@43) e@@10))
 :qid |VASPDomainbpl.109:13|
 :skolemid |0|
))) (= i@@42 (- 0 1))  (and (and (InRangeVec_27280 v@@29 i@@42) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@29) i@@42) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@42)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| v@@29) j@@10) e@@10)))
 :qid |VASPDomainbpl.117:17|
 :skolemid |1|
)))))
 :qid |VASPDomainbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_31366 v@@29 e@@10))
)))
(assert (forall ((v@@30 T@Vec_31445) (e@@11 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@44 (IndexOfVec_31445 v@@30 e@@11)))
(ite  (not (exists ((i@@45 Int) ) (!  (and (InRangeVec_27481 v@@30 i@@45) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| v@@30) i@@45) e@@11))
 :qid |VASPDomainbpl.109:13|
 :skolemid |0|
))) (= i@@44 (- 0 1))  (and (and (InRangeVec_27481 v@@30 i@@44) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| v@@30) i@@44) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@44)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| v@@30) j@@11) e@@11)))
 :qid |VASPDomainbpl.117:17|
 :skolemid |1|
)))))
 :qid |VASPDomainbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_31445 v@@30 e@@11))
)))
(assert (forall ((|l#0| Bool) (i@@46 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@46) |l#0|)
 :qid |VASPDomainbpl.275:54|
 :skolemid |258|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@46))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_31124|) (|l#1| |T@[$1_Event_EventHandle]Multiset_31124|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| |l#1| handle@@0))))
(Multiset_31124 (|lambda#21| (|v#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| |l#0@@0| handle@@0)) (|v#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |VASPDomainbpl.2054:13|
 :skolemid |259|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5| Int) (|l#6| T@$1_DiemAccount_KeyRotationCapability) (i@@47 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@47) (ite  (and (>= i@@47 |l#0@@1|) (< i@@47 |l#1@@0|)) (ite (< i@@47 |l#2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3| i@@47) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4| (- i@@47 |l#5|))) |l#6|))
 :qid |VASPDomainbpl.73:19|
 :skolemid |260|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@47))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_DiemAccount_KeyRotationCapability) (i@@48 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@48) (ite  (and (<= |l#0@@2| i@@48) (< i@@48 |l#1@@1|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@0| (- (- |l#3@@0| i@@48) |l#4@@0|)) |l#5@@0|))
 :qid |VASPDomainbpl.82:30|
 :skolemid |261|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@48))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@1| Int) (|l#6@@0| T@$1_DiemAccount_KeyRotationCapability) (j@@12 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@12) (ite  (and (>= j@@12 |l#0@@3|) (< j@@12 |l#1@@2|)) (ite (< j@@12 |l#2@@1|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@1| j@@12) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@1| (+ j@@12 |l#5@@1|))) |l#6@@0|))
 :qid |VASPDomainbpl.63:20|
 :skolemid |262|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@12))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_WithdrawCapability) (i@@49 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@49) (ite  (and (>= i@@49 |l#0@@4|) (< i@@49 |l#1@@3|)) (ite (< i@@49 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@2| i@@49) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@2| (- i@@49 |l#5@@2|))) |l#6@@1|))
 :qid |VASPDomainbpl.73:19|
 :skolemid |263|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@49))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_WithdrawCapability) (i@@50 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@50) (ite  (and (<= |l#0@@5| i@@50) (< i@@50 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@3| (- (- |l#3@@3| i@@50) |l#4@@3|)) |l#5@@3|))
 :qid |VASPDomainbpl.82:30|
 :skolemid |264|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@50))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_WithdrawCapability) (j@@13 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@13) (ite  (and (>= j@@13 |l#0@@6|) (< j@@13 |l#1@@5|)) (ite (< j@@13 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@4| j@@13) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@4| (+ j@@13 |l#5@@4|))) |l#6@@2|))
 :qid |VASPDomainbpl.63:20|
 :skolemid |265|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@13))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemSystem_ValidatorInfo) (i@@51 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@51) (ite  (and (>= i@@51 |l#0@@7|) (< i@@51 |l#1@@6|)) (ite (< i@@51 |l#2@@5|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@5| i@@51) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@5| (- i@@51 |l#5@@5|))) |l#6@@3|))
 :qid |VASPDomainbpl.73:19|
 :skolemid |266|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@51))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemSystem_ValidatorInfo) (i@@52 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@52) (ite  (and (<= |l#0@@8| i@@52) (< i@@52 |l#1@@7|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@6| (- (- |l#3@@6| i@@52) |l#4@@6|)) |l#5@@6|))
 :qid |VASPDomainbpl.82:30|
 :skolemid |267|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@52))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemSystem_ValidatorInfo) (j@@14 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@14) (ite  (and (>= j@@14 |l#0@@9|) (< j@@14 |l#1@@8|)) (ite (< j@@14 |l#2@@7|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@7| j@@14) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@7| (+ j@@14 |l#5@@7|))) |l#6@@4|))
 :qid |VASPDomainbpl.63:20|
 :skolemid |268|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@14))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@8| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@8| Int) (|l#6@@5| T@$1_VASPDomain_VASPDomain) (i@@53 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@53) (ite  (and (>= i@@53 |l#0@@10|) (< i@@53 |l#1@@9|)) (ite (< i@@53 |l#2@@8|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@8| i@@53) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@8| (- i@@53 |l#5@@8|))) |l#6@@5|))
 :qid |VASPDomainbpl.73:19|
 :skolemid |269|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@53))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_VASPDomain_VASPDomain) (i@@54 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@54) (ite  (and (<= |l#0@@11| i@@54) (< i@@54 |l#1@@10|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@9| (- (- |l#3@@9| i@@54) |l#4@@9|)) |l#5@@9|))
 :qid |VASPDomainbpl.82:30|
 :skolemid |270|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@54))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@10| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@10| Int) (|l#6@@6| T@$1_VASPDomain_VASPDomain) (j@@15 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@15) (ite  (and (>= j@@15 |l#0@@12|) (< j@@15 |l#1@@11|)) (ite (< j@@15 |l#2@@10|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@10| j@@15) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@10| (+ j@@15 |l#5@@10|))) |l#6@@6|))
 :qid |VASPDomainbpl.63:20|
 :skolemid |271|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@15))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@11| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@11| Int) (|l#6@@7| T@$1_ValidatorConfig_Config) (i@@55 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@55) (ite  (and (>= i@@55 |l#0@@13|) (< i@@55 |l#1@@12|)) (ite (< i@@55 |l#2@@11|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@11| i@@55) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@11| (- i@@55 |l#5@@11|))) |l#6@@7|))
 :qid |VASPDomainbpl.73:19|
 :skolemid |272|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@55))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_ValidatorConfig_Config) (i@@56 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@56) (ite  (and (<= |l#0@@14| i@@56) (< i@@56 |l#1@@13|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@12| (- (- |l#3@@12| i@@56) |l#4@@12|)) |l#5@@12|))
 :qid |VASPDomainbpl.82:30|
 :skolemid |273|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@56))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@13| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@13| Int) (|l#6@@8| T@$1_ValidatorConfig_Config) (j@@16 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@16) (ite  (and (>= j@@16 |l#0@@15|) (< j@@16 |l#1@@14|)) (ite (< j@@16 |l#2@@13|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@13| j@@16) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@13| (+ j@@16 |l#5@@13|))) |l#6@@8|))
 :qid |VASPDomainbpl.63:20|
 :skolemid |274|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@16))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]Int|) (|l#4@@14| |T@[Int]Int|) (|l#5@@14| Int) (|l#6@@9| Int) (i@@57 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@57) (ite  (and (>= i@@57 |l#0@@16|) (< i@@57 |l#1@@15|)) (ite (< i@@57 |l#2@@14|) (|Select__T@[Int]Int_| |l#3@@14| i@@57) (|Select__T@[Int]Int_| |l#4@@14| (- i@@57 |l#5@@14|))) |l#6@@9|))
 :qid |VASPDomainbpl.73:19|
 :skolemid |275|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@57))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]Int|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| Int) (i@@58 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@58) (ite  (and (<= |l#0@@17| i@@58) (< i@@58 |l#1@@16|)) (|Select__T@[Int]Int_| |l#2@@15| (- (- |l#3@@15| i@@58) |l#4@@15|)) |l#5@@15|))
 :qid |VASPDomainbpl.82:30|
 :skolemid |276|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@58))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]Int|) (|l#4@@16| |T@[Int]Int|) (|l#5@@16| Int) (|l#6@@10| Int) (j@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@17) (ite  (and (>= j@@17 |l#0@@18|) (< j@@17 |l#1@@17|)) (ite (< j@@17 |l#2@@16|) (|Select__T@[Int]Int_| |l#3@@16| j@@17) (|Select__T@[Int]Int_| |l#4@@16| (+ j@@17 |l#5@@16|))) |l#6@@10|))
 :qid |VASPDomainbpl.63:20|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@17))
)))
(assert (forall ((|l#0@@19| |T@[$EventRep]Int|) (|l#1@@18| |T@[$EventRep]Int|) (v@@31 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#21| |l#0@@19| |l#1@@18|) v@@31) (- (|Select__T@[$EventRep]Int_| |l#0@@19| v@@31) (|Select__T@[$EventRep]Int_| |l#1@@18| v@@31)))
 :qid |VASPDomainbpl.154:29|
 :skolemid |278|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#21| |l#0@@19| |l#1@@18|) v@@31))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t37 () T@Vec_31445)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int) T@$1_VASPDomain_VASPDomains)
(declare-fun $1_VASPDomain_VASPDomains_$memory@0 () T@$Memory_55341)
(declare-fun _$t1 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_55341)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_55405)
(declare-fun $t11 () T@Vec_31445)
(declare-fun _$t2 () T@Vec_13392)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_53154)
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
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_31124_| (|T@[$1_Event_EventHandle]Multiset_31124| T@$1_Event_EventHandle T@Multiset_31124) |T@[$1_Event_EventHandle]Multiset_31124|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_31124|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_31124)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|Store__T@[$1_Event_EventHandle]Multiset_31124_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_31124|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_31124)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|Store__T@[$1_Event_EventHandle]Multiset_31124_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_31124_| ?x0 ?y1))) :weight 0)))
(declare-fun $t17@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0 () T@$Mutation_50623)
(declare-fun $t36@0 () T@$1_VASPDomain_VASPDomainEvent)
(declare-fun $t33@1 () T@$Mutation_55876)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 () T@$1_VASPDomain_VASPDomain)
(declare-fun $t33 () T@$Mutation_55876)
(declare-fun $t33@0 () T@$Mutation_55876)
(declare-fun MapConstVec_8911 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_8911 () Int)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|T@[Int]$1_VASPDomain_VASPDomainManager| Int) T@$1_VASPDomain_VASPDomainManager)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t24@2 () T@$Mutation_55811)
(declare-fun $t24@1 () T@$Mutation_55811)
(declare-fun |inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$m'@1| () T@$Mutation_41298)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int T@$1_VASPDomain_VASPDomains) |T@[Int]$1_VASPDomain_VASPDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun $t31@0 () T@$Mutation_41298)
(declare-fun |Store__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomain|) ( ?x1 Int) ( ?x2 T@$1_VASPDomain_VASPDomain)) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|Store__T@[Int]$1_VASPDomain_VASPDomain_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomain|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASPDomain_VASPDomain)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|Store__T@[Int]$1_VASPDomain_VASPDomain_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t30 () Int)
(declare-fun |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$res@1| () Bool)
(declare-fun $t26@0 () T@Vec_31445)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t4@1 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@0 () T@$1_VASPDomain_VASPDomain)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t8@0 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t9@1 () T@$1_VASPDomain_VASPDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |$temp_0'$1_VASPDomain_VASPDomains'@0| () T@$1_VASPDomain_VASPDomains)
(declare-fun $t24 () T@$Mutation_55811)
(declare-fun $t24@0 () T@$Mutation_55811)
(declare-fun $abort_code@0 () Int)
(declare-fun $t21@0 () Bool)
(declare-fun $t23 () Int)
(declare-fun inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 () Bool)
(declare-fun $t20 () Int)
(declare-fun $t16 () Bool)
(declare-fun $t15 () Int)
(declare-fun $t17 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_53032)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_53481)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_54002)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_54621)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_56661)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_56774)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_56948)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_57008)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_57093)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_54588)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_57368)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_57468)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $t9 () T@$Mutation_55811)
(declare-fun $t31 () T@$Mutation_41298)
(declare-fun $t34 () T@$Mutation_50623)
(push 1)
(set-info :boogie-vc-id $1_VASPDomain_add_vasp_domain$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 89450) (let ((anon45_Else_correct  (=> (and (not $abort_flag@2) (= $t37 (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_55341| $1_VASPDomain_VASPDomains_$memory@0) _$t1)))) (and (=> (= (ControlFlow 0 76861) (- 0 92308)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) _$t1))) (and (=> (= (ControlFlow 0 76861) (- 0 92319)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_55405| $1_VASPDomain_VASPDomainManager_$memory) 186537453)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_55405| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (and (=> (= (ControlFlow 0 76861) (- 0 92329)) (not (exists ((i@@59 Int) ) (!  (and (and (|$IsValid'u64'| i@@59) (InRangeVec_27481 $t11 i@@59)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| $t11) i@@59)) (|$domain#$1_VASPDomain_VASPDomain| ($1_VASPDomain_VASPDomain _$t2))))
 :qid |VASPDomainbpl.1169:13|
 :skolemid |42|
)))) (=> (not (exists ((i@@60 Int) ) (!  (and (and (|$IsValid'u64'| i@@60) (InRangeVec_27481 $t11 i@@60)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| $t11) i@@60)) (|$domain#$1_VASPDomain_VASPDomain| ($1_VASPDomain_VASPDomain _$t2))))
 :qid |VASPDomainbpl.1169:13|
 :skolemid |42|
))) (and (=> (= (ControlFlow 0 76861) (- 0 92341)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) $t12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) $t12))) (and (=> (= (ControlFlow 0 76861) (- 0 92353)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) $t12)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) $t12)) 1))) (and (=> (= (ControlFlow 0 76861) (- 0 92371)) (not (not (= (|$addr#$signer| _$t0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0) 186537453))) (and (=> (= (ControlFlow 0 76861) (- 0 92385)) (not (> (|l#Vec_13392| _$t2) 63))) (=> (not (> (|l#Vec_13392| _$t2) 63)) (and (=> (= (ControlFlow 0 76861) (- 0 92397)) (exists ((i@@61 Int) ) (!  (and (and (|$IsValid'u64'| i@@61) (InRangeVec_27481 $t37 i@@61)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| $t37) i@@61)) (|$domain#$1_VASPDomain_VASPDomain| ($1_VASPDomain_VASPDomain _$t2))))
 :qid |VASPDomainbpl.1169:13|
 :skolemid |42|
))) (=> (exists ((i@@62 Int) ) (!  (and (and (|$IsValid'u64'| i@@62) (InRangeVec_27481 $t37 i@@62)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| $t37) i@@62)) (|$domain#$1_VASPDomain_VASPDomain| ($1_VASPDomain_VASPDomain _$t2))))
 :qid |VASPDomainbpl.1169:13|
 :skolemid |42|
)) (and (=> (= (ControlFlow 0 76861) (- 0 92407)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new (let ((len (|l#Multiset_31124| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_31124| stream@@0) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14))))
(Multiset_31124 (|Store__T@[$EventRep]Int_| (|v#Multiset_31124| stream@@0) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@32 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| expected) handle@@1)) v@@32) (|Select__T@[$EventRep]Int_| (|v#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| actual) handle@@1)) v@@32))
 :qid |VASPDomainbpl.164:13|
 :skolemid |5|
)))
 :qid |VASPDomainbpl.2060:13|
 :skolemid |71|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_31124| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_31124| stream@@1) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14))))
(Multiset_31124 (|Store__T@[$EventRep]Int_| (|v#Multiset_31124| stream@@1) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@33 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| expected@@0) handle@@2)) v@@33) (|Select__T@[$EventRep]Int_| (|v#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| actual@@0) handle@@2)) v@@33))
 :qid |VASPDomainbpl.164:13|
 :skolemid |5|
)))
 :qid |VASPDomainbpl.2060:13|
 :skolemid |71|
))))) (=> (= (ControlFlow 0 76861) (- 0 92432)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_31124| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_31124| stream@@2) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14))))
(Multiset_31124 (|Store__T@[$EventRep]Int_| (|v#Multiset_31124| stream@@2) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@34 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| actual@@1) handle@@3)) v@@34) (|Select__T@[$EventRep]Int_| (|v#Multiset_31124| (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| expected@@1) handle@@3)) v@@34))
 :qid |VASPDomainbpl.164:13|
 :skolemid |5|
)))
 :qid |VASPDomainbpl.2060:13|
 :skolemid |71|
)))))))))))))))))))))))))))
(let ((L7_correct  (and (=> (= (ControlFlow 0 75368) (- 0 92100)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_55405| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (exists ((i@@63 Int) ) (!  (and (and (|$IsValid'u64'| i@@63) (InRangeVec_27481 $t11 i@@63)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| $t11) i@@63)) (|$domain#$1_VASPDomain_VASPDomain| ($1_VASPDomain_VASPDomain _$t2))))
 :qid |VASPDomainbpl.1169:13|
 :skolemid |42|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) $t12)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (> (|l#Vec_13392| _$t2) 63))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_55405| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (exists ((i@@64 Int) ) (!  (and (and (|$IsValid'u64'| i@@64) (InRangeVec_27481 $t11 i@@64)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| $t11) i@@64)) (|$domain#$1_VASPDomain_VASPDomain| ($1_VASPDomain_VASPDomain _$t2))))
 :qid |VASPDomainbpl.1169:13|
 :skolemid |42|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) $t12)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (> (|l#Vec_13392| _$t2) 63)) (=> (= (ControlFlow 0 75368) (- 0 92166)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) _$t1)) (= 5 $t17@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_55405| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= 5 $t17@0))) (and (exists ((i@@65 Int) ) (!  (and (and (|$IsValid'u64'| i@@65) (InRangeVec_27481 $t11 i@@65)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| $t11) i@@65)) (|$domain#$1_VASPDomain_VASPDomain| ($1_VASPDomain_VASPDomain _$t2))))
 :qid |VASPDomainbpl.1169:13|
 :skolemid |42|
)) (= 7 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) $t12)) (= 5 $t17@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) $t12)) 1)) (= 3 $t17@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t17@0))) (and (> (|l#Vec_13392| _$t2) 63) (= 7 $t17@0))))))))
(let ((anon45_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 76875) 75368))) L7_correct)))
(let ((|inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1| (|v#$Mutation_50623| $t34@0)) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_31124| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_31124| stream@@3) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t36@0))))
(Multiset_31124 (|Store__T@[$EventRep]Int_| (|v#Multiset_31124| stream@@3) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t36@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 76675) 76875) anon45_Then_correct) (=> (= (ControlFlow 0 76675) 76861) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (and (not $abort_flag@2) (= $t34@0 ($Mutation_50623 (|l#$Mutation_55876| $t33@1) (let ((l (|l#Vec_13392| (|p#$Mutation_55876| $t33@1))))
(Vec_13392 (|Store__T@[Int]Int_| (|v#Vec_13392| (|p#$Mutation_55876| $t33@1)) l 0) (+ l 1))) (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| (|v#$Mutation_55876| $t33@1))))) (and (= $t36@0 ($1_VASPDomain_VASPDomainEvent false inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 _$t1)) (= (ControlFlow 0 76681) 76675))) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$anon0_correct|)))
(let ((anon44_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 76889) 75368))) L7_correct)))
(let ((anon43_Then$1_correct  (=> (= $t33@1 $t33) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 76941) 76889) anon44_Then_correct) (=> (= (ControlFlow 0 76941) 76681) anon44_Else_correct))))))
(let ((anon43_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_55405| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= (ControlFlow 0 76939) 76941)) anon43_Then$1_correct)))
(let ((anon43_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_55405| $1_VASPDomain_VASPDomainManager_$memory) 186537453) (=> (and (and (= $t33@0 ($Mutation_55876 ($Global 186537453) (Vec_13392 (MapConstVec_8911 DefaultVecElem_8911) 0) (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_55405| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (= $t33@1 $t33@0)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 76566) 76889) anon44_Then_correct) (=> (= (ControlFlow 0 76566) 76681) anon44_Else_correct))))))
(let ((anon42_Else_correct  (=> (and (not $abort_flag@1) (= $t24@2 ($Mutation_55811 (|l#$Mutation_55811| $t24@1) (|p#$Mutation_55811| $t24@1) ($1_VASPDomain_VASPDomains (|v#$Mutation_41298| |inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$m'@1|))))) (and (=> (= (ControlFlow 0 76544) (- 0 91665)) (let (($range_0 ($Range 0 (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i@@66 $i_1))
(<= (|l#Vec_13392| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))) i@@66))) 63)))
 :qid |VASPDomainbpl.3339:107|
 :skolemid |142|
)))) (=> (let (($range_0@@0 ($Range 0 (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((i@@67 $i_1@@0))
(<= (|l#Vec_13392| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))) i@@67))) 63)))
 :qid |VASPDomainbpl.3339:107|
 :skolemid |142|
))) (and (=> (= (ControlFlow 0 76544) (- 0 91713)) (let (($range_0@@1 ($Range 0 (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i@@68 $i_1@@1))
(let (($range_2 ($Range (+ i@@68 1) (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))))))
(forall (($i_3 Int) ) (!  (=> ($InRange $range_2 $i_3) (let ((j@@18 $i_3))
 (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))) i@@68)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))) j@@18))))))
 :qid |VASPDomainbpl.3347:112|
 :skolemid |143|
)))))
 :qid |VASPDomainbpl.3346:107|
 :skolemid |144|
)))) (=> (let (($range_0@@2 ($Range 0 (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@2) (let ((i@@69 $i_1@@2))
(let (($range_2@@0 ($Range (+ i@@69 1) (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))))))
(forall (($i_3@@0 Int) ) (!  (=> ($InRange $range_2@@0 $i_3@@0) (let ((j@@19 $i_3@@0))
 (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))) i@@69)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))) j@@19))))))
 :qid |VASPDomainbpl.3347:112|
 :skolemid |143|
)))))
 :qid |VASPDomainbpl.3346:107|
 :skolemid |144|
))) (and (=> (= (ControlFlow 0 76544) (- 0 91798)) (let (($range_0@@3 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))))
(forall (($i_1@@3 Int) ) (!  (=> (InRangeVec_27481 $range_0@@3 $i_1@@3) (let (($elem (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| $range_0@@3) $i_1@@3)))
(<= (|l#Vec_13392| (|$domain#$1_VASPDomain_VASPDomain| $elem)) 63)))
 :qid |VASPDomainbpl.3354:88|
 :skolemid |145|
)))) (=> (let (($range_0@@4 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@2))))
(forall (($i_1@@4 Int) ) (!  (=> (InRangeVec_27481 $range_0@@4 $i_1@@4) (let (($elem@@0 (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| $range_0@@4) $i_1@@4)))
(<= (|l#Vec_13392| (|$domain#$1_VASPDomain_VASPDomain| $elem@@0)) 63)))
 :qid |VASPDomainbpl.3354:88|
 :skolemid |145|
))) (=> (= $1_VASPDomain_VASPDomains_$memory@0 ($Memory_55341 (|Store__T@[Int]Bool_| (|domain#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) (|a#$Global| (|l#$Mutation_55811| $t24@2)) true) (|Store__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) (|a#$Global| (|l#$Mutation_55811| $t24@2)) (|v#$Mutation_55811| $t24@2)))) (and (=> (= (ControlFlow 0 76544) (- 0 91856)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55341| $1_VASPDomain_VASPDomains_$memory@0) addr)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr)) 5))))
 :qid |VASPDomainbpl.3366:15|
 :skolemid |146|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55341| $1_VASPDomain_VASPDomains_$memory@0) addr@@0)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@0)) 5))))
 :qid |VASPDomainbpl.3366:15|
 :skolemid |146|
)) (=> (|$IsValid'address'| 186537453) (and (=> (= (ControlFlow 0 76544) 76939) anon43_Then_correct) (=> (= (ControlFlow 0 76544) 76566) anon43_Else_correct)))))))))))))))
(let ((anon42_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 76955) 75368))) L7_correct)))
(let ((|inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$m'@1| ($Mutation_41298 (|l#$Mutation_41298| $t31@0) (|p#$Mutation_41298| $t31@0) (let ((l@@0 (|l#Vec_31445| (|v#$Mutation_41298| $t31@0))))
(Vec_31445 (|Store__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|v#$Mutation_41298| $t31@0)) l@@0 inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 76293) 76955) anon42_Then_correct) (=> (= (ControlFlow 0 76293) 76544) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> inline$$Not$0$dst@1 (=> (and (= $t31@0 ($Mutation_41298 (|l#$Mutation_55811| $t24@1) (let ((l@@1 (|l#Vec_13392| (|p#$Mutation_55811| $t24@1))))
(Vec_13392 (|Store__T@[Int]Int_| (|v#Vec_13392| (|p#$Mutation_55811| $t24@1)) l@@1 0) (+ l@@1 1))) (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1)))) (= (ControlFlow 0 76299) 76293)) |inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$anon0_correct|))))
(let ((anon41_Else_correct  (=> (not inline$$Not$0$dst@1) (and (=> (= (ControlFlow 0 76226) (- 0 91422)) (let (($range_0@@5 ($Range 0 (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@5) (let ((i@@70 $i_1@@5))
(<= (|l#Vec_13392| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))) i@@70))) 63)))
 :qid |VASPDomainbpl.3285:107|
 :skolemid |138|
)))) (=> (let (($range_0@@6 ($Range 0 (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@6) (let ((i@@71 $i_1@@6))
(<= (|l#Vec_13392| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))) i@@71))) 63)))
 :qid |VASPDomainbpl.3285:107|
 :skolemid |138|
))) (and (=> (= (ControlFlow 0 76226) (- 0 91470)) (let (($range_0@@7 ($Range 0 (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@7) (let ((i@@72 $i_1@@7))
(let (($range_2@@1 ($Range (+ i@@72 1) (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))))))
(forall (($i_3@@1 Int) ) (!  (=> ($InRange $range_2@@1 $i_3@@1) (let ((j@@20 $i_3@@1))
 (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))) i@@72)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))) j@@20))))))
 :qid |VASPDomainbpl.3293:112|
 :skolemid |139|
)))))
 :qid |VASPDomainbpl.3292:107|
 :skolemid |140|
)))) (=> (let (($range_0@@8 ($Range 0 (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))))))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@8 $i_1@@8) (let ((i@@73 $i_1@@8))
(let (($range_2@@2 ($Range (+ i@@73 1) (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))))))
(forall (($i_3@@2 Int) ) (!  (=> ($InRange $range_2@@2 $i_3@@2) (let ((j@@21 $i_3@@2))
 (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))) i@@73)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))) j@@21))))))
 :qid |VASPDomainbpl.3293:112|
 :skolemid |139|
)))))
 :qid |VASPDomainbpl.3292:107|
 :skolemid |140|
))) (and (=> (= (ControlFlow 0 76226) (- 0 91555)) (let (($range_0@@9 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))))
(forall (($i_1@@9 Int) ) (!  (=> (InRangeVec_27481 $range_0@@9 $i_1@@9) (let (($elem@@1 (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| $range_0@@9) $i_1@@9)))
(<= (|l#Vec_13392| (|$domain#$1_VASPDomain_VASPDomain| $elem@@1)) 63)))
 :qid |VASPDomainbpl.3300:88|
 :skolemid |141|
)))) (=> (let (($range_0@@10 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))))
(forall (($i_1@@10 Int) ) (!  (=> (InRangeVec_27481 $range_0@@10 $i_1@@10) (let (($elem@@2 (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| $range_0@@10) $i_1@@10)))
(<= (|l#Vec_13392| (|$domain#$1_VASPDomain_VASPDomain| $elem@@2)) 63)))
 :qid |VASPDomainbpl.3300:88|
 :skolemid |141|
))) (=> (= $t30 $t30) (=> (and (= $t17@0 $t30) (= (ControlFlow 0 76226) 75368)) L7_correct)))))))))))
(let ((anon40_Else$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (and (|$IsValid'u64'| $t30) (= $t30 7)) (and (= $t30 $t30) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 76032) 76299) anon41_Then_correct) (=> (= (ControlFlow 0 76032) 76226) anon41_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$res@1|)) (= (ControlFlow 0 75992) 76032)) anon40_Else$1_correct)))
(let ((anon40_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 75998) 75992)) inline$$Not$0$anon0_correct)))
(let ((anon40_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 76969) 75368))) L7_correct)))
(let ((|inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$res@1| (exists ((i@@74 Int) ) (!  (and (and (|$IsValid'u64'| i@@74) (InRangeVec_27481 $t26@0 i@@74)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| $t26@0) i@@74)) (|$domain#$1_VASPDomain_VASPDomain| inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1)))
 :qid |VASPDomainbpl.1169:13|
 :skolemid |42|
))) (and (=> (= (ControlFlow 0 75948) 76969) anon40_Then_correct) (=> (= (ControlFlow 0 75948) 75998) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (and (not $abort_flag@1) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1)) (and (= $t26@0 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_55811| $t24@1))) (= (ControlFlow 0 75954) 75948))) |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$anon0_correct|)))
(let ((anon39_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 76983) 75368))) L7_correct)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$L3_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 inline$$1_VASPDomain_create_vasp_domain$0$$t4@1) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 inline$$1_VASPDomain_create_vasp_domain$0$$ret0@0)) (and (=> (= (ControlFlow 0 75848) 76983) anon39_Then_correct) (=> (= (ControlFlow 0 75848) 75954) anon39_Else_correct))))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon7_Else_correct  (=> (and (and (not inline$$Le$0$dst@1) (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t4@1 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0) (= (ControlFlow 0 75842) 75848))) inline$$1_VASPDomain_create_vasp_domain$0$L3_correct)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t4@1 $abort_code@1) (= (ControlFlow 0 75880) 75848))) inline$$1_VASPDomain_create_vasp_domain$0$L3_correct)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon7_Then_correct  (=> (and inline$$Le$0$dst@1 (= inline$$1_VASPDomain_create_vasp_domain$0$$t9@1 ($1_VASPDomain_VASPDomain _$t2))) (=> (and (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t9@1 inline$$1_VASPDomain_create_vasp_domain$0$$t9@1) (= $abort_flag@1 $abort_flag@0)) (and (= $abort_code@2 $abort_code@1) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 inline$$1_VASPDomain_create_vasp_domain$0$$t9@1))) (and (=> (= (ControlFlow 0 75866) 76983) anon39_Then_correct) (=> (= (ControlFlow 0 75866) 75954) anon39_Else_correct))))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_create_vasp_domain$0$$t8@0) (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0 7)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 75826) 75866) inline$$1_VASPDomain_create_vasp_domain$0$anon7_Then_correct) (=> (= (ControlFlow 0 75826) 75842) inline$$1_VASPDomain_create_vasp_domain$0$anon7_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= |inline$$1_Vector_length'u8'$0$l@1| 63)) (= (ControlFlow 0 75790) 75826)) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else$1_correct)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (|$IsValid'u64'| 63) (= (ControlFlow 0 75796) 75790)) inline$$Le$0$anon0_correct))))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (|l#Vec_13392| _$t2)) (and (=> (= (ControlFlow 0 75730) 75880) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Then_correct) (=> (= (ControlFlow 0 75730) 75796) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else_correct)))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon0_correct  (=> (and (= _$t2 _$t2) (= (ControlFlow 0 75736) 75730)) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((anon38_Else_correct  (=> (and (and (not $abort_flag@0) (= |$temp_0'$1_VASPDomain_VASPDomains'@0| (|v#$Mutation_55811| $t24@1))) (and (= |$temp_0'$1_VASPDomain_VASPDomains'@0| |$temp_0'$1_VASPDomain_VASPDomains'@0|) (= (ControlFlow 0 75886) 75736))) inline$$1_VASPDomain_create_vasp_domain$0$anon0_correct)))
(let ((anon38_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t17@0 $abort_code@1) (= (ControlFlow 0 76997) 75368))) L7_correct)))
(let ((anon37_Then$1_correct  (=> (= $t24@1 $t24) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 77049) 76997) anon38_Then_correct) (=> (= (ControlFlow 0 77049) 75886) anon38_Else_correct))))))
(let ((anon37_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) _$t1)) (= (ControlFlow 0 77047) 77049)) anon37_Then$1_correct)))
(let ((anon37_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) _$t1) (=> (and (and (= $t24@0 ($Mutation_55811 ($Global _$t1) (Vec_13392 (MapConstVec_8911 DefaultVecElem_8911) 0) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) _$t1))) (= $t24@1 $t24@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 75452) 76997) anon38_Then_correct) (=> (= (ControlFlow 0 75452) 75886) anon38_Else_correct))))))
(let ((anon36_Then_correct  (=> $t21@0 (and (=> (= (ControlFlow 0 75430) 77047) anon37_Then_correct) (=> (= (ControlFlow 0 75430) 75452) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (and (not $t21@0) (= $t23 $t23)) (and (= $t17@0 $t23) (= (ControlFlow 0 75426) 75368))) L7_correct)))
(let ((anon35_Then_correct  (=> inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 (=> (and (= $t21@0 (|Select__T@[Int]Bool_| (|domain#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) _$t1)) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 5)) (and (= $t23 $t23) (= $t21@0 $t21@0))) (and (=> (= (ControlFlow 0 75410) 75430) anon36_Then_correct) (=> (= (ControlFlow 0 75410) 75426) anon36_Else_correct)))))))
(let ((anon35_Else_correct  (=> (and (and (not inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1) (= $t20 $t20)) (and (= $t17@0 $t20) (= (ControlFlow 0 75156) 75368))) L7_correct)))
(let ((anon34_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 5)) (and (= $t20 $t20) (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1))) (and (=> (= (ControlFlow 0 75140) 75410) anon35_Then_correct) (=> (= (ControlFlow 0 75140) 75156) anon35_Else_correct))))))
(let ((anon33_Then_correct  (=> $t16 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) $t15)) (= 5 $t17)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) $t15)) 1)) (= 3 $t17))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t17))) (= $t17 $t17)) (and (= $t17@0 $t17) (= (ControlFlow 0 77135) 75368))) L7_correct))))
(let ((anon34_Then_correct true))
(let ((inline$$1_VASPDomain_tc_domain_manager_exists$0$anon0_correct  (=> (|$IsValid'address'| 186537453) (=> (and (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_55405| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1)) (and (=> (= (ControlFlow 0 75098) 77063) anon34_Then_correct) (=> (= (ControlFlow 0 75098) 75140) anon34_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (not $t16) (= (ControlFlow 0 75104) 75098)) inline$$1_VASPDomain_tc_domain_manager_exists$0$anon0_correct)))
(let ((anon0$1_correct  (=> (and (and (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@1)) 0)) (= addr@@1 173345816)))
 :qid |VASPDomainbpl.2910:20|
 :skolemid |105|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_53032| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) 173345816)) 0)))) (and (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@2)) 1)) (= addr@@2 186537453)))
 :qid |VASPDomainbpl.2918:20|
 :skolemid |106|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_53032| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) 186537453)) 1))))) (=> (and (and (and (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@3)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@3)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@3)) 2))))))
 :qid |VASPDomainbpl.2926:20|
 :skolemid |107|
)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@4)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@4)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@4)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@4)) 2))))))
 :qid |VASPDomainbpl.2930:20|
 :skolemid |108|
))) (and (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@5)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@5)) 2))))))
 :qid |VASPDomainbpl.2934:20|
 :skolemid |109|
)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@6)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@6)) 2))))))
 :qid |VASPDomainbpl.2938:20|
 :skolemid |110|
)))) (and (and (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@7)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@7)) 2)))))
 :qid |VASPDomainbpl.2942:20|
 :skolemid |111|
)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@8)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@8)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@8)) 2)))))
 :qid |VASPDomainbpl.2946:20|
 :skolemid |112|
))) (and (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@9)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@9)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@9)) 2)))))
 :qid |VASPDomainbpl.2950:20|
 :skolemid |113|
)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_53481| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@10)) 4))))
 :qid |VASPDomainbpl.2954:20|
 :skolemid |114|
))))) (=> (and (and (and (and (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54002| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@11)) 3))))
 :qid |VASPDomainbpl.2958:20|
 :skolemid |115|
)) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_54002| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@12)) 3))))
 :qid |VASPDomainbpl.2962:20|
 :skolemid |116|
))) (and (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_54002| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@13) (not (= (|l#Vec_31210| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_54002| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@13)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@13)) 3))))
 :qid |VASPDomainbpl.2966:20|
 :skolemid |117|
)) (let (($range_0@@11 ($Range 0 (|l#Vec_31366| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_54621| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14))))))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@11 $i_1@@11) (let ((i1 $i_1@@11))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_54621| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@15))))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_31366| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_54621| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@15))))) i1)))) 3))))
 :qid |VASPDomainbpl.2970:151|
 :skolemid |118|
))))) (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_56661| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |VASPDomainbpl.2975:20|
 :skolemid |119|
)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (= (|Select__T@[Int]Bool_| (|domain#$Memory_56774| $1_DiemAccount_DiemAccount_$memory) addr@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@16)))
 :qid |VASPDomainbpl.2979:20|
 :skolemid |120|
))) (and (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55405| $1_VASPDomain_VASPDomainManager_$memory) addr@@17)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@17)) 1))))
 :qid |VASPDomainbpl.2983:20|
 :skolemid |121|
)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (= (|Select__T@[Int]Bool_| (|domain#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) addr@@18)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@18)) 5))))
 :qid |VASPDomainbpl.2987:20|
 :skolemid |122|
))))) (and (and (and (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_56948| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_57008| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@19)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@19)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@19)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@19)) 2)))))
 :qid |VASPDomainbpl.2991:20|
 :skolemid |123|
)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (= (|Select__T@[Int]Bool_| (|domain#$Memory_57093| $1_DesignatedDealer_Dealer_$memory) addr@@20)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@20)) 2))))
 :qid |VASPDomainbpl.2995:20|
 :skolemid |124|
))) (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (= (|Select__T@[Int]Bool_| (|domain#$Memory_56661| $1_DualAttestation_Credential_$memory) addr@@21)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@21)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@21)) 5)))))
 :qid |VASPDomainbpl.2999:20|
 :skolemid |125|
)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (= (|Select__T@[Int]Bool_| (|domain#$Memory_54588| $1_SlidingNonce_SlidingNonce_$memory) addr@@22)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@22)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@22)) 1)))))
 :qid |VASPDomainbpl.3003:20|
 :skolemid |126|
)))) (and (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (= (|Select__T@[Int]Bool_| (|domain#$Memory_54002| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@23)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@23)) 3))))
 :qid |VASPDomainbpl.3007:20|
 :skolemid |127|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (= (|Select__T@[Int]Bool_| (|domain#$Memory_53481| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@24)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@24)) 4))))
 :qid |VASPDomainbpl.3011:20|
 :skolemid |128|
))) (and (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (= (|Select__T@[Int]Bool_| (|domain#$Memory_57368| $1_VASP_ParentVASP_$memory) addr@@25)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@25)) 5))))
 :qid |VASPDomainbpl.3015:20|
 :skolemid |129|
)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (= (|Select__T@[Int]Bool_| (|domain#$Memory_57468| $1_VASP_ChildVASP_$memory) addr@@26)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) addr@@26)) 6))))
 :qid |VASPDomainbpl.3019:20|
 :skolemid |130|
)))))) (=> (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (|$IsValid'address'| _$t1) (|$IsValid'vec'u8''| _$t2))) (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |VASPDomainbpl.3031:20|
 :skolemid |131|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_55405| $1_VASPDomain_VASPDomainManager_$memory) $a_0@@0)))
(|$IsValid'$1_VASPDomain_VASPDomainManager'| $rsc@@0))
 :qid |VASPDomainbpl.3035:20|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_55405| $1_VASPDomain_VASPDomainManager_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) $a_0@@1)))
 (and (|$IsValid'$1_VASPDomain_VASPDomains'| $rsc@@1) (and (and (let (($range_1 ($Range 0 (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@75 $i_2))
(<= (|l#Vec_13392| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1)) i@@75))) 63)))
 :qid |VASPDomainbpl.3040:140|
 :skolemid |133|
))) (let (($range_3 ($Range 0 (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1)))))
(forall (($i_4 Int) ) (!  (=> ($InRange $range_3 $i_4) (let ((i@@76 $i_4))
(let (($range_5 ($Range (+ i@@76 1) (|l#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1)))))
(forall (($i_6 Int) ) (!  (=> ($InRange $range_5 $i_6) (let ((j@@22 $i_6))
 (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1)) i@@76)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1)) j@@22))))))
 :qid |VASPDomainbpl.3042:98|
 :skolemid |134|
)))))
 :qid |VASPDomainbpl.3041:202|
 :skolemid |135|
)))) (let (($range_7 (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1)))
(forall (($i_8 Int) ) (!  (=> (InRangeVec_27481 $range_7 $i_8) (let (($elem@@3 (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_31445| $range_7) $i_8)))
(<= (|l#Vec_13392| (|$domain#$1_VASPDomain_VASPDomain| $elem@@3)) 63)))
 :qid |VASPDomainbpl.3043:229|
 :skolemid |136|
))))))
 :qid |VASPDomainbpl.3039:20|
 :skolemid |137|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) $a_0@@1))
)) (= $t11 (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_55341| $1_VASPDomain_VASPDomains_$memory) _$t1)))))) (and (and (and (= $t12 (|$addr#$signer| _$t0)) (= $t13 (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_55405| $1_VASPDomain_VASPDomainManager_$memory) 186537453)))) (and (= $t14 ($1_VASPDomain_VASPDomainEvent false ($1_VASPDomain_VASPDomain _$t2) _$t1)) (= _$t0 _$t0))) (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= $t15 (|$addr#$signer| _$t0)) (= $t16  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_53154| $1_Roles_RoleId_$memory) $t15)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_53154| $1_Roles_RoleId_$memory) $t15)) 1))) (not (= (|$addr#$signer| _$t0) 186537453)))))))) (and (=> (= (ControlFlow 0 75011) 77135) anon33_Then_correct) (=> (= (ControlFlow 0 75011) 75104) anon33_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_31124_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_31124| stream@@4) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_31124| stream@@4) v@@35) 0)
 :qid |VASPDomainbpl.159:13|
 :skolemid |4|
))))
 :qid |VASPDomainbpl.2044:13|
 :skolemid |70|
))) (= (ControlFlow 0 73931) 75011)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (|l#Vec_13392| (|p#$Mutation_55811| $t9)) 0) (= (|l#Vec_13392| (|p#$Mutation_55811| $t24)) 0)) (=> (and (and (= (|l#Vec_13392| (|p#$Mutation_41298| $t31)) 0) (= (|l#Vec_13392| (|p#$Mutation_55876| $t33)) 0)) (and (= (|l#Vec_13392| (|p#$Mutation_50623| $t34)) 0) (= (ControlFlow 0 73941) 73931))) inline$$InitEventStore$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 89450) 73941) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
