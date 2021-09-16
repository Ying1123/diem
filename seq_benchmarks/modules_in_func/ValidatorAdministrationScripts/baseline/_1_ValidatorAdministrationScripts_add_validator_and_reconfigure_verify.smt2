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
(declare-datatypes ((T@$Memory_82153 0)) ((($Memory_82153 (|domain#$Memory_82153| |T@[Int]Bool|) (|contents#$Memory_82153| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_57766 0)) (((Vec_57766 (|v#Vec_57766| |T@[Int]#0|) (|l#Vec_57766| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_112146 0)) ((($Memory_112146 (|domain#$Memory_112146| |T@[Int]Bool|) (|contents#$Memory_112146| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_109618 0)) ((($Memory_109618 (|domain#$Memory_109618| |T@[Int]Bool|) (|contents#$Memory_109618| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_107918 0)) ((($Memory_107918 (|domain#$Memory_107918| |T@[Int]Bool|) (|contents#$Memory_107918| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_108263 0)) ((($Memory_108263 (|domain#$Memory_108263| |T@[Int]Bool|) (|contents#$Memory_108263| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_107885 0)) ((($Memory_107885 (|domain#$Memory_107885| |T@[Int]Bool|) (|contents#$Memory_107885| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_107665 0)) ((($Memory_107665 (|domain#$Memory_107665| |T@[Int]Bool|) (|contents#$Memory_107665| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_106655 0)) ((($Memory_106655 (|domain#$Memory_106655| |T@[Int]Bool|) (|contents#$Memory_106655| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_106232 0)) ((($Memory_106232 (|domain#$Memory_106232| |T@[Int]Bool|) (|contents#$Memory_106232| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_106168 0)) ((($Memory_106168 (|domain#$Memory_106168| |T@[Int]Bool|) (|contents#$Memory_106168| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_106018 0)) ((($Memory_106018 (|domain#$Memory_106018| |T@[Int]Bool|) (|contents#$Memory_106018| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_105408 0)) ((($Memory_105408 (|domain#$Memory_105408| |T@[Int]Bool|) (|contents#$Memory_105408| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_105189 0)) ((($Memory_105189 (|domain#$Memory_105189| |T@[Int]Bool|) (|contents#$Memory_105189| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_109214 0)) ((($Memory_109214 (|domain#$Memory_109214| |T@[Int]Bool|) (|contents#$Memory_109214| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104429 0)) ((($Memory_104429 (|domain#$Memory_104429| |T@[Int]Bool|) (|contents#$Memory_104429| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100704 0)) ((($Memory_100704 (|domain#$Memory_100704| |T@[Int]Bool|) (|contents#$Memory_100704| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_109440 0)) ((($Memory_109440 (|domain#$Memory_109440| |T@[Int]Bool|) (|contents#$Memory_109440| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104697 0)) ((($Memory_104697 (|domain#$Memory_104697| |T@[Int]Bool|) (|contents#$Memory_104697| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_105495 0)) ((($Memory_105495 (|domain#$Memory_105495| |T@[Int]Bool|) (|contents#$Memory_105495| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_109349 0)) ((($Memory_109349 (|domain#$Memory_109349| |T@[Int]Bool|) (|contents#$Memory_109349| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104606 0)) ((($Memory_104606 (|domain#$Memory_104606| |T@[Int]Bool|) (|contents#$Memory_104606| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106412 0)) ((($Memory_106412 (|domain#$Memory_106412| |T@[Int]Bool|) (|contents#$Memory_106412| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_94980 0)) ((($Memory_94980 (|domain#$Memory_94980| |T@[Int]Bool|) (|contents#$Memory_94980| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_95363 0)) ((($Memory_95363 (|domain#$Memory_95363| |T@[Int]Bool|) (|contents#$Memory_95363| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_93638 0)) ((($Memory_93638 (|domain#$Memory_93638| |T@[Int]Bool|) (|contents#$Memory_93638| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_93750 0)) ((($Memory_93750 (|domain#$Memory_93750| |T@[Int]Bool|) (|contents#$Memory_93750| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_94041 0)) ((($Memory_94041 (|domain#$Memory_94041| |T@[Int]Bool|) (|contents#$Memory_94041| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_93107 0)) ((($Memory_93107 (|domain#$Memory_93107| |T@[Int]Bool|) (|contents#$Memory_93107| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_56172 0)) (((Vec_56172 (|v#Vec_56172| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_56172| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_56172) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_56133 0)) (((Vec_56133 (|v#Vec_56133| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_56133| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_56133) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_19663 0)) (((Vec_19663 (|v#Vec_19663| |T@[Int]Int|) (|l#Vec_19663| Int) ) ) ))
(declare-sort |T@[Int]Vec_19663| 0)
(declare-datatypes ((T@Vec_56343 0)) (((Vec_56343 (|v#Vec_56343| |T@[Int]Vec_19663|) (|l#Vec_56343| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_56343) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_93913 0)) ((($Memory_93913 (|domain#$Memory_93913| |T@[Int]Bool|) (|contents#$Memory_93913| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_56343) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_93849 0)) ((($Memory_93849 (|domain#$Memory_93849| |T@[Int]Bool|) (|contents#$Memory_93849| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_19663) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_19663) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_93977 0)) ((($Memory_93977 (|domain#$Memory_93977| |T@[Int]Bool|) (|contents#$Memory_93977| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_19663) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_108430 0)) ((($Memory_108430 (|domain#$Memory_108430| |T@[Int]Bool|) (|contents#$Memory_108430| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_19663) (|$base_url#$1_DualAttestation_Credential| T@Vec_19663) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_19663) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_106591 0)) ((($Memory_106591 (|domain#$Memory_106591| |T@[Int]Bool|) (|contents#$Memory_106591| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_19663) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_56561 0)) (((Vec_56561 (|v#Vec_56561| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_56561| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_56561) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_106135 0)) ((($Memory_106135 (|domain#$Memory_106135| |T@[Int]Bool|) (|contents#$Memory_106135| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_19663) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100478 0)) ((($Memory_100478 (|domain#$Memory_100478| |T@[Int]Bool|) (|contents#$Memory_100478| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_19663) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100414 0)) ((($Memory_100414 (|domain#$Memory_100414| |T@[Int]Bool|) (|contents#$Memory_100414| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_19663) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_19663) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_19663) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_56094 0)) (((Vec_56094 (|v#Vec_56094| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_56094| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_56094) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_56286 0)) (((Vec_56286 (|v#Vec_56286| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_56286| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_56286) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_93557 0)) ((($Memory_93557 (|domain#$Memory_93557| |T@[Int]Bool|) (|contents#$Memory_93557| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_19663) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_19663) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_91251 0)) ((($Memory_91251 (|domain#$Memory_91251| |T@[Int]Bool|) (|contents#$Memory_91251| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| T@Vec_19663) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_19663) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_90092 0)) ((($Memory_90092 (|domain#$Memory_90092| |T@[Int]Bool|) (|contents#$Memory_90092| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_89697 0)) ((($Memory_89697 (|domain#$Memory_89697| |T@[Int]Bool|) (|contents#$Memory_89697| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_89516 0)) ((($Memory_89516 (|domain#$Memory_89516| |T@[Int]Bool|) (|contents#$Memory_89516| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_19663) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_19663) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_19663) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_19663) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_19663) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_19663) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_19663) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_19663) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_19663) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_19663) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_19663) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_19663) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_19663) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_56001 0)) (((Multiset_56001 (|v#Multiset_56001| |T@[$EventRep]Int|) (|l#Multiset_56001| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_56001| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_56001|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_95606 0)) ((($Mutation_95606 (|l#$Mutation_95606| T@$Location) (|p#$Mutation_95606| T@Vec_19663) (|v#$Mutation_95606| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_91999 0)) ((($Mutation_91999 (|l#$Mutation_91999| T@$Location) (|p#$Mutation_91999| T@Vec_19663) (|v#$Mutation_91999| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_91958 0)) ((($Mutation_91958 (|l#$Mutation_91958| T@$Location) (|p#$Mutation_91958| T@Vec_19663) (|v#$Mutation_91958| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_82784 0)) ((($Mutation_82784 (|l#$Mutation_82784| T@$Location) (|p#$Mutation_82784| T@Vec_19663) (|v#$Mutation_82784| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11647 0)) ((($Mutation_11647 (|l#$Mutation_11647| T@$Location) (|p#$Mutation_11647| T@Vec_19663) (|v#$Mutation_11647| Int) ) ) ))
(declare-datatypes ((T@$Mutation_75641 0)) ((($Mutation_75641 (|l#$Mutation_75641| T@$Location) (|p#$Mutation_75641| T@Vec_19663) (|v#$Mutation_75641| T@Vec_19663) ) ) ))
(declare-datatypes ((T@$Mutation_74553 0)) ((($Mutation_74553 (|l#$Mutation_74553| T@$Location) (|p#$Mutation_74553| T@Vec_19663) (|v#$Mutation_74553| T@Vec_56343) ) ) ))
(declare-datatypes ((T@$Mutation_72844 0)) ((($Mutation_72844 (|l#$Mutation_72844| T@$Location) (|p#$Mutation_72844| T@Vec_19663) (|v#$Mutation_72844| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_71857 0)) ((($Mutation_71857 (|l#$Mutation_71857| T@$Location) (|p#$Mutation_71857| T@Vec_19663) (|v#$Mutation_71857| T@Vec_56094) ) ) ))
(declare-datatypes ((T@$Mutation_70202 0)) ((($Mutation_70202 (|l#$Mutation_70202| T@$Location) (|p#$Mutation_70202| T@Vec_19663) (|v#$Mutation_70202| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_69215 0)) ((($Mutation_69215 (|l#$Mutation_69215| T@$Location) (|p#$Mutation_69215| T@Vec_19663) (|v#$Mutation_69215| T@Vec_56561) ) ) ))
(declare-datatypes ((T@$Mutation_67537 0)) ((($Mutation_67537 (|l#$Mutation_67537| T@$Location) (|p#$Mutation_67537| T@Vec_19663) (|v#$Mutation_67537| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_66550 0)) ((($Mutation_66550 (|l#$Mutation_66550| T@$Location) (|p#$Mutation_66550| T@Vec_19663) (|v#$Mutation_66550| T@Vec_56286) ) ) ))
(declare-datatypes ((T@$Mutation_64750 0)) ((($Mutation_64750 (|l#$Mutation_64750| T@$Location) (|p#$Mutation_64750| T@Vec_19663) (|v#$Mutation_64750| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_63763 0)) ((($Mutation_63763 (|l#$Mutation_63763| T@$Location) (|p#$Mutation_63763| T@Vec_19663) (|v#$Mutation_63763| T@Vec_56172) ) ) ))
(declare-datatypes ((T@$Mutation_62098 0)) ((($Mutation_62098 (|l#$Mutation_62098| T@$Location) (|p#$Mutation_62098| T@Vec_19663) (|v#$Mutation_62098| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_61111 0)) ((($Mutation_61111 (|l#$Mutation_61111| T@$Location) (|p#$Mutation_61111| T@Vec_19663) (|v#$Mutation_61111| T@Vec_56133) ) ) ))
(declare-datatypes ((T@$Mutation_59398 0)) ((($Mutation_59398 (|l#$Mutation_59398| T@$Location) (|p#$Mutation_59398| T@Vec_19663) (|v#$Mutation_59398| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_58411 0)) ((($Mutation_58411 (|l#$Mutation_58411| T@$Location) (|p#$Mutation_58411| T@Vec_19663) (|v#$Mutation_58411| T@Vec_57766) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_57766 T@Vec_57766) Bool)
(declare-fun InRangeVec_49239 (T@Vec_57766 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_57766) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_57766 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_56133 T@Vec_56133) Bool)
(declare-fun InRangeVec_49440 (T@Vec_56133 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_56133) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_56133 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_56172 T@Vec_56172) Bool)
(declare-fun InRangeVec_49641 (T@Vec_56172 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_56172) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_56172 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_56286 T@Vec_56286) Bool)
(declare-fun InRangeVec_49842 (T@Vec_56286 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_19663 T@Vec_19663) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_56286) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_56286 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_56561 T@Vec_56561) Bool)
(declare-fun InRangeVec_50043 (T@Vec_56561 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_56561) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_56561 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_56094 T@Vec_56094) Bool)
(declare-fun InRangeVec_50244 (T@Vec_56094 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_56094) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_56094 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_56343 T@Vec_56343) Bool)
(declare-fun InRangeVec_73976 (T@Vec_56343 Int) Bool)
(declare-fun |Select__T@[Int]Vec_19663_| (|T@[Int]Vec_19663| Int) T@Vec_19663)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_56343) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_19663) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_56343 T@Vec_19663) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_19663 T@Vec_19663) Bool)
(declare-fun InRangeVec_11023 (T@Vec_19663 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_19663) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_19663 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_19663 T@Vec_19663) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_19663) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_19663 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_19663 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_19663) T@Vec_19663)
(declare-fun $1_Hash_sha3 (T@Vec_19663) T@Vec_19663)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_19663) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_19663 T@Vec_19663 T@Vec_19663) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_56001_| (|T@[$1_Event_EventHandle]Multiset_56001| T@$1_Event_EventHandle) T@Multiset_56001)
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
(declare-fun |$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'u64''| (|T@$1_Option_Option'u64'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun $1_SlidingNonce_spec_try_record_nonce (T@$signer Int) Int)
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
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
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
(declare-fun $choice_0 (T@Vec_56286 Int) Int)
(declare-fun IndexOfVec_19663 (T@Vec_19663 Int) Int)
(declare-fun IndexOfVec_56094 (T@Vec_56094 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_56133 (T@Vec_56133 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_56172 (T@Vec_56172 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_56286 (T@Vec_56286 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_56343 (T@Vec_56343 T@Vec_19663) Int)
(declare-fun IndexOfVec_56561 (T@Vec_56561 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_57766 (T@Vec_57766 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_56001| |T@[$1_Event_EventHandle]Multiset_56001|) |T@[$1_Event_EventHandle]Multiset_56001|)
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
(declare-fun |lambda#21| (Int Int Int |T@[Int]Vec_19663| |T@[Int]Vec_19663| Int T@Vec_19663) |T@[Int]Vec_19663|)
(declare-fun |lambda#22| (Int Int |T@[Int]Vec_19663| Int Int T@Vec_19663) |T@[Int]Vec_19663|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Vec_19663| |T@[Int]Vec_19663| Int T@Vec_19663) |T@[Int]Vec_19663|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#25| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorAdministrationScriptsbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorAdministrationScriptsbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorAdministrationScriptsbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorAdministrationScriptsbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorAdministrationScriptsbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorAdministrationScriptsbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorAdministrationScriptsbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorAdministrationScriptsbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_57766) (v2 T@Vec_57766) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_57766| v1) (|l#Vec_57766| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_49239 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_57766| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_57766| v2) i@@0)))
 :qid |ValidatorAdministrationScriptsbpl.615:13|
 :skolemid |17|
))))
 :qid |ValidatorAdministrationScriptsbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_57766) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_57766| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_49239 v@@4 i@@1) true)
 :qid |ValidatorAdministrationScriptsbpl.621:13|
 :skolemid |19|
))))
 :qid |ValidatorAdministrationScriptsbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_57766) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_49239 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_57766| v@@5) i@@3) e))
 :qid |ValidatorAdministrationScriptsbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_49239 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_57766| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_57766| v@@5) j) e)))
 :qid |ValidatorAdministrationScriptsbpl.634:17|
 :skolemid |22|
)))))
 :qid |ValidatorAdministrationScriptsbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_56133) (v2@@0 T@Vec_56133) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_56133| v1@@0) (|l#Vec_56133| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_49440 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v2@@0) i@@4)))
 :qid |ValidatorAdministrationScriptsbpl.796:13|
 :skolemid |24|
))))
 :qid |ValidatorAdministrationScriptsbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_56133) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_56133| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_49440 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@6) i@@5)))
 :qid |ValidatorAdministrationScriptsbpl.802:13|
 :skolemid |26|
))))
 :qid |ValidatorAdministrationScriptsbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_56133) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_49440 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@7) i@@7) e@@0))
 :qid |ValidatorAdministrationScriptsbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_49440 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@7) j@@0) e@@0)))
 :qid |ValidatorAdministrationScriptsbpl.815:17|
 :skolemid |29|
)))))
 :qid |ValidatorAdministrationScriptsbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_56172) (v2@@1 T@Vec_56172) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_56172| v1@@1) (|l#Vec_56172| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_49641 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v2@@1) i@@8)))
 :qid |ValidatorAdministrationScriptsbpl.977:13|
 :skolemid |31|
))))
 :qid |ValidatorAdministrationScriptsbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_56172) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_56172| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_49641 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@8) i@@9)))
 :qid |ValidatorAdministrationScriptsbpl.983:13|
 :skolemid |33|
))))
 :qid |ValidatorAdministrationScriptsbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_56172) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_49641 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@9) i@@11) e@@1))
 :qid |ValidatorAdministrationScriptsbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_49641 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@9) j@@1) e@@1)))
 :qid |ValidatorAdministrationScriptsbpl.996:17|
 :skolemid |36|
)))))
 :qid |ValidatorAdministrationScriptsbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_56286) (v2@@2 T@Vec_56286) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_56286| v1@@2) (|l#Vec_56286| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_49842 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v2@@2) i@@12)))))
 :qid |ValidatorAdministrationScriptsbpl.1158:13|
 :skolemid |38|
))))
 :qid |ValidatorAdministrationScriptsbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_56286) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_56286| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_49842 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@10) i@@13)))
 :qid |ValidatorAdministrationScriptsbpl.1164:13|
 :skolemid |40|
))))
 :qid |ValidatorAdministrationScriptsbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_56286) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_49842 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |ValidatorAdministrationScriptsbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_49842 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |ValidatorAdministrationScriptsbpl.1177:17|
 :skolemid |43|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_56561) (v2@@3 T@Vec_56561) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3)  (and (= (|l#Vec_56561| v1@@3) (|l#Vec_56561| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_50043 v1@@3 i@@16) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v1@@3) i@@16)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v2@@3) i@@16))))
 :qid |ValidatorAdministrationScriptsbpl.1339:13|
 :skolemid |45|
))))
 :qid |ValidatorAdministrationScriptsbpl.1337:50|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_56561) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_56561| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_50043 v@@12 i@@17) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@12) i@@17)))
 :qid |ValidatorAdministrationScriptsbpl.1345:13|
 :skolemid |47|
))))
 :qid |ValidatorAdministrationScriptsbpl.1343:50|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_56561) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@18 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_50043 v@@13 i@@19)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@13) i@@19)) (|$domain#$1_VASPDomain_VASPDomain| e@@3)))
 :qid |ValidatorAdministrationScriptsbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_50043 v@@13 i@@18)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@13) i@@18)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@13) j@@3)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))))
 :qid |ValidatorAdministrationScriptsbpl.1358:17|
 :skolemid |50|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_56094) (v2@@4 T@Vec_56094) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4)  (and (= (|l#Vec_56094| v1@@4) (|l#Vec_56094| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_50244 v1@@4 i@@20) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v1@@4) i@@20)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v1@@4) i@@20)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v2@@4) i@@20)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v1@@4) i@@20)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v2@@4) i@@20)))))
 :qid |ValidatorAdministrationScriptsbpl.1520:13|
 :skolemid |52|
))))
 :qid |ValidatorAdministrationScriptsbpl.1518:51|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_56094) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_56094| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_50244 v@@14 i@@21) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@14) i@@21)))
 :qid |ValidatorAdministrationScriptsbpl.1526:13|
 :skolemid |54|
))))
 :qid |ValidatorAdministrationScriptsbpl.1524:51|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_56094) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_50244 v@@15 i@@23)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) i@@23)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) i@@23)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) i@@23)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4))))
 :qid |ValidatorAdministrationScriptsbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_50244 v@@15 i@@22)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) i@@22)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) i@@22)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) i@@22)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) j@@4)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) j@@4)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) j@@4)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))))
 :qid |ValidatorAdministrationScriptsbpl.1539:17|
 :skolemid |57|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_56343) (v2@@5 T@Vec_56343) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@5 v2@@5)  (and (= (|l#Vec_56343| v1@@5) (|l#Vec_56343| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_73976 v1@@5 i@@24) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v1@@5) i@@24) (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v2@@5) i@@24)))
 :qid |ValidatorAdministrationScriptsbpl.1701:13|
 :skolemid |59|
))))
 :qid |ValidatorAdministrationScriptsbpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_56343) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_56343| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_73976 v@@16 i@@25) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@16) i@@25)))
 :qid |ValidatorAdministrationScriptsbpl.1707:13|
 :skolemid |61|
))))
 :qid |ValidatorAdministrationScriptsbpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_56343) (e@@5 T@Vec_19663) ) (! (let ((i@@26 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_73976 v@@17 i@@27)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@17) i@@27) e@@5))
 :qid |ValidatorAdministrationScriptsbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_73976 v@@17 i@@26)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@17) j@@5) e@@5)))
 :qid |ValidatorAdministrationScriptsbpl.1720:17|
 :skolemid |64|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_19663) (v2@@6 T@Vec_19663) ) (! (= (|$IsEqual'vec'address''| v1@@6 v2@@6)  (and (= (|l#Vec_19663| v1@@6) (|l#Vec_19663| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_11023 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_19663| v2@@6) i@@28)))
 :qid |ValidatorAdministrationScriptsbpl.1882:13|
 :skolemid |66|
))))
 :qid |ValidatorAdministrationScriptsbpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'address''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_19663) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_19663| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_11023 v@@18 i@@29) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_19663| v@@18) i@@29)))
 :qid |ValidatorAdministrationScriptsbpl.1888:13|
 :skolemid |68|
))))
 :qid |ValidatorAdministrationScriptsbpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_19663) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_11023 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@19) i@@31) e@@6))
 :qid |ValidatorAdministrationScriptsbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_11023 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@19) j@@6) e@@6)))
 :qid |ValidatorAdministrationScriptsbpl.1901:17|
 :skolemid |71|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_19663) (v2@@7 T@Vec_19663) ) (! (= (|$IsEqual'vec'u64''| v1@@7 v2@@7)  (and (= (|l#Vec_19663| v1@@7) (|l#Vec_19663| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_11023 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_19663| v2@@7) i@@32)))
 :qid |ValidatorAdministrationScriptsbpl.2063:13|
 :skolemid |73|
))))
 :qid |ValidatorAdministrationScriptsbpl.2061:29|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'u64''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_19663) ) (! (= (|$IsValid'vec'u64''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_19663| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_11023 v@@20 i@@33) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_19663| v@@20) i@@33)))
 :qid |ValidatorAdministrationScriptsbpl.2069:13|
 :skolemid |75|
))))
 :qid |ValidatorAdministrationScriptsbpl.2067:29|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'u64''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_19663) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'u64'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_11023 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@21) i@@35) e@@7))
 :qid |ValidatorAdministrationScriptsbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_11023 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@21) j@@7) e@@7)))
 :qid |ValidatorAdministrationScriptsbpl.2082:17|
 :skolemid |78|
)))))
 :qid |ValidatorAdministrationScriptsbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'u64'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_19663) (v2@@8 T@Vec_19663) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8)  (and (= (|l#Vec_19663| v1@@8) (|l#Vec_19663| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_11023 v1@@8 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v1@@8) i@@36) (|Select__T@[Int]Int_| (|v#Vec_19663| v2@@8) i@@36)))
 :qid |ValidatorAdministrationScriptsbpl.2244:13|
 :skolemid |80|
))))
 :qid |ValidatorAdministrationScriptsbpl.2242:28|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'u8''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_19663) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_19663| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_11023 v@@22 i@@37) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_19663| v@@22) i@@37)))
 :qid |ValidatorAdministrationScriptsbpl.2250:13|
 :skolemid |82|
))))
 :qid |ValidatorAdministrationScriptsbpl.2248:28|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_19663) (e@@8 Int) ) (! (let ((i@@38 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_11023 v@@23 i@@39)) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@23) i@@39) e@@8))
 :qid |ValidatorAdministrationScriptsbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_11023 v@@23 i@@38)) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@23) j@@8) e@@8)))
 :qid |ValidatorAdministrationScriptsbpl.2263:17|
 :skolemid |85|
)))))
 :qid |ValidatorAdministrationScriptsbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_19663) (v2@@9 T@Vec_19663) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9)))
 :qid |ValidatorAdministrationScriptsbpl.2436:15|
 :skolemid |87|
 :pattern ( ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9))
)))
(assert (forall ((v1@@10 T@Vec_19663) (v2@@10 T@Vec_19663) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10)))
 :qid |ValidatorAdministrationScriptsbpl.2452:15|
 :skolemid |88|
 :pattern ( ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10))
)))
(assert (forall ((k1 T@Vec_19663) (k2 T@Vec_19663) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorAdministrationScriptsbpl.2523:15|
 :skolemid |89|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_19663) (s2 T@Vec_19663) (k1@@0 T@Vec_19663) (k2@@0 T@Vec_19663) (m1 T@Vec_19663) (m2 T@Vec_19663) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorAdministrationScriptsbpl.2526:15|
 :skolemid |90|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_56001| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_56001| stream) v@@24) 0)
 :qid |ValidatorAdministrationScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |ValidatorAdministrationScriptsbpl.2587:13|
 :skolemid |91|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |ValidatorAdministrationScriptsbpl.2628:80|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@11 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@11 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11)))
 :qid |ValidatorAdministrationScriptsbpl.2634:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |ValidatorAdministrationScriptsbpl.2684:82|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12)))
 :qid |ValidatorAdministrationScriptsbpl.2690:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |ValidatorAdministrationScriptsbpl.2740:80|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@13 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@13 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@13)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13)))
 :qid |ValidatorAdministrationScriptsbpl.2746:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |ValidatorAdministrationScriptsbpl.2796:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_AdminTransactionEvent) (v2@@14 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14)))
 :qid |ValidatorAdministrationScriptsbpl.2802:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |ValidatorAdministrationScriptsbpl.2852:76|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_CreateAccountEvent) (v2@@15 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15)))
 :qid |ValidatorAdministrationScriptsbpl.2858:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |ValidatorAdministrationScriptsbpl.2908:78|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@16 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16)))
 :qid |ValidatorAdministrationScriptsbpl.2914:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |ValidatorAdministrationScriptsbpl.2964:74|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_SentPaymentEvent) (v2@@17 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@17)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@17))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17)))
 :qid |ValidatorAdministrationScriptsbpl.2970:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |ValidatorAdministrationScriptsbpl.3020:69|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@18 T@$1_DiemBlock_NewBlockEvent) (v2@@18 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@18) (|$round#$1_DiemBlock_NewBlockEvent| v2@@18)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@18) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@18))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@18) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@18) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18)))
 :qid |ValidatorAdministrationScriptsbpl.3026:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |ValidatorAdministrationScriptsbpl.3076:70|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@19 T@$1_DiemConfig_NewEpochEvent) (v2@@19 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19)))
 :qid |ValidatorAdministrationScriptsbpl.3082:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |ValidatorAdministrationScriptsbpl.3132:60|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@20 T@$1_Diem_BurnEvent) (v2@@20 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@20) (|$amount#$1_Diem_BurnEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@20) (|$currency_code#$1_Diem_BurnEvent| v2@@20))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@20) (|$preburn_address#$1_Diem_BurnEvent| v2@@20))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@20)))
 :qid |ValidatorAdministrationScriptsbpl.3138:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@20))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |ValidatorAdministrationScriptsbpl.3188:66|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@21 T@$1_Diem_CancelBurnEvent) (v2@@21 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@21) (|$amount#$1_Diem_CancelBurnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@21) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@21) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@21)))
 :qid |ValidatorAdministrationScriptsbpl.3194:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@21))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |ValidatorAdministrationScriptsbpl.3244:60|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@22 T@$1_Diem_MintEvent) (v2@@22 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@22) (|$amount#$1_Diem_MintEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@22) (|$currency_code#$1_Diem_MintEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@22) (|$ToEventRep'$1_Diem_MintEvent'| v2@@22)))
 :qid |ValidatorAdministrationScriptsbpl.3250:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@22) (|$ToEventRep'$1_Diem_MintEvent'| v2@@22))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |ValidatorAdministrationScriptsbpl.3300:63|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@23 T@$1_Diem_PreburnEvent) (v2@@23 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@23) (|$amount#$1_Diem_PreburnEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@23) (|$currency_code#$1_Diem_PreburnEvent| v2@@23))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@23) (|$preburn_address#$1_Diem_PreburnEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@23) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@23)))
 :qid |ValidatorAdministrationScriptsbpl.3306:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@23) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@23))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |ValidatorAdministrationScriptsbpl.3356:79|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@24 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@24 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@24) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@24)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@24) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@24) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@24)))
 :qid |ValidatorAdministrationScriptsbpl.3362:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@24) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@24))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |ValidatorAdministrationScriptsbpl.3412:82|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@25 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@25 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@25) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@25)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@25) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@25))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@25)))
 :qid |ValidatorAdministrationScriptsbpl.3418:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@25))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |ValidatorAdministrationScriptsbpl.3468:88|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@26 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@26 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@26) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@26)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@26) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@26))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@26)))
 :qid |ValidatorAdministrationScriptsbpl.3474:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@26))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |ValidatorAdministrationScriptsbpl.3524:72|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@27 T@$1_VASPDomain_VASPDomainEvent) (v2@@27 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@27)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@27)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@27))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27)))
 :qid |ValidatorAdministrationScriptsbpl.3530:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |ValidatorAdministrationScriptsbpl.3609:61|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |ValidatorAdministrationScriptsbpl.3678:36|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |ValidatorAdministrationScriptsbpl.3702:71|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@2) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@2)))
 :qid |ValidatorAdministrationScriptsbpl.3817:42|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |ValidatorAdministrationScriptsbpl.3829:46|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |ValidatorAdministrationScriptsbpl.3841:64|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |ValidatorAdministrationScriptsbpl.3853:75|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |ValidatorAdministrationScriptsbpl.3865:72|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |ValidatorAdministrationScriptsbpl.3918:55|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |ValidatorAdministrationScriptsbpl.3941:46|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |ValidatorAdministrationScriptsbpl.4249:15|
 :skolemid |137|
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |ValidatorAdministrationScriptsbpl.4262:49|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |ValidatorAdministrationScriptsbpl.4460:71|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |ValidatorAdministrationScriptsbpl.4473:91|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |ValidatorAdministrationScriptsbpl.4486:113|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |ValidatorAdministrationScriptsbpl.4499:75|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |ValidatorAdministrationScriptsbpl.4512:73|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |ValidatorAdministrationScriptsbpl.4532:48|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |ValidatorAdministrationScriptsbpl.4549:57|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |ValidatorAdministrationScriptsbpl.4563:83|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@18) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@18)))
 :qid |ValidatorAdministrationScriptsbpl.4577:48|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@19)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@19)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@19))))
 :qid |ValidatorAdministrationScriptsbpl.4619:45|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@19))
)))
(assert (forall ((s@@20 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@20) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@20)))
 :qid |ValidatorAdministrationScriptsbpl.4633:51|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@21)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@21)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@21))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@21))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@21))))
 :qid |ValidatorAdministrationScriptsbpl.4656:48|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@21))
)))
(assert (forall ((s@@22 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@22) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@22)))
 :qid |ValidatorAdministrationScriptsbpl.5800:49|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@22))
)))
(assert (forall ((s@@23 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@23) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@23)))
 :qid |ValidatorAdministrationScriptsbpl.5813:65|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@24) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@24)))
 :qid |ValidatorAdministrationScriptsbpl.5835:45|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@25) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@25)))
 :qid |ValidatorAdministrationScriptsbpl.5848:45|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@26) true)
 :qid |ValidatorAdministrationScriptsbpl.5861:55|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@27)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@27))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@27))))
 :qid |ValidatorAdministrationScriptsbpl.5881:38|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@27))
)))
(assert (forall ((s@@28 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@28)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@28)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@28))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@28))))
 :qid |ValidatorAdministrationScriptsbpl.5903:44|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@29)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))))
 :qid |ValidatorAdministrationScriptsbpl.5955:53|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@30)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))))
 :qid |ValidatorAdministrationScriptsbpl.6028:53|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@31) true)
 :qid |ValidatorAdministrationScriptsbpl.6065:55|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@32)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@32))))
 :qid |ValidatorAdministrationScriptsbpl.6082:38|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@33) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@33)))
 :qid |ValidatorAdministrationScriptsbpl.6096:48|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@34) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@34)))
 :qid |ValidatorAdministrationScriptsbpl.6110:48|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@35))))
 :qid |ValidatorAdministrationScriptsbpl.6130:41|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@36)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@36)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@36))))
 :qid |ValidatorAdministrationScriptsbpl.6149:57|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@36))
)))
(assert (forall ((s@@37 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@37) true)
 :qid |ValidatorAdministrationScriptsbpl.6163:68|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))))
 :qid |ValidatorAdministrationScriptsbpl.6185:66|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@39)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))))
 :qid |ValidatorAdministrationScriptsbpl.6211:66|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@40) true)
 :qid |ValidatorAdministrationScriptsbpl.6228:31|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@41) true)
 :qid |ValidatorAdministrationScriptsbpl.6246:31|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@41))
)))
(assert (forall ((s@@42 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@42)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@42)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@42))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@42))))
 :qid |ValidatorAdministrationScriptsbpl.6265:35|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@42))
)))
(assert (forall ((s@@43 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@43) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@43)))
 :qid |ValidatorAdministrationScriptsbpl.6281:45|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@43))
)))
(assert (forall ((s@@44 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@44)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@44))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@44))))
 :qid |ValidatorAdministrationScriptsbpl.6299:50|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@44))
)))
(assert (forall ((s@@45 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@45) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@45)))
 :qid |ValidatorAdministrationScriptsbpl.6315:52|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@45))
)))
(assert (forall ((s@@46 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@46) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@46)))
 :qid |ValidatorAdministrationScriptsbpl.6328:46|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@46))
)))
(assert (forall ((s@@47 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@47) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@47)))
 :qid |ValidatorAdministrationScriptsbpl.6351:38|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@47))
)))
(assert (forall ((s@@48 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@48) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@48)))
 :qid |ValidatorAdministrationScriptsbpl.6365:39|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49))))
 :qid |ValidatorAdministrationScriptsbpl.6392:65|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@50)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@50))))
 :qid |ValidatorAdministrationScriptsbpl.6420:60|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51))))
 :qid |ValidatorAdministrationScriptsbpl.6437:66|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@52)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@52))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@52))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@52))))
 :qid |ValidatorAdministrationScriptsbpl.6466:50|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@53) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@53)))
 :qid |ValidatorAdministrationScriptsbpl.6489:45|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@54)) true))
 :qid |ValidatorAdministrationScriptsbpl.6506:87|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@55) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@55)))
 :qid |ValidatorAdministrationScriptsbpl.6520:47|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@56)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@56)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@56))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@56))))
 :qid |ValidatorAdministrationScriptsbpl.6539:58|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@57) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@57)))
 :qid |ValidatorAdministrationScriptsbpl.6555:39|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@57))
)))
(assert (forall ((s@@58 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@58)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@58)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@58))))
 :qid |ValidatorAdministrationScriptsbpl.6582:58|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@59)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@59)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@59))))
 :qid |ValidatorAdministrationScriptsbpl.6599:58|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@59))
)))
(assert (forall ((s@@60 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@60) true)
 :qid |ValidatorAdministrationScriptsbpl.6614:51|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@61)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@61)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@61))))
 :qid |ValidatorAdministrationScriptsbpl.6631:60|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@62)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@62)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@62))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@62))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@62))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@62))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@62))))
 :qid |ValidatorAdministrationScriptsbpl.6670:47|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@63)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@63)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@63))))
 :qid |ValidatorAdministrationScriptsbpl.6696:63|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@64) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@64)))
 :qid |ValidatorAdministrationScriptsbpl.6711:57|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@64))
)))
(assert (forall ((s@@65 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@65) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@65)))
 :qid |ValidatorAdministrationScriptsbpl.6724:55|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@65))
)))
(assert (forall ((s@@66 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@66) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@66)))
 :qid |ValidatorAdministrationScriptsbpl.6738:55|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@67)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@67))))
 :qid |ValidatorAdministrationScriptsbpl.6755:54|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@68) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@68)))
 :qid |ValidatorAdministrationScriptsbpl.6769:55|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@69) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@69)))
 :qid |ValidatorAdministrationScriptsbpl.6782:57|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@70)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@70)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@70))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@70))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@70))))
 :qid |ValidatorAdministrationScriptsbpl.6804:56|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@71)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@71)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@71))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@71))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@71))))
 :qid |ValidatorAdministrationScriptsbpl.6831:52|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@72) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@72)))
 :qid |ValidatorAdministrationScriptsbpl.6849:54|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@73)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@73)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@73))))
 :qid |ValidatorAdministrationScriptsbpl.9931:47|
 :skolemid |398|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@74)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@74))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@74))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@74))))
 :qid |ValidatorAdministrationScriptsbpl.9955:47|
 :skolemid |399|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@75) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@75)))
 :qid |ValidatorAdministrationScriptsbpl.9973:49|
 :skolemid |400|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@76)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@76)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@76))))
 :qid |ValidatorAdministrationScriptsbpl.10015:49|
 :skolemid |401|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@77)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@77)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@77))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@77))))
 :qid |ValidatorAdministrationScriptsbpl.10044:48|
 :skolemid |402|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@78) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@78)))
 :qid |ValidatorAdministrationScriptsbpl.10060:47|
 :skolemid |403|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@78))
)))
(assert (forall ((validators T@Vec_56286) (addr Int) ) (!  (=> (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| validators) (|$IsValid'address'| addr)) (=> (exists ((i@@40 Int) ) (!  (and (and (|$IsValid'num'| i@@40) ($InRange ($Range 0 (|l#Vec_56286| validators)) i@@40)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| validators) i@@40)) addr))
 :qid |ValidatorAdministrationScriptsbpl.10074:13|
 :skolemid |404|
)) (let ((i@@41 ($choice_0 validators addr)))
 (and (and (and (|$IsValid'num'| i@@41) ($InRange ($Range 0 (|l#Vec_56286| validators)) i@@41)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| validators) i@@41)) addr)) (let (($$c i@@41))
(forall ((i@@42 Int) ) (!  (=> (< i@@42 $$c) (not (and (and (|$IsValid'num'| i@@42) ($InRange ($Range 0 (|l#Vec_56286| validators)) i@@42)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| validators) i@@42)) addr))))
 :qid |ValidatorAdministrationScriptsbpl.10076:32|
 :skolemid |405|
)))))))
 :qid |ValidatorAdministrationScriptsbpl.10073:15|
 :skolemid |406|
)))
(assert (forall ((v@@25 T@Vec_57766) (i@@43 Int) ) (! (= (InRangeVec_49239 v@@25 i@@43)  (and (>= i@@43 0) (< i@@43 (|l#Vec_57766| v@@25))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_49239 v@@25 i@@43))
)))
(assert (forall ((v@@26 T@Vec_56133) (i@@44 Int) ) (! (= (InRangeVec_49440 v@@26 i@@44)  (and (>= i@@44 0) (< i@@44 (|l#Vec_56133| v@@26))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_49440 v@@26 i@@44))
)))
(assert (forall ((v@@27 T@Vec_56172) (i@@45 Int) ) (! (= (InRangeVec_49641 v@@27 i@@45)  (and (>= i@@45 0) (< i@@45 (|l#Vec_56172| v@@27))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_49641 v@@27 i@@45))
)))
(assert (forall ((v@@28 T@Vec_56286) (i@@46 Int) ) (! (= (InRangeVec_49842 v@@28 i@@46)  (and (>= i@@46 0) (< i@@46 (|l#Vec_56286| v@@28))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_49842 v@@28 i@@46))
)))
(assert (forall ((v@@29 T@Vec_56561) (i@@47 Int) ) (! (= (InRangeVec_50043 v@@29 i@@47)  (and (>= i@@47 0) (< i@@47 (|l#Vec_56561| v@@29))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_50043 v@@29 i@@47))
)))
(assert (forall ((v@@30 T@Vec_56094) (i@@48 Int) ) (! (= (InRangeVec_50244 v@@30 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_56094| v@@30))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_50244 v@@30 i@@48))
)))
(assert (forall ((v@@31 T@Vec_56343) (i@@49 Int) ) (! (= (InRangeVec_73976 v@@31 i@@49)  (and (>= i@@49 0) (< i@@49 (|l#Vec_56343| v@@31))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_73976 v@@31 i@@49))
)))
(assert (forall ((v@@32 T@Vec_19663) (i@@50 Int) ) (! (= (InRangeVec_11023 v@@32 i@@50)  (and (>= i@@50 0) (< i@@50 (|l#Vec_19663| v@@32))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_11023 v@@32 i@@50))
)))
(assert (forall ((v@@33 T@Vec_19663) (e@@9 Int) ) (! (let ((i@@51 (IndexOfVec_19663 v@@33 e@@9)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_11023 v@@33 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@33) i@@52) e@@9))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_11023 v@@33 i@@51) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@33) i@@51) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@51)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@33) j@@9) e@@9)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19663 v@@33 e@@9))
)))
(assert (forall ((v@@34 T@Vec_56094) (e@@10 T@$1_ValidatorConfig_Config) ) (! (let ((i@@53 (IndexOfVec_56094 v@@34 e@@10)))
(ite  (not (exists ((i@@54 Int) ) (!  (and (InRangeVec_50244 v@@34 i@@54) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@34) i@@54) e@@10))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@53 (- 0 1))  (and (and (InRangeVec_50244 v@@34 i@@53) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@34) i@@53) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@53)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@34) j@@10) e@@10)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_56094 v@@34 e@@10))
)))
(assert (forall ((v@@35 T@Vec_56133) (e@@11 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@55 (IndexOfVec_56133 v@@35 e@@11)))
(ite  (not (exists ((i@@56 Int) ) (!  (and (InRangeVec_49440 v@@35 i@@56) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@35) i@@56) e@@11))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@55 (- 0 1))  (and (and (InRangeVec_49440 v@@35 i@@55) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@35) i@@55) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@55)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@35) j@@11) e@@11)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_56133 v@@35 e@@11))
)))
(assert (forall ((v@@36 T@Vec_56172) (e@@12 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@57 (IndexOfVec_56172 v@@36 e@@12)))
(ite  (not (exists ((i@@58 Int) ) (!  (and (InRangeVec_49641 v@@36 i@@58) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@36) i@@58) e@@12))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@57 (- 0 1))  (and (and (InRangeVec_49641 v@@36 i@@57) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@36) i@@57) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@57)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@36) j@@12) e@@12)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_56172 v@@36 e@@12))
)))
(assert (forall ((v@@37 T@Vec_56286) (e@@13 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@59 (IndexOfVec_56286 v@@37 e@@13)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_49842 v@@37 i@@60) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@37) i@@60) e@@13))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_49842 v@@37 i@@59) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@37) i@@59) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@59)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@37) j@@13) e@@13)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_56286 v@@37 e@@13))
)))
(assert (forall ((v@@38 T@Vec_56343) (e@@14 T@Vec_19663) ) (! (let ((i@@61 (IndexOfVec_56343 v@@38 e@@14)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_73976 v@@38 i@@62) (= (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@38) i@@62) e@@14))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_73976 v@@38 i@@61) (= (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@38) i@@61) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@61)) (not (= (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@38) j@@14) e@@14)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_56343 v@@38 e@@14))
)))
(assert (forall ((v@@39 T@Vec_56561) (e@@15 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@63 (IndexOfVec_56561 v@@39 e@@15)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_50043 v@@39 i@@64) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@39) i@@64) e@@15))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_50043 v@@39 i@@63) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@39) i@@63) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@63)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@39) j@@15) e@@15)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_56561 v@@39 e@@15))
)))
(assert (forall ((v@@40 T@Vec_57766) (e@@16 |T@#0|) ) (! (let ((i@@65 (IndexOfVec_57766 v@@40 e@@16)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_49239 v@@40 i@@66) (= (|Select__T@[Int]#0_| (|v#Vec_57766| v@@40) i@@66) e@@16))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_49239 v@@40 i@@65) (= (|Select__T@[Int]#0_| (|v#Vec_57766| v@@40) i@@65) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@65)) (not (= (|Select__T@[Int]#0_| (|v#Vec_57766| v@@40) j@@16) e@@16)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_57766 v@@40 e@@16))
)))
(assert (forall ((|l#0| Bool) (i@@67 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67) |l#0|)
 :qid |ValidatorAdministrationScriptsbpl.275:54|
 :skolemid |407|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_56001|) (|l#1| |T@[$1_Event_EventHandle]Multiset_56001|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| |l#1| handle@@0))))
(Multiset_56001 (|lambda#27| (|v#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| |l#0@@0| handle@@0)) (|v#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorAdministrationScriptsbpl.2597:13|
 :skolemid |408|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@68 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68) (ite  (and (>= i@@68 |l#0@@1|) (< i@@68 |l#1@@0|)) (ite (< i@@68 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@68) (|Select__T@[Int]#0_| |l#4| (- i@@68 |l#5|))) |l#6|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |409|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@69 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69) (ite  (and (<= |l#0@@2| i@@69) (< i@@69 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@69) |l#4@@0|)) |l#5@@0|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |410|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@17 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@17) (ite  (and (>= j@@17 |l#0@@3|) (< j@@17 |l#1@@2|)) (ite (< j@@17 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@17) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@17 |l#5@@1|))) |l#6@@0|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |411|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@70 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70) (ite  (and (>= i@@70 |l#0@@4|) (< i@@70 |l#1@@3|)) (ite (< i@@70 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@70) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@70 |l#5@@2|))) |l#6@@1|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |412|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@71 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71) (ite  (and (<= |l#0@@5| i@@71) (< i@@71 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@71) |l#4@@3|)) |l#5@@3|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |413|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@18) (ite  (and (>= j@@18 |l#0@@6|) (< j@@18 |l#1@@5|)) (ite (< j@@18 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@18) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@18 |l#5@@4|))) |l#6@@2|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |414|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@18))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72) (ite  (and (>= i@@72 |l#0@@7|) (< i@@72 |l#1@@6|)) (ite (< i@@72 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@72) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@72 |l#5@@5|))) |l#6@@3|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |415|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@73 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73) (ite  (and (<= |l#0@@8| i@@73) (< i@@73 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@73) |l#4@@6|)) |l#5@@6|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |416|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@19) (ite  (and (>= j@@19 |l#0@@9|) (< j@@19 |l#1@@8|)) (ite (< j@@19 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@19) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@19 |l#5@@7|))) |l#6@@4|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |417|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@19))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@74 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74) (ite  (and (>= i@@74 |l#0@@10|) (< i@@74 |l#1@@9|)) (ite (< i@@74 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@74) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@74 |l#5@@8|))) |l#6@@5|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |418|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@75 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75) (ite  (and (<= |l#0@@11| i@@75) (< i@@75 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@75) |l#4@@9|)) |l#5@@9|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |419|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@20) (ite  (and (>= j@@20 |l#0@@12|) (< j@@20 |l#1@@11|)) (ite (< j@@20 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@20) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@20 |l#5@@10|))) |l#6@@6|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |420|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@20))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@11| Int) (|l#6@@7| T@$1_VASPDomain_VASPDomain) (i@@76 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76) (ite  (and (>= i@@76 |l#0@@13|) (< i@@76 |l#1@@12|)) (ite (< i@@76 |l#2@@11|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@11| i@@76) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@11| (- i@@76 |l#5@@11|))) |l#6@@7|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |421|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_VASPDomain_VASPDomain) (i@@77 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77) (ite  (and (<= |l#0@@14| i@@77) (< i@@77 |l#1@@13|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@12| (- (- |l#3@@12| i@@77) |l#4@@12|)) |l#5@@12|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |422|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@13| Int) (|l#6@@8| T@$1_VASPDomain_VASPDomain) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@21) (ite  (and (>= j@@21 |l#0@@15|) (< j@@21 |l#1@@14|)) (ite (< j@@21 |l#2@@13|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@13| j@@21) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@13| (+ j@@21 |l#5@@13|))) |l#6@@8|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |423|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@21))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@14| Int) (|l#6@@9| T@$1_ValidatorConfig_Config) (i@@78 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78) (ite  (and (>= i@@78 |l#0@@16|) (< i@@78 |l#1@@15|)) (ite (< i@@78 |l#2@@14|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@14| i@@78) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@14| (- i@@78 |l#5@@14|))) |l#6@@9|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |424|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@$1_ValidatorConfig_Config) (i@@79 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79) (ite  (and (<= |l#0@@17| i@@79) (< i@@79 |l#1@@16|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@15| (- (- |l#3@@15| i@@79) |l#4@@15|)) |l#5@@15|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |425|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@16| Int) (|l#6@@10| T@$1_ValidatorConfig_Config) (j@@22 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@22) (ite  (and (>= j@@22 |l#0@@18|) (< j@@22 |l#1@@17|)) (ite (< j@@22 |l#2@@16|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@16| j@@22) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@16| (+ j@@22 |l#5@@16|))) |l#6@@10|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |426|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@22))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Vec_19663|) (|l#4@@17| |T@[Int]Vec_19663|) (|l#5@@17| Int) (|l#6@@11| T@Vec_19663) (i@@80 Int) ) (! (= (|Select__T@[Int]Vec_19663_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80) (ite  (and (>= i@@80 |l#0@@19|) (< i@@80 |l#1@@18|)) (ite (< i@@80 |l#2@@17|) (|Select__T@[Int]Vec_19663_| |l#3@@17| i@@80) (|Select__T@[Int]Vec_19663_| |l#4@@17| (- i@@80 |l#5@@17|))) |l#6@@11|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |427|
 :pattern ( (|Select__T@[Int]Vec_19663_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Vec_19663|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@Vec_19663) (i@@81 Int) ) (! (= (|Select__T@[Int]Vec_19663_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81) (ite  (and (<= |l#0@@20| i@@81) (< i@@81 |l#1@@19|)) (|Select__T@[Int]Vec_19663_| |l#2@@18| (- (- |l#3@@18| i@@81) |l#4@@18|)) |l#5@@18|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |428|
 :pattern ( (|Select__T@[Int]Vec_19663_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Vec_19663|) (|l#4@@19| |T@[Int]Vec_19663|) (|l#5@@19| Int) (|l#6@@12| T@Vec_19663) (j@@23 Int) ) (! (= (|Select__T@[Int]Vec_19663_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@23) (ite  (and (>= j@@23 |l#0@@21|) (< j@@23 |l#1@@20|)) (ite (< j@@23 |l#2@@19|) (|Select__T@[Int]Vec_19663_| |l#3@@19| j@@23) (|Select__T@[Int]Vec_19663_| |l#4@@19| (+ j@@23 |l#5@@19|))) |l#6@@12|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |429|
 :pattern ( (|Select__T@[Int]Vec_19663_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@23))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Int|) (|l#4@@20| |T@[Int]Int|) (|l#5@@20| Int) (|l#6@@13| Int) (i@@82 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82) (ite  (and (>= i@@82 |l#0@@22|) (< i@@82 |l#1@@21|)) (ite (< i@@82 |l#2@@20|) (|Select__T@[Int]Int_| |l#3@@20| i@@82) (|Select__T@[Int]Int_| |l#4@@20| (- i@@82 |l#5@@20|))) |l#6@@13|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |430|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Int|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| Int) (i@@83 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83) (ite  (and (<= |l#0@@23| i@@83) (< i@@83 |l#1@@22|)) (|Select__T@[Int]Int_| |l#2@@21| (- (- |l#3@@21| i@@83) |l#4@@21|)) |l#5@@21|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |431|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Int|) (|l#4@@22| |T@[Int]Int|) (|l#5@@22| Int) (|l#6@@14| Int) (j@@24 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@24) (ite  (and (>= j@@24 |l#0@@24|) (< j@@24 |l#1@@23|)) (ite (< j@@24 |l#2@@22|) (|Select__T@[Int]Int_| |l#3@@22| j@@24) (|Select__T@[Int]Int_| |l#4@@22| (+ j@@24 |l#5@@22|))) |l#6@@14|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |432|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@24))
)))
(assert (forall ((|l#0@@25| |T@[$EventRep]Int|) (|l#1@@24| |T@[$EventRep]Int|) (v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#27| |l#0@@25| |l#1@@24|) v@@41) (- (|Select__T@[$EventRep]Int_| |l#0@@25| v@@41) (|Select__T@[$EventRep]Int_| |l#1@@24| v@@41)))
 :qid |ValidatorAdministrationScriptsbpl.154:29|
 :skolemid |433|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#27| |l#0@@25| |l#1@@24|) v@@41))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@23| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@23| Int) (|l#4@@23| T@$1_DiemSystem_ValidatorInfo) (k Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@23| |l#3@@23| |l#4@@23|) k) (ite  (and (<= |l#0@@26| k) (< k |l#1@@25|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@23| (+ |l#3@@23| k)) |l#4@@23|))
 :qid |ValidatorAdministrationScriptsbpl.90:14|
 :skolemid |434|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@23| |l#3@@23| |l#4@@23|) k))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t25 () T@Vec_56286)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3| () T@$Memory_93557)
(declare-fun $t26 () T@$1_DiemConfig_Configuration)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@3 () T@$Memory_93750)
(declare-fun $t27 () Int)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_89516)
(declare-fun $t28 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_93107)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_91251)
(declare-fun _$t3 () Int)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun _$t2 () T@Vec_19663)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_93557)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_89697)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_93638)
(declare-fun $t7 () T@$1_DiemConfig_Configuration)
(declare-fun $t8 () Int)
(declare-fun $t12 () Int)
(declare-fun $t9 () T@Vec_56286)
(declare-fun DefaultVecElem_49862 () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t10 () T@$1_DiemConfig_Configuration)
(declare-fun $t11 () T@$1_Event_EventHandle)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_56001_| (|T@[$1_Event_EventHandle]Multiset_56001| T@$1_Event_EventHandle T@Multiset_56001) |T@[$1_Event_EventHandle]Multiset_56001|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_56001|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_56001)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|Store__T@[$1_Event_EventHandle]Multiset_56001_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_56001|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_56001)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|Store__T@[$1_Event_EventHandle]Multiset_56001_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_56001_| ?x0 ?y1))) :weight 0)))
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t56@0 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_93750)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t57@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t58@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| () T@$Memory_93557)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t14@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_93750)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t59@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t60@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t54@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t61@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t53@0 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@2| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_93750)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_93750)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_Configuration'@1| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_93557)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_93557)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t55@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t23@1 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t23@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t51@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t52@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t44@2 () T@$Mutation_95606)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t44@1 () T@$Mutation_95606)
(declare-fun |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_66550)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_95363)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t45@1 () T@$Mutation_66550)
(declare-fun |Store__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemSystem_ValidatorInfo|) ( ?x1 Int) ( ?x2 T@$1_DiemSystem_ValidatorInfo)) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|Store__T@[Int]$1_DiemSystem_ValidatorInfo_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemSystem_ValidatorInfo|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemSystem_ValidatorInfo)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|Store__T@[Int]$1_DiemSystem_ValidatorInfo_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_DiemSystem_add_validator$0$$t49@1 () T@$1_DiemSystem_ValidatorInfo)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t47@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t46@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t42@0 () T@$1_ValidatorConfig_Config)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t43@0 () Bool)
(declare-fun MapConstVec_11252 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_11252 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t14@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| () T@Vec_56286)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t41@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t38@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t35@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t37@1 () T@Vec_56286)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t34@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t29@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t30@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t26@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t28@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t25@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t24@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t22@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t4@0 () T@$Mutation_66550)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t44@0 () T@$Mutation_95606)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t45@0 () T@$Mutation_66550)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t15@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t16@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t17@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t18@0 () T@Vec_56286)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t19@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t20@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t21@0 () Int)
(declare-fun $t16@0 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t19 () T@$1_DiemConfig_Configuration)
(declare-fun $t20 () Int)
(declare-fun $t21 () T@Vec_56286)
(declare-fun $t22 () T@$1_DiemConfig_Configuration)
(declare-fun $t23 () T@$1_Event_EventHandle)
(declare-fun $t24 () Int)
(declare-fun $t15 () Bool)
(declare-fun $t14 () T@Vec_19663)
(declare-fun $t13 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 () Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@2 () T@$Memory_93107)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1 () T@$Memory_93107)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0 () T@$Memory_93107)
(declare-fun |Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int T@$1_SlidingNonce_SlidingNonce) |T@[Int]$1_SlidingNonce_SlidingNonce|)
(declare-fun |Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int) T@$1_SlidingNonce_SlidingNonce)
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1| () T@$1_SlidingNonce_SlidingNonce)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_90092)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_93849)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_100414)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_105189)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_105495)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_100478)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_105408)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_106412)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_106655)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_106591)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_93913)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_107885)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_108263)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_107918)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_109214)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_109618)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_108430)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_106018)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_106135)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_109349)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_109440)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_107665)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_106232)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_106168)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_112146)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_93977)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_94041)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|T@[Int]$1_DiemSystem_CapabilityHolder| Int) T@$1_DiemSystem_CapabilityHolder)
(push 1)
(set-info :boogie-vc-id $1_ValidatorAdministrationScripts_add_validator_and_reconfigure$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 166989) (let ((anon14_Else_correct  (=> (not $abort_flag@1) (=> (and (and (= $t25 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3|) addr@@0))))) (= $t26 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory@3) 173345816))) (and (= $t27 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t28 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t26))))) (and (=> (= (ControlFlow 0 142372) (- 0 171373)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0)))) (and (=> (= (ControlFlow 0 142372) (- 0 171386)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0)))) (=> (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (and (=> (= (ControlFlow 0 142372) (- 0 171401)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) (and (=> (= (ControlFlow 0 142372) (- 0 171412)) (not (not (|$IsEqual'vec'u8''| (let ((t_ref (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref)) _$t2)))) (=> (not (not (|$IsEqual'vec'u8''| (let ((t_ref@@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@0)) _$t2))) (and (=> (= (ControlFlow 0 142372) (- 0 171426)) (not (>= (|l#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@1))))) 256))) (=> (not (>= (|l#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@2))))) 256)) (and (=> (= (ControlFlow 0 142372) (- 0 171438)) (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (|l#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))))) (=> (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (|l#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0))))) (and (=> (= (ControlFlow 0 142372) (- 0 171449)) (not (let (($range_0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@3))))))
(exists (($i_1 Int) ) (!  (and (InRangeVec_49842 $range_0 $i_1) (let ((v@@42 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $range_0) $i_1)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@42) _$t3)))
 :qid |ValidatorAdministrationScriptsbpl.4596:125|
 :skolemid |148|
))))) (=> (not (let (($range_0@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@4))))))
(exists (($i_1@@0 Int) ) (!  (and (InRangeVec_49842 $range_0@@0 $i_1@@0) (let ((v@@43 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $range_0@@0) $i_1@@0)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@43) _$t3)))
 :qid |ValidatorAdministrationScriptsbpl.4596:125|
 :skolemid |148|
)))) (and (=> (= (ControlFlow 0 142372) (- 0 171458)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 142372) (- 0 171468)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 142372) (- 0 171480)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) $t6)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) $t6)) 0))) (and (=> (= (ControlFlow 0 142372) (- 0 171498)) (not (not (= (|$addr#$signer| _$t0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0) 173345816))) (and (=> (= (ControlFlow 0 142372) (- 0 171512)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93638| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93638| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7)))) (and (=> (= (ControlFlow 0 142372) (- 0 171554)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) $t12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) $t12))) (and (=> (= (ControlFlow 0 142372) (- 0 171566)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) $t12)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) $t12)) 0))) (and (=> (= (ControlFlow 0 142372) (- 0 171584)) (not (not (= (|$addr#$signer| _$t0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0) 173345816))) (and (=> (= (ControlFlow 0 142372) (- 0 171598)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) _$t3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) _$t3)) 3))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) _$t3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) _$t3)) 3)) (and (=> (= (ControlFlow 0 142372) (- 0 171606)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (|l#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (|l#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0))) (and (=> (= (ControlFlow 0 142372) (- 0 171614)) (let (($range_0@@1 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3|) addr@@5))))))
(exists (($i_1@@1 Int) ) (!  (and (InRangeVec_49842 $range_0@@1 $i_1@@1) (let ((v@@44 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $range_0@@1) $i_1@@1)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@44) _$t3)))
 :qid |ValidatorAdministrationScriptsbpl.4596:125|
 :skolemid |148|
)))) (=> (let (($range_0@@2 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@6 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3|) addr@@6))))))
(exists (($i_1@@2 Int) ) (!  (and (InRangeVec_49842 $range_0@@2 $i_1@@2) (let ((v@@45 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $range_0@@2) $i_1@@2)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@45) _$t3)))
 :qid |ValidatorAdministrationScriptsbpl.4596:125|
 :skolemid |148|
))) (and (=> (= (ControlFlow 0 142372) (- 0 171621)) (and (and (= (|l#Vec_56286| $t25) (+ (|l#Vec_56286| $t9) 1)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $t25) (- (|l#Vec_56286| $t25) 1))) (|$addr#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t3 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $t25) (- (|l#Vec_56286| $t25) 1))) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t3 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $t25) (- (|l#Vec_56286| $t25) 1)))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t3 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $t25) (- (|l#Vec_56286| $t25) 1)))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t3 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $t25) (- (|l#Vec_56286| $t25) 1)))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t3 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $t25) (- (|l#Vec_56286| $t25) 1))) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t3 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (let ((m (|v#Vec_56286| $t25)))
(Vec_56286 (|lambda#28| 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1)))) m (|lb#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1))) DefaultVecElem_49862) (ite (< (- (|ub#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1)))) 0) 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1))))))) (let ((m@@0 (|v#Vec_56286| $t9)))
(Vec_56286 (|lambda#28| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_56286| $t9))) (|lb#$Range| ($Range 0 (|l#Vec_56286| $t9)))) m@@0 (|lb#$Range| ($Range 0 (|l#Vec_56286| $t9))) DefaultVecElem_49862) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_56286| $t9))) (|lb#$Range| ($Range 0 (|l#Vec_56286| $t9)))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_56286| $t9))) (|lb#$Range| ($Range 0 (|l#Vec_56286| $t9)))))))))) (=> (and (and (= (|l#Vec_56286| $t25) (+ (|l#Vec_56286| $t9) 1)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $t25) (- (|l#Vec_56286| $t25) 1))) (|$addr#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t3 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $t25) (- (|l#Vec_56286| $t25) 1))) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t3 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $t25) (- (|l#Vec_56286| $t25) 1)))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t3 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $t25) (- (|l#Vec_56286| $t25) 1)))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t3 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $t25) (- (|l#Vec_56286| $t25) 1)))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t3 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $t25) (- (|l#Vec_56286| $t25) 1))) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t3 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (let ((m@@1 (|v#Vec_56286| $t25)))
(Vec_56286 (|lambda#28| 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1)))) m@@1 (|lb#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1))) DefaultVecElem_49862) (ite (< (- (|ub#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1)))) 0) 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_56286| $t25) 1))))))) (let ((m@@2 (|v#Vec_56286| $t9)))
(Vec_56286 (|lambda#28| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_56286| $t9))) (|lb#$Range| ($Range 0 (|l#Vec_56286| $t9)))) m@@2 (|lb#$Range| ($Range 0 (|l#Vec_56286| $t9))) DefaultVecElem_49862) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_56286| $t9))) (|lb#$Range| ($Range 0 (|l#Vec_56286| $t9)))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_56286| $t9))) (|lb#$Range| ($Range 0 (|l#Vec_56286| $t9))))))))) (and (=> (= (ControlFlow 0 142372) (- 0 171644)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93638| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10)))) (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| $EmptyEventStore) $t11)))
(let ((stream_new (let ((len (|l#Multiset_56001| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_56001| stream@@0) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28))))
(Multiset_56001 (|Store__T@[$EventRep]Int_| (|v#Multiset_56001| stream@@0) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| $EmptyEventStore) $t11 stream_new)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@46 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| expected) handle@@1)) v@@46) (|Select__T@[$EventRep]Int_| (|v#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| actual) handle@@1)) v@@46))
 :qid |ValidatorAdministrationScriptsbpl.164:13|
 :skolemid |5|
)))
 :qid |ValidatorAdministrationScriptsbpl.2603:13|
 :skolemid |92|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@0 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93638| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10)))) (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| $EmptyEventStore) $t11)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_56001| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_56001| stream@@1) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28))))
(Multiset_56001 (|Store__T@[$EventRep]Int_| (|v#Multiset_56001| stream@@1) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| $EmptyEventStore) $t11 stream_new@@0)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@47 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| expected@@0) handle@@2)) v@@47) (|Select__T@[$EventRep]Int_| (|v#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| actual@@0) handle@@2)) v@@47))
 :qid |ValidatorAdministrationScriptsbpl.164:13|
 :skolemid |5|
)))
 :qid |ValidatorAdministrationScriptsbpl.2603:13|
 :skolemid |92|
))))) (=> (= (ControlFlow 0 142372) (- 0 171689)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93638| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10)))) (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| $EmptyEventStore) $t11)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_56001| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_56001| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28))))
(Multiset_56001 (|Store__T@[$EventRep]Int_| (|v#Multiset_56001| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| $EmptyEventStore) $t11 stream_new@@1)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@48 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| actual@@1) handle@@3)) v@@48) (|Select__T@[$EventRep]Int_| (|v#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| expected@@1) handle@@3)) v@@48))
 :qid |ValidatorAdministrationScriptsbpl.164:13|
 :skolemid |5|
)))
 :qid |ValidatorAdministrationScriptsbpl.2603:13|
 :skolemid |92|
))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 138432) (- 0 170803)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) (not (|$IsEqual'vec'u8''| (let ((t_ref@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@1)) _$t2))) (>= (|l#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@7 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@7))))) 256)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (|l#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0))))) (let (($range_0@@3 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@8 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@8))))))
(exists (($i_1@@3 Int) ) (!  (and (InRangeVec_49842 $range_0@@3 $i_1@@3) (let ((v@@49 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $range_0@@3) $i_1@@3)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@49) _$t3)))
 :qid |ValidatorAdministrationScriptsbpl.4596:125|
 :skolemid |148|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= (|$addr#$signer| _$t0) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93638| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) $t12)) 0))) (not (= (|$addr#$signer| _$t0) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) (not (|$IsEqual'vec'u8''| (let ((t_ref@@2 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@2)) _$t2))) (>= (|l#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@9 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@9))))) 256)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (|l#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0))))) (let (($range_0@@4 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@10 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@10))))))
(exists (($i_1@@4 Int) ) (!  (and (InRangeVec_49842 $range_0@@4 $i_1@@4) (let ((v@@50 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $range_0@@4) $i_1@@4)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@50) _$t3)))
 :qid |ValidatorAdministrationScriptsbpl.4596:125|
 :skolemid |148|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= (|$addr#$signer| _$t0) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93638| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) $t12)) 0))) (not (= (|$addr#$signer| _$t0) 173345816))) (=> (= (ControlFlow 0 138432) (- 0 170981)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (= 5 $t13@0)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0)) (= 7 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)) (= 5 $t13@0))) (and (not (|$IsEqual'vec'u8''| (let ((t_ref@@3 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@3)) _$t2)) (= 0 $t13@0))) (and (>= (|l#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@11))))) 256) (= 8 $t13@0))) (and (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (|l#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (= 7 $t13@0))) (and (let (($range_0@@5 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))))
(exists (($i_1@@5 Int) ) (!  (and (InRangeVec_49842 $range_0@@5 $i_1@@5) (let ((v@@51 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| $range_0@@5) $i_1@@5)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@51) _$t3)))
 :qid |ValidatorAdministrationScriptsbpl.4596:125|
 :skolemid |148|
))) (= 7 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) $t6)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) $t6)) 0)) (= 3 $t13@0))) (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 $t13@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93638| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7))) (= 1 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) $t12)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) $t12)) 0)) (= 3 $t13@0))) (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 $t13@0))) (= 0 $t13@0)) (= 7 $t13@0)) (= 5 $t13@0)) (= 2 $t13@0)) (= 1 $t13@0)) (= 8 $t13@0)) (= 3 $t13@0)))))))
(let ((anon14_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t13@0 $abort_code@2) (= (ControlFlow 0 142386) 138432))) L3_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon31_correct  (=> (= inline$$1_DiemSystem_add_validator$0$$t56@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory@2) 173345816)) (=> (and (= inline$$1_DiemSystem_add_validator$0$$t57@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_add_validator$0$$t58@0 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t56@0)))) (=> (and (and (and (and (= (|$scheme#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816))) (|$scheme#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@1)) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816))) (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@1))) (|Select__T@[Int]Bool_| (|domain#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816)) (and (and (= (|$scheme#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@13)))) (|$scheme#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@1)) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@13)))) (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@1))) (and (= (|Select__T@[Int]Bool_| (|domain#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93750| $1_DiemConfig_Configuration_$memory@2) 173345816)) (= inline$$1_DiemSystem_add_validator$0$$t59@0 inline$$1_DiemSystem_add_validator$0$$t58@0)))) (and (and (and (= inline$$1_DiemSystem_add_validator$0$$t60@0 inline$$1_DiemSystem_add_validator$0$$t54@0) (= inline$$1_DiemSystem_add_validator$0$$t61@0  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93638| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= inline$$1_DiemSystem_add_validator$0$$t57@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t53@0)))))) (and (= $es@0 (ite inline$$1_DiemSystem_add_validator$0$$t61@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| $es) inline$$1_DiemSystem_add_validator$0$$t60@0)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_56001| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_56001| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| inline$$1_DiemSystem_add_validator$0$$t59@0))))
(Multiset_56001 (|Store__T@[$EventRep]Int_| (|v#Multiset_56001| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| inline$$1_DiemSystem_add_validator$0$$t59@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| $es) inline$$1_DiemSystem_add_validator$0$$t60@0 stream_new@@2)))) $es)) (= $abort_code@2 $abort_code@1))) (and (and (= $abort_flag@1 $abort_flag@0) (= $es@1 $es@0)) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) (= $1_DiemConfig_Configuration_$memory@3 $1_DiemConfig_Configuration_$memory@2))))) (and (=> (= (ControlFlow 0 141574) 142386) anon14_Then_correct) (=> (= (ControlFlow 0 141574) 142372) anon14_Else_correct)))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon45_Else_correct  (=> (and (and (not |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@2|) (= $1_DiemConfig_Configuration_$memory@1 ($Memory_93750 (|Store__T@[Int]Bool_| (|domain#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1) (= (ControlFlow 0 141452) 141574))) inline$$1_DiemSystem_add_validator$0$anon31_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon45_Then_correct  (=> (and (and |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@2| (= $1_DiemConfig_Configuration_$memory@0 ($Memory_93750 (|Store__T@[Int]Bool_| (|domain#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816 |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_Configuration'@1|)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0) (= (ControlFlow 0 141586) 141574))) inline$$1_DiemSystem_add_validator$0$anon31_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon44_Else_correct  (=> (not |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@1|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| ($Memory_93557 (|Store__T@[Int]Bool_| (|domain#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1|)) (and (=> (= (ControlFlow 0 141438) 141586) inline$$1_DiemSystem_add_validator$0$anon45_Then_correct) (=> (= (ControlFlow 0 141438) 141452) inline$$1_DiemSystem_add_validator$0$anon45_Else_correct))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon44_Then_correct  (=> |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@1| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| ($Memory_93557 (|Store__T@[Int]Bool_| (|domain#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@1|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0|)) (and (=> (= (ControlFlow 0 141598) 141586) inline$$1_DiemSystem_add_validator$0$anon45_Then_correct) (=> (= (ControlFlow 0 141598) 141452) inline$$1_DiemSystem_add_validator$0$anon45_Else_correct))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon43_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t55@0) (and (=> (= (ControlFlow 0 141426) 141598) inline$$1_DiemSystem_add_validator$0$anon44_Then_correct) (=> (= (ControlFlow 0 141426) 141438) inline$$1_DiemSystem_add_validator$0$anon44_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$L7_correct  (=> (= $abort_code@2 inline$$1_DiemSystem_add_validator$0$$t23@1) (=> (and (and (= $abort_flag@1 true) (= $es@1 $es)) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) (= $1_DiemConfig_Configuration_$memory@3 $1_DiemConfig_Configuration_$memory))) (and (=> (= (ControlFlow 0 140655) 142386) anon14_Then_correct) (=> (= (ControlFlow 0 140655) 142372) anon14_Else_correct))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon43_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t55@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93638| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t51@0) 18446744073709551615)) (< inline$$1_DiemSystem_add_validator$0$$t52@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t51@0))) (= 1 inline$$1_DiemSystem_add_validator$0$$t23@0))) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 141674) 140655))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon42_Else_correct  (=> (not $abort_flag@0) (=> (and (and (and (= inline$$1_DiemSystem_add_validator$0$$t44@2 ($Mutation_95606 (|l#$Mutation_95606| inline$$1_DiemSystem_add_validator$0$$t44@1) (|p#$Mutation_95606| inline$$1_DiemSystem_add_validator$0$$t44@1) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_95606| inline$$1_DiemSystem_add_validator$0$$t44@1)) (|v#$Mutation_66550| |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1|)))) (= inline$$1_DiemSystem_add_validator$0$$t14@1 (|v#$Mutation_95606| inline$$1_DiemSystem_add_validator$0$$t44@2))) (and (= inline$$1_DiemSystem_add_validator$0$$t51@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816)) (= inline$$1_DiemSystem_add_validator$0$$t52@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (and (= inline$$1_DiemSystem_add_validator$0$$t53@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816)) (= inline$$1_DiemSystem_add_validator$0$$t54@0 (|$events#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t53@0))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_95363| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (= inline$$1_DiemSystem_add_validator$0$$t55@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93638| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t51@0) 18446744073709551615)) (< inline$$1_DiemSystem_add_validator$0$$t52@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t51@0)))))))) (and (=> (= (ControlFlow 0 141418) 141674) inline$$1_DiemSystem_add_validator$0$anon43_Then_correct) (=> (= (ControlFlow 0 141418) 141426) inline$$1_DiemSystem_add_validator$0$anon43_Else_correct))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon42_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 $abort_code@1) (= (ControlFlow 0 141688) 140655))) inline$$1_DiemSystem_add_validator$0$L7_correct)))
(let ((|inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| ($Mutation_66550 (|l#$Mutation_66550| inline$$1_DiemSystem_add_validator$0$$t45@1) (|p#$Mutation_66550| inline$$1_DiemSystem_add_validator$0$$t45@1) (let ((l (|l#Vec_56286| (|v#$Mutation_66550| inline$$1_DiemSystem_add_validator$0$$t45@1))))
(Vec_56286 (|Store__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| (|v#$Mutation_66550| inline$$1_DiemSystem_add_validator$0$$t45@1)) l inline$$1_DiemSystem_add_validator$0$$t49@1) (+ l 1))))) (and (=> (= (ControlFlow 0 141260) 141688) inline$$1_DiemSystem_add_validator$0$anon42_Then_correct) (=> (= (ControlFlow 0 141260) 141418) inline$$1_DiemSystem_add_validator$0$anon42_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon41_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t47@0) (=> (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t46@0) (= inline$$1_DiemSystem_add_validator$0$$t46@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (= inline$$1_DiemSystem_add_validator$0$$t46@0 inline$$1_DiemSystem_add_validator$0$$t46@0) (|$IsValid'u64'| 1)) (and (= inline$$1_DiemSystem_add_validator$0$$t49@1 ($1_DiemSystem_ValidatorInfo _$t3 1 inline$$1_DiemSystem_add_validator$0$$t42@0 inline$$1_DiemSystem_add_validator$0$$t46@0)) (= (ControlFlow 0 141266) 141260))) |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon41_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t47@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_DiemSystem_add_validator$0$$t23@0)) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 141714) 140655))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon40_Else_correct  (=> (and (not inline$$1_DiemSystem_add_validator$0$$t43@0) (|$IsValid'$1_ValidatorConfig_Config'| inline$$1_DiemSystem_add_validator$0$$t42@0)) (=> (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| inline$$1_DiemSystem_add_validator$0$$t42@0) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| inline$$1_DiemSystem_add_validator$0$$t42@0) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| inline$$1_DiemSystem_add_validator$0$$t42@0) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (=> (and (and (and (= inline$$1_DiemSystem_add_validator$0$$t42@0 inline$$1_DiemSystem_add_validator$0$$t42@0) (= inline$$1_DiemSystem_add_validator$0$$t44@1 ($Mutation_95606 ($Local 14) (Vec_19663 (MapConstVec_11252 DefaultVecElem_11252) 0) inline$$1_DiemSystem_add_validator$0$$t14@0))) (and (= inline$$1_DiemSystem_add_validator$0$$t45@1 ($Mutation_66550 (|l#$Mutation_95606| inline$$1_DiemSystem_add_validator$0$$t44@1) (let ((l@@0 (|l#Vec_19663| (|p#$Mutation_95606| inline$$1_DiemSystem_add_validator$0$$t44@1))))
(Vec_19663 (|Store__T@[Int]Int_| (|v#Vec_19663| (|p#$Mutation_95606| inline$$1_DiemSystem_add_validator$0$$t44@1)) l@@0 1) (+ l@@0 1))) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_95606| inline$$1_DiemSystem_add_validator$0$$t44@1)))) (= |inline$$1_DiemSystem_add_validator$0$$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| (|v#$Mutation_66550| inline$$1_DiemSystem_add_validator$0$$t45@1)))) (and (and (= |inline$$1_DiemSystem_add_validator$0$$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| |inline$$1_DiemSystem_add_validator$0$$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1|) (= _$t3 _$t3)) (and (= inline$$1_DiemSystem_add_validator$0$$t42@0 inline$$1_DiemSystem_add_validator$0$$t42@0) (= inline$$1_DiemSystem_add_validator$0$$t47@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 141165) 141714) inline$$1_DiemSystem_add_validator$0$anon41_Then_correct) (=> (= (ControlFlow 0 141165) 141266) inline$$1_DiemSystem_add_validator$0$anon41_Else_correct)))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon40_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t43@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)) (= 5 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= (|l#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (= 7 inline$$1_DiemSystem_add_validator$0$$t23@0))) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 141762) 140655))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon39_Then_correct  (=> (and inline$$Not$0$dst@1 (= inline$$1_DiemSystem_add_validator$0$$t43@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)) (= (|l#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (and (=> (= (ControlFlow 0 141077) 141762) inline$$1_DiemSystem_add_validator$0$anon40_Then_correct) (=> (= (ControlFlow 0 141077) 141165) inline$$1_DiemSystem_add_validator$0$anon40_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon39_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= inline$$1_DiemSystem_add_validator$0$$t41@0 inline$$1_DiemSystem_add_validator$0$$t41@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t41@0) (= (ControlFlow 0 141049) 140655))) inline$$1_DiemSystem_add_validator$0$L7_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon38_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t41@0) (= inline$$1_DiemSystem_add_validator$0$$t41@0 7)) (and (= inline$$1_DiemSystem_add_validator$0$$t41@0 inline$$1_DiemSystem_add_validator$0$$t41@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 141033) 141077) inline$$1_DiemSystem_add_validator$0$anon39_Then_correct) (=> (= (ControlFlow 0 141033) 141049) inline$$1_DiemSystem_add_validator$0$anon39_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_DiemSystem_add_validator$0$$t38@0)) (= (ControlFlow 0 140993) 141033)) inline$$1_DiemSystem_add_validator$0$anon38_Else$1_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon38_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t35@0) (=> (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| inline$$1_DiemSystem_add_validator$0$$t14@0) (let ((inline$$1_DiemSystem_add_validator$0$$range_0 ($Range 0 (|l#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@0)))))
(let ((inline$$1_DiemSystem_add_validator$0$$range_1 ($Range 0 (|l#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@0)))))
(forall ((inline$$1_DiemSystem_add_validator$0$$i_2 Int) (inline$$1_DiemSystem_add_validator$0$$i_3 Int) ) (!  (=> ($InRange inline$$1_DiemSystem_add_validator$0$$range_0 inline$$1_DiemSystem_add_validator$0$$i_2) (=> ($InRange inline$$1_DiemSystem_add_validator$0$$range_1 inline$$1_DiemSystem_add_validator$0$$i_3) (let ((inline$$1_DiemSystem_add_validator$0$i inline$$1_DiemSystem_add_validator$0$$i_2))
(let ((inline$$1_DiemSystem_add_validator$0$j inline$$1_DiemSystem_add_validator$0$$i_3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@0)) inline$$1_DiemSystem_add_validator$0$i)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@0)) inline$$1_DiemSystem_add_validator$0$j))) (= inline$$1_DiemSystem_add_validator$0$i inline$$1_DiemSystem_add_validator$0$j))))))
 :qid |unknown.0:0|
 :skolemid |152|
))))) (and (= (|$scheme#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@0) (|$scheme#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14))))) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@0) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14))))))) (and (and (= inline$$1_DiemSystem_add_validator$0$$t14@0 inline$$1_DiemSystem_add_validator$0$$t14@0) (= inline$$1_DiemSystem_add_validator$0$$t37@1 (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@0))) (and (= inline$$1_DiemSystem_add_validator$0$$t38@0 (let ((inline$$1_DiemSystem_add_validator$0$$range_0@@0 inline$$1_DiemSystem_add_validator$0$$t37@1))
(exists ((inline$$1_DiemSystem_add_validator$0$$i_1 Int) ) (!  (and (InRangeVec_49842 inline$$1_DiemSystem_add_validator$0$$range_0@@0 inline$$1_DiemSystem_add_validator$0$$i_1) (let ((inline$$1_DiemSystem_add_validator$0$v (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| inline$$1_DiemSystem_add_validator$0$$range_0@@0) inline$$1_DiemSystem_add_validator$0$$i_1)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| inline$$1_DiemSystem_add_validator$0$v) _$t3)))
 :qid |unknown.0:0|
 :skolemid |153|
)))) (= (ControlFlow 0 140999) 140993)))) inline$$Not$0$anon0_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon38_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t35@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 inline$$1_DiemSystem_add_validator$0$$t23@0)) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 141790) 140655))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon37_Then_correct  (=> (and inline$$Lt$0$dst@1 (= inline$$1_DiemSystem_add_validator$0$$t35@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 140809) 141790) inline$$1_DiemSystem_add_validator$0$anon38_Then_correct) (=> (= (ControlFlow 0 140809) 140999) inline$$1_DiemSystem_add_validator$0$anon38_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon37_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= inline$$1_DiemSystem_add_validator$0$$t34@0 inline$$1_DiemSystem_add_validator$0$$t34@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t34@0) (= (ControlFlow 0 140793) 140655))) inline$$1_DiemSystem_add_validator$0$L7_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon36_Else$1_correct  (=> (|$IsValid'u64'| 7) (=> (and (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t34@0) (= inline$$1_DiemSystem_add_validator$0$$t34@0 8)) (and (= inline$$1_DiemSystem_add_validator$0$$t34@0 inline$$1_DiemSystem_add_validator$0$$t34@0) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 140777) 140809) inline$$1_DiemSystem_add_validator$0$anon37_Then_correct) (=> (= (ControlFlow 0 140777) 140793) inline$$1_DiemSystem_add_validator$0$anon37_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< inline$$1_DiemSystem_add_validator$0$$t29@0 256)) (= (ControlFlow 0 140737) 140777)) inline$$1_DiemSystem_add_validator$0$anon36_Else$1_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon36_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t30@0) (=> (and (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t29@0) (= inline$$1_DiemSystem_add_validator$0$$t29@0 (|l#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@15))))))) (and (|$IsValid'u64'| 256) (= (ControlFlow 0 140743) 140737))) inline$$Lt$0$anon0_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon36_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t30@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 inline$$1_DiemSystem_add_validator$0$$t23@0)) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 141818) 140655))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon35_Then_correct  (=> (and inline$$1_DiemSystem_add_validator$0$$t26@0 (= inline$$1_DiemSystem_add_validator$0$$t30@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 140671) 141818) inline$$1_DiemSystem_add_validator$0$anon36_Then_correct) (=> (= (ControlFlow 0 140671) 140743) inline$$1_DiemSystem_add_validator$0$anon36_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon35_Else_correct  (=> (and (and (not inline$$1_DiemSystem_add_validator$0$$t26@0) (= inline$$1_DiemSystem_add_validator$0$$t28@0 inline$$1_DiemSystem_add_validator$0$$t28@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t28@0) (= (ControlFlow 0 140649) 140655))) inline$$1_DiemSystem_add_validator$0$L7_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon34_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t25@0) (=> (and (= inline$$1_DiemSystem_add_validator$0$$t26@0  (and (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (|l#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t28@0) (= inline$$1_DiemSystem_add_validator$0$$t28@0 7)) (and (= inline$$1_DiemSystem_add_validator$0$$t28@0 inline$$1_DiemSystem_add_validator$0$$t28@0) (= inline$$1_DiemSystem_add_validator$0$$t26@0 inline$$1_DiemSystem_add_validator$0$$t26@0))) (and (=> (= (ControlFlow 0 140633) 140671) inline$$1_DiemSystem_add_validator$0$anon35_Then_correct) (=> (= (ControlFlow 0 140633) 140649) inline$$1_DiemSystem_add_validator$0$anon35_Else_correct)))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon34_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t25@0 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_add_validator$0$$t24@0)) (= 5 inline$$1_DiemSystem_add_validator$0$$t23@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_add_validator$0$$t24@0)) 0)) (= 3 inline$$1_DiemSystem_add_validator$0$$t23@0))) (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 inline$$1_DiemSystem_add_validator$0$$t23@0))) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 141910) 140655))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon33_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t22@0) (=> (and (= inline$$1_DiemSystem_add_validator$0$$t24@0 (|$addr#$signer| _$t0)) (= inline$$1_DiemSystem_add_validator$0$$t25@0  (or (or (or (not (= (|$addr#$signer| _$t0) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_add_validator$0$$t24@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_add_validator$0$$t24@0)) 0))) (not (= (|$addr#$signer| _$t0) 173345816))))) (and (=> (= (ControlFlow 0 140579) 141910) inline$$1_DiemSystem_add_validator$0$anon34_Then_correct) (=> (= (ControlFlow 0 140579) 140633) inline$$1_DiemSystem_add_validator$0$anon34_Else_correct))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon33_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t22@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_DiemSystem_add_validator$0$$t23@0)) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 141936) 140655))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon0_correct  (=> (= (|l#Vec_19663| (|p#$Mutation_66550| inline$$1_DiemSystem_add_validator$0$$t4@0)) 0) (=> (and (and (= (|l#Vec_19663| (|p#$Mutation_95606| inline$$1_DiemSystem_add_validator$0$$t44@0)) 0) (= (|l#Vec_19663| (|p#$Mutation_66550| inline$$1_DiemSystem_add_validator$0$$t45@0)) 0)) (and (= inline$$1_DiemSystem_add_validator$0$$t15@0 (|$addr#$signer| _$t0)) (= inline$$1_DiemSystem_add_validator$0$$t16@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816)))) (=> (and (and (and (= inline$$1_DiemSystem_add_validator$0$$t17@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_add_validator$0$$t18@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16)))))) (and (= inline$$1_DiemSystem_add_validator$0$$t19@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816)) (= inline$$1_DiemSystem_add_validator$0$$t20@0 (|$events#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t19@0)))) (and (and (= inline$$1_DiemSystem_add_validator$0$$t21@0 (|$addr#$signer| _$t0)) (= _$t0 _$t0)) (and (= _$t3 _$t3) (= inline$$1_DiemSystem_add_validator$0$$t22@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 140509) 141936) inline$$1_DiemSystem_add_validator$0$anon33_Then_correct) (=> (= (ControlFlow 0 140509) 140579) inline$$1_DiemSystem_add_validator$0$anon33_Else_correct)))))))
(let ((anon13_Then_correct  (=> $t16@0 (=> (and (and (and (= $t18 (|$addr#$signer| _$t0)) (= $t19 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t20 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t21 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@17))))))) (and (and (= $t22 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t23 (|$events#$1_DiemConfig_Configuration| $t22))) (and (= $t24 (|$addr#$signer| _$t0)) (= (ControlFlow 0 141940) 140509)))) inline$$1_DiemSystem_add_validator$0$anon0_correct))))
(let ((anon13_Else_correct  (=> (not $t16@0) (=> (and (and (|$IsValid'u64'| 0) (= 0 0)) (and (= $t13@0 0) (= (ControlFlow 0 137844) 138432))) L3_correct))))
(let ((anon12_Else_correct  (=> (not $t15) (=> (and (and (|$IsValid'vec'u8''| $t14) (|$IsEqual'vec'u8''| $t14 (let ((t_ref@@4 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@4)))) (and (= $t16@0 (|$IsEqual'vec'u8''| $t14 _$t2)) (= $t16@0 $t16@0))) (and (=> (= (ControlFlow 0 137822) 141940) anon13_Then_correct) (=> (= (ControlFlow 0 137822) 137844) anon13_Else_correct))))))
(let ((anon12_Then_correct  (=> $t15 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)) (= 5 $t13)) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 142414) 138432))) L3_correct))))
(let ((anon11_Else_correct  (=> (and (not $abort_flag@0) (= $t15  (not (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) (and (=> (= (ControlFlow 0 137790) 142414) anon12_Then_correct) (=> (= (ControlFlow 0 137790) 137822) anon12_Else_correct)))))
(let ((anon11_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t13@0 $abort_code@1) (= (ControlFlow 0 142428) 138432))) L3_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct  (=> (and (= $abort_flag@0 true) (= $abort_code@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1)) (and (=> (= (ControlFlow 0 137714) 142428) anon11_Then_correct) (=> (= (ControlFlow 0 137714) 137790) anon11_Else_correct)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct  (=> (and (and (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= (ControlFlow 0 137708) 137714))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (= 5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0) (= (ControlFlow 0 137764) 137714))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 137720) 142428) anon11_Then_correct) (=> (= (ControlFlow 0 137720) 137790) anon11_Else_correct))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct  (=> (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1))) (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory@2) (|$addr#$signer| _$t0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0)) (and (|$IsValid'u64'| 0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 0)))) (and (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 7)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1)))) (and (=> (= (ControlFlow 0 137692) 137720) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct) (=> (= (ControlFlow 0 137692) 137708) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct  (=> (and (and (not |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1|) (= $1_SlidingNonce_SlidingNonce_$memory@1 ($Memory_93107 (|Store__T@[Int]Bool_| (|domain#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0) false) (|contents#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory)))) (and (= $1_SlidingNonce_SlidingNonce_$memory@2 $1_SlidingNonce_SlidingNonce_$memory@1) (= (ControlFlow 0 137626) 137692))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct  (=> (and (and |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| (= $1_SlidingNonce_SlidingNonce_$memory@0 ($Memory_93107 (|Store__T@[Int]Bool_| (|domain#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0) |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1|)))) (and (= $1_SlidingNonce_SlidingNonce_$memory@2 $1_SlidingNonce_SlidingNonce_$memory@0) (= (ControlFlow 0 137734) 137692))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct  (=> (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0) (and (=> (= (ControlFlow 0 137612) 137734) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct) (=> (= (ControlFlow 0 137612) 137626) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct  (=> (= _$t0 _$t0) (=> (and (= _$t1 _$t1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))))) (and (=> (= (ControlFlow 0 137606) 137764) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct) (=> (= (ControlFlow 0 137606) 137612) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@18)) 0)) (= addr@@18 173345816)))
 :qid |ValidatorAdministrationScriptsbpl.6916:20|
 :skolemid |208|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) 173345816)) 0)))) (=> (and (and (and (and (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@19)) 1)) (= addr@@19 186537453)))
 :qid |ValidatorAdministrationScriptsbpl.6924:20|
 :skolemid |209|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) 186537453)) 1)))) (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@20)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@20)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@20)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@20)) 2))))))
 :qid |ValidatorAdministrationScriptsbpl.6932:20|
 :skolemid |210|
)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@21)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@21)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@21)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@21)) 2))))))
 :qid |ValidatorAdministrationScriptsbpl.6936:20|
 :skolemid |211|
)))) (and (and (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@22)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@22)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@22)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@22)) 2))))))
 :qid |ValidatorAdministrationScriptsbpl.6940:20|
 :skolemid |212|
)) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@23)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@23)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@23)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@23)) 2))))))
 :qid |ValidatorAdministrationScriptsbpl.6944:20|
 :skolemid |213|
))) (and (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@24)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@24)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@24)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@24)) 2)))))
 :qid |ValidatorAdministrationScriptsbpl.6948:20|
 :skolemid |214|
)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@25)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@25)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@25)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@25)) 2)))))
 :qid |ValidatorAdministrationScriptsbpl.6952:20|
 :skolemid |215|
))))) (and (and (and (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@26)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@26)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@26)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@26)) 2)))))
 :qid |ValidatorAdministrationScriptsbpl.6956:20|
 :skolemid |216|
)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_90092| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@27) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@27)) 4))))
 :qid |ValidatorAdministrationScriptsbpl.6960:20|
 :skolemid |217|
))) (and (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@28) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@28)) 3))))
 :qid |ValidatorAdministrationScriptsbpl.6964:20|
 :skolemid |218|
)) (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@29) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@29)) 3))))
 :qid |ValidatorAdministrationScriptsbpl.6968:20|
 :skolemid |219|
)))) (and (and (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@30) (not (= (|l#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@30)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@30)) 3))))
 :qid |ValidatorAdministrationScriptsbpl.6972:20|
 :skolemid |220|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816)))))) (=> (and (and (and (and (and (and (forall ((config_address Int) ) (!  (=> (|$IsValid'address'| config_address) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address) (= config_address 173345816)))
 :qid |ValidatorAdministrationScriptsbpl.6988:20|
 :skolemid |221|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95363| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@31) (= addr@@31 173345816)))
 :qid |ValidatorAdministrationScriptsbpl.6996:20|
 :skolemid |222|
)) (let (($range_0@@6 ($Range 0 (|l#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@32 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@32))))))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@6) (let ((i1 $i_1@@6))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@33 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@33))))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@33 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@33))))) i1)))) 3))))
 :qid |ValidatorAdministrationScriptsbpl.7000:151|
 :skolemid |223|
))))) (and (and (let (($range_0@@7 ($Range 0 (|l#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@34 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@34))))))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@7) (let ((i1@@0 $i_1@@7))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@35 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@35))))) i1@@0)) 1)))
 :qid |ValidatorAdministrationScriptsbpl.7005:151|
 :skolemid |224|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93849| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100414| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105189| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105495| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100478| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105408| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106412| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106655| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106591| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |ValidatorAdministrationScriptsbpl.7042:20|
 :skolemid |225|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93913| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107885| $1_ChainId_ChainId_$memory) 173345816)))))) (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108263| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107918| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_107918| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107918| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_107918| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108263| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_109214| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_109618| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (and (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (= (|Select__T@[Int]Bool_| (|domain#$Memory_108430| $1_DiemAccount_DiemAccount_$memory) addr@@36) (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@36)))
 :qid |ValidatorAdministrationScriptsbpl.7078:20|
 :skolemid |226|
)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (= (|Select__T@[Int]Bool_| (|domain#$Memory_106018| $1_VASPDomain_VASPDomainManager_$memory) addr@@37)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@37)) 1))))
 :qid |ValidatorAdministrationScriptsbpl.7082:20|
 :skolemid |227|
))))) (and (and (and (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (= (|Select__T@[Int]Bool_| (|domain#$Memory_106135| $1_VASPDomain_VASPDomains_$memory) addr@@38)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@38)) 5))))
 :qid |ValidatorAdministrationScriptsbpl.7086:20|
 :skolemid |228|
)) (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_109349| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@39) (|Select__T@[Int]Bool_| (|domain#$Memory_109440| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@39)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@39)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@39)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@39)) 2)))))
 :qid |ValidatorAdministrationScriptsbpl.7090:20|
 :skolemid |229|
))) (and (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (= (|Select__T@[Int]Bool_| (|domain#$Memory_107665| $1_DesignatedDealer_Dealer_$memory) addr@@40)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@40)) 2))))
 :qid |ValidatorAdministrationScriptsbpl.7094:20|
 :skolemid |230|
)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (= (|Select__T@[Int]Bool_| (|domain#$Memory_106591| $1_DualAttestation_Credential_$memory) addr@@41)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@41)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@41)) 5)))))
 :qid |ValidatorAdministrationScriptsbpl.7098:20|
 :skolemid |231|
)))) (and (and (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (= (|Select__T@[Int]Bool_| (|domain#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) addr@@42)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@42)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@42)) 1)))))
 :qid |ValidatorAdministrationScriptsbpl.7102:20|
 :skolemid |232|
)) (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (= (|Select__T@[Int]Bool_| (|domain#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@43)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@43)) 3))))
 :qid |ValidatorAdministrationScriptsbpl.7106:20|
 :skolemid |233|
))) (and (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (= (|Select__T@[Int]Bool_| (|domain#$Memory_90092| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@44)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@44)) 4))))
 :qid |ValidatorAdministrationScriptsbpl.7110:20|
 :skolemid |234|
)) (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (= (|Select__T@[Int]Bool_| (|domain#$Memory_106232| $1_VASP_ParentVASP_$memory) addr@@45)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@45)) 5))))
 :qid |ValidatorAdministrationScriptsbpl.7114:20|
 :skolemid |235|
))))))) (and (and (and (and (and (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (= (|Select__T@[Int]Bool_| (|domain#$Memory_106168| $1_VASP_ChildVASP_$memory) addr@@46)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_89697| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) addr@@46)) 6))))
 :qid |ValidatorAdministrationScriptsbpl.7118:20|
 :skolemid |236|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112146| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93977| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94041| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0)))) (and (and (and (|$IsValid'u64'| _$t1) (|$IsValid'vec'u8''| _$t2)) (and (|$IsValid'address'| _$t3) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |ValidatorAdministrationScriptsbpl.7145:20|
 :skolemid |237|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)))) (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |ValidatorAdministrationScriptsbpl.7149:20|
 :skolemid |238|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_89697| $1_Roles_RoleId_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@1)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@1) (and (<= (|l#Vec_56094| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@1))) 1) (<= (|l#Vec_19663| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@1))) 1))))
 :qid |ValidatorAdministrationScriptsbpl.7153:20|
 :skolemid |239|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_91251| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@2)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@2))
 :qid |ValidatorAdministrationScriptsbpl.7157:20|
 :skolemid |240|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_93107| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory) $a_0@@3)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@3))
 :qid |ValidatorAdministrationScriptsbpl.7161:20|
 :skolemid |241|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory) $a_0@@3))
)))))) (and (and (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_93638| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@4)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@4))
 :qid |ValidatorAdministrationScriptsbpl.7165:20|
 :skolemid |242|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_93638| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@5)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@5) (let (($range_1 ($Range 0 (|l#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@5))))))
(let (($range_2 ($Range 0 (|l#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@5))))))
(forall (($i_3 Int) ($i_4 Int) ) (!  (=> ($InRange $range_1 $i_3) (=> ($InRange $range_2 $i_4) (let ((i@@84 $i_3))
(let ((j@@25 $i_4))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@5))) i@@84)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@5))) j@@25))) (= i@@84 j@@25))))))
 :qid |ValidatorAdministrationScriptsbpl.7170:367|
 :skolemid |243|
))))))
 :qid |ValidatorAdministrationScriptsbpl.7169:20|
 :skolemid |244|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@5))
))) (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_95363| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@6)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@6))
 :qid |ValidatorAdministrationScriptsbpl.7175:20|
 :skolemid |245|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_95363| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@6))
)) (= $t6 (|$addr#$signer| _$t0)))) (and (and (= $t7 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t8 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t9 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@47 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_93557| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@47))))) (= $t10 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_93750| $1_DiemConfig_Configuration_$memory) 173345816))))) (and (and (and (= $t11 (|$events#$1_DiemConfig_Configuration| $t10)) (= $t12 (|$addr#$signer| _$t0))) (and (let ((addr@@48 (|$addr#$signer| _$t0)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_89516| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108430| $1_DiemAccount_DiemAccount_$memory) addr@@48)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_107918| $1_AccountFreezing_FreezingBit_$memory) addr@@48) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_107918| $1_AccountFreezing_FreezingBit_$memory) addr@@48)))))) (= _$t0 _$t0))) (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= _$t3 _$t3) (= (ControlFlow 0 137768) 137606))))))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_56001| stream@@4) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_56001| stream@@4) v@@52) 0)
 :qid |ValidatorAdministrationScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |ValidatorAdministrationScriptsbpl.2587:13|
 :skolemid |91|
))) (= (ControlFlow 0 135754) 137768)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 166989) 135754) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_82153 0)) ((($Memory_82153 (|domain#$Memory_82153| |T@[Int]Bool|) (|contents#$Memory_82153| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_57766 0)) (((Vec_57766 (|v#Vec_57766| |T@[Int]#0|) (|l#Vec_57766| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_112146 0)) ((($Memory_112146 (|domain#$Memory_112146| |T@[Int]Bool|) (|contents#$Memory_112146| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_109618 0)) ((($Memory_109618 (|domain#$Memory_109618| |T@[Int]Bool|) (|contents#$Memory_109618| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_107918 0)) ((($Memory_107918 (|domain#$Memory_107918| |T@[Int]Bool|) (|contents#$Memory_107918| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_108263 0)) ((($Memory_108263 (|domain#$Memory_108263| |T@[Int]Bool|) (|contents#$Memory_108263| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_107885 0)) ((($Memory_107885 (|domain#$Memory_107885| |T@[Int]Bool|) (|contents#$Memory_107885| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_107665 0)) ((($Memory_107665 (|domain#$Memory_107665| |T@[Int]Bool|) (|contents#$Memory_107665| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_106655 0)) ((($Memory_106655 (|domain#$Memory_106655| |T@[Int]Bool|) (|contents#$Memory_106655| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_106232 0)) ((($Memory_106232 (|domain#$Memory_106232| |T@[Int]Bool|) (|contents#$Memory_106232| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_106168 0)) ((($Memory_106168 (|domain#$Memory_106168| |T@[Int]Bool|) (|contents#$Memory_106168| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_106018 0)) ((($Memory_106018 (|domain#$Memory_106018| |T@[Int]Bool|) (|contents#$Memory_106018| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_105408 0)) ((($Memory_105408 (|domain#$Memory_105408| |T@[Int]Bool|) (|contents#$Memory_105408| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_105189 0)) ((($Memory_105189 (|domain#$Memory_105189| |T@[Int]Bool|) (|contents#$Memory_105189| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_109214 0)) ((($Memory_109214 (|domain#$Memory_109214| |T@[Int]Bool|) (|contents#$Memory_109214| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104429 0)) ((($Memory_104429 (|domain#$Memory_104429| |T@[Int]Bool|) (|contents#$Memory_104429| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100704 0)) ((($Memory_100704 (|domain#$Memory_100704| |T@[Int]Bool|) (|contents#$Memory_100704| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_109440 0)) ((($Memory_109440 (|domain#$Memory_109440| |T@[Int]Bool|) (|contents#$Memory_109440| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104697 0)) ((($Memory_104697 (|domain#$Memory_104697| |T@[Int]Bool|) (|contents#$Memory_104697| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_105495 0)) ((($Memory_105495 (|domain#$Memory_105495| |T@[Int]Bool|) (|contents#$Memory_105495| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_109349 0)) ((($Memory_109349 (|domain#$Memory_109349| |T@[Int]Bool|) (|contents#$Memory_109349| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104606 0)) ((($Memory_104606 (|domain#$Memory_104606| |T@[Int]Bool|) (|contents#$Memory_104606| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106412 0)) ((($Memory_106412 (|domain#$Memory_106412| |T@[Int]Bool|) (|contents#$Memory_106412| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_94980 0)) ((($Memory_94980 (|domain#$Memory_94980| |T@[Int]Bool|) (|contents#$Memory_94980| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_95363 0)) ((($Memory_95363 (|domain#$Memory_95363| |T@[Int]Bool|) (|contents#$Memory_95363| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_93638 0)) ((($Memory_93638 (|domain#$Memory_93638| |T@[Int]Bool|) (|contents#$Memory_93638| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_93750 0)) ((($Memory_93750 (|domain#$Memory_93750| |T@[Int]Bool|) (|contents#$Memory_93750| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_94041 0)) ((($Memory_94041 (|domain#$Memory_94041| |T@[Int]Bool|) (|contents#$Memory_94041| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_93107 0)) ((($Memory_93107 (|domain#$Memory_93107| |T@[Int]Bool|) (|contents#$Memory_93107| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_56172 0)) (((Vec_56172 (|v#Vec_56172| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_56172| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_56172) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_56133 0)) (((Vec_56133 (|v#Vec_56133| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_56133| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_56133) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_19663 0)) (((Vec_19663 (|v#Vec_19663| |T@[Int]Int|) (|l#Vec_19663| Int) ) ) ))
(declare-sort |T@[Int]Vec_19663| 0)
(declare-datatypes ((T@Vec_56343 0)) (((Vec_56343 (|v#Vec_56343| |T@[Int]Vec_19663|) (|l#Vec_56343| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_56343) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_93913 0)) ((($Memory_93913 (|domain#$Memory_93913| |T@[Int]Bool|) (|contents#$Memory_93913| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_56343) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_93849 0)) ((($Memory_93849 (|domain#$Memory_93849| |T@[Int]Bool|) (|contents#$Memory_93849| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_19663) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_19663) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_93977 0)) ((($Memory_93977 (|domain#$Memory_93977| |T@[Int]Bool|) (|contents#$Memory_93977| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_19663) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_108430 0)) ((($Memory_108430 (|domain#$Memory_108430| |T@[Int]Bool|) (|contents#$Memory_108430| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_19663) (|$base_url#$1_DualAttestation_Credential| T@Vec_19663) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_19663) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_106591 0)) ((($Memory_106591 (|domain#$Memory_106591| |T@[Int]Bool|) (|contents#$Memory_106591| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_19663) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_56561 0)) (((Vec_56561 (|v#Vec_56561| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_56561| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_56561) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_106135 0)) ((($Memory_106135 (|domain#$Memory_106135| |T@[Int]Bool|) (|contents#$Memory_106135| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_19663) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100478 0)) ((($Memory_100478 (|domain#$Memory_100478| |T@[Int]Bool|) (|contents#$Memory_100478| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_19663) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100414 0)) ((($Memory_100414 (|domain#$Memory_100414| |T@[Int]Bool|) (|contents#$Memory_100414| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_19663) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_19663) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_19663) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_56094 0)) (((Vec_56094 (|v#Vec_56094| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_56094| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_56094) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_56286 0)) (((Vec_56286 (|v#Vec_56286| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_56286| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_56286) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_93557 0)) ((($Memory_93557 (|domain#$Memory_93557| |T@[Int]Bool|) (|contents#$Memory_93557| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_19663) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_19663) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_91251 0)) ((($Memory_91251 (|domain#$Memory_91251| |T@[Int]Bool|) (|contents#$Memory_91251| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| T@Vec_19663) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_19663) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_90092 0)) ((($Memory_90092 (|domain#$Memory_90092| |T@[Int]Bool|) (|contents#$Memory_90092| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_89697 0)) ((($Memory_89697 (|domain#$Memory_89697| |T@[Int]Bool|) (|contents#$Memory_89697| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_89516 0)) ((($Memory_89516 (|domain#$Memory_89516| |T@[Int]Bool|) (|contents#$Memory_89516| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_19663) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_19663) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_19663) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_19663) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_19663) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_19663) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_19663) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_19663) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_19663) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_19663) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_19663) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_19663) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_19663) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_56001 0)) (((Multiset_56001 (|v#Multiset_56001| |T@[$EventRep]Int|) (|l#Multiset_56001| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_56001| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_56001|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_95606 0)) ((($Mutation_95606 (|l#$Mutation_95606| T@$Location) (|p#$Mutation_95606| T@Vec_19663) (|v#$Mutation_95606| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_91999 0)) ((($Mutation_91999 (|l#$Mutation_91999| T@$Location) (|p#$Mutation_91999| T@Vec_19663) (|v#$Mutation_91999| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_91958 0)) ((($Mutation_91958 (|l#$Mutation_91958| T@$Location) (|p#$Mutation_91958| T@Vec_19663) (|v#$Mutation_91958| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_82784 0)) ((($Mutation_82784 (|l#$Mutation_82784| T@$Location) (|p#$Mutation_82784| T@Vec_19663) (|v#$Mutation_82784| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11647 0)) ((($Mutation_11647 (|l#$Mutation_11647| T@$Location) (|p#$Mutation_11647| T@Vec_19663) (|v#$Mutation_11647| Int) ) ) ))
(declare-datatypes ((T@$Mutation_75641 0)) ((($Mutation_75641 (|l#$Mutation_75641| T@$Location) (|p#$Mutation_75641| T@Vec_19663) (|v#$Mutation_75641| T@Vec_19663) ) ) ))
(declare-datatypes ((T@$Mutation_74553 0)) ((($Mutation_74553 (|l#$Mutation_74553| T@$Location) (|p#$Mutation_74553| T@Vec_19663) (|v#$Mutation_74553| T@Vec_56343) ) ) ))
(declare-datatypes ((T@$Mutation_72844 0)) ((($Mutation_72844 (|l#$Mutation_72844| T@$Location) (|p#$Mutation_72844| T@Vec_19663) (|v#$Mutation_72844| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_71857 0)) ((($Mutation_71857 (|l#$Mutation_71857| T@$Location) (|p#$Mutation_71857| T@Vec_19663) (|v#$Mutation_71857| T@Vec_56094) ) ) ))
(declare-datatypes ((T@$Mutation_70202 0)) ((($Mutation_70202 (|l#$Mutation_70202| T@$Location) (|p#$Mutation_70202| T@Vec_19663) (|v#$Mutation_70202| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_69215 0)) ((($Mutation_69215 (|l#$Mutation_69215| T@$Location) (|p#$Mutation_69215| T@Vec_19663) (|v#$Mutation_69215| T@Vec_56561) ) ) ))
(declare-datatypes ((T@$Mutation_67537 0)) ((($Mutation_67537 (|l#$Mutation_67537| T@$Location) (|p#$Mutation_67537| T@Vec_19663) (|v#$Mutation_67537| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_66550 0)) ((($Mutation_66550 (|l#$Mutation_66550| T@$Location) (|p#$Mutation_66550| T@Vec_19663) (|v#$Mutation_66550| T@Vec_56286) ) ) ))
(declare-datatypes ((T@$Mutation_64750 0)) ((($Mutation_64750 (|l#$Mutation_64750| T@$Location) (|p#$Mutation_64750| T@Vec_19663) (|v#$Mutation_64750| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_63763 0)) ((($Mutation_63763 (|l#$Mutation_63763| T@$Location) (|p#$Mutation_63763| T@Vec_19663) (|v#$Mutation_63763| T@Vec_56172) ) ) ))
(declare-datatypes ((T@$Mutation_62098 0)) ((($Mutation_62098 (|l#$Mutation_62098| T@$Location) (|p#$Mutation_62098| T@Vec_19663) (|v#$Mutation_62098| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_61111 0)) ((($Mutation_61111 (|l#$Mutation_61111| T@$Location) (|p#$Mutation_61111| T@Vec_19663) (|v#$Mutation_61111| T@Vec_56133) ) ) ))
(declare-datatypes ((T@$Mutation_59398 0)) ((($Mutation_59398 (|l#$Mutation_59398| T@$Location) (|p#$Mutation_59398| T@Vec_19663) (|v#$Mutation_59398| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_58411 0)) ((($Mutation_58411 (|l#$Mutation_58411| T@$Location) (|p#$Mutation_58411| T@Vec_19663) (|v#$Mutation_58411| T@Vec_57766) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_57766 T@Vec_57766) Bool)
(declare-fun InRangeVec_49239 (T@Vec_57766 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_57766) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_57766 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_56133 T@Vec_56133) Bool)
(declare-fun InRangeVec_49440 (T@Vec_56133 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_56133) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_56133 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_56172 T@Vec_56172) Bool)
(declare-fun InRangeVec_49641 (T@Vec_56172 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_56172) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_56172 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_56286 T@Vec_56286) Bool)
(declare-fun InRangeVec_49842 (T@Vec_56286 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_19663 T@Vec_19663) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_56286) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_56286 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_56561 T@Vec_56561) Bool)
(declare-fun InRangeVec_50043 (T@Vec_56561 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_56561) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_56561 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_56094 T@Vec_56094) Bool)
(declare-fun InRangeVec_50244 (T@Vec_56094 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_56094) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_56094 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_56343 T@Vec_56343) Bool)
(declare-fun InRangeVec_73976 (T@Vec_56343 Int) Bool)
(declare-fun |Select__T@[Int]Vec_19663_| (|T@[Int]Vec_19663| Int) T@Vec_19663)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_56343) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_19663) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_56343 T@Vec_19663) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_19663 T@Vec_19663) Bool)
(declare-fun InRangeVec_11023 (T@Vec_19663 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_19663) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_19663 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_19663 T@Vec_19663) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_19663) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_19663 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_19663 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_19663) T@Vec_19663)
(declare-fun $1_Hash_sha3 (T@Vec_19663) T@Vec_19663)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_19663) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_19663 T@Vec_19663 T@Vec_19663) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_56001_| (|T@[$1_Event_EventHandle]Multiset_56001| T@$1_Event_EventHandle) T@Multiset_56001)
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
(declare-fun |$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'u64''| (|T@$1_Option_Option'u64'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun $1_SlidingNonce_spec_try_record_nonce (T@$signer Int) Int)
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
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
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
(declare-fun $choice_0 (T@Vec_56286 Int) Int)
(declare-fun IndexOfVec_19663 (T@Vec_19663 Int) Int)
(declare-fun IndexOfVec_56094 (T@Vec_56094 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_56133 (T@Vec_56133 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_56172 (T@Vec_56172 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_56286 (T@Vec_56286 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_56343 (T@Vec_56343 T@Vec_19663) Int)
(declare-fun IndexOfVec_56561 (T@Vec_56561 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_57766 (T@Vec_57766 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_56001| |T@[$1_Event_EventHandle]Multiset_56001|) |T@[$1_Event_EventHandle]Multiset_56001|)
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
(declare-fun |lambda#21| (Int Int Int |T@[Int]Vec_19663| |T@[Int]Vec_19663| Int T@Vec_19663) |T@[Int]Vec_19663|)
(declare-fun |lambda#22| (Int Int |T@[Int]Vec_19663| Int Int T@Vec_19663) |T@[Int]Vec_19663|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Vec_19663| |T@[Int]Vec_19663| Int T@Vec_19663) |T@[Int]Vec_19663|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#25| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorAdministrationScriptsbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorAdministrationScriptsbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorAdministrationScriptsbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorAdministrationScriptsbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorAdministrationScriptsbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorAdministrationScriptsbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorAdministrationScriptsbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorAdministrationScriptsbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_57766) (v2 T@Vec_57766) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_57766| v1) (|l#Vec_57766| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_49239 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_57766| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_57766| v2) i@@0)))
 :qid |ValidatorAdministrationScriptsbpl.615:13|
 :skolemid |17|
))))
 :qid |ValidatorAdministrationScriptsbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_57766) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_57766| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_49239 v@@4 i@@1) true)
 :qid |ValidatorAdministrationScriptsbpl.621:13|
 :skolemid |19|
))))
 :qid |ValidatorAdministrationScriptsbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_57766) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_49239 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_57766| v@@5) i@@3) e))
 :qid |ValidatorAdministrationScriptsbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_49239 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_57766| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_57766| v@@5) j) e)))
 :qid |ValidatorAdministrationScriptsbpl.634:17|
 :skolemid |22|
)))))
 :qid |ValidatorAdministrationScriptsbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_56133) (v2@@0 T@Vec_56133) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_56133| v1@@0) (|l#Vec_56133| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_49440 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v2@@0) i@@4)))
 :qid |ValidatorAdministrationScriptsbpl.796:13|
 :skolemid |24|
))))
 :qid |ValidatorAdministrationScriptsbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_56133) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_56133| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_49440 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@6) i@@5)))
 :qid |ValidatorAdministrationScriptsbpl.802:13|
 :skolemid |26|
))))
 :qid |ValidatorAdministrationScriptsbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_56133) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_49440 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@7) i@@7) e@@0))
 :qid |ValidatorAdministrationScriptsbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_49440 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@7) j@@0) e@@0)))
 :qid |ValidatorAdministrationScriptsbpl.815:17|
 :skolemid |29|
)))))
 :qid |ValidatorAdministrationScriptsbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_56172) (v2@@1 T@Vec_56172) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_56172| v1@@1) (|l#Vec_56172| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_49641 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v2@@1) i@@8)))
 :qid |ValidatorAdministrationScriptsbpl.977:13|
 :skolemid |31|
))))
 :qid |ValidatorAdministrationScriptsbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_56172) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_56172| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_49641 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@8) i@@9)))
 :qid |ValidatorAdministrationScriptsbpl.983:13|
 :skolemid |33|
))))
 :qid |ValidatorAdministrationScriptsbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_56172) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_49641 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@9) i@@11) e@@1))
 :qid |ValidatorAdministrationScriptsbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_49641 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@9) j@@1) e@@1)))
 :qid |ValidatorAdministrationScriptsbpl.996:17|
 :skolemid |36|
)))))
 :qid |ValidatorAdministrationScriptsbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_56286) (v2@@2 T@Vec_56286) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_56286| v1@@2) (|l#Vec_56286| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_49842 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v2@@2) i@@12)))))
 :qid |ValidatorAdministrationScriptsbpl.1158:13|
 :skolemid |38|
))))
 :qid |ValidatorAdministrationScriptsbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_56286) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_56286| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_49842 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@10) i@@13)))
 :qid |ValidatorAdministrationScriptsbpl.1164:13|
 :skolemid |40|
))))
 :qid |ValidatorAdministrationScriptsbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_56286) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_49842 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |ValidatorAdministrationScriptsbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_49842 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |ValidatorAdministrationScriptsbpl.1177:17|
 :skolemid |43|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_56561) (v2@@3 T@Vec_56561) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3)  (and (= (|l#Vec_56561| v1@@3) (|l#Vec_56561| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_50043 v1@@3 i@@16) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v1@@3) i@@16)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v2@@3) i@@16))))
 :qid |ValidatorAdministrationScriptsbpl.1339:13|
 :skolemid |45|
))))
 :qid |ValidatorAdministrationScriptsbpl.1337:50|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_56561) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_56561| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_50043 v@@12 i@@17) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@12) i@@17)))
 :qid |ValidatorAdministrationScriptsbpl.1345:13|
 :skolemid |47|
))))
 :qid |ValidatorAdministrationScriptsbpl.1343:50|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_56561) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@18 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_50043 v@@13 i@@19)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@13) i@@19)) (|$domain#$1_VASPDomain_VASPDomain| e@@3)))
 :qid |ValidatorAdministrationScriptsbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_50043 v@@13 i@@18)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@13) i@@18)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@13) j@@3)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))))
 :qid |ValidatorAdministrationScriptsbpl.1358:17|
 :skolemid |50|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_56094) (v2@@4 T@Vec_56094) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4)  (and (= (|l#Vec_56094| v1@@4) (|l#Vec_56094| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_50244 v1@@4 i@@20) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v1@@4) i@@20)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v1@@4) i@@20)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v2@@4) i@@20)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v1@@4) i@@20)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v2@@4) i@@20)))))
 :qid |ValidatorAdministrationScriptsbpl.1520:13|
 :skolemid |52|
))))
 :qid |ValidatorAdministrationScriptsbpl.1518:51|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_56094) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_56094| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_50244 v@@14 i@@21) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@14) i@@21)))
 :qid |ValidatorAdministrationScriptsbpl.1526:13|
 :skolemid |54|
))))
 :qid |ValidatorAdministrationScriptsbpl.1524:51|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_56094) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_50244 v@@15 i@@23)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) i@@23)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) i@@23)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) i@@23)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4))))
 :qid |ValidatorAdministrationScriptsbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_50244 v@@15 i@@22)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) i@@22)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) i@@22)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) i@@22)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) j@@4)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) j@@4)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@15) j@@4)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))))
 :qid |ValidatorAdministrationScriptsbpl.1539:17|
 :skolemid |57|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_56343) (v2@@5 T@Vec_56343) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@5 v2@@5)  (and (= (|l#Vec_56343| v1@@5) (|l#Vec_56343| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_73976 v1@@5 i@@24) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v1@@5) i@@24) (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v2@@5) i@@24)))
 :qid |ValidatorAdministrationScriptsbpl.1701:13|
 :skolemid |59|
))))
 :qid |ValidatorAdministrationScriptsbpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_56343) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_56343| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_73976 v@@16 i@@25) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@16) i@@25)))
 :qid |ValidatorAdministrationScriptsbpl.1707:13|
 :skolemid |61|
))))
 :qid |ValidatorAdministrationScriptsbpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_56343) (e@@5 T@Vec_19663) ) (! (let ((i@@26 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_73976 v@@17 i@@27)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@17) i@@27) e@@5))
 :qid |ValidatorAdministrationScriptsbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_73976 v@@17 i@@26)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@17) j@@5) e@@5)))
 :qid |ValidatorAdministrationScriptsbpl.1720:17|
 :skolemid |64|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_19663) (v2@@6 T@Vec_19663) ) (! (= (|$IsEqual'vec'address''| v1@@6 v2@@6)  (and (= (|l#Vec_19663| v1@@6) (|l#Vec_19663| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_11023 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_19663| v2@@6) i@@28)))
 :qid |ValidatorAdministrationScriptsbpl.1882:13|
 :skolemid |66|
))))
 :qid |ValidatorAdministrationScriptsbpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'address''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_19663) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_19663| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_11023 v@@18 i@@29) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_19663| v@@18) i@@29)))
 :qid |ValidatorAdministrationScriptsbpl.1888:13|
 :skolemid |68|
))))
 :qid |ValidatorAdministrationScriptsbpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_19663) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_11023 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@19) i@@31) e@@6))
 :qid |ValidatorAdministrationScriptsbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_11023 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@19) j@@6) e@@6)))
 :qid |ValidatorAdministrationScriptsbpl.1901:17|
 :skolemid |71|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_19663) (v2@@7 T@Vec_19663) ) (! (= (|$IsEqual'vec'u64''| v1@@7 v2@@7)  (and (= (|l#Vec_19663| v1@@7) (|l#Vec_19663| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_11023 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_19663| v2@@7) i@@32)))
 :qid |ValidatorAdministrationScriptsbpl.2063:13|
 :skolemid |73|
))))
 :qid |ValidatorAdministrationScriptsbpl.2061:29|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'u64''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_19663) ) (! (= (|$IsValid'vec'u64''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_19663| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_11023 v@@20 i@@33) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_19663| v@@20) i@@33)))
 :qid |ValidatorAdministrationScriptsbpl.2069:13|
 :skolemid |75|
))))
 :qid |ValidatorAdministrationScriptsbpl.2067:29|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'u64''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_19663) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'u64'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_11023 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@21) i@@35) e@@7))
 :qid |ValidatorAdministrationScriptsbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_11023 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@21) j@@7) e@@7)))
 :qid |ValidatorAdministrationScriptsbpl.2082:17|
 :skolemid |78|
)))))
 :qid |ValidatorAdministrationScriptsbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'u64'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_19663) (v2@@8 T@Vec_19663) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8)  (and (= (|l#Vec_19663| v1@@8) (|l#Vec_19663| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_11023 v1@@8 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v1@@8) i@@36) (|Select__T@[Int]Int_| (|v#Vec_19663| v2@@8) i@@36)))
 :qid |ValidatorAdministrationScriptsbpl.2244:13|
 :skolemid |80|
))))
 :qid |ValidatorAdministrationScriptsbpl.2242:28|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'u8''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_19663) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_19663| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_11023 v@@22 i@@37) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_19663| v@@22) i@@37)))
 :qid |ValidatorAdministrationScriptsbpl.2250:13|
 :skolemid |82|
))))
 :qid |ValidatorAdministrationScriptsbpl.2248:28|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_19663) (e@@8 Int) ) (! (let ((i@@38 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_11023 v@@23 i@@39)) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@23) i@@39) e@@8))
 :qid |ValidatorAdministrationScriptsbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_11023 v@@23 i@@38)) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@23) j@@8) e@@8)))
 :qid |ValidatorAdministrationScriptsbpl.2263:17|
 :skolemid |85|
)))))
 :qid |ValidatorAdministrationScriptsbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_19663) (v2@@9 T@Vec_19663) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9)))
 :qid |ValidatorAdministrationScriptsbpl.2436:15|
 :skolemid |87|
 :pattern ( ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9))
)))
(assert (forall ((v1@@10 T@Vec_19663) (v2@@10 T@Vec_19663) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10)))
 :qid |ValidatorAdministrationScriptsbpl.2452:15|
 :skolemid |88|
 :pattern ( ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10))
)))
(assert (forall ((k1 T@Vec_19663) (k2 T@Vec_19663) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorAdministrationScriptsbpl.2523:15|
 :skolemid |89|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_19663) (s2 T@Vec_19663) (k1@@0 T@Vec_19663) (k2@@0 T@Vec_19663) (m1 T@Vec_19663) (m2 T@Vec_19663) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorAdministrationScriptsbpl.2526:15|
 :skolemid |90|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_56001| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_56001| stream) v@@24) 0)
 :qid |ValidatorAdministrationScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |ValidatorAdministrationScriptsbpl.2587:13|
 :skolemid |91|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |ValidatorAdministrationScriptsbpl.2628:80|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@11 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@11 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11)))
 :qid |ValidatorAdministrationScriptsbpl.2634:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |ValidatorAdministrationScriptsbpl.2684:82|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12)))
 :qid |ValidatorAdministrationScriptsbpl.2690:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |ValidatorAdministrationScriptsbpl.2740:80|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@13 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@13 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@13)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13)))
 :qid |ValidatorAdministrationScriptsbpl.2746:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |ValidatorAdministrationScriptsbpl.2796:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_AdminTransactionEvent) (v2@@14 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14)))
 :qid |ValidatorAdministrationScriptsbpl.2802:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |ValidatorAdministrationScriptsbpl.2852:76|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_CreateAccountEvent) (v2@@15 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15)))
 :qid |ValidatorAdministrationScriptsbpl.2858:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |ValidatorAdministrationScriptsbpl.2908:78|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@16 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16)))
 :qid |ValidatorAdministrationScriptsbpl.2914:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |ValidatorAdministrationScriptsbpl.2964:74|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_SentPaymentEvent) (v2@@17 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@17)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@17))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17)))
 :qid |ValidatorAdministrationScriptsbpl.2970:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |ValidatorAdministrationScriptsbpl.3020:69|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@18 T@$1_DiemBlock_NewBlockEvent) (v2@@18 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@18) (|$round#$1_DiemBlock_NewBlockEvent| v2@@18)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@18) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@18))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@18) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@18) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18)))
 :qid |ValidatorAdministrationScriptsbpl.3026:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |ValidatorAdministrationScriptsbpl.3076:70|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@19 T@$1_DiemConfig_NewEpochEvent) (v2@@19 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19)))
 :qid |ValidatorAdministrationScriptsbpl.3082:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |ValidatorAdministrationScriptsbpl.3132:60|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@20 T@$1_Diem_BurnEvent) (v2@@20 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@20) (|$amount#$1_Diem_BurnEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@20) (|$currency_code#$1_Diem_BurnEvent| v2@@20))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@20) (|$preburn_address#$1_Diem_BurnEvent| v2@@20))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@20)))
 :qid |ValidatorAdministrationScriptsbpl.3138:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@20))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |ValidatorAdministrationScriptsbpl.3188:66|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@21 T@$1_Diem_CancelBurnEvent) (v2@@21 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@21) (|$amount#$1_Diem_CancelBurnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@21) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@21) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@21)))
 :qid |ValidatorAdministrationScriptsbpl.3194:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@21))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |ValidatorAdministrationScriptsbpl.3244:60|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@22 T@$1_Diem_MintEvent) (v2@@22 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@22) (|$amount#$1_Diem_MintEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@22) (|$currency_code#$1_Diem_MintEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@22) (|$ToEventRep'$1_Diem_MintEvent'| v2@@22)))
 :qid |ValidatorAdministrationScriptsbpl.3250:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@22) (|$ToEventRep'$1_Diem_MintEvent'| v2@@22))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |ValidatorAdministrationScriptsbpl.3300:63|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@23 T@$1_Diem_PreburnEvent) (v2@@23 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@23) (|$amount#$1_Diem_PreburnEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@23) (|$currency_code#$1_Diem_PreburnEvent| v2@@23))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@23) (|$preburn_address#$1_Diem_PreburnEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@23) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@23)))
 :qid |ValidatorAdministrationScriptsbpl.3306:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@23) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@23))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |ValidatorAdministrationScriptsbpl.3356:79|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@24 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@24 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@24) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@24)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@24) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@24) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@24)))
 :qid |ValidatorAdministrationScriptsbpl.3362:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@24) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@24))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |ValidatorAdministrationScriptsbpl.3412:82|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@25 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@25 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@25) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@25)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@25) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@25))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@25)))
 :qid |ValidatorAdministrationScriptsbpl.3418:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@25))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |ValidatorAdministrationScriptsbpl.3468:88|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@26 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@26 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@26) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@26)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@26) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@26))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@26)))
 :qid |ValidatorAdministrationScriptsbpl.3474:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@26))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |ValidatorAdministrationScriptsbpl.3524:72|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@27 T@$1_VASPDomain_VASPDomainEvent) (v2@@27 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@27)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@27)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@27))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27)))
 :qid |ValidatorAdministrationScriptsbpl.3530:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |ValidatorAdministrationScriptsbpl.3609:61|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |ValidatorAdministrationScriptsbpl.3678:36|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |ValidatorAdministrationScriptsbpl.3702:71|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@2) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@2)))
 :qid |ValidatorAdministrationScriptsbpl.3817:42|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |ValidatorAdministrationScriptsbpl.3829:46|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |ValidatorAdministrationScriptsbpl.3841:64|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |ValidatorAdministrationScriptsbpl.3853:75|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |ValidatorAdministrationScriptsbpl.3865:72|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |ValidatorAdministrationScriptsbpl.3918:55|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |ValidatorAdministrationScriptsbpl.3941:46|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |ValidatorAdministrationScriptsbpl.4249:15|
 :skolemid |137|
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |ValidatorAdministrationScriptsbpl.4262:49|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |ValidatorAdministrationScriptsbpl.4460:71|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |ValidatorAdministrationScriptsbpl.4473:91|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |ValidatorAdministrationScriptsbpl.4486:113|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |ValidatorAdministrationScriptsbpl.4499:75|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |ValidatorAdministrationScriptsbpl.4512:73|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |ValidatorAdministrationScriptsbpl.4532:48|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |ValidatorAdministrationScriptsbpl.4549:57|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |ValidatorAdministrationScriptsbpl.4563:83|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@18) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@18)))
 :qid |ValidatorAdministrationScriptsbpl.4577:48|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@19)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@19)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@19))))
 :qid |ValidatorAdministrationScriptsbpl.4619:45|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@19))
)))
(assert (forall ((s@@20 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@20) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@20)))
 :qid |ValidatorAdministrationScriptsbpl.4633:51|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@21)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@21)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@21))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@21))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@21))))
 :qid |ValidatorAdministrationScriptsbpl.4656:48|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@21))
)))
(assert (forall ((s@@22 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@22) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@22)))
 :qid |ValidatorAdministrationScriptsbpl.5800:49|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@22))
)))
(assert (forall ((s@@23 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@23) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@23)))
 :qid |ValidatorAdministrationScriptsbpl.5813:65|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@24) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@24)))
 :qid |ValidatorAdministrationScriptsbpl.5835:45|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@25) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@25)))
 :qid |ValidatorAdministrationScriptsbpl.5848:45|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@26) true)
 :qid |ValidatorAdministrationScriptsbpl.5861:55|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@27)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@27))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@27))))
 :qid |ValidatorAdministrationScriptsbpl.5881:38|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@27))
)))
(assert (forall ((s@@28 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@28)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@28)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@28))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@28))))
 :qid |ValidatorAdministrationScriptsbpl.5903:44|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@29)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))))
 :qid |ValidatorAdministrationScriptsbpl.5955:53|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@30)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))))
 :qid |ValidatorAdministrationScriptsbpl.6028:53|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@31) true)
 :qid |ValidatorAdministrationScriptsbpl.6065:55|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@32)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@32))))
 :qid |ValidatorAdministrationScriptsbpl.6082:38|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@33) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@33)))
 :qid |ValidatorAdministrationScriptsbpl.6096:48|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@34) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@34)))
 :qid |ValidatorAdministrationScriptsbpl.6110:48|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@35))))
 :qid |ValidatorAdministrationScriptsbpl.6130:41|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@36)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@36)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@36))))
 :qid |ValidatorAdministrationScriptsbpl.6149:57|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@36))
)))
(assert (forall ((s@@37 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@37) true)
 :qid |ValidatorAdministrationScriptsbpl.6163:68|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))))
 :qid |ValidatorAdministrationScriptsbpl.6185:66|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@39)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))))
 :qid |ValidatorAdministrationScriptsbpl.6211:66|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@40) true)
 :qid |ValidatorAdministrationScriptsbpl.6228:31|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@41) true)
 :qid |ValidatorAdministrationScriptsbpl.6246:31|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@41))
)))
(assert (forall ((s@@42 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@42)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@42)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@42))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@42))))
 :qid |ValidatorAdministrationScriptsbpl.6265:35|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@42))
)))
(assert (forall ((s@@43 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@43) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@43)))
 :qid |ValidatorAdministrationScriptsbpl.6281:45|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@43))
)))
(assert (forall ((s@@44 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@44)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@44))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@44))))
 :qid |ValidatorAdministrationScriptsbpl.6299:50|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@44))
)))
(assert (forall ((s@@45 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@45) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@45)))
 :qid |ValidatorAdministrationScriptsbpl.6315:52|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@45))
)))
(assert (forall ((s@@46 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@46) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@46)))
 :qid |ValidatorAdministrationScriptsbpl.6328:46|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@46))
)))
(assert (forall ((s@@47 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@47) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@47)))
 :qid |ValidatorAdministrationScriptsbpl.6351:38|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@47))
)))
(assert (forall ((s@@48 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@48) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@48)))
 :qid |ValidatorAdministrationScriptsbpl.6365:39|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49))))
 :qid |ValidatorAdministrationScriptsbpl.6392:65|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@50)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@50))))
 :qid |ValidatorAdministrationScriptsbpl.6420:60|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51))))
 :qid |ValidatorAdministrationScriptsbpl.6437:66|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@52)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@52))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@52))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@52))))
 :qid |ValidatorAdministrationScriptsbpl.6466:50|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@53) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@53)))
 :qid |ValidatorAdministrationScriptsbpl.6489:45|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@54)) true))
 :qid |ValidatorAdministrationScriptsbpl.6506:87|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@55) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@55)))
 :qid |ValidatorAdministrationScriptsbpl.6520:47|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@56)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@56)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@56))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@56))))
 :qid |ValidatorAdministrationScriptsbpl.6539:58|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@57) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@57)))
 :qid |ValidatorAdministrationScriptsbpl.6555:39|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@57))
)))
(assert (forall ((s@@58 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@58)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@58)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@58))))
 :qid |ValidatorAdministrationScriptsbpl.6582:58|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@59)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@59)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@59))))
 :qid |ValidatorAdministrationScriptsbpl.6599:58|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@59))
)))
(assert (forall ((s@@60 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@60) true)
 :qid |ValidatorAdministrationScriptsbpl.6614:51|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@61)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@61)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@61))))
 :qid |ValidatorAdministrationScriptsbpl.6631:60|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@62)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@62)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@62))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@62))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@62))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@62))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@62))))
 :qid |ValidatorAdministrationScriptsbpl.6670:47|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@63)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@63)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@63))))
 :qid |ValidatorAdministrationScriptsbpl.6696:63|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@64) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@64)))
 :qid |ValidatorAdministrationScriptsbpl.6711:57|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@64))
)))
(assert (forall ((s@@65 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@65) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@65)))
 :qid |ValidatorAdministrationScriptsbpl.6724:55|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@65))
)))
(assert (forall ((s@@66 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@66) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@66)))
 :qid |ValidatorAdministrationScriptsbpl.6738:55|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@67)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@67))))
 :qid |ValidatorAdministrationScriptsbpl.6755:54|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@68) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@68)))
 :qid |ValidatorAdministrationScriptsbpl.6769:55|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@69) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@69)))
 :qid |ValidatorAdministrationScriptsbpl.6782:57|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@70)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@70)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@70))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@70))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@70))))
 :qid |ValidatorAdministrationScriptsbpl.6804:56|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@71)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@71)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@71))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@71))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@71))))
 :qid |ValidatorAdministrationScriptsbpl.6831:52|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@72) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@72)))
 :qid |ValidatorAdministrationScriptsbpl.6849:54|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@73)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@73)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@73))))
 :qid |ValidatorAdministrationScriptsbpl.9931:47|
 :skolemid |398|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@74)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@74))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@74))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@74))))
 :qid |ValidatorAdministrationScriptsbpl.9955:47|
 :skolemid |399|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@75) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@75)))
 :qid |ValidatorAdministrationScriptsbpl.9973:49|
 :skolemid |400|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@76)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@76)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@76))))
 :qid |ValidatorAdministrationScriptsbpl.10015:49|
 :skolemid |401|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@77)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@77)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@77))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@77))))
 :qid |ValidatorAdministrationScriptsbpl.10044:48|
 :skolemid |402|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@78) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@78)))
 :qid |ValidatorAdministrationScriptsbpl.10060:47|
 :skolemid |403|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@78))
)))
(assert (forall ((validators T@Vec_56286) (addr Int) ) (!  (=> (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| validators) (|$IsValid'address'| addr)) (=> (exists ((i@@40 Int) ) (!  (and (and (|$IsValid'num'| i@@40) ($InRange ($Range 0 (|l#Vec_56286| validators)) i@@40)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| validators) i@@40)) addr))
 :qid |ValidatorAdministrationScriptsbpl.10074:13|
 :skolemid |404|
)) (let ((i@@41 ($choice_0 validators addr)))
 (and (and (and (|$IsValid'num'| i@@41) ($InRange ($Range 0 (|l#Vec_56286| validators)) i@@41)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| validators) i@@41)) addr)) (let (($$c i@@41))
(forall ((i@@42 Int) ) (!  (=> (< i@@42 $$c) (not (and (and (|$IsValid'num'| i@@42) ($InRange ($Range 0 (|l#Vec_56286| validators)) i@@42)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| validators) i@@42)) addr))))
 :qid |ValidatorAdministrationScriptsbpl.10076:32|
 :skolemid |405|
)))))))
 :qid |ValidatorAdministrationScriptsbpl.10073:15|
 :skolemid |406|
)))
(assert (forall ((v@@25 T@Vec_57766) (i@@43 Int) ) (! (= (InRangeVec_49239 v@@25 i@@43)  (and (>= i@@43 0) (< i@@43 (|l#Vec_57766| v@@25))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_49239 v@@25 i@@43))
)))
(assert (forall ((v@@26 T@Vec_56133) (i@@44 Int) ) (! (= (InRangeVec_49440 v@@26 i@@44)  (and (>= i@@44 0) (< i@@44 (|l#Vec_56133| v@@26))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_49440 v@@26 i@@44))
)))
(assert (forall ((v@@27 T@Vec_56172) (i@@45 Int) ) (! (= (InRangeVec_49641 v@@27 i@@45)  (and (>= i@@45 0) (< i@@45 (|l#Vec_56172| v@@27))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_49641 v@@27 i@@45))
)))
(assert (forall ((v@@28 T@Vec_56286) (i@@46 Int) ) (! (= (InRangeVec_49842 v@@28 i@@46)  (and (>= i@@46 0) (< i@@46 (|l#Vec_56286| v@@28))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_49842 v@@28 i@@46))
)))
(assert (forall ((v@@29 T@Vec_56561) (i@@47 Int) ) (! (= (InRangeVec_50043 v@@29 i@@47)  (and (>= i@@47 0) (< i@@47 (|l#Vec_56561| v@@29))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_50043 v@@29 i@@47))
)))
(assert (forall ((v@@30 T@Vec_56094) (i@@48 Int) ) (! (= (InRangeVec_50244 v@@30 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_56094| v@@30))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_50244 v@@30 i@@48))
)))
(assert (forall ((v@@31 T@Vec_56343) (i@@49 Int) ) (! (= (InRangeVec_73976 v@@31 i@@49)  (and (>= i@@49 0) (< i@@49 (|l#Vec_56343| v@@31))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_73976 v@@31 i@@49))
)))
(assert (forall ((v@@32 T@Vec_19663) (i@@50 Int) ) (! (= (InRangeVec_11023 v@@32 i@@50)  (and (>= i@@50 0) (< i@@50 (|l#Vec_19663| v@@32))))
 :qid |ValidatorAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_11023 v@@32 i@@50))
)))
(assert (forall ((v@@33 T@Vec_19663) (e@@9 Int) ) (! (let ((i@@51 (IndexOfVec_19663 v@@33 e@@9)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_11023 v@@33 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@33) i@@52) e@@9))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_11023 v@@33 i@@51) (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@33) i@@51) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@51)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19663| v@@33) j@@9) e@@9)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19663 v@@33 e@@9))
)))
(assert (forall ((v@@34 T@Vec_56094) (e@@10 T@$1_ValidatorConfig_Config) ) (! (let ((i@@53 (IndexOfVec_56094 v@@34 e@@10)))
(ite  (not (exists ((i@@54 Int) ) (!  (and (InRangeVec_50244 v@@34 i@@54) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@34) i@@54) e@@10))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@53 (- 0 1))  (and (and (InRangeVec_50244 v@@34 i@@53) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@34) i@@53) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@53)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_56094| v@@34) j@@10) e@@10)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_56094 v@@34 e@@10))
)))
(assert (forall ((v@@35 T@Vec_56133) (e@@11 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@55 (IndexOfVec_56133 v@@35 e@@11)))
(ite  (not (exists ((i@@56 Int) ) (!  (and (InRangeVec_49440 v@@35 i@@56) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@35) i@@56) e@@11))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@55 (- 0 1))  (and (and (InRangeVec_49440 v@@35 i@@55) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@35) i@@55) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@55)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_56133| v@@35) j@@11) e@@11)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_56133 v@@35 e@@11))
)))
(assert (forall ((v@@36 T@Vec_56172) (e@@12 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@57 (IndexOfVec_56172 v@@36 e@@12)))
(ite  (not (exists ((i@@58 Int) ) (!  (and (InRangeVec_49641 v@@36 i@@58) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@36) i@@58) e@@12))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@57 (- 0 1))  (and (and (InRangeVec_49641 v@@36 i@@57) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@36) i@@57) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@57)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_56172| v@@36) j@@12) e@@12)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_56172 v@@36 e@@12))
)))
(assert (forall ((v@@37 T@Vec_56286) (e@@13 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@59 (IndexOfVec_56286 v@@37 e@@13)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_49842 v@@37 i@@60) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@37) i@@60) e@@13))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_49842 v@@37 i@@59) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@37) i@@59) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@59)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_56286| v@@37) j@@13) e@@13)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_56286 v@@37 e@@13))
)))
(assert (forall ((v@@38 T@Vec_56343) (e@@14 T@Vec_19663) ) (! (let ((i@@61 (IndexOfVec_56343 v@@38 e@@14)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_73976 v@@38 i@@62) (= (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@38) i@@62) e@@14))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_73976 v@@38 i@@61) (= (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@38) i@@61) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@61)) (not (= (|Select__T@[Int]Vec_19663_| (|v#Vec_56343| v@@38) j@@14) e@@14)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_56343 v@@38 e@@14))
)))
(assert (forall ((v@@39 T@Vec_56561) (e@@15 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@63 (IndexOfVec_56561 v@@39 e@@15)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_50043 v@@39 i@@64) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@39) i@@64) e@@15))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_50043 v@@39 i@@63) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@39) i@@63) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@63)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_56561| v@@39) j@@15) e@@15)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_56561 v@@39 e@@15))
)))
(assert (forall ((v@@40 T@Vec_57766) (e@@16 |T@#0|) ) (! (let ((i@@65 (IndexOfVec_57766 v@@40 e@@16)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_49239 v@@40 i@@66) (= (|Select__T@[Int]#0_| (|v#Vec_57766| v@@40) i@@66) e@@16))
 :qid |ValidatorAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_49239 v@@40 i@@65) (= (|Select__T@[Int]#0_| (|v#Vec_57766| v@@40) i@@65) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@65)) (not (= (|Select__T@[Int]#0_| (|v#Vec_57766| v@@40) j@@16) e@@16)))
 :qid |ValidatorAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |ValidatorAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_57766 v@@40 e@@16))
)))
(assert (forall ((|l#0| Bool) (i@@67 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67) |l#0|)
 :qid |ValidatorAdministrationScriptsbpl.275:54|
 :skolemid |407|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_56001|) (|l#1| |T@[$1_Event_EventHandle]Multiset_56001|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| |l#1| handle@@0))))
(Multiset_56001 (|lambda#27| (|v#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| |l#0@@0| handle@@0)) (|v#Multiset_56001| (|Select__T@[$1_Event_EventHandle]Multiset_56001_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorAdministrationScriptsbpl.2597:13|
 :skolemid |408|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_56001_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@68 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68) (ite  (and (>= i@@68 |l#0@@1|) (< i@@68 |l#1@@0|)) (ite (< i@@68 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@68) (|Select__T@[Int]#0_| |l#4| (- i@@68 |l#5|))) |l#6|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |409|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@69 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69) (ite  (and (<= |l#0@@2| i@@69) (< i@@69 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@69) |l#4@@0|)) |l#5@@0|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |410|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@17 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@17) (ite  (and (>= j@@17 |l#0@@3|) (< j@@17 |l#1@@2|)) (ite (< j@@17 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@17) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@17 |l#5@@1|))) |l#6@@0|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |411|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@70 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70) (ite  (and (>= i@@70 |l#0@@4|) (< i@@70 |l#1@@3|)) (ite (< i@@70 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@70) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@70 |l#5@@2|))) |l#6@@1|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |412|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@71 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71) (ite  (and (<= |l#0@@5| i@@71) (< i@@71 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@71) |l#4@@3|)) |l#5@@3|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |413|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@18) (ite  (and (>= j@@18 |l#0@@6|) (< j@@18 |l#1@@5|)) (ite (< j@@18 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@18) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@18 |l#5@@4|))) |l#6@@2|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |414|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@18))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72) (ite  (and (>= i@@72 |l#0@@7|) (< i@@72 |l#1@@6|)) (ite (< i@@72 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@72) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@72 |l#5@@5|))) |l#6@@3|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |415|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@73 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73) (ite  (and (<= |l#0@@8| i@@73) (< i@@73 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@73) |l#4@@6|)) |l#5@@6|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |416|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@19) (ite  (and (>= j@@19 |l#0@@9|) (< j@@19 |l#1@@8|)) (ite (< j@@19 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@19) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@19 |l#5@@7|))) |l#6@@4|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |417|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@19))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@74 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74) (ite  (and (>= i@@74 |l#0@@10|) (< i@@74 |l#1@@9|)) (ite (< i@@74 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@74) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@74 |l#5@@8|))) |l#6@@5|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |418|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@75 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75) (ite  (and (<= |l#0@@11| i@@75) (< i@@75 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@75) |l#4@@9|)) |l#5@@9|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |419|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@20) (ite  (and (>= j@@20 |l#0@@12|) (< j@@20 |l#1@@11|)) (ite (< j@@20 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@20) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@20 |l#5@@10|))) |l#6@@6|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |420|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@20))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@11| Int) (|l#6@@7| T@$1_VASPDomain_VASPDomain) (i@@76 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76) (ite  (and (>= i@@76 |l#0@@13|) (< i@@76 |l#1@@12|)) (ite (< i@@76 |l#2@@11|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@11| i@@76) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@11| (- i@@76 |l#5@@11|))) |l#6@@7|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |421|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_VASPDomain_VASPDomain) (i@@77 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77) (ite  (and (<= |l#0@@14| i@@77) (< i@@77 |l#1@@13|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@12| (- (- |l#3@@12| i@@77) |l#4@@12|)) |l#5@@12|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |422|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@13| Int) (|l#6@@8| T@$1_VASPDomain_VASPDomain) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@21) (ite  (and (>= j@@21 |l#0@@15|) (< j@@21 |l#1@@14|)) (ite (< j@@21 |l#2@@13|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@13| j@@21) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@13| (+ j@@21 |l#5@@13|))) |l#6@@8|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |423|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@21))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@14| Int) (|l#6@@9| T@$1_ValidatorConfig_Config) (i@@78 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78) (ite  (and (>= i@@78 |l#0@@16|) (< i@@78 |l#1@@15|)) (ite (< i@@78 |l#2@@14|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@14| i@@78) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@14| (- i@@78 |l#5@@14|))) |l#6@@9|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |424|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@$1_ValidatorConfig_Config) (i@@79 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79) (ite  (and (<= |l#0@@17| i@@79) (< i@@79 |l#1@@16|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@15| (- (- |l#3@@15| i@@79) |l#4@@15|)) |l#5@@15|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |425|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@16| Int) (|l#6@@10| T@$1_ValidatorConfig_Config) (j@@22 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@22) (ite  (and (>= j@@22 |l#0@@18|) (< j@@22 |l#1@@17|)) (ite (< j@@22 |l#2@@16|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@16| j@@22) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@16| (+ j@@22 |l#5@@16|))) |l#6@@10|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |426|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@22))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Vec_19663|) (|l#4@@17| |T@[Int]Vec_19663|) (|l#5@@17| Int) (|l#6@@11| T@Vec_19663) (i@@80 Int) ) (! (= (|Select__T@[Int]Vec_19663_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80) (ite  (and (>= i@@80 |l#0@@19|) (< i@@80 |l#1@@18|)) (ite (< i@@80 |l#2@@17|) (|Select__T@[Int]Vec_19663_| |l#3@@17| i@@80) (|Select__T@[Int]Vec_19663_| |l#4@@17| (- i@@80 |l#5@@17|))) |l#6@@11|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |427|
 :pattern ( (|Select__T@[Int]Vec_19663_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Vec_19663|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@Vec_19663) (i@@81 Int) ) (! (= (|Select__T@[Int]Vec_19663_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81) (ite  (and (<= |l#0@@20| i@@81) (< i@@81 |l#1@@19|)) (|Select__T@[Int]Vec_19663_| |l#2@@18| (- (- |l#3@@18| i@@81) |l#4@@18|)) |l#5@@18|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |428|
 :pattern ( (|Select__T@[Int]Vec_19663_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Vec_19663|) (|l#4@@19| |T@[Int]Vec_19663|) (|l#5@@19| Int) (|l#6@@12| T@Vec_19663) (j@@23 Int) ) (! (= (|Select__T@[Int]Vec_19663_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@23) (ite  (and (>= j@@23 |l#0@@21|) (< j@@23 |l#1@@20|)) (ite (< j@@23 |l#2@@19|) (|Select__T@[Int]Vec_19663_| |l#3@@19| j@@23) (|Select__T@[Int]Vec_19663_| |l#4@@19| (+ j@@23 |l#5@@19|))) |l#6@@12|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |429|
 :pattern ( (|Select__T@[Int]Vec_19663_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@23))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Int|) (|l#4@@20| |T@[Int]Int|) (|l#5@@20| Int) (|l#6@@13| Int) (i@@82 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82) (ite  (and (>= i@@82 |l#0@@22|) (< i@@82 |l#1@@21|)) (ite (< i@@82 |l#2@@20|) (|Select__T@[Int]Int_| |l#3@@20| i@@82) (|Select__T@[Int]Int_| |l#4@@20| (- i@@82 |l#5@@20|))) |l#6@@13|))
 :qid |ValidatorAdministrationScriptsbpl.73:19|
 :skolemid |430|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Int|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| Int) (i@@83 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83) (ite  (and (<= |l#0@@23| i@@83) (< i@@83 |l#1@@22|)) (|Select__T@[Int]Int_| |l#2@@21| (- (- |l#3@@21| i@@83) |l#4@@21|)) |l#5@@21|))
 :qid |ValidatorAdministrationScriptsbpl.82:30|
 :skolemid |431|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Int|) (|l#4@@22| |T@[Int]Int|) (|l#5@@22| Int) (|l#6@@14| Int) (j@@24 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@24) (ite  (and (>= j@@24 |l#0@@24|) (< j@@24 |l#1@@23|)) (ite (< j@@24 |l#2@@22|) (|Select__T@[Int]Int_| |l#3@@22| j@@24) (|Select__T@[Int]Int_| |l#4@@22| (+ j@@24 |l#5@@22|))) |l#6@@14|))
 :qid |ValidatorAdministrationScriptsbpl.63:20|
 :skolemid |432|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@24))
)))
(assert (forall ((|l#0@@25| |T@[$EventRep]Int|) (|l#1@@24| |T@[$EventRep]Int|) (v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#27| |l#0@@25| |l#1@@24|) v@@41) (- (|Select__T@[$EventRep]Int_| |l#0@@25| v@@41) (|Select__T@[$EventRep]Int_| |l#1@@24| v@@41)))
 :qid |ValidatorAdministrationScriptsbpl.154:29|
 :skolemid |433|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#27| |l#0@@25| |l#1@@24|) v@@41))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@23| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@23| Int) (|l#4@@23| T@$1_DiemSystem_ValidatorInfo) (k Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@23| |l#3@@23| |l#4@@23|) k) (ite  (and (<= |l#0@@26| k) (< k |l#1@@25|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@23| (+ |l#3@@23| k)) |l#4@@23|))
 :qid |ValidatorAdministrationScriptsbpl.90:14|
 :skolemid |434|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@23| |l#3@@23| |l#4@@23|) k))
)))
; Valid

