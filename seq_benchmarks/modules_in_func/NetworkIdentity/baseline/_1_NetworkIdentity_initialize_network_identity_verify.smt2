(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_68974 0)) ((($Memory_68974 (|domain#$Memory_68974| |T@[Int]Bool|) (|contents#$Memory_68974| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_45987 0)) (((Vec_45987 (|v#Vec_45987| |T@[Int]#0|) (|l#Vec_45987| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_NetworkIdentity_NetworkIdentityEventHandle 0)) ((($1_NetworkIdentity_NetworkIdentityEventHandle (|$identity_change_events#$1_NetworkIdentity_NetworkIdentityEventHandle| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_NetworkIdentity_NetworkIdentityEventHandle| 0)
(declare-datatypes ((T@$Memory_91407 0)) ((($Memory_91407 (|domain#$Memory_91407| |T@[Int]Bool|) (|contents#$Memory_91407| |T@[Int]$1_NetworkIdentity_NetworkIdentityEventHandle|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_89869 0)) ((($Memory_89869 (|domain#$Memory_89869| |T@[Int]Bool|) (|contents#$Memory_89869| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_89334 0)) ((($Memory_89334 (|domain#$Memory_89334| |T@[Int]Bool|) (|contents#$Memory_89334| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_87727 0)) ((($Memory_87727 (|domain#$Memory_87727| |T@[Int]Bool|) (|contents#$Memory_87727| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_88039 0)) ((($Memory_88039 (|domain#$Memory_88039| |T@[Int]Bool|) (|contents#$Memory_88039| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_87694 0)) ((($Memory_87694 (|domain#$Memory_87694| |T@[Int]Bool|) (|contents#$Memory_87694| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_87474 0)) ((($Memory_87474 (|domain#$Memory_87474| |T@[Int]Bool|) (|contents#$Memory_87474| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_86464 0)) ((($Memory_86464 (|domain#$Memory_86464| |T@[Int]Bool|) (|contents#$Memory_86464| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_86041 0)) ((($Memory_86041 (|domain#$Memory_86041| |T@[Int]Bool|) (|contents#$Memory_86041| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_85977 0)) ((($Memory_85977 (|domain#$Memory_85977| |T@[Int]Bool|) (|contents#$Memory_85977| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_85827 0)) ((($Memory_85827 (|domain#$Memory_85827| |T@[Int]Bool|) (|contents#$Memory_85827| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_85217 0)) ((($Memory_85217 (|domain#$Memory_85217| |T@[Int]Bool|) (|contents#$Memory_85217| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_84998 0)) ((($Memory_84998 (|domain#$Memory_84998| |T@[Int]Bool|) (|contents#$Memory_84998| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_88930 0)) ((($Memory_88930 (|domain#$Memory_88930| |T@[Int]Bool|) (|contents#$Memory_88930| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_84238 0)) ((($Memory_84238 (|domain#$Memory_84238| |T@[Int]Bool|) (|contents#$Memory_84238| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_80513 0)) ((($Memory_80513 (|domain#$Memory_80513| |T@[Int]Bool|) (|contents#$Memory_80513| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_89156 0)) ((($Memory_89156 (|domain#$Memory_89156| |T@[Int]Bool|) (|contents#$Memory_89156| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_84506 0)) ((($Memory_84506 (|domain#$Memory_84506| |T@[Int]Bool|) (|contents#$Memory_84506| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_85304 0)) ((($Memory_85304 (|domain#$Memory_85304| |T@[Int]Bool|) (|contents#$Memory_85304| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_89065 0)) ((($Memory_89065 (|domain#$Memory_89065| |T@[Int]Bool|) (|contents#$Memory_89065| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_84415 0)) ((($Memory_84415 (|domain#$Memory_84415| |T@[Int]Bool|) (|contents#$Memory_84415| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_86221 0)) ((($Memory_86221 (|domain#$Memory_86221| |T@[Int]Bool|) (|contents#$Memory_86221| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_79637 0)) ((($Memory_79637 (|domain#$Memory_79637| |T@[Int]Bool|) (|contents#$Memory_79637| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_79892 0)) ((($Memory_79892 (|domain#$Memory_79892| |T@[Int]Bool|) (|contents#$Memory_79892| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_78465 0)) ((($Memory_78465 (|domain#$Memory_78465| |T@[Int]Bool|) (|contents#$Memory_78465| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_78756 0)) ((($Memory_78756 (|domain#$Memory_78756| |T@[Int]Bool|) (|contents#$Memory_78756| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_78351 0)) ((($Memory_78351 (|domain#$Memory_78351| |T@[Int]Bool|) (|contents#$Memory_78351| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_44363 0)) (((Vec_44363 (|v#Vec_44363| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_44363| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_44363) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_44324 0)) (((Vec_44324 (|v#Vec_44324| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_44324| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_44324) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_18710 0)) (((Vec_18710 (|v#Vec_18710| |T@[Int]Int|) (|l#Vec_18710| Int) ) ) ))
(declare-sort |T@[Int]Vec_18710| 0)
(declare-datatypes ((T@Vec_44531 0)) (((Vec_44531 (|v#Vec_44531| |T@[Int]Vec_18710|) (|l#Vec_44531| Int) ) ) ))
(declare-datatypes ((T@$1_NetworkIdentity_NetworkIdentity 0)) ((($1_NetworkIdentity_NetworkIdentity (|$identities#$1_NetworkIdentity_NetworkIdentity| T@Vec_44531) ) ) ))
(declare-sort |T@[Int]$1_NetworkIdentity_NetworkIdentity| 0)
(declare-datatypes ((T@$Memory_91560 0)) ((($Memory_91560 (|domain#$Memory_91560| |T@[Int]Bool|) (|contents#$Memory_91560| |T@[Int]$1_NetworkIdentity_NetworkIdentity|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_44531) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_78628 0)) ((($Memory_78628 (|domain#$Memory_78628| |T@[Int]Bool|) (|contents#$Memory_78628| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_44531) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_78564 0)) ((($Memory_78564 (|domain#$Memory_78564| |T@[Int]Bool|) (|contents#$Memory_78564| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_18710) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_18710) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_78692 0)) ((($Memory_78692 (|domain#$Memory_78692| |T@[Int]Bool|) (|contents#$Memory_78692| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_18710) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_88206 0)) ((($Memory_88206 (|domain#$Memory_88206| |T@[Int]Bool|) (|contents#$Memory_88206| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_18710) (|$base_url#$1_DualAttestation_Credential| T@Vec_18710) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_18710) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_86400 0)) ((($Memory_86400 (|domain#$Memory_86400| |T@[Int]Bool|) (|contents#$Memory_86400| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_18710) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_44749 0)) (((Vec_44749 (|v#Vec_44749| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_44749| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_44749) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_85944 0)) ((($Memory_85944 (|domain#$Memory_85944| |T@[Int]Bool|) (|contents#$Memory_85944| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_18710) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_80287 0)) ((($Memory_80287 (|domain#$Memory_80287| |T@[Int]Bool|) (|contents#$Memory_80287| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_18710) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_80223 0)) ((($Memory_80223 (|domain#$Memory_80223| |T@[Int]Bool|) (|contents#$Memory_80223| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_18710) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_18710) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_18710) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_44285 0)) (((Vec_44285 (|v#Vec_44285| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_44285| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_44285) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_44474 0)) (((Vec_44474 (|v#Vec_44474| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_44474| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_44474) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_78384 0)) ((($Memory_78384 (|domain#$Memory_78384| |T@[Int]Bool|) (|contents#$Memory_78384| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_18710) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_18710) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_77765 0)) ((($Memory_77765 (|domain#$Memory_77765| |T@[Int]Bool|) (|contents#$Memory_77765| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_18710) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_77262 0)) ((($Memory_77262 (|domain#$Memory_77262| |T@[Int]Bool|) (|contents#$Memory_77262| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_76935 0)) ((($Memory_76935 (|domain#$Memory_76935| |T@[Int]Bool|) (|contents#$Memory_76935| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_76747 0)) ((($Memory_76747 (|domain#$Memory_76747| |T@[Int]Bool|) (|contents#$Memory_76747| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_NetworkIdentity_NetworkIdentityChangeNotification 0)) ((($1_NetworkIdentity_NetworkIdentityChangeNotification (|$account#$1_NetworkIdentity_NetworkIdentityChangeNotification| Int) (|$identities#$1_NetworkIdentity_NetworkIdentityChangeNotification| T@Vec_44531) (|$time_rotated_seconds#$1_NetworkIdentity_NetworkIdentityChangeNotification| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_18710) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_18710) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_18710) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_18710) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_18710) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_18710) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_18710) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_18710) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_18710) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_18710) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_18710) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_18710) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_18710) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| (|e#$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| T@$1_NetworkIdentity_NetworkIdentityChangeNotification) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_44199 0)) (((Multiset_44199 (|v#Multiset_44199| |T@[$EventRep]Int|) (|l#Multiset_44199| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_44199| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_44199|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_98906 0)) ((($Mutation_98906 (|l#$Mutation_98906| T@$Location) (|p#$Mutation_98906| T@Vec_18710) (|v#$Mutation_98906| T@$1_NetworkIdentity_NetworkIdentityEventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_98842 0)) ((($Mutation_98842 (|l#$Mutation_98842| T@$Location) (|p#$Mutation_98842| T@Vec_18710) (|v#$Mutation_98842| T@$1_NetworkIdentity_NetworkIdentity) ) ) ))
(declare-datatypes ((T@$Mutation_69605 0)) ((($Mutation_69605 (|l#$Mutation_69605| T@$Location) (|p#$Mutation_69605| T@Vec_18710) (|v#$Mutation_69605| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11647 0)) ((($Mutation_11647 (|l#$Mutation_11647| T@$Location) (|p#$Mutation_11647| T@Vec_18710) (|v#$Mutation_11647| Int) ) ) ))
(declare-datatypes ((T@$Mutation_63862 0)) ((($Mutation_63862 (|l#$Mutation_63862| T@$Location) (|p#$Mutation_63862| T@Vec_18710) (|v#$Mutation_63862| T@Vec_18710) ) ) ))
(declare-datatypes ((T@$Mutation_62774 0)) ((($Mutation_62774 (|l#$Mutation_62774| T@$Location) (|p#$Mutation_62774| T@Vec_18710) (|v#$Mutation_62774| T@Vec_44531) ) ) ))
(declare-datatypes ((T@$Mutation_61065 0)) ((($Mutation_61065 (|l#$Mutation_61065| T@$Location) (|p#$Mutation_61065| T@Vec_18710) (|v#$Mutation_61065| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_60078 0)) ((($Mutation_60078 (|l#$Mutation_60078| T@$Location) (|p#$Mutation_60078| T@Vec_18710) (|v#$Mutation_60078| T@Vec_44285) ) ) ))
(declare-datatypes ((T@$Mutation_58423 0)) ((($Mutation_58423 (|l#$Mutation_58423| T@$Location) (|p#$Mutation_58423| T@Vec_18710) (|v#$Mutation_58423| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_57436 0)) ((($Mutation_57436 (|l#$Mutation_57436| T@$Location) (|p#$Mutation_57436| T@Vec_18710) (|v#$Mutation_57436| T@Vec_44749) ) ) ))
(declare-datatypes ((T@$Mutation_55758 0)) ((($Mutation_55758 (|l#$Mutation_55758| T@$Location) (|p#$Mutation_55758| T@Vec_18710) (|v#$Mutation_55758| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_54771 0)) ((($Mutation_54771 (|l#$Mutation_54771| T@$Location) (|p#$Mutation_54771| T@Vec_18710) (|v#$Mutation_54771| T@Vec_44474) ) ) ))
(declare-datatypes ((T@$Mutation_52971 0)) ((($Mutation_52971 (|l#$Mutation_52971| T@$Location) (|p#$Mutation_52971| T@Vec_18710) (|v#$Mutation_52971| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_51984 0)) ((($Mutation_51984 (|l#$Mutation_51984| T@$Location) (|p#$Mutation_51984| T@Vec_18710) (|v#$Mutation_51984| T@Vec_44363) ) ) ))
(declare-datatypes ((T@$Mutation_50319 0)) ((($Mutation_50319 (|l#$Mutation_50319| T@$Location) (|p#$Mutation_50319| T@Vec_18710) (|v#$Mutation_50319| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_49332 0)) ((($Mutation_49332 (|l#$Mutation_49332| T@$Location) (|p#$Mutation_49332| T@Vec_18710) (|v#$Mutation_49332| T@Vec_44324) ) ) ))
(declare-datatypes ((T@$Mutation_47619 0)) ((($Mutation_47619 (|l#$Mutation_47619| T@$Location) (|p#$Mutation_47619| T@Vec_18710) (|v#$Mutation_47619| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_46632 0)) ((($Mutation_46632 (|l#$Mutation_46632| T@$Location) (|p#$Mutation_46632| T@Vec_18710) (|v#$Mutation_46632| T@Vec_45987) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_45987 T@Vec_45987) Bool)
(declare-fun InRangeVec_38135 (T@Vec_45987 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_45987) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_45987 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_44324 T@Vec_44324) Bool)
(declare-fun InRangeVec_38336 (T@Vec_44324 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_44324) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_44324 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_44363 T@Vec_44363) Bool)
(declare-fun InRangeVec_38537 (T@Vec_44363 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_44363) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_44363 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_44474 T@Vec_44474) Bool)
(declare-fun InRangeVec_38738 (T@Vec_44474 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_18710 T@Vec_18710) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_44474) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_44474 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_44749 T@Vec_44749) Bool)
(declare-fun InRangeVec_38939 (T@Vec_44749 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_44749) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_44749 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_44285 T@Vec_44285) Bool)
(declare-fun InRangeVec_39140 (T@Vec_44285 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_44285) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_44285 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_44531 T@Vec_44531) Bool)
(declare-fun InRangeVec_62197 (T@Vec_44531 Int) Bool)
(declare-fun |Select__T@[Int]Vec_18710_| (|T@[Int]Vec_18710| Int) T@Vec_18710)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_44531) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_18710) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_44531 T@Vec_18710) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_18710 T@Vec_18710) Bool)
(declare-fun InRangeVec_11023 (T@Vec_18710 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_18710) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_18710 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_18710 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_18710) T@Vec_18710)
(declare-fun $1_Hash_sha3 (T@Vec_18710) T@Vec_18710)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_18710) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_18710 T@Vec_18710 T@Vec_18710) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_44199_| (|T@[$1_Event_EventHandle]Multiset_44199| T@$1_Event_EventHandle) T@Multiset_44199)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''| (T@$1_Event_EventHandle) Bool)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (T@$1_RegisteredCurrencies_RegisteredCurrencies) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnEvent'| (T@$1_Diem_BurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CancelBurnEvent'| (T@$1_Diem_CancelBurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| (|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| (|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|T@$1_Diem_MintCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintEvent'| (T@$1_Diem_MintEvent) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|T@$1_Diem_Preburn'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|T@$1_Diem_Preburn'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnEvent'| (T@$1_Diem_PreburnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
(declare-fun |$IsValid'$1_ChainId_ChainId'| (T@$1_ChainId_ChainId) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeAccountEvent'| (T@$1_AccountFreezing_FreezeAccountEvent) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeEventsHolder'| (T@$1_AccountFreezing_FreezeEventsHolder) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| (T@$1_AccountFreezing_UnfreezeAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemAccount'| (T@$1_DiemAccount_DiemAccount) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AccountOperationsCapability'| (T@$1_DiemAccount_AccountOperationsCapability) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AdminTransactionEvent'| (T@$1_DiemAccount_AdminTransactionEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun |$IsValid'$1_NetworkIdentity_NetworkIdentity'| (T@$1_NetworkIdentity_NetworkIdentity) Bool)
(declare-fun |$IsValid'$1_NetworkIdentity_NetworkIdentityChangeNotification'| (T@$1_NetworkIdentity_NetworkIdentityChangeNotification) Bool)
(declare-fun |$IsValid'$1_NetworkIdentity_NetworkIdentityEventHandle'| (T@$1_NetworkIdentity_NetworkIdentityEventHandle) Bool)
(declare-fun IndexOfVec_18710 (T@Vec_18710 Int) Int)
(declare-fun IndexOfVec_44285 (T@Vec_44285 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_44324 (T@Vec_44324 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_44363 (T@Vec_44363 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_44474 (T@Vec_44474 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_44531 (T@Vec_44531 T@Vec_18710) Int)
(declare-fun IndexOfVec_44749 (T@Vec_44749 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_45987 (T@Vec_45987 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_44199| |T@[$1_Event_EventHandle]Multiset_44199|) |T@[$1_Event_EventHandle]Multiset_44199|)
(declare-fun |lambda#27| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#21| (Int Int Int |T@[Int]Vec_18710| |T@[Int]Vec_18710| Int T@Vec_18710) |T@[Int]Vec_18710|)
(declare-fun |lambda#22| (Int Int |T@[Int]Vec_18710| Int Int T@Vec_18710) |T@[Int]Vec_18710|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Vec_18710| |T@[Int]Vec_18710| Int T@Vec_18710) |T@[Int]Vec_18710|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#25| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |NetworkIdentitybpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |NetworkIdentitybpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |NetworkIdentitybpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |NetworkIdentitybpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |NetworkIdentitybpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |NetworkIdentitybpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |NetworkIdentitybpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |NetworkIdentitybpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_45987) (v2 T@Vec_45987) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_45987| v1) (|l#Vec_45987| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_38135 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_45987| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_45987| v2) i@@0)))
 :qid |NetworkIdentitybpl.615:13|
 :skolemid |17|
))))
 :qid |NetworkIdentitybpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_45987) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_45987| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_38135 v@@4 i@@1) true)
 :qid |NetworkIdentitybpl.621:13|
 :skolemid |19|
))))
 :qid |NetworkIdentitybpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_45987) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_38135 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_45987| v@@5) i@@3) e))
 :qid |NetworkIdentitybpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_38135 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_45987| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_45987| v@@5) j) e)))
 :qid |NetworkIdentitybpl.634:17|
 :skolemid |22|
)))))
 :qid |NetworkIdentitybpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_44324) (v2@@0 T@Vec_44324) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_44324| v1@@0) (|l#Vec_44324| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_38336 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v2@@0) i@@4)))
 :qid |NetworkIdentitybpl.796:13|
 :skolemid |24|
))))
 :qid |NetworkIdentitybpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_44324) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_44324| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_38336 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@6) i@@5)))
 :qid |NetworkIdentitybpl.802:13|
 :skolemid |26|
))))
 :qid |NetworkIdentitybpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_44324) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_38336 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@7) i@@7) e@@0))
 :qid |NetworkIdentitybpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_38336 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@7) j@@0) e@@0)))
 :qid |NetworkIdentitybpl.815:17|
 :skolemid |29|
)))))
 :qid |NetworkIdentitybpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_44363) (v2@@1 T@Vec_44363) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_44363| v1@@1) (|l#Vec_44363| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_38537 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v2@@1) i@@8)))
 :qid |NetworkIdentitybpl.977:13|
 :skolemid |31|
))))
 :qid |NetworkIdentitybpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_44363) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_44363| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_38537 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@8) i@@9)))
 :qid |NetworkIdentitybpl.983:13|
 :skolemid |33|
))))
 :qid |NetworkIdentitybpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_44363) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_38537 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@9) i@@11) e@@1))
 :qid |NetworkIdentitybpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_38537 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@9) j@@1) e@@1)))
 :qid |NetworkIdentitybpl.996:17|
 :skolemid |36|
)))))
 :qid |NetworkIdentitybpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_44474) (v2@@2 T@Vec_44474) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_44474| v1@@2) (|l#Vec_44474| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_38738 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v2@@2) i@@12)))))
 :qid |NetworkIdentitybpl.1158:13|
 :skolemid |38|
))))
 :qid |NetworkIdentitybpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_44474) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_44474| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_38738 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@10) i@@13)))
 :qid |NetworkIdentitybpl.1164:13|
 :skolemid |40|
))))
 :qid |NetworkIdentitybpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_44474) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_38738 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |NetworkIdentitybpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_38738 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |NetworkIdentitybpl.1177:17|
 :skolemid |43|
)))))
 :qid |NetworkIdentitybpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_44749) (v2@@3 T@Vec_44749) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3)  (and (= (|l#Vec_44749| v1@@3) (|l#Vec_44749| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_38939 v1@@3 i@@16) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v1@@3) i@@16)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v2@@3) i@@16))))
 :qid |NetworkIdentitybpl.1339:13|
 :skolemid |45|
))))
 :qid |NetworkIdentitybpl.1337:50|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_44749) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_44749| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_38939 v@@12 i@@17) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@12) i@@17)))
 :qid |NetworkIdentitybpl.1345:13|
 :skolemid |47|
))))
 :qid |NetworkIdentitybpl.1343:50|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_44749) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@18 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_38939 v@@13 i@@19)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@13) i@@19)) (|$domain#$1_VASPDomain_VASPDomain| e@@3)))
 :qid |NetworkIdentitybpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_38939 v@@13 i@@18)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@13) i@@18)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@13) j@@3)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))))
 :qid |NetworkIdentitybpl.1358:17|
 :skolemid |50|
)))))
 :qid |NetworkIdentitybpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_44285) (v2@@4 T@Vec_44285) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4)  (and (= (|l#Vec_44285| v1@@4) (|l#Vec_44285| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_39140 v1@@4 i@@20) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v1@@4) i@@20)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v1@@4) i@@20)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v2@@4) i@@20)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v1@@4) i@@20)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v2@@4) i@@20)))))
 :qid |NetworkIdentitybpl.1520:13|
 :skolemid |52|
))))
 :qid |NetworkIdentitybpl.1518:51|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_44285) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_44285| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_39140 v@@14 i@@21) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@14) i@@21)))
 :qid |NetworkIdentitybpl.1526:13|
 :skolemid |54|
))))
 :qid |NetworkIdentitybpl.1524:51|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_44285) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_39140 v@@15 i@@23)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) i@@23)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) i@@23)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) i@@23)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4))))
 :qid |NetworkIdentitybpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_39140 v@@15 i@@22)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) i@@22)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) i@@22)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) i@@22)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) j@@4)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) j@@4)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) j@@4)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))))
 :qid |NetworkIdentitybpl.1539:17|
 :skolemid |57|
)))))
 :qid |NetworkIdentitybpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_44531) (v2@@5 T@Vec_44531) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@5 v2@@5)  (and (= (|l#Vec_44531| v1@@5) (|l#Vec_44531| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_62197 v1@@5 i@@24) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v1@@5) i@@24) (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v2@@5) i@@24)))
 :qid |NetworkIdentitybpl.1701:13|
 :skolemid |59|
))))
 :qid |NetworkIdentitybpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_44531) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_44531| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_62197 v@@16 i@@25) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@16) i@@25)))
 :qid |NetworkIdentitybpl.1707:13|
 :skolemid |61|
))))
 :qid |NetworkIdentitybpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_44531) (e@@5 T@Vec_18710) ) (! (let ((i@@26 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_62197 v@@17 i@@27)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@17) i@@27) e@@5))
 :qid |NetworkIdentitybpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_62197 v@@17 i@@26)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@17) j@@5) e@@5)))
 :qid |NetworkIdentitybpl.1720:17|
 :skolemid |64|
)))))
 :qid |NetworkIdentitybpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_18710) (v2@@6 T@Vec_18710) ) (! (= (|$IsEqual'vec'address''| v1@@6 v2@@6)  (and (= (|l#Vec_18710| v1@@6) (|l#Vec_18710| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_11023 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_18710| v2@@6) i@@28)))
 :qid |NetworkIdentitybpl.1882:13|
 :skolemid |66|
))))
 :qid |NetworkIdentitybpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'address''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_18710) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_18710| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_11023 v@@18 i@@29) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_18710| v@@18) i@@29)))
 :qid |NetworkIdentitybpl.1888:13|
 :skolemid |68|
))))
 :qid |NetworkIdentitybpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_18710) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_11023 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@19) i@@31) e@@6))
 :qid |NetworkIdentitybpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_11023 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@19) j@@6) e@@6)))
 :qid |NetworkIdentitybpl.1901:17|
 :skolemid |71|
)))))
 :qid |NetworkIdentitybpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_18710) (v2@@7 T@Vec_18710) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7)  (and (= (|l#Vec_18710| v1@@7) (|l#Vec_18710| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_11023 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_18710| v2@@7) i@@32)))
 :qid |NetworkIdentitybpl.2063:13|
 :skolemid |73|
))))
 :qid |NetworkIdentitybpl.2061:28|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'u8''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_18710) ) (! (= (|$IsValid'vec'u8''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_18710| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_11023 v@@20 i@@33) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_18710| v@@20) i@@33)))
 :qid |NetworkIdentitybpl.2069:13|
 :skolemid |75|
))))
 :qid |NetworkIdentitybpl.2067:28|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'u8''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_18710) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'u8'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_11023 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@21) i@@35) e@@7))
 :qid |NetworkIdentitybpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_11023 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@21) j@@7) e@@7)))
 :qid |NetworkIdentitybpl.2082:17|
 :skolemid |78|
)))))
 :qid |NetworkIdentitybpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'u8'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_18710) (v2@@8 T@Vec_18710) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@8) ($1_Hash_sha2 v2@@8)))
 :qid |NetworkIdentitybpl.2255:15|
 :skolemid |80|
 :pattern ( ($1_Hash_sha2 v1@@8) ($1_Hash_sha2 v2@@8))
)))
(assert (forall ((v1@@9 T@Vec_18710) (v2@@9 T@Vec_18710) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@9) ($1_Hash_sha3 v2@@9)))
 :qid |NetworkIdentitybpl.2271:15|
 :skolemid |81|
 :pattern ( ($1_Hash_sha3 v1@@9) ($1_Hash_sha3 v2@@9))
)))
(assert (forall ((k1 T@Vec_18710) (k2 T@Vec_18710) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |NetworkIdentitybpl.2342:15|
 :skolemid |82|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_18710) (s2 T@Vec_18710) (k1@@0 T@Vec_18710) (k2@@0 T@Vec_18710) (m1 T@Vec_18710) (m2 T@Vec_18710) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |NetworkIdentitybpl.2345:15|
 :skolemid |83|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_44199_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_44199| stream) 0) (forall ((v@@22 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_44199| stream) v@@22) 0)
 :qid |NetworkIdentitybpl.159:13|
 :skolemid |4|
))))
 :qid |NetworkIdentitybpl.2406:13|
 :skolemid |84|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |NetworkIdentitybpl.2447:80|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@10 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@10 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@10)))
 :qid |NetworkIdentitybpl.2453:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@10))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |NetworkIdentitybpl.2503:82|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@11 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@11 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@11)))
 :qid |NetworkIdentitybpl.2509:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@11))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |NetworkIdentitybpl.2559:80|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@12 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@12 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@12)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@12))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@12))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@12)))
 :qid |NetworkIdentitybpl.2565:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@12))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |NetworkIdentitybpl.2615:79|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@13 T@$1_DiemAccount_AdminTransactionEvent) (v2@@13 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@13)))
 :qid |NetworkIdentitybpl.2621:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@13))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |NetworkIdentitybpl.2671:76|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_CreateAccountEvent) (v2@@14 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@14)))
 :qid |NetworkIdentitybpl.2677:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@14))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |NetworkIdentitybpl.2727:78|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@15 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@15)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@15))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@15))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@15))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@15)))
 :qid |NetworkIdentitybpl.2733:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@15))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |NetworkIdentitybpl.2783:74|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_SentPaymentEvent) (v2@@16 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@16))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@16))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@16)))
 :qid |NetworkIdentitybpl.2789:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@16))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |NetworkIdentitybpl.2839:69|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@17 T@$1_DiemBlock_NewBlockEvent) (v2@@17 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@17) (|$round#$1_DiemBlock_NewBlockEvent| v2@@17)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@17) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@17))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@17) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@17))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@17) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@17))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@17) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@17)))
 :qid |NetworkIdentitybpl.2845:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@17) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@17))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |NetworkIdentitybpl.2895:70|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@18 T@$1_DiemConfig_NewEpochEvent) (v2@@18 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@18) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@18)))
 :qid |NetworkIdentitybpl.2901:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@18) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@18))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |NetworkIdentitybpl.2951:60|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@19 T@$1_Diem_BurnEvent) (v2@@19 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@19) (|$amount#$1_Diem_BurnEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@19) (|$currency_code#$1_Diem_BurnEvent| v2@@19))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@19) (|$preburn_address#$1_Diem_BurnEvent| v2@@19))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@19)))
 :qid |NetworkIdentitybpl.2957:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@19))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |NetworkIdentitybpl.3007:66|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@20 T@$1_Diem_CancelBurnEvent) (v2@@20 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@20) (|$amount#$1_Diem_CancelBurnEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@20) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@20))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@20) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@20))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@20)))
 :qid |NetworkIdentitybpl.3013:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@20))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |NetworkIdentitybpl.3063:60|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@21 T@$1_Diem_MintEvent) (v2@@21 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@21) (|$amount#$1_Diem_MintEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@21) (|$currency_code#$1_Diem_MintEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@21) (|$ToEventRep'$1_Diem_MintEvent'| v2@@21)))
 :qid |NetworkIdentitybpl.3069:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@21) (|$ToEventRep'$1_Diem_MintEvent'| v2@@21))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |NetworkIdentitybpl.3119:63|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@22 T@$1_Diem_PreburnEvent) (v2@@22 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@22) (|$amount#$1_Diem_PreburnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@22) (|$currency_code#$1_Diem_PreburnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@22) (|$preburn_address#$1_Diem_PreburnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@22) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@22)))
 :qid |NetworkIdentitybpl.3125:15|
 :skolemid |111|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@22) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@22))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |NetworkIdentitybpl.3175:79|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@23 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@23 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@23) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@23)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@23) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@23) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@23)))
 :qid |NetworkIdentitybpl.3181:15|
 :skolemid |113|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@23) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@23))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |NetworkIdentitybpl.3231:82|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@24 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@24 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@24) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@24)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@24) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@24))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@24)))
 :qid |NetworkIdentitybpl.3237:15|
 :skolemid |115|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@24))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |NetworkIdentitybpl.3287:88|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@25 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@25 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@25) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@25)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@25) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@25))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@25)))
 :qid |NetworkIdentitybpl.3293:15|
 :skolemid |117|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@25))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''| h@@15) true)
 :qid |NetworkIdentitybpl.3343:95|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''| h@@15))
)))
(assert (forall ((v1@@26 T@$1_NetworkIdentity_NetworkIdentityChangeNotification) (v2@@26 T@$1_NetworkIdentity_NetworkIdentityChangeNotification) ) (! (=  (and (and (= (|$account#$1_NetworkIdentity_NetworkIdentityChangeNotification| v1@@26) (|$account#$1_NetworkIdentity_NetworkIdentityChangeNotification| v2@@26)) (|$IsEqual'vec'vec'u8'''| (|$identities#$1_NetworkIdentity_NetworkIdentityChangeNotification| v1@@26) (|$identities#$1_NetworkIdentity_NetworkIdentityChangeNotification| v2@@26))) (= (|$time_rotated_seconds#$1_NetworkIdentity_NetworkIdentityChangeNotification| v1@@26) (|$time_rotated_seconds#$1_NetworkIdentity_NetworkIdentityChangeNotification| v2@@26))) (= (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| v1@@26) (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| v2@@26)))
 :qid |NetworkIdentitybpl.3349:15|
 :skolemid |119|
 :pattern ( (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| v1@@26) (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| v2@@26))
)))
(assert (forall ((h@@16 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@16) true)
 :qid |NetworkIdentitybpl.3399:72|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@16))
)))
(assert (forall ((v1@@27 T@$1_VASPDomain_VASPDomainEvent) (v2@@27 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@27)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@27)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@27))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27)))
 :qid |NetworkIdentitybpl.3405:15|
 :skolemid |121|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |NetworkIdentitybpl.3479:61|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |NetworkIdentitybpl.3538:36|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |NetworkIdentitybpl.3557:71|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |NetworkIdentitybpl.3580:46|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |NetworkIdentitybpl.3592:64|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |NetworkIdentitybpl.3604:75|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |NetworkIdentitybpl.3616:72|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |NetworkIdentitybpl.3644:55|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |NetworkIdentitybpl.3667:46|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |NetworkIdentitybpl.3686:49|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |NetworkIdentitybpl.3736:71|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |NetworkIdentitybpl.3749:91|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |NetworkIdentitybpl.3762:113|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |NetworkIdentitybpl.3775:75|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |NetworkIdentitybpl.3788:73|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |NetworkIdentitybpl.3808:48|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15) true)
 :qid |NetworkIdentitybpl.3825:83|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@16)))
 :qid |NetworkIdentitybpl.3839:48|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@17)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@17))))
 :qid |NetworkIdentitybpl.3860:45|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@18)))
 :qid |NetworkIdentitybpl.3874:51|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@19)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@19))))
 :qid |NetworkIdentitybpl.3897:48|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19))
)))
(assert (forall ((s@@20 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@20)))
 :qid |NetworkIdentitybpl.3915:49|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20))
)))
(assert (forall ((s@@21 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@21)))
 :qid |NetworkIdentitybpl.3928:65|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@22)))
 :qid |NetworkIdentitybpl.3950:45|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@23)))
 :qid |NetworkIdentitybpl.3963:45|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@24) true)
 :qid |NetworkIdentitybpl.3976:55|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@25)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@25)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@25))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@25))))
 :qid |NetworkIdentitybpl.3996:38|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@25))
)))
(assert (forall ((s@@26 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@26)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@26)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@26))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@26))))
 :qid |NetworkIdentitybpl.4018:44|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@27)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))))
 :qid |NetworkIdentitybpl.4070:53|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@28)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))))
 :qid |NetworkIdentitybpl.4143:53|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29) true)
 :qid |NetworkIdentitybpl.4180:55|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@30)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@30))))
 :qid |NetworkIdentitybpl.4197:38|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@31)))
 :qid |NetworkIdentitybpl.4211:48|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@32)))
 :qid |NetworkIdentitybpl.4225:48|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@33))))
 :qid |NetworkIdentitybpl.4245:41|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@34)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@34)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@34))))
 :qid |NetworkIdentitybpl.4264:57|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@35) true)
 :qid |NetworkIdentitybpl.4278:68|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@36)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))))
 :qid |NetworkIdentitybpl.4300:66|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))))
 :qid |NetworkIdentitybpl.4326:66|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@38) true)
 :qid |NetworkIdentitybpl.4343:31|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@38))
)))
(assert (forall ((s@@39 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@39) true)
 :qid |NetworkIdentitybpl.4361:31|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@39))
)))
(assert (forall ((s@@40 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@40)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@40)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@40))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@40))))
 :qid |NetworkIdentitybpl.4380:35|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@40))
)))
(assert (forall ((s@@41 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@41) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@41)))
 :qid |NetworkIdentitybpl.4396:45|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@41))
)))
(assert (forall ((s@@42 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@42)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@42))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@42))))
 :qid |NetworkIdentitybpl.4414:50|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@42))
)))
(assert (forall ((s@@43 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@43) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@43)))
 :qid |NetworkIdentitybpl.4430:52|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@43))
)))
(assert (forall ((s@@44 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@44) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@44)))
 :qid |NetworkIdentitybpl.4443:46|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@44))
)))
(assert (forall ((s@@45 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@45) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@45)))
 :qid |NetworkIdentitybpl.4466:38|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@45))
)))
(assert (forall ((s@@46 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@46) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@46)))
 :qid |NetworkIdentitybpl.4480:39|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@47)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@47)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@47))))
 :qid |NetworkIdentitybpl.4507:65|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@48)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@48)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@48))))
 :qid |NetworkIdentitybpl.4535:60|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@48))
)))
(assert (forall ((s@@49 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@49)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@49)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@49))))
 :qid |NetworkIdentitybpl.4552:66|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@50)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@50)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@50))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@50))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@50))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@50))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@50))))
 :qid |NetworkIdentitybpl.4581:50|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@51) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@51)))
 :qid |NetworkIdentitybpl.4604:45|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@52)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@52)) true))
 :qid |NetworkIdentitybpl.4621:87|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@53) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@53)))
 :qid |NetworkIdentitybpl.4635:47|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@54)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@54)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@54))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@54))))
 :qid |NetworkIdentitybpl.4654:58|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@55) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@55)))
 :qid |NetworkIdentitybpl.4670:39|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@55))
)))
(assert (forall ((s@@56 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@56)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@56)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@56))))
 :qid |NetworkIdentitybpl.4692:58|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@57)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@57)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@57))))
 :qid |NetworkIdentitybpl.4709:58|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@57))
)))
(assert (forall ((s@@58 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@58) true)
 :qid |NetworkIdentitybpl.4724:51|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@58))
)))
(assert (forall ((s@@59 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@59)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@59)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@59))))
 :qid |NetworkIdentitybpl.4741:60|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@60)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@60)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@60))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@60))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@60))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@60))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@60))))
 :qid |NetworkIdentitybpl.4775:47|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@61)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@61)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@61))))
 :qid |NetworkIdentitybpl.4801:63|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@62) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@62)))
 :qid |NetworkIdentitybpl.4816:57|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@62))
)))
(assert (forall ((s@@63 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@63) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@63)))
 :qid |NetworkIdentitybpl.4829:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@63))
)))
(assert (forall ((s@@64 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@64) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@64)))
 :qid |NetworkIdentitybpl.4843:55|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@65)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@65)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@65))))
 :qid |NetworkIdentitybpl.4860:54|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@66)))
 :qid |NetworkIdentitybpl.4874:55|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@67) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@67)))
 :qid |NetworkIdentitybpl.4887:57|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@68)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@68)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@68))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@68))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@68))))
 :qid |NetworkIdentitybpl.4909:56|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@69)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@69)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@69))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@69))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@69))))
 :qid |NetworkIdentitybpl.4936:52|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@70) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@70)))
 :qid |NetworkIdentitybpl.4954:54|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@71)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@71)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@71))))
 :qid |NetworkIdentitybpl.4975:47|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@72)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@72))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@72))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@72))))
 :qid |NetworkIdentitybpl.4999:47|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@73) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@73)))
 :qid |NetworkIdentitybpl.5017:49|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@74)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@74)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@74))))
 :qid |NetworkIdentitybpl.5059:49|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@75)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@75)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@75))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@75))))
 :qid |NetworkIdentitybpl.5088:48|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@76) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@76)))
 :qid |NetworkIdentitybpl.5104:47|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@76))
)))
(assert (forall ((s@@77 T@$1_NetworkIdentity_NetworkIdentity) ) (! (= (|$IsValid'$1_NetworkIdentity_NetworkIdentity'| s@@77) (|$IsValid'vec'vec'u8'''| (|$identities#$1_NetworkIdentity_NetworkIdentity| s@@77)))
 :qid |NetworkIdentitybpl.5122:55|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_NetworkIdentity_NetworkIdentity'| s@@77))
)))
(assert (forall ((s@@78 T@$1_NetworkIdentity_NetworkIdentityChangeNotification) ) (! (= (|$IsValid'$1_NetworkIdentity_NetworkIdentityChangeNotification'| s@@78)  (and (and (|$IsValid'address'| (|$account#$1_NetworkIdentity_NetworkIdentityChangeNotification| s@@78)) (|$IsValid'vec'vec'u8'''| (|$identities#$1_NetworkIdentity_NetworkIdentityChangeNotification| s@@78))) (|$IsValid'u64'| (|$time_rotated_seconds#$1_NetworkIdentity_NetworkIdentityChangeNotification| s@@78))))
 :qid |NetworkIdentitybpl.5141:73|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_NetworkIdentity_NetworkIdentityChangeNotification'| s@@78))
)))
(assert (forall ((s@@79 T@$1_NetworkIdentity_NetworkIdentityEventHandle) ) (! (= (|$IsValid'$1_NetworkIdentity_NetworkIdentityEventHandle'| s@@79) (|$IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''| (|$identity_change_events#$1_NetworkIdentity_NetworkIdentityEventHandle| s@@79)))
 :qid |NetworkIdentitybpl.5157:66|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_NetworkIdentity_NetworkIdentityEventHandle'| s@@79))
)))
(assert (forall ((v@@23 T@Vec_45987) (i@@36 Int) ) (! (= (InRangeVec_38135 v@@23 i@@36)  (and (>= i@@36 0) (< i@@36 (|l#Vec_45987| v@@23))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_38135 v@@23 i@@36))
)))
(assert (forall ((v@@24 T@Vec_44324) (i@@37 Int) ) (! (= (InRangeVec_38336 v@@24 i@@37)  (and (>= i@@37 0) (< i@@37 (|l#Vec_44324| v@@24))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_38336 v@@24 i@@37))
)))
(assert (forall ((v@@25 T@Vec_44363) (i@@38 Int) ) (! (= (InRangeVec_38537 v@@25 i@@38)  (and (>= i@@38 0) (< i@@38 (|l#Vec_44363| v@@25))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_38537 v@@25 i@@38))
)))
(assert (forall ((v@@26 T@Vec_44474) (i@@39 Int) ) (! (= (InRangeVec_38738 v@@26 i@@39)  (and (>= i@@39 0) (< i@@39 (|l#Vec_44474| v@@26))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_38738 v@@26 i@@39))
)))
(assert (forall ((v@@27 T@Vec_44749) (i@@40 Int) ) (! (= (InRangeVec_38939 v@@27 i@@40)  (and (>= i@@40 0) (< i@@40 (|l#Vec_44749| v@@27))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_38939 v@@27 i@@40))
)))
(assert (forall ((v@@28 T@Vec_44285) (i@@41 Int) ) (! (= (InRangeVec_39140 v@@28 i@@41)  (and (>= i@@41 0) (< i@@41 (|l#Vec_44285| v@@28))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_39140 v@@28 i@@41))
)))
(assert (forall ((v@@29 T@Vec_44531) (i@@42 Int) ) (! (= (InRangeVec_62197 v@@29 i@@42)  (and (>= i@@42 0) (< i@@42 (|l#Vec_44531| v@@29))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_62197 v@@29 i@@42))
)))
(assert (forall ((v@@30 T@Vec_18710) (i@@43 Int) ) (! (= (InRangeVec_11023 v@@30 i@@43)  (and (>= i@@43 0) (< i@@43 (|l#Vec_18710| v@@30))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_11023 v@@30 i@@43))
)))
(assert (forall ((v@@31 T@Vec_18710) (e@@8 Int) ) (! (let ((i@@44 (IndexOfVec_18710 v@@31 e@@8)))
(ite  (not (exists ((i@@45 Int) ) (!  (and (InRangeVec_11023 v@@31 i@@45) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@31) i@@45) e@@8))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@44 (- 0 1))  (and (and (InRangeVec_11023 v@@31 i@@44) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@31) i@@44) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@44)) (not (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@31) j@@8) e@@8)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18710 v@@31 e@@8))
)))
(assert (forall ((v@@32 T@Vec_44285) (e@@9 T@$1_ValidatorConfig_Config) ) (! (let ((i@@46 (IndexOfVec_44285 v@@32 e@@9)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (InRangeVec_39140 v@@32 i@@47) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@32) i@@47) e@@9))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@46 (- 0 1))  (and (and (InRangeVec_39140 v@@32 i@@46) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@32) i@@46) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@46)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@32) j@@9) e@@9)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44285 v@@32 e@@9))
)))
(assert (forall ((v@@33 T@Vec_44324) (e@@10 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@48 (IndexOfVec_44324 v@@33 e@@10)))
(ite  (not (exists ((i@@49 Int) ) (!  (and (InRangeVec_38336 v@@33 i@@49) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@33) i@@49) e@@10))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@48 (- 0 1))  (and (and (InRangeVec_38336 v@@33 i@@48) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@33) i@@48) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@48)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@33) j@@10) e@@10)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44324 v@@33 e@@10))
)))
(assert (forall ((v@@34 T@Vec_44363) (e@@11 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@50 (IndexOfVec_44363 v@@34 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (InRangeVec_38537 v@@34 i@@51) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@34) i@@51) e@@11))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@50 (- 0 1))  (and (and (InRangeVec_38537 v@@34 i@@50) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@34) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@50)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@34) j@@11) e@@11)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44363 v@@34 e@@11))
)))
(assert (forall ((v@@35 T@Vec_44474) (e@@12 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@52 (IndexOfVec_44474 v@@35 e@@12)))
(ite  (not (exists ((i@@53 Int) ) (!  (and (InRangeVec_38738 v@@35 i@@53) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@35) i@@53) e@@12))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@52 (- 0 1))  (and (and (InRangeVec_38738 v@@35 i@@52) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@35) i@@52) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@52)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@35) j@@12) e@@12)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44474 v@@35 e@@12))
)))
(assert (forall ((v@@36 T@Vec_44531) (e@@13 T@Vec_18710) ) (! (let ((i@@54 (IndexOfVec_44531 v@@36 e@@13)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (InRangeVec_62197 v@@36 i@@55) (= (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@36) i@@55) e@@13))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@54 (- 0 1))  (and (and (InRangeVec_62197 v@@36 i@@54) (= (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@36) i@@54) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@54)) (not (= (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@36) j@@13) e@@13)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44531 v@@36 e@@13))
)))
(assert (forall ((v@@37 T@Vec_44749) (e@@14 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@56 (IndexOfVec_44749 v@@37 e@@14)))
(ite  (not (exists ((i@@57 Int) ) (!  (and (InRangeVec_38939 v@@37 i@@57) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@37) i@@57) e@@14))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@56 (- 0 1))  (and (and (InRangeVec_38939 v@@37 i@@56) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@37) i@@56) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@56)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@37) j@@14) e@@14)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44749 v@@37 e@@14))
)))
(assert (forall ((v@@38 T@Vec_45987) (e@@15 |T@#0|) ) (! (let ((i@@58 (IndexOfVec_45987 v@@38 e@@15)))
(ite  (not (exists ((i@@59 Int) ) (!  (and (InRangeVec_38135 v@@38 i@@59) (= (|Select__T@[Int]#0_| (|v#Vec_45987| v@@38) i@@59) e@@15))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@58 (- 0 1))  (and (and (InRangeVec_38135 v@@38 i@@58) (= (|Select__T@[Int]#0_| (|v#Vec_45987| v@@38) i@@58) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@58)) (not (= (|Select__T@[Int]#0_| (|v#Vec_45987| v@@38) j@@15) e@@15)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_45987 v@@38 e@@15))
)))
(assert (forall ((|l#0| Bool) (i@@60 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@60) |l#0|)
 :qid |NetworkIdentitybpl.275:54|
 :skolemid |274|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@60))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_44199|) (|l#1| |T@[$1_Event_EventHandle]Multiset_44199|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_44199_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_44199| (|Select__T@[$1_Event_EventHandle]Multiset_44199_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_44199| (|Select__T@[$1_Event_EventHandle]Multiset_44199_| |l#1| handle@@0))))
(Multiset_44199 (|lambda#27| (|v#Multiset_44199| (|Select__T@[$1_Event_EventHandle]Multiset_44199_| |l#0@@0| handle@@0)) (|v#Multiset_44199| (|Select__T@[$1_Event_EventHandle]Multiset_44199_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |NetworkIdentitybpl.2416:13|
 :skolemid |275|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_44199_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@61 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@61) (ite  (and (>= i@@61 |l#0@@1|) (< i@@61 |l#1@@0|)) (ite (< i@@61 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@61) (|Select__T@[Int]#0_| |l#4| (- i@@61 |l#5|))) |l#6|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |276|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@61))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@62 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@62) (ite  (and (<= |l#0@@2| i@@62) (< i@@62 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@62) |l#4@@0|)) |l#5@@0|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@62))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@16) (ite  (and (>= j@@16 |l#0@@3|) (< j@@16 |l#1@@2|)) (ite (< j@@16 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@16) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@16 |l#5@@1|))) |l#6@@0|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |278|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@16))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@63 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@63) (ite  (and (>= i@@63 |l#0@@4|) (< i@@63 |l#1@@3|)) (ite (< i@@63 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@63) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@63 |l#5@@2|))) |l#6@@1|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |279|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@63))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@64 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@64) (ite  (and (<= |l#0@@5| i@@64) (< i@@64 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@64) |l#4@@3|)) |l#5@@3|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |280|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@64))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@17 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@17) (ite  (and (>= j@@17 |l#0@@6|) (< j@@17 |l#1@@5|)) (ite (< j@@17 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@17) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@17 |l#5@@4|))) |l#6@@2|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |281|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@17))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@65 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@65) (ite  (and (>= i@@65 |l#0@@7|) (< i@@65 |l#1@@6|)) (ite (< i@@65 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@65) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@65 |l#5@@5|))) |l#6@@3|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |282|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@65))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@66 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@66) (ite  (and (<= |l#0@@8| i@@66) (< i@@66 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@66) |l#4@@6|)) |l#5@@6|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |283|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@66))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@18) (ite  (and (>= j@@18 |l#0@@9|) (< j@@18 |l#1@@8|)) (ite (< j@@18 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@18) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@18 |l#5@@7|))) |l#6@@4|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |284|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@18))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@67 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@67) (ite  (and (>= i@@67 |l#0@@10|) (< i@@67 |l#1@@9|)) (ite (< i@@67 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@67) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@67 |l#5@@8|))) |l#6@@5|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@67))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@68 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@68) (ite  (and (<= |l#0@@11| i@@68) (< i@@68 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@68) |l#4@@9|)) |l#5@@9|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@68))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@19) (ite  (and (>= j@@19 |l#0@@12|) (< j@@19 |l#1@@11|)) (ite (< j@@19 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@19) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@19 |l#5@@10|))) |l#6@@6|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@19))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@11| Int) (|l#6@@7| T@$1_VASPDomain_VASPDomain) (i@@69 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@69) (ite  (and (>= i@@69 |l#0@@13|) (< i@@69 |l#1@@12|)) (ite (< i@@69 |l#2@@11|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@11| i@@69) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@11| (- i@@69 |l#5@@11|))) |l#6@@7|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@69))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_VASPDomain_VASPDomain) (i@@70 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@70) (ite  (and (<= |l#0@@14| i@@70) (< i@@70 |l#1@@13|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@12| (- (- |l#3@@12| i@@70) |l#4@@12|)) |l#5@@12|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |289|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@70))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@13| Int) (|l#6@@8| T@$1_VASPDomain_VASPDomain) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@20) (ite  (and (>= j@@20 |l#0@@15|) (< j@@20 |l#1@@14|)) (ite (< j@@20 |l#2@@13|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@13| j@@20) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@13| (+ j@@20 |l#5@@13|))) |l#6@@8|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |290|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@20))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@14| Int) (|l#6@@9| T@$1_ValidatorConfig_Config) (i@@71 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@71) (ite  (and (>= i@@71 |l#0@@16|) (< i@@71 |l#1@@15|)) (ite (< i@@71 |l#2@@14|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@14| i@@71) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@14| (- i@@71 |l#5@@14|))) |l#6@@9|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |291|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@71))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@$1_ValidatorConfig_Config) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@72) (ite  (and (<= |l#0@@17| i@@72) (< i@@72 |l#1@@16|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@15| (- (- |l#3@@15| i@@72) |l#4@@15|)) |l#5@@15|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@72))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@16| Int) (|l#6@@10| T@$1_ValidatorConfig_Config) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@21) (ite  (and (>= j@@21 |l#0@@18|) (< j@@21 |l#1@@17|)) (ite (< j@@21 |l#2@@16|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@16| j@@21) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@16| (+ j@@21 |l#5@@16|))) |l#6@@10|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@21))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Vec_18710|) (|l#4@@17| |T@[Int]Vec_18710|) (|l#5@@17| Int) (|l#6@@11| T@Vec_18710) (i@@73 Int) ) (! (= (|Select__T@[Int]Vec_18710_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@73) (ite  (and (>= i@@73 |l#0@@19|) (< i@@73 |l#1@@18|)) (ite (< i@@73 |l#2@@17|) (|Select__T@[Int]Vec_18710_| |l#3@@17| i@@73) (|Select__T@[Int]Vec_18710_| |l#4@@17| (- i@@73 |l#5@@17|))) |l#6@@11|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]Vec_18710_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@73))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Vec_18710|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@Vec_18710) (i@@74 Int) ) (! (= (|Select__T@[Int]Vec_18710_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@74) (ite  (and (<= |l#0@@20| i@@74) (< i@@74 |l#1@@19|)) (|Select__T@[Int]Vec_18710_| |l#2@@18| (- (- |l#3@@18| i@@74) |l#4@@18|)) |l#5@@18|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]Vec_18710_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@74))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Vec_18710|) (|l#4@@19| |T@[Int]Vec_18710|) (|l#5@@19| Int) (|l#6@@12| T@Vec_18710) (j@@22 Int) ) (! (= (|Select__T@[Int]Vec_18710_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@22) (ite  (and (>= j@@22 |l#0@@21|) (< j@@22 |l#1@@20|)) (ite (< j@@22 |l#2@@19|) (|Select__T@[Int]Vec_18710_| |l#3@@19| j@@22) (|Select__T@[Int]Vec_18710_| |l#4@@19| (+ j@@22 |l#5@@19|))) |l#6@@12|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]Vec_18710_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@22))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Int|) (|l#4@@20| |T@[Int]Int|) (|l#5@@20| Int) (|l#6@@13| Int) (i@@75 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@75) (ite  (and (>= i@@75 |l#0@@22|) (< i@@75 |l#1@@21|)) (ite (< i@@75 |l#2@@20|) (|Select__T@[Int]Int_| |l#3@@20| i@@75) (|Select__T@[Int]Int_| |l#4@@20| (- i@@75 |l#5@@20|))) |l#6@@13|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@75))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Int|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| Int) (i@@76 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@76) (ite  (and (<= |l#0@@23| i@@76) (< i@@76 |l#1@@22|)) (|Select__T@[Int]Int_| |l#2@@21| (- (- |l#3@@21| i@@76) |l#4@@21|)) |l#5@@21|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@76))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Int|) (|l#4@@22| |T@[Int]Int|) (|l#5@@22| Int) (|l#6@@14| Int) (j@@23 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@23) (ite  (and (>= j@@23 |l#0@@24|) (< j@@23 |l#1@@23|)) (ite (< j@@23 |l#2@@22|) (|Select__T@[Int]Int_| |l#3@@22| j@@23) (|Select__T@[Int]Int_| |l#4@@22| (+ j@@23 |l#5@@22|))) |l#6@@14|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@23))
)))
(assert (forall ((|l#0@@25| |T@[$EventRep]Int|) (|l#1@@24| |T@[$EventRep]Int|) (v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#27| |l#0@@25| |l#1@@24|) v@@39) (- (|Select__T@[$EventRep]Int_| |l#0@@25| v@@39) (|Select__T@[$EventRep]Int_| |l#1@@24| v@@39)))
 :qid |NetworkIdentitybpl.154:29|
 :skolemid |300|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#27| |l#0@@25| |l#1@@24|) v@@39))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@23| |T@[Int]#0|) (|l#3@@23| Int) (|l#4@@23| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@23| |l#3@@23| |l#4@@23|) k) (ite  (and (<= |l#0@@26| k) (< k |l#1@@25|)) (|Select__T@[Int]#0_| |l#2@@23| (+ |l#3@@23| k)) |l#4@@23|))
 :qid |NetworkIdentitybpl.90:14|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@23| |l#3@@23| |l#4@@23|) k))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory () T@$Memory_91560)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$memory@0 () T@$Memory_91560)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|T@[Int]$1_NetworkIdentity_NetworkIdentity| Int T@$1_NetworkIdentity_NetworkIdentity) |T@[Int]$1_NetworkIdentity_NetworkIdentity|)
(declare-fun |Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|T@[Int]$1_NetworkIdentity_NetworkIdentity| Int) T@$1_NetworkIdentity_NetworkIdentity)
(assert (forall ( ( ?x0 |T@[Int]$1_NetworkIdentity_NetworkIdentity|) ( ?x1 Int) ( ?x2 T@$1_NetworkIdentity_NetworkIdentity)) (! (= (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|Store__T@[Int]$1_NetworkIdentity_NetworkIdentity_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_NetworkIdentity_NetworkIdentity|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_NetworkIdentity_NetworkIdentity)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|Store__T@[Int]$1_NetworkIdentity_NetworkIdentity_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| ?x0 ?y1))) :weight 0)))
(declare-fun $t5@0 () T@$1_NetworkIdentity_NetworkIdentity)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_empty'vec'u8''$0$v@1| () T@Vec_44531)
(declare-fun $1_NetworkIdentity_NetworkIdentity_$modifies () |T@[Int]Bool|)
(declare-fun MapConstVec_62643 (T@Vec_18710) |T@[Int]Vec_18710|)
(declare-fun DefaultVecElem_62643 () T@Vec_18710)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $t2 () Int)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_NetworkIdentity_initialize_network_identity$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 120484) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct true))
(let ((anon9_Then$1_correct  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 108782) 108724) anon10_Then_correct) (=> (= (ControlFlow 0 108782) 108710) anon10_Else_correct)))))
(let ((anon9_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_91560| $1_NetworkIdentity_NetworkIdentity_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 108780) 108782)) anon9_Then$1_correct)))
(let ((anon9_Else_correct  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_91560| $1_NetworkIdentity_NetworkIdentity_$memory) (|$addr#$signer| _$t0))) (= $1_NetworkIdentity_NetworkIdentity_$memory@0 ($Memory_91560 (|Store__T@[Int]Bool_| (|domain#$Memory_91560| $1_NetworkIdentity_NetworkIdentity_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_91560| $1_NetworkIdentity_NetworkIdentity_$memory) (|$addr#$signer| _$t0) $t5@0)))) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 108700) 108724) anon10_Then_correct) (=> (= (ControlFlow 0 108700) 108710) anon10_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'vec'u8''$0$v@1| |inline$$1_Vector_empty'vec'u8''$0$v@1|) (= $t5@0 ($1_NetworkIdentity_NetworkIdentity |inline$$1_Vector_empty'vec'u8''$0$v@1|))) (and (=> (= (ControlFlow 0 108678) (- 0 120732)) (let (($range_0 ($Range 0 (|l#Vec_44531| (|$identities#$1_NetworkIdentity_NetworkIdentity| $t5@0)))))
(let (($range_1 ($Range 0 (|l#Vec_44531| (|$identities#$1_NetworkIdentity_NetworkIdentity| $t5@0)))))
(forall (($i_2 Int) ($i_3 Int) ) (!  (=> ($InRange $range_0 $i_2) (=> ($InRange $range_1 $i_3) (let ((i@@77 $i_2))
(let ((j@@24 $i_3))
 (=> (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| (|$identities#$1_NetworkIdentity_NetworkIdentity| $t5@0)) i@@77) (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| (|$identities#$1_NetworkIdentity_NetworkIdentity| $t5@0)) j@@24)) (= i@@77 j@@24))))))
 :qid |NetworkIdentitybpl.5892:193|
 :skolemid |228|
))))) (=> (let (($range_0@@0 ($Range 0 (|l#Vec_44531| (|$identities#$1_NetworkIdentity_NetworkIdentity| $t5@0)))))
(let (($range_1@@0 ($Range 0 (|l#Vec_44531| (|$identities#$1_NetworkIdentity_NetworkIdentity| $t5@0)))))
(forall (($i_2@@0 Int) ($i_3@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_2@@0) (=> ($InRange $range_1@@0 $i_3@@0) (let ((i@@78 $i_2@@0))
(let ((j@@25 $i_3@@0))
 (=> (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| (|$identities#$1_NetworkIdentity_NetworkIdentity| $t5@0)) i@@78) (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| (|$identities#$1_NetworkIdentity_NetworkIdentity| $t5@0)) j@@25)) (= i@@78 j@@25))))))
 :qid |NetworkIdentitybpl.5892:193|
 :skolemid |228|
)))) (and (=> (= (ControlFlow 0 108678) (- 0 120808)) (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 108678) 108780) anon9_Then_correct) (=> (= (ControlFlow 0 108678) 108700) anon9_Else_correct))))))))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'vec'u8''$0$v@1| (Vec_44531 (MapConstVec_62643 DefaultVecElem_62643) 0)) (and (=> (= (ControlFlow 0 108563) 108796) anon8_Then_correct) (=> (= (ControlFlow 0 108563) 108678) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_91560| $1_NetworkIdentity_NetworkIdentity_$memory) $a_0)))
 (and (|$IsValid'$1_NetworkIdentity_NetworkIdentity'| $rsc) (let (($range_1@@1 ($Range 0 (|l#Vec_44531| (|$identities#$1_NetworkIdentity_NetworkIdentity| $rsc)))))
(let (($range_2 ($Range 0 (|l#Vec_44531| (|$identities#$1_NetworkIdentity_NetworkIdentity| $rsc)))))
(forall (($i_3@@1 Int) ($i_4 Int) ) (!  (=> ($InRange $range_1@@1 $i_3@@1) (=> ($InRange $range_2 $i_4) (let ((i@@79 $i_3@@1))
(let ((j@@26 $i_4))
 (=> (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| (|$identities#$1_NetworkIdentity_NetworkIdentity| $rsc)) i@@79) (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| (|$identities#$1_NetworkIdentity_NetworkIdentity| $rsc)) j@@26)) (= i@@79 j@@26))))))
 :qid |NetworkIdentitybpl.5855:249|
 :skolemid |226|
))))))
 :qid |NetworkIdentitybpl.5854:20|
 :skolemid |227|
 :pattern ( (|Select__T@[Int]$1_NetworkIdentity_NetworkIdentity_| (|contents#$Memory_91560| $1_NetworkIdentity_NetworkIdentity_$memory) $a_0))
))) (and (and (= $t2 (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| $1_NetworkIdentity_NetworkIdentity_$modifies $t2)) (and (= _$t0 _$t0) (= (ControlFlow 0 108569) 108563)))) |inline$$1_Vector_empty'vec'u8''$0$anon0_correct|)))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_44199_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_44199| stream@@0) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_44199| stream@@0) v@@40) 0)
 :qid |NetworkIdentitybpl.159:13|
 :skolemid |4|
))))
 :qid |NetworkIdentitybpl.2406:13|
 :skolemid |84|
))) (= (ControlFlow 0 108382) 108569)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 120484) 108382) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_68974 0)) ((($Memory_68974 (|domain#$Memory_68974| |T@[Int]Bool|) (|contents#$Memory_68974| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_45987 0)) (((Vec_45987 (|v#Vec_45987| |T@[Int]#0|) (|l#Vec_45987| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_NetworkIdentity_NetworkIdentityEventHandle 0)) ((($1_NetworkIdentity_NetworkIdentityEventHandle (|$identity_change_events#$1_NetworkIdentity_NetworkIdentityEventHandle| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_NetworkIdentity_NetworkIdentityEventHandle| 0)
(declare-datatypes ((T@$Memory_91407 0)) ((($Memory_91407 (|domain#$Memory_91407| |T@[Int]Bool|) (|contents#$Memory_91407| |T@[Int]$1_NetworkIdentity_NetworkIdentityEventHandle|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_89869 0)) ((($Memory_89869 (|domain#$Memory_89869| |T@[Int]Bool|) (|contents#$Memory_89869| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_89334 0)) ((($Memory_89334 (|domain#$Memory_89334| |T@[Int]Bool|) (|contents#$Memory_89334| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_87727 0)) ((($Memory_87727 (|domain#$Memory_87727| |T@[Int]Bool|) (|contents#$Memory_87727| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_88039 0)) ((($Memory_88039 (|domain#$Memory_88039| |T@[Int]Bool|) (|contents#$Memory_88039| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_87694 0)) ((($Memory_87694 (|domain#$Memory_87694| |T@[Int]Bool|) (|contents#$Memory_87694| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_87474 0)) ((($Memory_87474 (|domain#$Memory_87474| |T@[Int]Bool|) (|contents#$Memory_87474| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_86464 0)) ((($Memory_86464 (|domain#$Memory_86464| |T@[Int]Bool|) (|contents#$Memory_86464| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_86041 0)) ((($Memory_86041 (|domain#$Memory_86041| |T@[Int]Bool|) (|contents#$Memory_86041| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_85977 0)) ((($Memory_85977 (|domain#$Memory_85977| |T@[Int]Bool|) (|contents#$Memory_85977| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_85827 0)) ((($Memory_85827 (|domain#$Memory_85827| |T@[Int]Bool|) (|contents#$Memory_85827| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_85217 0)) ((($Memory_85217 (|domain#$Memory_85217| |T@[Int]Bool|) (|contents#$Memory_85217| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_84998 0)) ((($Memory_84998 (|domain#$Memory_84998| |T@[Int]Bool|) (|contents#$Memory_84998| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_88930 0)) ((($Memory_88930 (|domain#$Memory_88930| |T@[Int]Bool|) (|contents#$Memory_88930| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_84238 0)) ((($Memory_84238 (|domain#$Memory_84238| |T@[Int]Bool|) (|contents#$Memory_84238| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_80513 0)) ((($Memory_80513 (|domain#$Memory_80513| |T@[Int]Bool|) (|contents#$Memory_80513| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_89156 0)) ((($Memory_89156 (|domain#$Memory_89156| |T@[Int]Bool|) (|contents#$Memory_89156| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_84506 0)) ((($Memory_84506 (|domain#$Memory_84506| |T@[Int]Bool|) (|contents#$Memory_84506| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_85304 0)) ((($Memory_85304 (|domain#$Memory_85304| |T@[Int]Bool|) (|contents#$Memory_85304| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_89065 0)) ((($Memory_89065 (|domain#$Memory_89065| |T@[Int]Bool|) (|contents#$Memory_89065| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_84415 0)) ((($Memory_84415 (|domain#$Memory_84415| |T@[Int]Bool|) (|contents#$Memory_84415| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_86221 0)) ((($Memory_86221 (|domain#$Memory_86221| |T@[Int]Bool|) (|contents#$Memory_86221| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_79637 0)) ((($Memory_79637 (|domain#$Memory_79637| |T@[Int]Bool|) (|contents#$Memory_79637| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_79892 0)) ((($Memory_79892 (|domain#$Memory_79892| |T@[Int]Bool|) (|contents#$Memory_79892| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_78465 0)) ((($Memory_78465 (|domain#$Memory_78465| |T@[Int]Bool|) (|contents#$Memory_78465| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_78756 0)) ((($Memory_78756 (|domain#$Memory_78756| |T@[Int]Bool|) (|contents#$Memory_78756| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_78351 0)) ((($Memory_78351 (|domain#$Memory_78351| |T@[Int]Bool|) (|contents#$Memory_78351| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_44363 0)) (((Vec_44363 (|v#Vec_44363| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_44363| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_44363) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_44324 0)) (((Vec_44324 (|v#Vec_44324| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_44324| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_44324) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_18710 0)) (((Vec_18710 (|v#Vec_18710| |T@[Int]Int|) (|l#Vec_18710| Int) ) ) ))
(declare-sort |T@[Int]Vec_18710| 0)
(declare-datatypes ((T@Vec_44531 0)) (((Vec_44531 (|v#Vec_44531| |T@[Int]Vec_18710|) (|l#Vec_44531| Int) ) ) ))
(declare-datatypes ((T@$1_NetworkIdentity_NetworkIdentity 0)) ((($1_NetworkIdentity_NetworkIdentity (|$identities#$1_NetworkIdentity_NetworkIdentity| T@Vec_44531) ) ) ))
(declare-sort |T@[Int]$1_NetworkIdentity_NetworkIdentity| 0)
(declare-datatypes ((T@$Memory_91560 0)) ((($Memory_91560 (|domain#$Memory_91560| |T@[Int]Bool|) (|contents#$Memory_91560| |T@[Int]$1_NetworkIdentity_NetworkIdentity|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_44531) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_78628 0)) ((($Memory_78628 (|domain#$Memory_78628| |T@[Int]Bool|) (|contents#$Memory_78628| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_44531) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_78564 0)) ((($Memory_78564 (|domain#$Memory_78564| |T@[Int]Bool|) (|contents#$Memory_78564| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_18710) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_18710) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_78692 0)) ((($Memory_78692 (|domain#$Memory_78692| |T@[Int]Bool|) (|contents#$Memory_78692| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_18710) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_88206 0)) ((($Memory_88206 (|domain#$Memory_88206| |T@[Int]Bool|) (|contents#$Memory_88206| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_18710) (|$base_url#$1_DualAttestation_Credential| T@Vec_18710) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_18710) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_86400 0)) ((($Memory_86400 (|domain#$Memory_86400| |T@[Int]Bool|) (|contents#$Memory_86400| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_18710) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_44749 0)) (((Vec_44749 (|v#Vec_44749| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_44749| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_44749) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_85944 0)) ((($Memory_85944 (|domain#$Memory_85944| |T@[Int]Bool|) (|contents#$Memory_85944| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_18710) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_80287 0)) ((($Memory_80287 (|domain#$Memory_80287| |T@[Int]Bool|) (|contents#$Memory_80287| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_18710) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_80223 0)) ((($Memory_80223 (|domain#$Memory_80223| |T@[Int]Bool|) (|contents#$Memory_80223| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_18710) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_18710) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_18710) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_44285 0)) (((Vec_44285 (|v#Vec_44285| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_44285| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_44285) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_44474 0)) (((Vec_44474 (|v#Vec_44474| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_44474| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_44474) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_78384 0)) ((($Memory_78384 (|domain#$Memory_78384| |T@[Int]Bool|) (|contents#$Memory_78384| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_18710) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_18710) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_77765 0)) ((($Memory_77765 (|domain#$Memory_77765| |T@[Int]Bool|) (|contents#$Memory_77765| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_18710) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_77262 0)) ((($Memory_77262 (|domain#$Memory_77262| |T@[Int]Bool|) (|contents#$Memory_77262| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_76935 0)) ((($Memory_76935 (|domain#$Memory_76935| |T@[Int]Bool|) (|contents#$Memory_76935| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_76747 0)) ((($Memory_76747 (|domain#$Memory_76747| |T@[Int]Bool|) (|contents#$Memory_76747| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_NetworkIdentity_NetworkIdentityChangeNotification 0)) ((($1_NetworkIdentity_NetworkIdentityChangeNotification (|$account#$1_NetworkIdentity_NetworkIdentityChangeNotification| Int) (|$identities#$1_NetworkIdentity_NetworkIdentityChangeNotification| T@Vec_44531) (|$time_rotated_seconds#$1_NetworkIdentity_NetworkIdentityChangeNotification| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_18710) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_18710) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_18710) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_18710) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_18710) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_18710) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_18710) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_18710) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_18710) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_18710) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_18710) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_18710) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_18710) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| (|e#$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| T@$1_NetworkIdentity_NetworkIdentityChangeNotification) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_44199 0)) (((Multiset_44199 (|v#Multiset_44199| |T@[$EventRep]Int|) (|l#Multiset_44199| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_44199| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_44199|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_98906 0)) ((($Mutation_98906 (|l#$Mutation_98906| T@$Location) (|p#$Mutation_98906| T@Vec_18710) (|v#$Mutation_98906| T@$1_NetworkIdentity_NetworkIdentityEventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_98842 0)) ((($Mutation_98842 (|l#$Mutation_98842| T@$Location) (|p#$Mutation_98842| T@Vec_18710) (|v#$Mutation_98842| T@$1_NetworkIdentity_NetworkIdentity) ) ) ))
(declare-datatypes ((T@$Mutation_69605 0)) ((($Mutation_69605 (|l#$Mutation_69605| T@$Location) (|p#$Mutation_69605| T@Vec_18710) (|v#$Mutation_69605| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11647 0)) ((($Mutation_11647 (|l#$Mutation_11647| T@$Location) (|p#$Mutation_11647| T@Vec_18710) (|v#$Mutation_11647| Int) ) ) ))
(declare-datatypes ((T@$Mutation_63862 0)) ((($Mutation_63862 (|l#$Mutation_63862| T@$Location) (|p#$Mutation_63862| T@Vec_18710) (|v#$Mutation_63862| T@Vec_18710) ) ) ))
(declare-datatypes ((T@$Mutation_62774 0)) ((($Mutation_62774 (|l#$Mutation_62774| T@$Location) (|p#$Mutation_62774| T@Vec_18710) (|v#$Mutation_62774| T@Vec_44531) ) ) ))
(declare-datatypes ((T@$Mutation_61065 0)) ((($Mutation_61065 (|l#$Mutation_61065| T@$Location) (|p#$Mutation_61065| T@Vec_18710) (|v#$Mutation_61065| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_60078 0)) ((($Mutation_60078 (|l#$Mutation_60078| T@$Location) (|p#$Mutation_60078| T@Vec_18710) (|v#$Mutation_60078| T@Vec_44285) ) ) ))
(declare-datatypes ((T@$Mutation_58423 0)) ((($Mutation_58423 (|l#$Mutation_58423| T@$Location) (|p#$Mutation_58423| T@Vec_18710) (|v#$Mutation_58423| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_57436 0)) ((($Mutation_57436 (|l#$Mutation_57436| T@$Location) (|p#$Mutation_57436| T@Vec_18710) (|v#$Mutation_57436| T@Vec_44749) ) ) ))
(declare-datatypes ((T@$Mutation_55758 0)) ((($Mutation_55758 (|l#$Mutation_55758| T@$Location) (|p#$Mutation_55758| T@Vec_18710) (|v#$Mutation_55758| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_54771 0)) ((($Mutation_54771 (|l#$Mutation_54771| T@$Location) (|p#$Mutation_54771| T@Vec_18710) (|v#$Mutation_54771| T@Vec_44474) ) ) ))
(declare-datatypes ((T@$Mutation_52971 0)) ((($Mutation_52971 (|l#$Mutation_52971| T@$Location) (|p#$Mutation_52971| T@Vec_18710) (|v#$Mutation_52971| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_51984 0)) ((($Mutation_51984 (|l#$Mutation_51984| T@$Location) (|p#$Mutation_51984| T@Vec_18710) (|v#$Mutation_51984| T@Vec_44363) ) ) ))
(declare-datatypes ((T@$Mutation_50319 0)) ((($Mutation_50319 (|l#$Mutation_50319| T@$Location) (|p#$Mutation_50319| T@Vec_18710) (|v#$Mutation_50319| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_49332 0)) ((($Mutation_49332 (|l#$Mutation_49332| T@$Location) (|p#$Mutation_49332| T@Vec_18710) (|v#$Mutation_49332| T@Vec_44324) ) ) ))
(declare-datatypes ((T@$Mutation_47619 0)) ((($Mutation_47619 (|l#$Mutation_47619| T@$Location) (|p#$Mutation_47619| T@Vec_18710) (|v#$Mutation_47619| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_46632 0)) ((($Mutation_46632 (|l#$Mutation_46632| T@$Location) (|p#$Mutation_46632| T@Vec_18710) (|v#$Mutation_46632| T@Vec_45987) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_45987 T@Vec_45987) Bool)
(declare-fun InRangeVec_38135 (T@Vec_45987 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_45987) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_45987 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_44324 T@Vec_44324) Bool)
(declare-fun InRangeVec_38336 (T@Vec_44324 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_44324) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_44324 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_44363 T@Vec_44363) Bool)
(declare-fun InRangeVec_38537 (T@Vec_44363 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_44363) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_44363 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_44474 T@Vec_44474) Bool)
(declare-fun InRangeVec_38738 (T@Vec_44474 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_18710 T@Vec_18710) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_44474) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_44474 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_44749 T@Vec_44749) Bool)
(declare-fun InRangeVec_38939 (T@Vec_44749 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_44749) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_44749 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_44285 T@Vec_44285) Bool)
(declare-fun InRangeVec_39140 (T@Vec_44285 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_44285) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_44285 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_44531 T@Vec_44531) Bool)
(declare-fun InRangeVec_62197 (T@Vec_44531 Int) Bool)
(declare-fun |Select__T@[Int]Vec_18710_| (|T@[Int]Vec_18710| Int) T@Vec_18710)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_44531) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_18710) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_44531 T@Vec_18710) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_18710 T@Vec_18710) Bool)
(declare-fun InRangeVec_11023 (T@Vec_18710 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_18710) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_18710 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_18710 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_18710) T@Vec_18710)
(declare-fun $1_Hash_sha3 (T@Vec_18710) T@Vec_18710)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_18710) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_18710 T@Vec_18710 T@Vec_18710) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_44199_| (|T@[$1_Event_EventHandle]Multiset_44199| T@$1_Event_EventHandle) T@Multiset_44199)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''| (T@$1_Event_EventHandle) Bool)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (T@$1_RegisteredCurrencies_RegisteredCurrencies) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnEvent'| (T@$1_Diem_BurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CancelBurnEvent'| (T@$1_Diem_CancelBurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| (|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| (|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|T@$1_Diem_MintCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintEvent'| (T@$1_Diem_MintEvent) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|T@$1_Diem_Preburn'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|T@$1_Diem_Preburn'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnEvent'| (T@$1_Diem_PreburnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
(declare-fun |$IsValid'$1_ChainId_ChainId'| (T@$1_ChainId_ChainId) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeAccountEvent'| (T@$1_AccountFreezing_FreezeAccountEvent) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeEventsHolder'| (T@$1_AccountFreezing_FreezeEventsHolder) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| (T@$1_AccountFreezing_UnfreezeAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemAccount'| (T@$1_DiemAccount_DiemAccount) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AccountOperationsCapability'| (T@$1_DiemAccount_AccountOperationsCapability) Bool)
(declare-fun |$IsValid'$1_DiemAccount_AdminTransactionEvent'| (T@$1_DiemAccount_AdminTransactionEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun |$IsValid'$1_NetworkIdentity_NetworkIdentity'| (T@$1_NetworkIdentity_NetworkIdentity) Bool)
(declare-fun |$IsValid'$1_NetworkIdentity_NetworkIdentityChangeNotification'| (T@$1_NetworkIdentity_NetworkIdentityChangeNotification) Bool)
(declare-fun |$IsValid'$1_NetworkIdentity_NetworkIdentityEventHandle'| (T@$1_NetworkIdentity_NetworkIdentityEventHandle) Bool)
(declare-fun IndexOfVec_18710 (T@Vec_18710 Int) Int)
(declare-fun IndexOfVec_44285 (T@Vec_44285 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_44324 (T@Vec_44324 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_44363 (T@Vec_44363 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_44474 (T@Vec_44474 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_44531 (T@Vec_44531 T@Vec_18710) Int)
(declare-fun IndexOfVec_44749 (T@Vec_44749 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_45987 (T@Vec_45987 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_44199| |T@[$1_Event_EventHandle]Multiset_44199|) |T@[$1_Event_EventHandle]Multiset_44199|)
(declare-fun |lambda#27| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#21| (Int Int Int |T@[Int]Vec_18710| |T@[Int]Vec_18710| Int T@Vec_18710) |T@[Int]Vec_18710|)
(declare-fun |lambda#22| (Int Int |T@[Int]Vec_18710| Int Int T@Vec_18710) |T@[Int]Vec_18710|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Vec_18710| |T@[Int]Vec_18710| Int T@Vec_18710) |T@[Int]Vec_18710|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#25| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |NetworkIdentitybpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |NetworkIdentitybpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |NetworkIdentitybpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |NetworkIdentitybpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |NetworkIdentitybpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |NetworkIdentitybpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |NetworkIdentitybpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |NetworkIdentitybpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_45987) (v2 T@Vec_45987) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_45987| v1) (|l#Vec_45987| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_38135 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_45987| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_45987| v2) i@@0)))
 :qid |NetworkIdentitybpl.615:13|
 :skolemid |17|
))))
 :qid |NetworkIdentitybpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_45987) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_45987| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_38135 v@@4 i@@1) true)
 :qid |NetworkIdentitybpl.621:13|
 :skolemid |19|
))))
 :qid |NetworkIdentitybpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_45987) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_38135 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_45987| v@@5) i@@3) e))
 :qid |NetworkIdentitybpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_38135 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_45987| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_45987| v@@5) j) e)))
 :qid |NetworkIdentitybpl.634:17|
 :skolemid |22|
)))))
 :qid |NetworkIdentitybpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_44324) (v2@@0 T@Vec_44324) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_44324| v1@@0) (|l#Vec_44324| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_38336 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v2@@0) i@@4)))
 :qid |NetworkIdentitybpl.796:13|
 :skolemid |24|
))))
 :qid |NetworkIdentitybpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_44324) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_44324| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_38336 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@6) i@@5)))
 :qid |NetworkIdentitybpl.802:13|
 :skolemid |26|
))))
 :qid |NetworkIdentitybpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_44324) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_38336 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@7) i@@7) e@@0))
 :qid |NetworkIdentitybpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_38336 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@7) j@@0) e@@0)))
 :qid |NetworkIdentitybpl.815:17|
 :skolemid |29|
)))))
 :qid |NetworkIdentitybpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_44363) (v2@@1 T@Vec_44363) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_44363| v1@@1) (|l#Vec_44363| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_38537 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v2@@1) i@@8)))
 :qid |NetworkIdentitybpl.977:13|
 :skolemid |31|
))))
 :qid |NetworkIdentitybpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_44363) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_44363| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_38537 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@8) i@@9)))
 :qid |NetworkIdentitybpl.983:13|
 :skolemid |33|
))))
 :qid |NetworkIdentitybpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_44363) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_38537 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@9) i@@11) e@@1))
 :qid |NetworkIdentitybpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_38537 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@9) j@@1) e@@1)))
 :qid |NetworkIdentitybpl.996:17|
 :skolemid |36|
)))))
 :qid |NetworkIdentitybpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_44474) (v2@@2 T@Vec_44474) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_44474| v1@@2) (|l#Vec_44474| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_38738 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v2@@2) i@@12)))))
 :qid |NetworkIdentitybpl.1158:13|
 :skolemid |38|
))))
 :qid |NetworkIdentitybpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_44474) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_44474| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_38738 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@10) i@@13)))
 :qid |NetworkIdentitybpl.1164:13|
 :skolemid |40|
))))
 :qid |NetworkIdentitybpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_44474) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_38738 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |NetworkIdentitybpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_38738 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |NetworkIdentitybpl.1177:17|
 :skolemid |43|
)))))
 :qid |NetworkIdentitybpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_44749) (v2@@3 T@Vec_44749) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3)  (and (= (|l#Vec_44749| v1@@3) (|l#Vec_44749| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_38939 v1@@3 i@@16) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v1@@3) i@@16)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v2@@3) i@@16))))
 :qid |NetworkIdentitybpl.1339:13|
 :skolemid |45|
))))
 :qid |NetworkIdentitybpl.1337:50|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_44749) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_44749| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_38939 v@@12 i@@17) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@12) i@@17)))
 :qid |NetworkIdentitybpl.1345:13|
 :skolemid |47|
))))
 :qid |NetworkIdentitybpl.1343:50|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_44749) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@18 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_38939 v@@13 i@@19)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@13) i@@19)) (|$domain#$1_VASPDomain_VASPDomain| e@@3)))
 :qid |NetworkIdentitybpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_38939 v@@13 i@@18)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@13) i@@18)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@13) j@@3)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))))
 :qid |NetworkIdentitybpl.1358:17|
 :skolemid |50|
)))))
 :qid |NetworkIdentitybpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_44285) (v2@@4 T@Vec_44285) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4)  (and (= (|l#Vec_44285| v1@@4) (|l#Vec_44285| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_39140 v1@@4 i@@20) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v1@@4) i@@20)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v1@@4) i@@20)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v2@@4) i@@20)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v1@@4) i@@20)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v2@@4) i@@20)))))
 :qid |NetworkIdentitybpl.1520:13|
 :skolemid |52|
))))
 :qid |NetworkIdentitybpl.1518:51|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_44285) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_44285| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_39140 v@@14 i@@21) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@14) i@@21)))
 :qid |NetworkIdentitybpl.1526:13|
 :skolemid |54|
))))
 :qid |NetworkIdentitybpl.1524:51|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_44285) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_39140 v@@15 i@@23)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) i@@23)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) i@@23)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) i@@23)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4))))
 :qid |NetworkIdentitybpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_39140 v@@15 i@@22)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) i@@22)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) i@@22)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) i@@22)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) j@@4)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) j@@4)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@15) j@@4)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))))
 :qid |NetworkIdentitybpl.1539:17|
 :skolemid |57|
)))))
 :qid |NetworkIdentitybpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_44531) (v2@@5 T@Vec_44531) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@5 v2@@5)  (and (= (|l#Vec_44531| v1@@5) (|l#Vec_44531| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_62197 v1@@5 i@@24) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v1@@5) i@@24) (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v2@@5) i@@24)))
 :qid |NetworkIdentitybpl.1701:13|
 :skolemid |59|
))))
 :qid |NetworkIdentitybpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_44531) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_44531| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_62197 v@@16 i@@25) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@16) i@@25)))
 :qid |NetworkIdentitybpl.1707:13|
 :skolemid |61|
))))
 :qid |NetworkIdentitybpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_44531) (e@@5 T@Vec_18710) ) (! (let ((i@@26 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_62197 v@@17 i@@27)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@17) i@@27) e@@5))
 :qid |NetworkIdentitybpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_62197 v@@17 i@@26)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@17) j@@5) e@@5)))
 :qid |NetworkIdentitybpl.1720:17|
 :skolemid |64|
)))))
 :qid |NetworkIdentitybpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_18710) (v2@@6 T@Vec_18710) ) (! (= (|$IsEqual'vec'address''| v1@@6 v2@@6)  (and (= (|l#Vec_18710| v1@@6) (|l#Vec_18710| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_11023 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_18710| v2@@6) i@@28)))
 :qid |NetworkIdentitybpl.1882:13|
 :skolemid |66|
))))
 :qid |NetworkIdentitybpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'address''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_18710) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_18710| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_11023 v@@18 i@@29) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_18710| v@@18) i@@29)))
 :qid |NetworkIdentitybpl.1888:13|
 :skolemid |68|
))))
 :qid |NetworkIdentitybpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_18710) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_11023 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@19) i@@31) e@@6))
 :qid |NetworkIdentitybpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_11023 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@19) j@@6) e@@6)))
 :qid |NetworkIdentitybpl.1901:17|
 :skolemid |71|
)))))
 :qid |NetworkIdentitybpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_18710) (v2@@7 T@Vec_18710) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7)  (and (= (|l#Vec_18710| v1@@7) (|l#Vec_18710| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_11023 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_18710| v2@@7) i@@32)))
 :qid |NetworkIdentitybpl.2063:13|
 :skolemid |73|
))))
 :qid |NetworkIdentitybpl.2061:28|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'u8''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_18710) ) (! (= (|$IsValid'vec'u8''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_18710| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_11023 v@@20 i@@33) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_18710| v@@20) i@@33)))
 :qid |NetworkIdentitybpl.2069:13|
 :skolemid |75|
))))
 :qid |NetworkIdentitybpl.2067:28|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'u8''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_18710) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'u8'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_11023 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@21) i@@35) e@@7))
 :qid |NetworkIdentitybpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_11023 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@21) j@@7) e@@7)))
 :qid |NetworkIdentitybpl.2082:17|
 :skolemid |78|
)))))
 :qid |NetworkIdentitybpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'u8'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_18710) (v2@@8 T@Vec_18710) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@8) ($1_Hash_sha2 v2@@8)))
 :qid |NetworkIdentitybpl.2255:15|
 :skolemid |80|
 :pattern ( ($1_Hash_sha2 v1@@8) ($1_Hash_sha2 v2@@8))
)))
(assert (forall ((v1@@9 T@Vec_18710) (v2@@9 T@Vec_18710) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@9) ($1_Hash_sha3 v2@@9)))
 :qid |NetworkIdentitybpl.2271:15|
 :skolemid |81|
 :pattern ( ($1_Hash_sha3 v1@@9) ($1_Hash_sha3 v2@@9))
)))
(assert (forall ((k1 T@Vec_18710) (k2 T@Vec_18710) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |NetworkIdentitybpl.2342:15|
 :skolemid |82|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_18710) (s2 T@Vec_18710) (k1@@0 T@Vec_18710) (k2@@0 T@Vec_18710) (m1 T@Vec_18710) (m2 T@Vec_18710) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |NetworkIdentitybpl.2345:15|
 :skolemid |83|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_44199_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_44199| stream) 0) (forall ((v@@22 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_44199| stream) v@@22) 0)
 :qid |NetworkIdentitybpl.159:13|
 :skolemid |4|
))))
 :qid |NetworkIdentitybpl.2406:13|
 :skolemid |84|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |NetworkIdentitybpl.2447:80|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@10 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@10 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@10)))
 :qid |NetworkIdentitybpl.2453:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@10))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |NetworkIdentitybpl.2503:82|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@11 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@11 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@11)))
 :qid |NetworkIdentitybpl.2509:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@11))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |NetworkIdentitybpl.2559:80|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@12 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@12 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@12)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@12))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@12))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@12)))
 :qid |NetworkIdentitybpl.2565:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@12))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |NetworkIdentitybpl.2615:79|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@13 T@$1_DiemAccount_AdminTransactionEvent) (v2@@13 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@13)))
 :qid |NetworkIdentitybpl.2621:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@13))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |NetworkIdentitybpl.2671:76|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_CreateAccountEvent) (v2@@14 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@14)))
 :qid |NetworkIdentitybpl.2677:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@14))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |NetworkIdentitybpl.2727:78|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@15 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@15)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@15))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@15))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@15))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@15)))
 :qid |NetworkIdentitybpl.2733:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@15))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |NetworkIdentitybpl.2783:74|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_SentPaymentEvent) (v2@@16 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@16))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@16))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@16)))
 :qid |NetworkIdentitybpl.2789:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@16))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |NetworkIdentitybpl.2839:69|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@17 T@$1_DiemBlock_NewBlockEvent) (v2@@17 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@17) (|$round#$1_DiemBlock_NewBlockEvent| v2@@17)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@17) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@17))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@17) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@17))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@17) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@17))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@17) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@17)))
 :qid |NetworkIdentitybpl.2845:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@17) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@17))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |NetworkIdentitybpl.2895:70|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@18 T@$1_DiemConfig_NewEpochEvent) (v2@@18 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@18) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@18)))
 :qid |NetworkIdentitybpl.2901:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@18) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@18))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |NetworkIdentitybpl.2951:60|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@19 T@$1_Diem_BurnEvent) (v2@@19 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@19) (|$amount#$1_Diem_BurnEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@19) (|$currency_code#$1_Diem_BurnEvent| v2@@19))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@19) (|$preburn_address#$1_Diem_BurnEvent| v2@@19))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@19)))
 :qid |NetworkIdentitybpl.2957:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@19))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |NetworkIdentitybpl.3007:66|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@20 T@$1_Diem_CancelBurnEvent) (v2@@20 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@20) (|$amount#$1_Diem_CancelBurnEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@20) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@20))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@20) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@20))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@20)))
 :qid |NetworkIdentitybpl.3013:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@20))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |NetworkIdentitybpl.3063:60|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@21 T@$1_Diem_MintEvent) (v2@@21 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@21) (|$amount#$1_Diem_MintEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@21) (|$currency_code#$1_Diem_MintEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@21) (|$ToEventRep'$1_Diem_MintEvent'| v2@@21)))
 :qid |NetworkIdentitybpl.3069:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@21) (|$ToEventRep'$1_Diem_MintEvent'| v2@@21))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |NetworkIdentitybpl.3119:63|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@22 T@$1_Diem_PreburnEvent) (v2@@22 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@22) (|$amount#$1_Diem_PreburnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@22) (|$currency_code#$1_Diem_PreburnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@22) (|$preburn_address#$1_Diem_PreburnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@22) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@22)))
 :qid |NetworkIdentitybpl.3125:15|
 :skolemid |111|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@22) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@22))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |NetworkIdentitybpl.3175:79|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@23 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@23 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@23) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@23)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@23) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@23) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@23)))
 :qid |NetworkIdentitybpl.3181:15|
 :skolemid |113|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@23) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@23))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |NetworkIdentitybpl.3231:82|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@24 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@24 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@24) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@24)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@24) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@24))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@24)))
 :qid |NetworkIdentitybpl.3237:15|
 :skolemid |115|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@24))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |NetworkIdentitybpl.3287:88|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@25 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@25 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@25) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@25)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@25) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@25))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@25)))
 :qid |NetworkIdentitybpl.3293:15|
 :skolemid |117|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@25))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''| h@@15) true)
 :qid |NetworkIdentitybpl.3343:95|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''| h@@15))
)))
(assert (forall ((v1@@26 T@$1_NetworkIdentity_NetworkIdentityChangeNotification) (v2@@26 T@$1_NetworkIdentity_NetworkIdentityChangeNotification) ) (! (=  (and (and (= (|$account#$1_NetworkIdentity_NetworkIdentityChangeNotification| v1@@26) (|$account#$1_NetworkIdentity_NetworkIdentityChangeNotification| v2@@26)) (|$IsEqual'vec'vec'u8'''| (|$identities#$1_NetworkIdentity_NetworkIdentityChangeNotification| v1@@26) (|$identities#$1_NetworkIdentity_NetworkIdentityChangeNotification| v2@@26))) (= (|$time_rotated_seconds#$1_NetworkIdentity_NetworkIdentityChangeNotification| v1@@26) (|$time_rotated_seconds#$1_NetworkIdentity_NetworkIdentityChangeNotification| v2@@26))) (= (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| v1@@26) (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| v2@@26)))
 :qid |NetworkIdentitybpl.3349:15|
 :skolemid |119|
 :pattern ( (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| v1@@26) (|$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'| v2@@26))
)))
(assert (forall ((h@@16 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@16) true)
 :qid |NetworkIdentitybpl.3399:72|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@16))
)))
(assert (forall ((v1@@27 T@$1_VASPDomain_VASPDomainEvent) (v2@@27 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@27)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@27)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@27))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27)))
 :qid |NetworkIdentitybpl.3405:15|
 :skolemid |121|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |NetworkIdentitybpl.3479:61|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |NetworkIdentitybpl.3538:36|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |NetworkIdentitybpl.3557:71|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |NetworkIdentitybpl.3580:46|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |NetworkIdentitybpl.3592:64|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |NetworkIdentitybpl.3604:75|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |NetworkIdentitybpl.3616:72|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |NetworkIdentitybpl.3644:55|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |NetworkIdentitybpl.3667:46|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |NetworkIdentitybpl.3686:49|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |NetworkIdentitybpl.3736:71|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |NetworkIdentitybpl.3749:91|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |NetworkIdentitybpl.3762:113|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |NetworkIdentitybpl.3775:75|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |NetworkIdentitybpl.3788:73|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |NetworkIdentitybpl.3808:48|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15) true)
 :qid |NetworkIdentitybpl.3825:83|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@16)))
 :qid |NetworkIdentitybpl.3839:48|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@17)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@17))))
 :qid |NetworkIdentitybpl.3860:45|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@18)))
 :qid |NetworkIdentitybpl.3874:51|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@19)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@19))))
 :qid |NetworkIdentitybpl.3897:48|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19))
)))
(assert (forall ((s@@20 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@20)))
 :qid |NetworkIdentitybpl.3915:49|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20))
)))
(assert (forall ((s@@21 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@21)))
 :qid |NetworkIdentitybpl.3928:65|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@22)))
 :qid |NetworkIdentitybpl.3950:45|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@23)))
 :qid |NetworkIdentitybpl.3963:45|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@24) true)
 :qid |NetworkIdentitybpl.3976:55|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@25)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@25)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@25))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@25))))
 :qid |NetworkIdentitybpl.3996:38|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@25))
)))
(assert (forall ((s@@26 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@26)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@26)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@26))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@26))))
 :qid |NetworkIdentitybpl.4018:44|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@27)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))))
 :qid |NetworkIdentitybpl.4070:53|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@28)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))))
 :qid |NetworkIdentitybpl.4143:53|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29) true)
 :qid |NetworkIdentitybpl.4180:55|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@30)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@30))))
 :qid |NetworkIdentitybpl.4197:38|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@31)))
 :qid |NetworkIdentitybpl.4211:48|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@32)))
 :qid |NetworkIdentitybpl.4225:48|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@33))))
 :qid |NetworkIdentitybpl.4245:41|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@34)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@34)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@34))))
 :qid |NetworkIdentitybpl.4264:57|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@35) true)
 :qid |NetworkIdentitybpl.4278:68|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@36)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))))
 :qid |NetworkIdentitybpl.4300:66|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))))
 :qid |NetworkIdentitybpl.4326:66|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@38) true)
 :qid |NetworkIdentitybpl.4343:31|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@38))
)))
(assert (forall ((s@@39 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@39) true)
 :qid |NetworkIdentitybpl.4361:31|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@39))
)))
(assert (forall ((s@@40 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@40)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@40)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@40))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@40))))
 :qid |NetworkIdentitybpl.4380:35|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@40))
)))
(assert (forall ((s@@41 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@41) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@41)))
 :qid |NetworkIdentitybpl.4396:45|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@41))
)))
(assert (forall ((s@@42 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@42)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@42))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@42))))
 :qid |NetworkIdentitybpl.4414:50|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@42))
)))
(assert (forall ((s@@43 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@43) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@43)))
 :qid |NetworkIdentitybpl.4430:52|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@43))
)))
(assert (forall ((s@@44 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@44) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@44)))
 :qid |NetworkIdentitybpl.4443:46|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@44))
)))
(assert (forall ((s@@45 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@45) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@45)))
 :qid |NetworkIdentitybpl.4466:38|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@45))
)))
(assert (forall ((s@@46 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@46) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@46)))
 :qid |NetworkIdentitybpl.4480:39|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@47)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@47)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@47))))
 :qid |NetworkIdentitybpl.4507:65|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@48)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@48)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@48))))
 :qid |NetworkIdentitybpl.4535:60|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@48))
)))
(assert (forall ((s@@49 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@49)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@49)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@49))))
 :qid |NetworkIdentitybpl.4552:66|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@50)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@50)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@50))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@50))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@50))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@50))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@50))))
 :qid |NetworkIdentitybpl.4581:50|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@51) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@51)))
 :qid |NetworkIdentitybpl.4604:45|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@52)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@52)) true))
 :qid |NetworkIdentitybpl.4621:87|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@53) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@53)))
 :qid |NetworkIdentitybpl.4635:47|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@54)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@54)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@54))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@54))))
 :qid |NetworkIdentitybpl.4654:58|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@55) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@55)))
 :qid |NetworkIdentitybpl.4670:39|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@55))
)))
(assert (forall ((s@@56 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@56)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@56)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@56))))
 :qid |NetworkIdentitybpl.4692:58|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@57)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@57)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@57))))
 :qid |NetworkIdentitybpl.4709:58|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@57))
)))
(assert (forall ((s@@58 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@58) true)
 :qid |NetworkIdentitybpl.4724:51|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@58))
)))
(assert (forall ((s@@59 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@59)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@59)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@59))))
 :qid |NetworkIdentitybpl.4741:60|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@60)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@60)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@60))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@60))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@60))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@60))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@60))))
 :qid |NetworkIdentitybpl.4775:47|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@61)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@61)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@61))))
 :qid |NetworkIdentitybpl.4801:63|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@62) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@62)))
 :qid |NetworkIdentitybpl.4816:57|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@62))
)))
(assert (forall ((s@@63 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@63) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@63)))
 :qid |NetworkIdentitybpl.4829:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@63))
)))
(assert (forall ((s@@64 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@64) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@64)))
 :qid |NetworkIdentitybpl.4843:55|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@65)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@65)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@65))))
 :qid |NetworkIdentitybpl.4860:54|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@66)))
 :qid |NetworkIdentitybpl.4874:55|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@67) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@67)))
 :qid |NetworkIdentitybpl.4887:57|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@68)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@68)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@68))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@68))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@68))))
 :qid |NetworkIdentitybpl.4909:56|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@69)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@69)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@69))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@69))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@69))))
 :qid |NetworkIdentitybpl.4936:52|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@70) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@70)))
 :qid |NetworkIdentitybpl.4954:54|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@71)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@71)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@71))))
 :qid |NetworkIdentitybpl.4975:47|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@72)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@72))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@72))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@72))))
 :qid |NetworkIdentitybpl.4999:47|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@73) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@73)))
 :qid |NetworkIdentitybpl.5017:49|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@74)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@74)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@74))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@74))))
 :qid |NetworkIdentitybpl.5059:49|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@75)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@75)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@75))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@75))))
 :qid |NetworkIdentitybpl.5088:48|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@76) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@76)))
 :qid |NetworkIdentitybpl.5104:47|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@76))
)))
(assert (forall ((s@@77 T@$1_NetworkIdentity_NetworkIdentity) ) (! (= (|$IsValid'$1_NetworkIdentity_NetworkIdentity'| s@@77) (|$IsValid'vec'vec'u8'''| (|$identities#$1_NetworkIdentity_NetworkIdentity| s@@77)))
 :qid |NetworkIdentitybpl.5122:55|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_NetworkIdentity_NetworkIdentity'| s@@77))
)))
(assert (forall ((s@@78 T@$1_NetworkIdentity_NetworkIdentityChangeNotification) ) (! (= (|$IsValid'$1_NetworkIdentity_NetworkIdentityChangeNotification'| s@@78)  (and (and (|$IsValid'address'| (|$account#$1_NetworkIdentity_NetworkIdentityChangeNotification| s@@78)) (|$IsValid'vec'vec'u8'''| (|$identities#$1_NetworkIdentity_NetworkIdentityChangeNotification| s@@78))) (|$IsValid'u64'| (|$time_rotated_seconds#$1_NetworkIdentity_NetworkIdentityChangeNotification| s@@78))))
 :qid |NetworkIdentitybpl.5141:73|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_NetworkIdentity_NetworkIdentityChangeNotification'| s@@78))
)))
(assert (forall ((s@@79 T@$1_NetworkIdentity_NetworkIdentityEventHandle) ) (! (= (|$IsValid'$1_NetworkIdentity_NetworkIdentityEventHandle'| s@@79) (|$IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''| (|$identity_change_events#$1_NetworkIdentity_NetworkIdentityEventHandle| s@@79)))
 :qid |NetworkIdentitybpl.5157:66|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_NetworkIdentity_NetworkIdentityEventHandle'| s@@79))
)))
(assert (forall ((v@@23 T@Vec_45987) (i@@36 Int) ) (! (= (InRangeVec_38135 v@@23 i@@36)  (and (>= i@@36 0) (< i@@36 (|l#Vec_45987| v@@23))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_38135 v@@23 i@@36))
)))
(assert (forall ((v@@24 T@Vec_44324) (i@@37 Int) ) (! (= (InRangeVec_38336 v@@24 i@@37)  (and (>= i@@37 0) (< i@@37 (|l#Vec_44324| v@@24))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_38336 v@@24 i@@37))
)))
(assert (forall ((v@@25 T@Vec_44363) (i@@38 Int) ) (! (= (InRangeVec_38537 v@@25 i@@38)  (and (>= i@@38 0) (< i@@38 (|l#Vec_44363| v@@25))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_38537 v@@25 i@@38))
)))
(assert (forall ((v@@26 T@Vec_44474) (i@@39 Int) ) (! (= (InRangeVec_38738 v@@26 i@@39)  (and (>= i@@39 0) (< i@@39 (|l#Vec_44474| v@@26))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_38738 v@@26 i@@39))
)))
(assert (forall ((v@@27 T@Vec_44749) (i@@40 Int) ) (! (= (InRangeVec_38939 v@@27 i@@40)  (and (>= i@@40 0) (< i@@40 (|l#Vec_44749| v@@27))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_38939 v@@27 i@@40))
)))
(assert (forall ((v@@28 T@Vec_44285) (i@@41 Int) ) (! (= (InRangeVec_39140 v@@28 i@@41)  (and (>= i@@41 0) (< i@@41 (|l#Vec_44285| v@@28))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_39140 v@@28 i@@41))
)))
(assert (forall ((v@@29 T@Vec_44531) (i@@42 Int) ) (! (= (InRangeVec_62197 v@@29 i@@42)  (and (>= i@@42 0) (< i@@42 (|l#Vec_44531| v@@29))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_62197 v@@29 i@@42))
)))
(assert (forall ((v@@30 T@Vec_18710) (i@@43 Int) ) (! (= (InRangeVec_11023 v@@30 i@@43)  (and (>= i@@43 0) (< i@@43 (|l#Vec_18710| v@@30))))
 :qid |NetworkIdentitybpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_11023 v@@30 i@@43))
)))
(assert (forall ((v@@31 T@Vec_18710) (e@@8 Int) ) (! (let ((i@@44 (IndexOfVec_18710 v@@31 e@@8)))
(ite  (not (exists ((i@@45 Int) ) (!  (and (InRangeVec_11023 v@@31 i@@45) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@31) i@@45) e@@8))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@44 (- 0 1))  (and (and (InRangeVec_11023 v@@31 i@@44) (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@31) i@@44) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@44)) (not (= (|Select__T@[Int]Int_| (|v#Vec_18710| v@@31) j@@8) e@@8)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18710 v@@31 e@@8))
)))
(assert (forall ((v@@32 T@Vec_44285) (e@@9 T@$1_ValidatorConfig_Config) ) (! (let ((i@@46 (IndexOfVec_44285 v@@32 e@@9)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (InRangeVec_39140 v@@32 i@@47) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@32) i@@47) e@@9))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@46 (- 0 1))  (and (and (InRangeVec_39140 v@@32 i@@46) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@32) i@@46) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@46)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44285| v@@32) j@@9) e@@9)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44285 v@@32 e@@9))
)))
(assert (forall ((v@@33 T@Vec_44324) (e@@10 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@48 (IndexOfVec_44324 v@@33 e@@10)))
(ite  (not (exists ((i@@49 Int) ) (!  (and (InRangeVec_38336 v@@33 i@@49) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@33) i@@49) e@@10))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@48 (- 0 1))  (and (and (InRangeVec_38336 v@@33 i@@48) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@33) i@@48) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@48)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44324| v@@33) j@@10) e@@10)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44324 v@@33 e@@10))
)))
(assert (forall ((v@@34 T@Vec_44363) (e@@11 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@50 (IndexOfVec_44363 v@@34 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (InRangeVec_38537 v@@34 i@@51) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@34) i@@51) e@@11))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@50 (- 0 1))  (and (and (InRangeVec_38537 v@@34 i@@50) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@34) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@50)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44363| v@@34) j@@11) e@@11)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44363 v@@34 e@@11))
)))
(assert (forall ((v@@35 T@Vec_44474) (e@@12 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@52 (IndexOfVec_44474 v@@35 e@@12)))
(ite  (not (exists ((i@@53 Int) ) (!  (and (InRangeVec_38738 v@@35 i@@53) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@35) i@@53) e@@12))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@52 (- 0 1))  (and (and (InRangeVec_38738 v@@35 i@@52) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@35) i@@52) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@52)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_44474| v@@35) j@@12) e@@12)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44474 v@@35 e@@12))
)))
(assert (forall ((v@@36 T@Vec_44531) (e@@13 T@Vec_18710) ) (! (let ((i@@54 (IndexOfVec_44531 v@@36 e@@13)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (InRangeVec_62197 v@@36 i@@55) (= (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@36) i@@55) e@@13))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@54 (- 0 1))  (and (and (InRangeVec_62197 v@@36 i@@54) (= (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@36) i@@54) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@54)) (not (= (|Select__T@[Int]Vec_18710_| (|v#Vec_44531| v@@36) j@@13) e@@13)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44531 v@@36 e@@13))
)))
(assert (forall ((v@@37 T@Vec_44749) (e@@14 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@56 (IndexOfVec_44749 v@@37 e@@14)))
(ite  (not (exists ((i@@57 Int) ) (!  (and (InRangeVec_38939 v@@37 i@@57) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@37) i@@57) e@@14))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@56 (- 0 1))  (and (and (InRangeVec_38939 v@@37 i@@56) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@37) i@@56) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@56)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_44749| v@@37) j@@14) e@@14)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44749 v@@37 e@@14))
)))
(assert (forall ((v@@38 T@Vec_45987) (e@@15 |T@#0|) ) (! (let ((i@@58 (IndexOfVec_45987 v@@38 e@@15)))
(ite  (not (exists ((i@@59 Int) ) (!  (and (InRangeVec_38135 v@@38 i@@59) (= (|Select__T@[Int]#0_| (|v#Vec_45987| v@@38) i@@59) e@@15))
 :qid |NetworkIdentitybpl.109:13|
 :skolemid |0|
))) (= i@@58 (- 0 1))  (and (and (InRangeVec_38135 v@@38 i@@58) (= (|Select__T@[Int]#0_| (|v#Vec_45987| v@@38) i@@58) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@58)) (not (= (|Select__T@[Int]#0_| (|v#Vec_45987| v@@38) j@@15) e@@15)))
 :qid |NetworkIdentitybpl.117:17|
 :skolemid |1|
)))))
 :qid |NetworkIdentitybpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_45987 v@@38 e@@15))
)))
(assert (forall ((|l#0| Bool) (i@@60 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@60) |l#0|)
 :qid |NetworkIdentitybpl.275:54|
 :skolemid |274|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@60))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_44199|) (|l#1| |T@[$1_Event_EventHandle]Multiset_44199|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_44199_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_44199| (|Select__T@[$1_Event_EventHandle]Multiset_44199_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_44199| (|Select__T@[$1_Event_EventHandle]Multiset_44199_| |l#1| handle@@0))))
(Multiset_44199 (|lambda#27| (|v#Multiset_44199| (|Select__T@[$1_Event_EventHandle]Multiset_44199_| |l#0@@0| handle@@0)) (|v#Multiset_44199| (|Select__T@[$1_Event_EventHandle]Multiset_44199_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |NetworkIdentitybpl.2416:13|
 :skolemid |275|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_44199_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@61 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@61) (ite  (and (>= i@@61 |l#0@@1|) (< i@@61 |l#1@@0|)) (ite (< i@@61 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@61) (|Select__T@[Int]#0_| |l#4| (- i@@61 |l#5|))) |l#6|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |276|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@61))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@62 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@62) (ite  (and (<= |l#0@@2| i@@62) (< i@@62 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@62) |l#4@@0|)) |l#5@@0|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@62))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@16) (ite  (and (>= j@@16 |l#0@@3|) (< j@@16 |l#1@@2|)) (ite (< j@@16 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@16) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@16 |l#5@@1|))) |l#6@@0|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |278|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@16))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@63 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@63) (ite  (and (>= i@@63 |l#0@@4|) (< i@@63 |l#1@@3|)) (ite (< i@@63 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@63) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@63 |l#5@@2|))) |l#6@@1|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |279|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@63))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@64 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@64) (ite  (and (<= |l#0@@5| i@@64) (< i@@64 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@64) |l#4@@3|)) |l#5@@3|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |280|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@64))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@17 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@17) (ite  (and (>= j@@17 |l#0@@6|) (< j@@17 |l#1@@5|)) (ite (< j@@17 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@17) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@17 |l#5@@4|))) |l#6@@2|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |281|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@17))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@65 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@65) (ite  (and (>= i@@65 |l#0@@7|) (< i@@65 |l#1@@6|)) (ite (< i@@65 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@65) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@65 |l#5@@5|))) |l#6@@3|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |282|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@65))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@66 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@66) (ite  (and (<= |l#0@@8| i@@66) (< i@@66 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@66) |l#4@@6|)) |l#5@@6|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |283|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@66))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@18) (ite  (and (>= j@@18 |l#0@@9|) (< j@@18 |l#1@@8|)) (ite (< j@@18 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@18) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@18 |l#5@@7|))) |l#6@@4|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |284|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@18))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@67 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@67) (ite  (and (>= i@@67 |l#0@@10|) (< i@@67 |l#1@@9|)) (ite (< i@@67 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@67) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@67 |l#5@@8|))) |l#6@@5|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@67))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@68 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@68) (ite  (and (<= |l#0@@11| i@@68) (< i@@68 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@68) |l#4@@9|)) |l#5@@9|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@68))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@19) (ite  (and (>= j@@19 |l#0@@12|) (< j@@19 |l#1@@11|)) (ite (< j@@19 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@19) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@19 |l#5@@10|))) |l#6@@6|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@19))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@11| Int) (|l#6@@7| T@$1_VASPDomain_VASPDomain) (i@@69 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@69) (ite  (and (>= i@@69 |l#0@@13|) (< i@@69 |l#1@@12|)) (ite (< i@@69 |l#2@@11|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@11| i@@69) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@11| (- i@@69 |l#5@@11|))) |l#6@@7|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@69))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_VASPDomain_VASPDomain) (i@@70 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@70) (ite  (and (<= |l#0@@14| i@@70) (< i@@70 |l#1@@13|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@12| (- (- |l#3@@12| i@@70) |l#4@@12|)) |l#5@@12|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |289|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@70))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@13| Int) (|l#6@@8| T@$1_VASPDomain_VASPDomain) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@20) (ite  (and (>= j@@20 |l#0@@15|) (< j@@20 |l#1@@14|)) (ite (< j@@20 |l#2@@13|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@13| j@@20) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@13| (+ j@@20 |l#5@@13|))) |l#6@@8|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |290|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@20))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@14| Int) (|l#6@@9| T@$1_ValidatorConfig_Config) (i@@71 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@71) (ite  (and (>= i@@71 |l#0@@16|) (< i@@71 |l#1@@15|)) (ite (< i@@71 |l#2@@14|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@14| i@@71) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@14| (- i@@71 |l#5@@14|))) |l#6@@9|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |291|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@71))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@$1_ValidatorConfig_Config) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@72) (ite  (and (<= |l#0@@17| i@@72) (< i@@72 |l#1@@16|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@15| (- (- |l#3@@15| i@@72) |l#4@@15|)) |l#5@@15|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@72))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@16| Int) (|l#6@@10| T@$1_ValidatorConfig_Config) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@21) (ite  (and (>= j@@21 |l#0@@18|) (< j@@21 |l#1@@17|)) (ite (< j@@21 |l#2@@16|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@16| j@@21) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@16| (+ j@@21 |l#5@@16|))) |l#6@@10|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@21))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Vec_18710|) (|l#4@@17| |T@[Int]Vec_18710|) (|l#5@@17| Int) (|l#6@@11| T@Vec_18710) (i@@73 Int) ) (! (= (|Select__T@[Int]Vec_18710_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@73) (ite  (and (>= i@@73 |l#0@@19|) (< i@@73 |l#1@@18|)) (ite (< i@@73 |l#2@@17|) (|Select__T@[Int]Vec_18710_| |l#3@@17| i@@73) (|Select__T@[Int]Vec_18710_| |l#4@@17| (- i@@73 |l#5@@17|))) |l#6@@11|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]Vec_18710_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@73))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Vec_18710|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@Vec_18710) (i@@74 Int) ) (! (= (|Select__T@[Int]Vec_18710_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@74) (ite  (and (<= |l#0@@20| i@@74) (< i@@74 |l#1@@19|)) (|Select__T@[Int]Vec_18710_| |l#2@@18| (- (- |l#3@@18| i@@74) |l#4@@18|)) |l#5@@18|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]Vec_18710_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@74))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Vec_18710|) (|l#4@@19| |T@[Int]Vec_18710|) (|l#5@@19| Int) (|l#6@@12| T@Vec_18710) (j@@22 Int) ) (! (= (|Select__T@[Int]Vec_18710_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@22) (ite  (and (>= j@@22 |l#0@@21|) (< j@@22 |l#1@@20|)) (ite (< j@@22 |l#2@@19|) (|Select__T@[Int]Vec_18710_| |l#3@@19| j@@22) (|Select__T@[Int]Vec_18710_| |l#4@@19| (+ j@@22 |l#5@@19|))) |l#6@@12|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]Vec_18710_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@22))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Int|) (|l#4@@20| |T@[Int]Int|) (|l#5@@20| Int) (|l#6@@13| Int) (i@@75 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@75) (ite  (and (>= i@@75 |l#0@@22|) (< i@@75 |l#1@@21|)) (ite (< i@@75 |l#2@@20|) (|Select__T@[Int]Int_| |l#3@@20| i@@75) (|Select__T@[Int]Int_| |l#4@@20| (- i@@75 |l#5@@20|))) |l#6@@13|))
 :qid |NetworkIdentitybpl.73:19|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@75))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Int|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| Int) (i@@76 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@76) (ite  (and (<= |l#0@@23| i@@76) (< i@@76 |l#1@@22|)) (|Select__T@[Int]Int_| |l#2@@21| (- (- |l#3@@21| i@@76) |l#4@@21|)) |l#5@@21|))
 :qid |NetworkIdentitybpl.82:30|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@76))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Int|) (|l#4@@22| |T@[Int]Int|) (|l#5@@22| Int) (|l#6@@14| Int) (j@@23 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@23) (ite  (and (>= j@@23 |l#0@@24|) (< j@@23 |l#1@@23|)) (ite (< j@@23 |l#2@@22|) (|Select__T@[Int]Int_| |l#3@@22| j@@23) (|Select__T@[Int]Int_| |l#4@@22| (+ j@@23 |l#5@@22|))) |l#6@@14|))
 :qid |NetworkIdentitybpl.63:20|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@23))
)))
(assert (forall ((|l#0@@25| |T@[$EventRep]Int|) (|l#1@@24| |T@[$EventRep]Int|) (v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#27| |l#0@@25| |l#1@@24|) v@@39) (- (|Select__T@[$EventRep]Int_| |l#0@@25| v@@39) (|Select__T@[$EventRep]Int_| |l#1@@24| v@@39)))
 :qid |NetworkIdentitybpl.154:29|
 :skolemid |300|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#27| |l#0@@25| |l#1@@24|) v@@39))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@23| |T@[Int]#0|) (|l#3@@23| Int) (|l#4@@23| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@23| |l#3@@23| |l#4@@23|) k) (ite  (and (<= |l#0@@26| k) (< k |l#1@@25|)) (|Select__T@[Int]#0_| |l#2@@23| (+ |l#3@@23| k)) |l#4@@23|))
 :qid |NetworkIdentitybpl.90:14|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@23| |l#3@@23| |l#4@@23|) k))
)))
; Valid

