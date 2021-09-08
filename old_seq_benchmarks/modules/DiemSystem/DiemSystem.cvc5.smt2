(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_116651 0)) ((($Memory_116651 (|domain#$Memory_116651| |T@[Int]Bool|) (|contents#$Memory_116651| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_89538 0)) (((Vec_89538 (|v#Vec_89538| |T@[Int]#0|) (|l#Vec_89538| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_195424 0)) ((($Memory_195424 (|domain#$Memory_195424| |T@[Int]Bool|) (|contents#$Memory_195424| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_192246 0)) ((($Memory_192246 (|domain#$Memory_192246| |T@[Int]Bool|) (|contents#$Memory_192246| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_189843 0)) ((($Memory_189843 (|domain#$Memory_189843| |T@[Int]Bool|) (|contents#$Memory_189843| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_190155 0)) ((($Memory_190155 (|domain#$Memory_190155| |T@[Int]Bool|) (|contents#$Memory_190155| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_189810 0)) ((($Memory_189810 (|domain#$Memory_189810| |T@[Int]Bool|) (|contents#$Memory_189810| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_189590 0)) ((($Memory_189590 (|domain#$Memory_189590| |T@[Int]Bool|) (|contents#$Memory_189590| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_186880 0)) ((($Memory_186880 (|domain#$Memory_186880| |T@[Int]Bool|) (|contents#$Memory_186880| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_185526 0)) ((($Memory_185526 (|domain#$Memory_185526| |T@[Int]Bool|) (|contents#$Memory_185526| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_185462 0)) ((($Memory_185462 (|domain#$Memory_185462| |T@[Int]Bool|) (|contents#$Memory_185462| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_185146 0)) ((($Memory_185146 (|domain#$Memory_185146| |T@[Int]Bool|) (|contents#$Memory_185146| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_181878 0)) ((($Memory_181878 (|domain#$Memory_181878| |T@[Int]Bool|) (|contents#$Memory_181878| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_181591 0)) ((($Memory_181591 (|domain#$Memory_181591| |T@[Int]Bool|) (|contents#$Memory_181591| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_181304 0)) ((($Memory_181304 (|domain#$Memory_181304| |T@[Int]Bool|) (|contents#$Memory_181304| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_181085 0)) ((($Memory_181085 (|domain#$Memory_181085| |T@[Int]Bool|) (|contents#$Memory_181085| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_191842 0)) ((($Memory_191842 (|domain#$Memory_191842| |T@[Int]Bool|) (|contents#$Memory_191842| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_173743 0)) ((($Memory_173743 (|domain#$Memory_173743| |T@[Int]Bool|) (|contents#$Memory_173743| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173656 0)) ((($Memory_173656 (|domain#$Memory_173656| |T@[Int]Bool|) (|contents#$Memory_173656| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_169931 0)) ((($Memory_169931 (|domain#$Memory_169931| |T@[Int]Bool|) (|contents#$Memory_169931| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_169844 0)) ((($Memory_169844 (|domain#$Memory_169844| |T@[Int]Bool|) (|contents#$Memory_169844| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_192068 0)) ((($Memory_192068 (|domain#$Memory_192068| |T@[Int]Bool|) (|contents#$Memory_192068| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_173991 0)) ((($Memory_173991 (|domain#$Memory_173991| |T@[Int]Bool|) (|contents#$Memory_173991| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_183808 0)) ((($Memory_183808 (|domain#$Memory_183808| |T@[Int]Bool|) (|contents#$Memory_183808| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_191977 0)) ((($Memory_191977 (|domain#$Memory_191977| |T@[Int]Bool|) (|contents#$Memory_191977| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173910 0)) ((($Memory_173910 (|domain#$Memory_173910| |T@[Int]Bool|) (|contents#$Memory_173910| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_185706 0)) ((($Memory_185706 (|domain#$Memory_185706| |T@[Int]Bool|) (|contents#$Memory_185706| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_141663 0)) ((($Memory_141663 (|domain#$Memory_141663| |T@[Int]Bool|) (|contents#$Memory_141663| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_141576 0)) ((($Memory_141576 (|domain#$Memory_141576| |T@[Int]Bool|) (|contents#$Memory_141576| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_141489 0)) ((($Memory_141489 (|domain#$Memory_141489| |T@[Int]Bool|) (|contents#$Memory_141489| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_141402 0)) ((($Memory_141402 (|domain#$Memory_141402| |T@[Int]Bool|) (|contents#$Memory_141402| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_141315 0)) ((($Memory_141315 (|domain#$Memory_141315| |T@[Int]Bool|) (|contents#$Memory_141315| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_125607 0)) ((($Memory_125607 (|domain#$Memory_125607| |T@[Int]Bool|) (|contents#$Memory_125607| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_140124 0)) ((($Memory_140124 (|domain#$Memory_140124| |T@[Int]Bool|) (|contents#$Memory_140124| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_140236 0)) ((($Memory_140236 (|domain#$Memory_140236| |T@[Int]Bool|) (|contents#$Memory_140236| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_140043 0)) ((($Memory_140043 (|domain#$Memory_140043| |T@[Int]Bool|) (|contents#$Memory_140043| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_139767 0)) ((($Memory_139767 (|domain#$Memory_139767| |T@[Int]Bool|) (|contents#$Memory_139767| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_87853 0)) (((Vec_87853 (|v#Vec_87853| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_87853| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_87853) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_87814 0)) (((Vec_87814 (|v#Vec_87814| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_87814| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_87814) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_28829 0)) (((Vec_28829 (|v#Vec_28829| |T@[Int]Int|) (|l#Vec_28829| Int) ) ) ))
(declare-sort |T@[Int]Vec_28829| 0)
(declare-datatypes ((T@Vec_88036 0)) (((Vec_88036 (|v#Vec_88036| |T@[Int]Vec_28829|) (|l#Vec_88036| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_88036) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_139881 0)) ((($Memory_139881 (|domain#$Memory_139881| |T@[Int]Bool|) (|contents#$Memory_139881| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_88036) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_139800 0)) ((($Memory_139800 (|domain#$Memory_139800| |T@[Int]Bool|) (|contents#$Memory_139800| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_28829) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_28829) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_139962 0)) ((($Memory_139962 (|domain#$Memory_139962| |T@[Int]Bool|) (|contents#$Memory_139962| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_28829) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_190825 0)) ((($Memory_190825 (|domain#$Memory_190825| |T@[Int]Bool|) (|contents#$Memory_190825| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_28829) (|$base_url#$1_DualAttestation_Credential| T@Vec_28829) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_28829) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_186816 0)) ((($Memory_186816 (|domain#$Memory_186816| |T@[Int]Bool|) (|contents#$Memory_186816| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_28829) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_28829) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_88240 0)) (((Vec_88240 (|v#Vec_88240| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_88240| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_88240) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_174358 0)) ((($Memory_174358 (|domain#$Memory_174358| |T@[Int]Bool|) (|contents#$Memory_174358| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_28829) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_88201 0)) (((Vec_88201 (|v#Vec_88201| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_88201| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_88201) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_174241 0)) ((($Memory_174241 (|domain#$Memory_174241| |T@[Int]Bool|) (|contents#$Memory_174241| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_28829) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_169546 0)) ((($Memory_169546 (|domain#$Memory_169546| |T@[Int]Bool|) (|contents#$Memory_169546| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_28829) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_169482 0)) ((($Memory_169482 (|domain#$Memory_169482| |T@[Int]Bool|) (|contents#$Memory_169482| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_28829) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_28829) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_28829) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_87775 0)) (((Vec_87775 (|v#Vec_87775| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_87775| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_87775) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_87979 0)) (((Vec_87979 (|v#Vec_87979| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_87979| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_87979) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_125534 0)) ((($Memory_125534 (|domain#$Memory_125534| |T@[Int]Bool|) (|contents#$Memory_125534| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_28829) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_28829) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_139153 0)) ((($Memory_139153 (|domain#$Memory_139153| |T@[Int]Bool|) (|contents#$Memory_139153| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| T@Vec_28829) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_28829) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_138029 0)) ((($Memory_138029 (|domain#$Memory_138029| |T@[Int]Bool|) (|contents#$Memory_138029| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_125988 0)) ((($Memory_125988 (|domain#$Memory_125988| |T@[Int]Bool|) (|contents#$Memory_125988| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_124079 0)) ((($Memory_124079 (|domain#$Memory_124079| |T@[Int]Bool|) (|contents#$Memory_124079| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_28829) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_28829) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_28829) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_28829) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_28829) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_28829) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_28829) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_28829) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_28829) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_28829) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_28829) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_28829) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_28829) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_87682 0)) (((Multiset_87682 (|v#Multiset_87682| |T@[$EventRep]Int|) (|l#Multiset_87682| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_87682| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_87682|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_193099 0)) ((($Mutation_193099 (|l#$Mutation_193099| T@$Location) (|p#$Mutation_193099| T@Vec_28829) (|v#$Mutation_193099| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_193054 0)) ((($Mutation_193054 (|l#$Mutation_193054| T@$Location) (|p#$Mutation_193054| T@Vec_28829) (|v#$Mutation_193054| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_55708 0)) ((($Mutation_55708 (|l#$Mutation_55708| T@$Location) (|p#$Mutation_55708| T@Vec_28829) (|v#$Mutation_55708| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_179795 0)) ((($Mutation_179795 (|l#$Mutation_179795| T@$Location) (|p#$Mutation_179795| T@Vec_28829) (|v#$Mutation_179795| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_168301 0)) ((($Mutation_168301 (|l#$Mutation_168301| T@$Location) (|p#$Mutation_168301| T@Vec_28829) (|v#$Mutation_168301| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_142214 0)) ((($Mutation_142214 (|l#$Mutation_142214| T@$Location) (|p#$Mutation_142214| T@Vec_28829) (|v#$Mutation_142214| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_124574 0)) ((($Mutation_124574 (|l#$Mutation_124574| T@$Location) (|p#$Mutation_124574| T@Vec_28829) (|v#$Mutation_124574| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_117282 0)) ((($Mutation_117282 (|l#$Mutation_117282| T@$Location) (|p#$Mutation_117282| T@Vec_28829) (|v#$Mutation_117282| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12788 0)) ((($Mutation_12788 (|l#$Mutation_12788| T@$Location) (|p#$Mutation_12788| T@Vec_28829) (|v#$Mutation_12788| Int) ) ) ))
(declare-datatypes ((T@$Mutation_110140 0)) ((($Mutation_110140 (|l#$Mutation_110140| T@$Location) (|p#$Mutation_110140| T@Vec_28829) (|v#$Mutation_110140| T@Vec_28829) ) ) ))
(declare-datatypes ((T@$Mutation_109052 0)) ((($Mutation_109052 (|l#$Mutation_109052| T@$Location) (|p#$Mutation_109052| T@Vec_28829) (|v#$Mutation_109052| T@Vec_88036) ) ) ))
(declare-datatypes ((T@$Mutation_107343 0)) ((($Mutation_107343 (|l#$Mutation_107343| T@$Location) (|p#$Mutation_107343| T@Vec_28829) (|v#$Mutation_107343| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_106356 0)) ((($Mutation_106356 (|l#$Mutation_106356| T@$Location) (|p#$Mutation_106356| T@Vec_28829) (|v#$Mutation_106356| T@Vec_87775) ) ) ))
(declare-datatypes ((T@$Mutation_104701 0)) ((($Mutation_104701 (|l#$Mutation_104701| T@$Location) (|p#$Mutation_104701| T@Vec_28829) (|v#$Mutation_104701| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_103714 0)) ((($Mutation_103714 (|l#$Mutation_103714| T@$Location) (|p#$Mutation_103714| T@Vec_28829) (|v#$Mutation_103714| T@Vec_88201) ) ) ))
(declare-datatypes ((T@$Mutation_102005 0)) ((($Mutation_102005 (|l#$Mutation_102005| T@$Location) (|p#$Mutation_102005| T@Vec_28829) (|v#$Mutation_102005| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_101018 0)) ((($Mutation_101018 (|l#$Mutation_101018| T@$Location) (|p#$Mutation_101018| T@Vec_28829) (|v#$Mutation_101018| T@Vec_88240) ) ) ))
(declare-datatypes ((T@$Mutation_99309 0)) ((($Mutation_99309 (|l#$Mutation_99309| T@$Location) (|p#$Mutation_99309| T@Vec_28829) (|v#$Mutation_99309| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_98322 0)) ((($Mutation_98322 (|l#$Mutation_98322| T@$Location) (|p#$Mutation_98322| T@Vec_28829) (|v#$Mutation_98322| T@Vec_87979) ) ) ))
(declare-datatypes ((T@$Mutation_96522 0)) ((($Mutation_96522 (|l#$Mutation_96522| T@$Location) (|p#$Mutation_96522| T@Vec_28829) (|v#$Mutation_96522| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_95535 0)) ((($Mutation_95535 (|l#$Mutation_95535| T@$Location) (|p#$Mutation_95535| T@Vec_28829) (|v#$Mutation_95535| T@Vec_87853) ) ) ))
(declare-datatypes ((T@$Mutation_93870 0)) ((($Mutation_93870 (|l#$Mutation_93870| T@$Location) (|p#$Mutation_93870| T@Vec_28829) (|v#$Mutation_93870| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_92883 0)) ((($Mutation_92883 (|l#$Mutation_92883| T@$Location) (|p#$Mutation_92883| T@Vec_28829) (|v#$Mutation_92883| T@Vec_87814) ) ) ))
(declare-datatypes ((T@$Mutation_91170 0)) ((($Mutation_91170 (|l#$Mutation_91170| T@$Location) (|p#$Mutation_91170| T@Vec_28829) (|v#$Mutation_91170| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_90183 0)) ((($Mutation_90183 (|l#$Mutation_90183| T@$Location) (|p#$Mutation_90183| T@Vec_28829) (|v#$Mutation_90183| T@Vec_89538) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_89538 T@Vec_89538) Bool)
(declare-fun InRangeVec_77810 (T@Vec_89538 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_89538) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_89538 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_87814 T@Vec_87814) Bool)
(declare-fun InRangeVec_78011 (T@Vec_87814 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_87814) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_87814 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_87853 T@Vec_87853) Bool)
(declare-fun InRangeVec_78212 (T@Vec_87853 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_87853) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_87853 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_87979 T@Vec_87979) Bool)
(declare-fun InRangeVec_78413 (T@Vec_87979 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_28829 T@Vec_28829) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_87979) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_87979 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_88240 T@Vec_88240) Bool)
(declare-fun InRangeVec_78614 (T@Vec_88240 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_88240) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_88240 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_88201 T@Vec_88201) Bool)
(declare-fun InRangeVec_78815 (T@Vec_88201 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_88201) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_88201 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_87775 T@Vec_87775) Bool)
(declare-fun InRangeVec_79016 (T@Vec_87775 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_87775) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_87775 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_88036 T@Vec_88036) Bool)
(declare-fun InRangeVec_108475 (T@Vec_88036 Int) Bool)
(declare-fun |Select__T@[Int]Vec_28829_| (|T@[Int]Vec_28829| Int) T@Vec_28829)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_88036) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_28829) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_88036 T@Vec_28829) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_28829 T@Vec_28829) Bool)
(declare-fun InRangeVec_12164 (T@Vec_28829 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_28829) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_28829 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_28829 T@Vec_28829) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_28829) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_28829 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_28829 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_28829) T@Vec_28829)
(declare-fun $1_Hash_sha3 (T@Vec_28829) T@Vec_28829)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_28829) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_28829 T@Vec_28829 T@Vec_28829) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_87682_| (|T@[$1_Event_EventHandle]Multiset_87682| T@$1_Event_EventHandle) T@Multiset_87682)
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
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'u64''| (|T@$1_Option_Option'u64'|) Bool)
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
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| (|T@$1_Diem_BurnCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnEvent'| (T@$1_Diem_BurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CancelBurnEvent'| (T@$1_Diem_CancelBurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| (|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| (|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| (|T@$1_Diem_MintCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|T@$1_Diem_MintCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintEvent'| (T@$1_Diem_MintEvent) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|T@$1_Diem_Preburn'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|T@$1_Diem_Preburn'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnEvent'| (T@$1_Diem_PreburnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| (|T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| (|T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
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
(declare-fun IndexOfVec_28829 (T@Vec_28829 Int) Int)
(declare-fun IndexOfVec_87775 (T@Vec_87775 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_87814 (T@Vec_87814 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_87853 (T@Vec_87853 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_87979 (T@Vec_87979 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_88036 (T@Vec_88036 T@Vec_28829) Int)
(declare-fun IndexOfVec_88201 (T@Vec_88201 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_88240 (T@Vec_88240 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_89538 (T@Vec_89538 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_87682| |T@[$1_Event_EventHandle]Multiset_87682|) |T@[$1_Event_EventHandle]Multiset_87682|)
(declare-fun |lambda#30| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]Vec_28829| |T@[Int]Vec_28829| Int T@Vec_28829) |T@[Int]Vec_28829|)
(declare-fun |lambda#25| (Int Int |T@[Int]Vec_28829| Int Int T@Vec_28829) |T@[Int]Vec_28829|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Vec_28829| |T@[Int]Vec_28829| Int T@Vec_28829) |T@[Int]Vec_28829|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#31| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemSystemcvc5bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemSystemcvc5bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemSystemcvc5bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemSystemcvc5bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemSystemcvc5bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemSystemcvc5bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemSystemcvc5bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemSystemcvc5bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_89538) (v2 T@Vec_89538) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_89538| v1) (|l#Vec_89538| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_77810 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_89538| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_89538| v2) i@@0)))
 :qid |DiemSystemcvc5bpl.615:13|
 :skolemid |17|
))))
 :qid |DiemSystemcvc5bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_89538) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_89538| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_77810 v@@4 i@@1) true)
 :qid |DiemSystemcvc5bpl.621:13|
 :skolemid |19|
))))
 :qid |DiemSystemcvc5bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_89538) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_77810 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_89538| v@@5) i@@3) e))
 :qid |DiemSystemcvc5bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_77810 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_89538| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_89538| v@@5) j) e)))
 :qid |DiemSystemcvc5bpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemSystemcvc5bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_87814) (v2@@0 T@Vec_87814) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_87814| v1@@0) (|l#Vec_87814| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_78011 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_87814| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_87814| v2@@0) i@@4)))
 :qid |DiemSystemcvc5bpl.796:13|
 :skolemid |24|
))))
 :qid |DiemSystemcvc5bpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_87814) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_87814| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_78011 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_87814| v@@6) i@@5)))
 :qid |DiemSystemcvc5bpl.802:13|
 :skolemid |26|
))))
 :qid |DiemSystemcvc5bpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_87814) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_78011 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_87814| v@@7) i@@7) e@@0))
 :qid |DiemSystemcvc5bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_78011 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_87814| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_87814| v@@7) j@@0) e@@0)))
 :qid |DiemSystemcvc5bpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemSystemcvc5bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_87853) (v2@@1 T@Vec_87853) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_87853| v1@@1) (|l#Vec_87853| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_78212 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_87853| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_87853| v2@@1) i@@8)))
 :qid |DiemSystemcvc5bpl.977:13|
 :skolemid |31|
))))
 :qid |DiemSystemcvc5bpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_87853) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_87853| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_78212 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_87853| v@@8) i@@9)))
 :qid |DiemSystemcvc5bpl.983:13|
 :skolemid |33|
))))
 :qid |DiemSystemcvc5bpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_87853) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_78212 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_87853| v@@9) i@@11) e@@1))
 :qid |DiemSystemcvc5bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_78212 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_87853| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_87853| v@@9) j@@1) e@@1)))
 :qid |DiemSystemcvc5bpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemSystemcvc5bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_87979) (v2@@2 T@Vec_87979) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_87979| v1@@2) (|l#Vec_87979| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_78413 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v2@@2) i@@12)))))
 :qid |DiemSystemcvc5bpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemSystemcvc5bpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_87979) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_87979| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_78413 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@10) i@@13)))
 :qid |DiemSystemcvc5bpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemSystemcvc5bpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_87979) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_78413 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemSystemcvc5bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_78413 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemSystemcvc5bpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemSystemcvc5bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_88240) (v2@@3 T@Vec_88240) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3)  (and (= (|l#Vec_88240| v1@@3) (|l#Vec_88240| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_78614 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v2@@3) i@@16)))))
 :qid |DiemSystemcvc5bpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemSystemcvc5bpl.1337:65|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_88240) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_88240| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_78614 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v@@12) i@@17)))
 :qid |DiemSystemcvc5bpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemSystemcvc5bpl.1343:65|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_88240) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_78614 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3))))
 :qid |DiemSystemcvc5bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_78614 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))))
 :qid |DiemSystemcvc5bpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemSystemcvc5bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_88201) (v2@@4 T@Vec_88201) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4)  (and (= (|l#Vec_88201| v1@@4) (|l#Vec_88201| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_78815 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v2@@4) i@@20)))))
 :qid |DiemSystemcvc5bpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemSystemcvc5bpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_88201) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_88201| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_78815 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v@@14) i@@21)))
 :qid |DiemSystemcvc5bpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemSystemcvc5bpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_88201) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_78815 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4))))
 :qid |DiemSystemcvc5bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_78815 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))))
 :qid |DiemSystemcvc5bpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemSystemcvc5bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_87775) (v2@@5 T@Vec_87775) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5)  (and (= (|l#Vec_87775| v1@@5) (|l#Vec_87775| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_79016 v1@@5 i@@24) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v1@@5) i@@24)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v1@@5) i@@24)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v2@@5) i@@24)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v1@@5) i@@24)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v2@@5) i@@24)))))
 :qid |DiemSystemcvc5bpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemSystemcvc5bpl.1699:51|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_87775) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_87775| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_79016 v@@16 i@@25) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v@@16) i@@25)))
 :qid |DiemSystemcvc5bpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemSystemcvc5bpl.1705:51|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_87775) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@26 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_79016 v@@17 i@@27)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v@@17) i@@27)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v@@17) i@@27)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v@@17) i@@27)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5))))
 :qid |DiemSystemcvc5bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_79016 v@@17 i@@26)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v@@17) i@@26)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v@@17) i@@26)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v@@17) i@@26)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v@@17) j@@5)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v@@17) j@@5)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v@@17) j@@5)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))))
 :qid |DiemSystemcvc5bpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemSystemcvc5bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_88036) (v2@@6 T@Vec_88036) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6)  (and (= (|l#Vec_88036| v1@@6) (|l#Vec_88036| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_108475 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_28829_| (|v#Vec_88036| v1@@6) i@@28) (|Select__T@[Int]Vec_28829_| (|v#Vec_88036| v2@@6) i@@28)))
 :qid |DiemSystemcvc5bpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemSystemcvc5bpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_88036) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_88036| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_108475 v@@18 i@@29) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_28829_| (|v#Vec_88036| v@@18) i@@29)))
 :qid |DiemSystemcvc5bpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemSystemcvc5bpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_88036) (e@@6 T@Vec_28829) ) (! (let ((i@@30 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_108475 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_28829_| (|v#Vec_88036| v@@19) i@@31) e@@6))
 :qid |DiemSystemcvc5bpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_108475 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_28829_| (|v#Vec_88036| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_28829_| (|v#Vec_88036| v@@19) j@@6) e@@6)))
 :qid |DiemSystemcvc5bpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemSystemcvc5bpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_28829) (v2@@7 T@Vec_28829) ) (! (= (|$IsEqual'vec'address''| v1@@7 v2@@7)  (and (= (|l#Vec_28829| v1@@7) (|l#Vec_28829| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_12164 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_28829| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_28829| v2@@7) i@@32)))
 :qid |DiemSystemcvc5bpl.2063:13|
 :skolemid |73|
))))
 :qid |DiemSystemcvc5bpl.2061:33|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'address''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_28829) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_28829| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_12164 v@@20 i@@33) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_28829| v@@20) i@@33)))
 :qid |DiemSystemcvc5bpl.2069:13|
 :skolemid |75|
))))
 :qid |DiemSystemcvc5bpl.2067:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_28829) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_12164 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_28829| v@@21) i@@35) e@@7))
 :qid |DiemSystemcvc5bpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_12164 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_28829| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_28829| v@@21) j@@7) e@@7)))
 :qid |DiemSystemcvc5bpl.2082:17|
 :skolemid |78|
)))))
 :qid |DiemSystemcvc5bpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_28829) (v2@@8 T@Vec_28829) ) (! (= (|$IsEqual'vec'u64''| v1@@8 v2@@8)  (and (= (|l#Vec_28829| v1@@8) (|l#Vec_28829| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_12164 v1@@8 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_28829| v1@@8) i@@36) (|Select__T@[Int]Int_| (|v#Vec_28829| v2@@8) i@@36)))
 :qid |DiemSystemcvc5bpl.2244:13|
 :skolemid |80|
))))
 :qid |DiemSystemcvc5bpl.2242:29|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'u64''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_28829) ) (! (= (|$IsValid'vec'u64''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_28829| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_12164 v@@22 i@@37) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_28829| v@@22) i@@37)))
 :qid |DiemSystemcvc5bpl.2250:13|
 :skolemid |82|
))))
 :qid |DiemSystemcvc5bpl.2248:29|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'u64''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_28829) (e@@8 Int) ) (! (let ((i@@38 (|$IndexOfVec'u64'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_12164 v@@23 i@@39)) (= (|Select__T@[Int]Int_| (|v#Vec_28829| v@@23) i@@39) e@@8))
 :qid |DiemSystemcvc5bpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_12164 v@@23 i@@38)) (= (|Select__T@[Int]Int_| (|v#Vec_28829| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Int_| (|v#Vec_28829| v@@23) j@@8) e@@8)))
 :qid |DiemSystemcvc5bpl.2263:17|
 :skolemid |85|
)))))
 :qid |DiemSystemcvc5bpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'u64'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_28829) (v2@@9 T@Vec_28829) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9)  (and (= (|l#Vec_28829| v1@@9) (|l#Vec_28829| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_12164 v1@@9 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_28829| v1@@9) i@@40) (|Select__T@[Int]Int_| (|v#Vec_28829| v2@@9) i@@40)))
 :qid |DiemSystemcvc5bpl.2425:13|
 :skolemid |87|
))))
 :qid |DiemSystemcvc5bpl.2423:28|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'u8''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_28829) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_28829| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_12164 v@@24 i@@41) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_28829| v@@24) i@@41)))
 :qid |DiemSystemcvc5bpl.2431:13|
 :skolemid |89|
))))
 :qid |DiemSystemcvc5bpl.2429:28|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_28829) (e@@9 Int) ) (! (let ((i@@42 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_12164 v@@25 i@@43)) (= (|Select__T@[Int]Int_| (|v#Vec_28829| v@@25) i@@43) e@@9))
 :qid |DiemSystemcvc5bpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_12164 v@@25 i@@42)) (= (|Select__T@[Int]Int_| (|v#Vec_28829| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]Int_| (|v#Vec_28829| v@@25) j@@9) e@@9)))
 :qid |DiemSystemcvc5bpl.2444:17|
 :skolemid |92|
)))))
 :qid |DiemSystemcvc5bpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_28829) (v2@@10 T@Vec_28829) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@10) ($1_Hash_sha2 v2@@10)))
 :qid |DiemSystemcvc5bpl.2617:15|
 :skolemid |94|
 :pattern ( ($1_Hash_sha2 v1@@10) ($1_Hash_sha2 v2@@10))
)))
(assert (forall ((v1@@11 T@Vec_28829) (v2@@11 T@Vec_28829) ) (! (= (|$IsEqual'vec'u8''| v1@@11 v2@@11) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@11) ($1_Hash_sha3 v2@@11)))
 :qid |DiemSystemcvc5bpl.2633:15|
 :skolemid |95|
 :pattern ( ($1_Hash_sha3 v1@@11) ($1_Hash_sha3 v2@@11))
)))
(assert (forall ((k1 T@Vec_28829) (k2 T@Vec_28829) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemSystemcvc5bpl.2700:15|
 :skolemid |96|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_28829) (s2 T@Vec_28829) (k1@@0 T@Vec_28829) (k2@@0 T@Vec_28829) (m1 T@Vec_28829) (m2 T@Vec_28829) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemSystemcvc5bpl.2703:15|
 :skolemid |97|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_87682| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream) v@@26) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemSystemcvc5bpl.2805:80|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@12 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@12 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@12)))
 :qid |DiemSystemcvc5bpl.2811:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@12))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemSystemcvc5bpl.2861:82|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@13 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@13 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@13)))
 :qid |DiemSystemcvc5bpl.2867:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@13))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemSystemcvc5bpl.2917:80|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@14 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@14 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@14) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@14)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@14) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@14))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@14) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@14))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@14)))
 :qid |DiemSystemcvc5bpl.2923:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@14))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemSystemcvc5bpl.2973:79|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_AdminTransactionEvent) (v2@@15 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@15)))
 :qid |DiemSystemcvc5bpl.2979:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@15))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemSystemcvc5bpl.3029:76|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_CreateAccountEvent) (v2@@16 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@16)))
 :qid |DiemSystemcvc5bpl.3035:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@16))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemSystemcvc5bpl.3085:78|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@17 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@17) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@17)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@17) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@17))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@17) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@17))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@17) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@17))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@17)))
 :qid |DiemSystemcvc5bpl.3091:15|
 :skolemid |111|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@17))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemSystemcvc5bpl.3141:74|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_SentPaymentEvent) (v2@@18 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@18) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@18) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@18))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@18) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@18))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@18) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@18))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@18)))
 :qid |DiemSystemcvc5bpl.3147:15|
 :skolemid |113|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@18))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemSystemcvc5bpl.3197:69|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@19 T@$1_DiemBlock_NewBlockEvent) (v2@@19 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@19) (|$round#$1_DiemBlock_NewBlockEvent| v2@@19)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@19) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@19))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@19) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@19))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@19) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@19))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@19) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@19)))
 :qid |DiemSystemcvc5bpl.3203:15|
 :skolemid |115|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@19) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@19))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemSystemcvc5bpl.3253:70|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@20 T@$1_DiemConfig_NewEpochEvent) (v2@@20 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@20 v2@@20) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@20) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@20)))
 :qid |DiemSystemcvc5bpl.3259:15|
 :skolemid |117|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@20) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@20))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemSystemcvc5bpl.3309:60|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@21 T@$1_Diem_BurnEvent) (v2@@21 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@21) (|$amount#$1_Diem_BurnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@21) (|$currency_code#$1_Diem_BurnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@21) (|$preburn_address#$1_Diem_BurnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@21)))
 :qid |DiemSystemcvc5bpl.3315:15|
 :skolemid |119|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@21))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemSystemcvc5bpl.3365:66|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@22 T@$1_Diem_CancelBurnEvent) (v2@@22 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@22) (|$amount#$1_Diem_CancelBurnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@22) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@22) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@22)))
 :qid |DiemSystemcvc5bpl.3371:15|
 :skolemid |121|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@22))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemSystemcvc5bpl.3421:60|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@23 T@$1_Diem_MintEvent) (v2@@23 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@23) (|$amount#$1_Diem_MintEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@23) (|$currency_code#$1_Diem_MintEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@23) (|$ToEventRep'$1_Diem_MintEvent'| v2@@23)))
 :qid |DiemSystemcvc5bpl.3427:15|
 :skolemid |123|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@23) (|$ToEventRep'$1_Diem_MintEvent'| v2@@23))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemSystemcvc5bpl.3477:63|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@24 T@$1_Diem_PreburnEvent) (v2@@24 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@24) (|$amount#$1_Diem_PreburnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@24) (|$currency_code#$1_Diem_PreburnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@24) (|$preburn_address#$1_Diem_PreburnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@24) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@24)))
 :qid |DiemSystemcvc5bpl.3483:15|
 :skolemid |125|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@24) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@24))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemSystemcvc5bpl.3533:79|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@25 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@25 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@25) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@25)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@25) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@25) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@25)))
 :qid |DiemSystemcvc5bpl.3539:15|
 :skolemid |127|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@25) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@25))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemSystemcvc5bpl.3589:82|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@26 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@26 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@26) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@26)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@26) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@26))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@26)))
 :qid |DiemSystemcvc5bpl.3595:15|
 :skolemid |129|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@26))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemSystemcvc5bpl.3645:88|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@27 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@27 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@27) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@27)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@27) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@27))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@27)))
 :qid |DiemSystemcvc5bpl.3651:15|
 :skolemid |131|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@27))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemSystemcvc5bpl.3701:72|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@28 T@$1_VASPDomain_VASPDomainEvent) (v2@@28 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@28) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@28)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@28)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@28) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@28))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@28) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@28)))
 :qid |DiemSystemcvc5bpl.3707:15|
 :skolemid |133|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@28) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@28))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |DiemSystemcvc5bpl.3761:15|
 :skolemid |134|
)))
(assert (forall ((addr Int) ) (! true
 :qid |DiemSystemcvc5bpl.3770:15|
 :skolemid |135|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |DiemSystemcvc5bpl.3795:61|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DiemSystemcvc5bpl.4351:36|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |DiemSystemcvc5bpl.6447:71|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@3) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@3)))
 :qid |DiemSystemcvc5bpl.6555:42|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@4) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@4)))
 :qid |DiemSystemcvc5bpl.6567:46|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@5) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@5)))
 :qid |DiemSystemcvc5bpl.6579:64|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@6)))
 :qid |DiemSystemcvc5bpl.6591:75|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@7) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@7)))
 :qid |DiemSystemcvc5bpl.6603:72|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@8)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@8)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@8))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@8))))
 :qid |DiemSystemcvc5bpl.6636:55|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@8))
)))
(assert (forall ((s@@9 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@9)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@9)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@9))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@9))))
 :qid |DiemSystemcvc5bpl.6659:46|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@9))
)))
(assert (forall ((s@@10 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@10)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@10)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@10))))
 :qid |DiemSystemcvc5bpl.6678:49|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@11) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@11)))
 :qid |DiemSystemcvc5bpl.6758:71|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@12) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@12)))
 :qid |DiemSystemcvc5bpl.6771:91|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@13) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@13)))
 :qid |DiemSystemcvc5bpl.6784:113|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@14)))
 :qid |DiemSystemcvc5bpl.6797:75|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@15)))
 :qid |DiemSystemcvc5bpl.6810:73|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@16)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@16)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@16))))
 :qid |DiemSystemcvc5bpl.6830:48|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17) true)
 :qid |DiemSystemcvc5bpl.6847:57|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18) true)
 :qid |DiemSystemcvc5bpl.6861:83|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19) true)
 :qid |DiemSystemcvc5bpl.6875:103|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20) true)
 :qid |DiemSystemcvc5bpl.6889:125|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |DiemSystemcvc5bpl.6903:87|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |DiemSystemcvc5bpl.6917:85|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |DiemSystemcvc5bpl.6931:48|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |DiemSystemcvc5bpl.6968:45|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |DiemSystemcvc5bpl.6982:51|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |DiemSystemcvc5bpl.7005:48|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |DiemSystemcvc5bpl.11628:49|
 :skolemid |365|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |DiemSystemcvc5bpl.11641:65|
 :skolemid |366|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |DiemSystemcvc5bpl.12144:45|
 :skolemid |367|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |DiemSystemcvc5bpl.12157:45|
 :skolemid |368|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |DiemSystemcvc5bpl.12170:55|
 :skolemid |369|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |DiemSystemcvc5bpl.12184:55|
 :skolemid |370|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |DiemSystemcvc5bpl.12204:38|
 :skolemid |371|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |DiemSystemcvc5bpl.12226:44|
 :skolemid |372|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |DiemSystemcvc5bpl.12278:53|
 :skolemid |373|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |DiemSystemcvc5bpl.12351:53|
 :skolemid |374|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37) true)
 :qid |DiemSystemcvc5bpl.12388:55|
 :skolemid |375|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38) true)
 :qid |DiemSystemcvc5bpl.12402:55|
 :skolemid |376|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@39)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@39)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@39))))
 :qid |DiemSystemcvc5bpl.12419:38|
 :skolemid |377|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@40)))
 :qid |DiemSystemcvc5bpl.12433:48|
 :skolemid |378|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@41)))
 :qid |DiemSystemcvc5bpl.12447:48|
 :skolemid |379|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@42)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@42))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@42))))
 :qid |DiemSystemcvc5bpl.12467:41|
 :skolemid |380|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@43)))
 :qid |DiemSystemcvc5bpl.12483:53|
 :skolemid |381|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@44) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@44)))
 :qid |DiemSystemcvc5bpl.12496:53|
 :skolemid |382|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@45))))
 :qid |DiemSystemcvc5bpl.12512:60|
 :skolemid |383|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@46)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@46)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@46))))
 :qid |DiemSystemcvc5bpl.12529:60|
 :skolemid |384|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47))))
 :qid |DiemSystemcvc5bpl.12546:57|
 :skolemid |385|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47))
)))
(assert (forall ((s@@48 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48) true)
 :qid |DiemSystemcvc5bpl.14747:68|
 :skolemid |386|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))))
 :qid |DiemSystemcvc5bpl.14769:66|
 :skolemid |387|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))))
 :qid |DiemSystemcvc5bpl.14795:66|
 :skolemid |388|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))))
 :qid |DiemSystemcvc5bpl.14824:56|
 :skolemid |389|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@52)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))))
 :qid |DiemSystemcvc5bpl.14854:56|
 :skolemid |390|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@53) true)
 :qid |DiemSystemcvc5bpl.15188:31|
 :skolemid |391|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@54) true)
 :qid |DiemSystemcvc5bpl.15532:31|
 :skolemid |392|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@54))
)))
(assert (forall ((s@@55 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@55)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@55)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@55))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@55))))
 :qid |DiemSystemcvc5bpl.15551:35|
 :skolemid |393|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@56)))
 :qid |DiemSystemcvc5bpl.15972:45|
 :skolemid |394|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@57))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@57))))
 :qid |DiemSystemcvc5bpl.15990:50|
 :skolemid |395|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@58)))
 :qid |DiemSystemcvc5bpl.16006:52|
 :skolemid |396|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@59) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@59)))
 :qid |DiemSystemcvc5bpl.16029:38|
 :skolemid |397|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@60) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@60)))
 :qid |DiemSystemcvc5bpl.16043:39|
 :skolemid |398|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@60))
)))
(assert (forall ((s@@61 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61))))
 :qid |DiemSystemcvc5bpl.16070:65|
 :skolemid |399|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@62))))
 :qid |DiemSystemcvc5bpl.16455:60|
 :skolemid |400|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63))))
 :qid |DiemSystemcvc5bpl.16472:66|
 :skolemid |401|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@64)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@64)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@64))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@64))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@64))))
 :qid |DiemSystemcvc5bpl.16501:50|
 :skolemid |402|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@65) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@65)))
 :qid |DiemSystemcvc5bpl.16524:45|
 :skolemid |403|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@66)) true))
 :qid |DiemSystemcvc5bpl.16843:87|
 :skolemid |404|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@67)))
 :qid |DiemSystemcvc5bpl.17055:47|
 :skolemid |405|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@68)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@68))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@68))))
 :qid |DiemSystemcvc5bpl.17074:58|
 :skolemid |406|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@69) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@69)))
 :qid |DiemSystemcvc5bpl.17090:39|
 :skolemid |407|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@70)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@70))))
 :qid |DiemSystemcvc5bpl.17112:58|
 :skolemid |408|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71))))
 :qid |DiemSystemcvc5bpl.17129:58|
 :skolemid |409|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72) true)
 :qid |DiemSystemcvc5bpl.17144:51|
 :skolemid |410|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73))))
 :qid |DiemSystemcvc5bpl.17161:60|
 :skolemid |411|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@74)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@74))))
 :qid |DiemSystemcvc5bpl.17459:47|
 :skolemid |412|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@75))))
 :qid |DiemSystemcvc5bpl.17485:63|
 :skolemid |413|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@76)))
 :qid |DiemSystemcvc5bpl.17500:57|
 :skolemid |414|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@77)))
 :qid |DiemSystemcvc5bpl.17513:55|
 :skolemid |415|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77))
)))
(assert (forall ((s@@78 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@78)))
 :qid |DiemSystemcvc5bpl.17527:55|
 :skolemid |416|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@79)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@79))))
 :qid |DiemSystemcvc5bpl.17544:54|
 :skolemid |417|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@80)))
 :qid |DiemSystemcvc5bpl.17558:55|
 :skolemid |418|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@81)))
 :qid |DiemSystemcvc5bpl.17571:57|
 :skolemid |419|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@82))))
 :qid |DiemSystemcvc5bpl.17593:56|
 :skolemid |420|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@83)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@83))))
 :qid |DiemSystemcvc5bpl.17620:52|
 :skolemid |421|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@84)))
 :qid |DiemSystemcvc5bpl.17638:54|
 :skolemid |422|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@85))))
 :qid |DiemSystemcvc5bpl.18510:47|
 :skolemid |423|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@86)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@86))))
 :qid |DiemSystemcvc5bpl.18534:47|
 :skolemid |424|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@87) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@87)))
 :qid |DiemSystemcvc5bpl.18777:49|
 :skolemid |425|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@88)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@88)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@88))))
 :qid |DiemSystemcvc5bpl.18819:49|
 :skolemid |426|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@89)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@89)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@89))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@89))))
 :qid |DiemSystemcvc5bpl.18848:48|
 :skolemid |427|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@90) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@90)))
 :qid |DiemSystemcvc5bpl.19144:47|
 :skolemid |428|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@90))
)))
(assert (forall ((v@@27 T@Vec_89538) (i@@44 Int) ) (! (= (InRangeVec_77810 v@@27 i@@44)  (and (>= i@@44 0) (< i@@44 (|l#Vec_89538| v@@27))))
 :qid |DiemSystemcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_77810 v@@27 i@@44))
)))
(assert (forall ((v@@28 T@Vec_87814) (i@@45 Int) ) (! (= (InRangeVec_78011 v@@28 i@@45)  (and (>= i@@45 0) (< i@@45 (|l#Vec_87814| v@@28))))
 :qid |DiemSystemcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_78011 v@@28 i@@45))
)))
(assert (forall ((v@@29 T@Vec_87853) (i@@46 Int) ) (! (= (InRangeVec_78212 v@@29 i@@46)  (and (>= i@@46 0) (< i@@46 (|l#Vec_87853| v@@29))))
 :qid |DiemSystemcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_78212 v@@29 i@@46))
)))
(assert (forall ((v@@30 T@Vec_87979) (i@@47 Int) ) (! (= (InRangeVec_78413 v@@30 i@@47)  (and (>= i@@47 0) (< i@@47 (|l#Vec_87979| v@@30))))
 :qid |DiemSystemcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_78413 v@@30 i@@47))
)))
(assert (forall ((v@@31 T@Vec_88240) (i@@48 Int) ) (! (= (InRangeVec_78614 v@@31 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_88240| v@@31))))
 :qid |DiemSystemcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_78614 v@@31 i@@48))
)))
(assert (forall ((v@@32 T@Vec_88201) (i@@49 Int) ) (! (= (InRangeVec_78815 v@@32 i@@49)  (and (>= i@@49 0) (< i@@49 (|l#Vec_88201| v@@32))))
 :qid |DiemSystemcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_78815 v@@32 i@@49))
)))
(assert (forall ((v@@33 T@Vec_87775) (i@@50 Int) ) (! (= (InRangeVec_79016 v@@33 i@@50)  (and (>= i@@50 0) (< i@@50 (|l#Vec_87775| v@@33))))
 :qid |DiemSystemcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_79016 v@@33 i@@50))
)))
(assert (forall ((v@@34 T@Vec_88036) (i@@51 Int) ) (! (= (InRangeVec_108475 v@@34 i@@51)  (and (>= i@@51 0) (< i@@51 (|l#Vec_88036| v@@34))))
 :qid |DiemSystemcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_108475 v@@34 i@@51))
)))
(assert (forall ((v@@35 T@Vec_28829) (i@@52 Int) ) (! (= (InRangeVec_12164 v@@35 i@@52)  (and (>= i@@52 0) (< i@@52 (|l#Vec_28829| v@@35))))
 :qid |DiemSystemcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_12164 v@@35 i@@52))
)))
(assert (forall ((v@@36 T@Vec_28829) (e@@10 Int) ) (! (let ((i@@53 (IndexOfVec_28829 v@@36 e@@10)))
(ite  (not (exists ((i@@54 Int) ) (!  (and (InRangeVec_12164 v@@36 i@@54) (= (|Select__T@[Int]Int_| (|v#Vec_28829| v@@36) i@@54) e@@10))
 :qid |DiemSystemcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@53 (- 0 1))  (and (and (InRangeVec_12164 v@@36 i@@53) (= (|Select__T@[Int]Int_| (|v#Vec_28829| v@@36) i@@53) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@53)) (not (= (|Select__T@[Int]Int_| (|v#Vec_28829| v@@36) j@@10) e@@10)))
 :qid |DiemSystemcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystemcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_28829 v@@36 e@@10))
)))
(assert (forall ((v@@37 T@Vec_87775) (e@@11 T@$1_ValidatorConfig_Config) ) (! (let ((i@@55 (IndexOfVec_87775 v@@37 e@@11)))
(ite  (not (exists ((i@@56 Int) ) (!  (and (InRangeVec_79016 v@@37 i@@56) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v@@37) i@@56) e@@11))
 :qid |DiemSystemcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@55 (- 0 1))  (and (and (InRangeVec_79016 v@@37 i@@55) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v@@37) i@@55) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@55)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| v@@37) j@@11) e@@11)))
 :qid |DiemSystemcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystemcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_87775 v@@37 e@@11))
)))
(assert (forall ((v@@38 T@Vec_87814) (e@@12 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@57 (IndexOfVec_87814 v@@38 e@@12)))
(ite  (not (exists ((i@@58 Int) ) (!  (and (InRangeVec_78011 v@@38 i@@58) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_87814| v@@38) i@@58) e@@12))
 :qid |DiemSystemcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@57 (- 0 1))  (and (and (InRangeVec_78011 v@@38 i@@57) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_87814| v@@38) i@@57) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@57)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_87814| v@@38) j@@12) e@@12)))
 :qid |DiemSystemcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystemcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_87814 v@@38 e@@12))
)))
(assert (forall ((v@@39 T@Vec_87853) (e@@13 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@59 (IndexOfVec_87853 v@@39 e@@13)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_78212 v@@39 i@@60) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_87853| v@@39) i@@60) e@@13))
 :qid |DiemSystemcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_78212 v@@39 i@@59) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_87853| v@@39) i@@59) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@59)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_87853| v@@39) j@@13) e@@13)))
 :qid |DiemSystemcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystemcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_87853 v@@39 e@@13))
)))
(assert (forall ((v@@40 T@Vec_87979) (e@@14 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@61 (IndexOfVec_87979 v@@40 e@@14)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_78413 v@@40 i@@62) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@40) i@@62) e@@14))
 :qid |DiemSystemcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_78413 v@@40 i@@61) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@40) i@@61) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@61)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| v@@40) j@@14) e@@14)))
 :qid |DiemSystemcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystemcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_87979 v@@40 e@@14))
)))
(assert (forall ((v@@41 T@Vec_88036) (e@@15 T@Vec_28829) ) (! (let ((i@@63 (IndexOfVec_88036 v@@41 e@@15)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_108475 v@@41 i@@64) (= (|Select__T@[Int]Vec_28829_| (|v#Vec_88036| v@@41) i@@64) e@@15))
 :qid |DiemSystemcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_108475 v@@41 i@@63) (= (|Select__T@[Int]Vec_28829_| (|v#Vec_88036| v@@41) i@@63) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@63)) (not (= (|Select__T@[Int]Vec_28829_| (|v#Vec_88036| v@@41) j@@15) e@@15)))
 :qid |DiemSystemcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystemcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_88036 v@@41 e@@15))
)))
(assert (forall ((v@@42 T@Vec_88201) (e@@16 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@65 (IndexOfVec_88201 v@@42 e@@16)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_78815 v@@42 i@@66) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v@@42) i@@66) e@@16))
 :qid |DiemSystemcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_78815 v@@42 i@@65) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v@@42) i@@65) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@65)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_88201| v@@42) j@@16) e@@16)))
 :qid |DiemSystemcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystemcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_88201 v@@42 e@@16))
)))
(assert (forall ((v@@43 T@Vec_88240) (e@@17 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@67 (IndexOfVec_88240 v@@43 e@@17)))
(ite  (not (exists ((i@@68 Int) ) (!  (and (InRangeVec_78614 v@@43 i@@68) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v@@43) i@@68) e@@17))
 :qid |DiemSystemcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@67 (- 0 1))  (and (and (InRangeVec_78614 v@@43 i@@67) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v@@43) i@@67) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@67)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_88240| v@@43) j@@17) e@@17)))
 :qid |DiemSystemcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystemcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_88240 v@@43 e@@17))
)))
(assert (forall ((v@@44 T@Vec_89538) (e@@18 |T@#0|) ) (! (let ((i@@69 (IndexOfVec_89538 v@@44 e@@18)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_77810 v@@44 i@@70) (= (|Select__T@[Int]#0_| (|v#Vec_89538| v@@44) i@@70) e@@18))
 :qid |DiemSystemcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_77810 v@@44 i@@69) (= (|Select__T@[Int]#0_| (|v#Vec_89538| v@@44) i@@69) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@69)) (not (= (|Select__T@[Int]#0_| (|v#Vec_89538| v@@44) j@@18) e@@18)))
 :qid |DiemSystemcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystemcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_89538 v@@44 e@@18))
)))
(assert (forall ((|l#0| Bool) (i@@71 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@71) |l#0|)
 :qid |DiemSystemcvc5bpl.275:54|
 :skolemid |504|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@71))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_87682|) (|l#1| |T@[$1_Event_EventHandle]Multiset_87682|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| |l#1| handle@@0))))
(Multiset_87682 (|lambda#30| (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| |l#0@@0| handle@@0)) (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemSystemcvc5bpl.2774:13|
 :skolemid |505|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@72 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@72) (ite  (and (>= i@@72 |l#0@@1|) (< i@@72 |l#1@@0|)) (ite (< i@@72 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@72) (|Select__T@[Int]#0_| |l#4| (- i@@72 |l#5|))) |l#6|))
 :qid |DiemSystemcvc5bpl.73:19|
 :skolemid |506|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@72))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@73 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@73) (ite  (and (<= |l#0@@2| i@@73) (< i@@73 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@73) |l#4@@0|)) |l#5@@0|))
 :qid |DiemSystemcvc5bpl.82:30|
 :skolemid |507|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@73))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@19) (ite  (and (>= j@@19 |l#0@@3|) (< j@@19 |l#1@@2|)) (ite (< j@@19 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@19) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@19 |l#5@@1|))) |l#6@@0|))
 :qid |DiemSystemcvc5bpl.63:20|
 :skolemid |508|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@19))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@74 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@74) (ite  (and (>= i@@74 |l#0@@4|) (< i@@74 |l#1@@3|)) (ite (< i@@74 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@74) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@74 |l#5@@2|))) |l#6@@1|))
 :qid |DiemSystemcvc5bpl.73:19|
 :skolemid |509|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@74))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@75 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@75) (ite  (and (<= |l#0@@5| i@@75) (< i@@75 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@75) |l#4@@3|)) |l#5@@3|))
 :qid |DiemSystemcvc5bpl.82:30|
 :skolemid |510|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@75))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@20) (ite  (and (>= j@@20 |l#0@@6|) (< j@@20 |l#1@@5|)) (ite (< j@@20 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@20) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@20 |l#5@@4|))) |l#6@@2|))
 :qid |DiemSystemcvc5bpl.63:20|
 :skolemid |511|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@20))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@76 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@76) (ite  (and (>= i@@76 |l#0@@7|) (< i@@76 |l#1@@6|)) (ite (< i@@76 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@76) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@76 |l#5@@5|))) |l#6@@3|))
 :qid |DiemSystemcvc5bpl.73:19|
 :skolemid |512|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@76))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@77 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@77) (ite  (and (<= |l#0@@8| i@@77) (< i@@77 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@77) |l#4@@6|)) |l#5@@6|))
 :qid |DiemSystemcvc5bpl.82:30|
 :skolemid |513|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@77))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@21) (ite  (and (>= j@@21 |l#0@@9|) (< j@@21 |l#1@@8|)) (ite (< j@@21 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@21) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@21 |l#5@@7|))) |l#6@@4|))
 :qid |DiemSystemcvc5bpl.63:20|
 :skolemid |514|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@21))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@78 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@78) (ite  (and (>= i@@78 |l#0@@10|) (< i@@78 |l#1@@9|)) (ite (< i@@78 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@78) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@78 |l#5@@8|))) |l#6@@5|))
 :qid |DiemSystemcvc5bpl.73:19|
 :skolemid |515|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@78))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@79 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@79) (ite  (and (<= |l#0@@11| i@@79) (< i@@79 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@79) |l#4@@9|)) |l#5@@9|))
 :qid |DiemSystemcvc5bpl.82:30|
 :skolemid |516|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@79))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@22 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@22) (ite  (and (>= j@@22 |l#0@@12|) (< j@@22 |l#1@@11|)) (ite (< j@@22 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@22) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@22 |l#5@@10|))) |l#6@@6|))
 :qid |DiemSystemcvc5bpl.63:20|
 :skolemid |517|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@22))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@80 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@80) (ite  (and (>= i@@80 |l#0@@13|) (< i@@80 |l#1@@12|)) (ite (< i@@80 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@11| i@@80) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@11| (- i@@80 |l#5@@11|))) |l#6@@7|))
 :qid |DiemSystemcvc5bpl.73:19|
 :skolemid |518|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@80))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@81 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@81) (ite  (and (<= |l#0@@14| i@@81) (< i@@81 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@12| (- (- |l#3@@12| i@@81) |l#4@@12|)) |l#5@@12|))
 :qid |DiemSystemcvc5bpl.82:30|
 :skolemid |519|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@81))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@23) (ite  (and (>= j@@23 |l#0@@15|) (< j@@23 |l#1@@14|)) (ite (< j@@23 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@13| j@@23) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@13| (+ j@@23 |l#5@@13|))) |l#6@@8|))
 :qid |DiemSystemcvc5bpl.63:20|
 :skolemid |520|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@23))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@82 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@82) (ite  (and (>= i@@82 |l#0@@16|) (< i@@82 |l#1@@15|)) (ite (< i@@82 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@14| i@@82) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@14| (- i@@82 |l#5@@14|))) |l#6@@9|))
 :qid |DiemSystemcvc5bpl.73:19|
 :skolemid |521|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@82))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@83 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@83) (ite  (and (<= |l#0@@17| i@@83) (< i@@83 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@15| (- (- |l#3@@15| i@@83) |l#4@@15|)) |l#5@@15|))
 :qid |DiemSystemcvc5bpl.82:30|
 :skolemid |522|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@83))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@24) (ite  (and (>= j@@24 |l#0@@18|) (< j@@24 |l#1@@17|)) (ite (< j@@24 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@16| j@@24) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@16| (+ j@@24 |l#5@@16|))) |l#6@@10|))
 :qid |DiemSystemcvc5bpl.63:20|
 :skolemid |523|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@24))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@17| Int) (|l#6@@11| T@$1_ValidatorConfig_Config) (i@@84 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@84) (ite  (and (>= i@@84 |l#0@@19|) (< i@@84 |l#1@@18|)) (ite (< i@@84 |l#2@@17|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@17| i@@84) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@17| (- i@@84 |l#5@@17|))) |l#6@@11|))
 :qid |DiemSystemcvc5bpl.73:19|
 :skolemid |524|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@84))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@$1_ValidatorConfig_Config) (i@@85 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@85) (ite  (and (<= |l#0@@20| i@@85) (< i@@85 |l#1@@19|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@18| (- (- |l#3@@18| i@@85) |l#4@@18|)) |l#5@@18|))
 :qid |DiemSystemcvc5bpl.82:30|
 :skolemid |525|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@85))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@19| Int) (|l#6@@12| T@$1_ValidatorConfig_Config) (j@@25 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@25) (ite  (and (>= j@@25 |l#0@@21|) (< j@@25 |l#1@@20|)) (ite (< j@@25 |l#2@@19|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@19| j@@25) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@19| (+ j@@25 |l#5@@19|))) |l#6@@12|))
 :qid |DiemSystemcvc5bpl.63:20|
 :skolemid |526|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@25))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Vec_28829|) (|l#4@@20| |T@[Int]Vec_28829|) (|l#5@@20| Int) (|l#6@@13| T@Vec_28829) (i@@86 Int) ) (! (= (|Select__T@[Int]Vec_28829_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@86) (ite  (and (>= i@@86 |l#0@@22|) (< i@@86 |l#1@@21|)) (ite (< i@@86 |l#2@@20|) (|Select__T@[Int]Vec_28829_| |l#3@@20| i@@86) (|Select__T@[Int]Vec_28829_| |l#4@@20| (- i@@86 |l#5@@20|))) |l#6@@13|))
 :qid |DiemSystemcvc5bpl.73:19|
 :skolemid |527|
 :pattern ( (|Select__T@[Int]Vec_28829_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@86))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Vec_28829|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@Vec_28829) (i@@87 Int) ) (! (= (|Select__T@[Int]Vec_28829_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@87) (ite  (and (<= |l#0@@23| i@@87) (< i@@87 |l#1@@22|)) (|Select__T@[Int]Vec_28829_| |l#2@@21| (- (- |l#3@@21| i@@87) |l#4@@21|)) |l#5@@21|))
 :qid |DiemSystemcvc5bpl.82:30|
 :skolemid |528|
 :pattern ( (|Select__T@[Int]Vec_28829_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@87))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Vec_28829|) (|l#4@@22| |T@[Int]Vec_28829|) (|l#5@@22| Int) (|l#6@@14| T@Vec_28829) (j@@26 Int) ) (! (= (|Select__T@[Int]Vec_28829_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@26) (ite  (and (>= j@@26 |l#0@@24|) (< j@@26 |l#1@@23|)) (ite (< j@@26 |l#2@@22|) (|Select__T@[Int]Vec_28829_| |l#3@@22| j@@26) (|Select__T@[Int]Vec_28829_| |l#4@@22| (+ j@@26 |l#5@@22|))) |l#6@@14|))
 :qid |DiemSystemcvc5bpl.63:20|
 :skolemid |529|
 :pattern ( (|Select__T@[Int]Vec_28829_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@26))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]Int|) (|l#4@@23| |T@[Int]Int|) (|l#5@@23| Int) (|l#6@@15| Int) (i@@88 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@88) (ite  (and (>= i@@88 |l#0@@25|) (< i@@88 |l#1@@24|)) (ite (< i@@88 |l#2@@23|) (|Select__T@[Int]Int_| |l#3@@23| i@@88) (|Select__T@[Int]Int_| |l#4@@23| (- i@@88 |l#5@@23|))) |l#6@@15|))
 :qid |DiemSystemcvc5bpl.73:19|
 :skolemid |530|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@88))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]Int|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| Int) (i@@89 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@89) (ite  (and (<= |l#0@@26| i@@89) (< i@@89 |l#1@@25|)) (|Select__T@[Int]Int_| |l#2@@24| (- (- |l#3@@24| i@@89) |l#4@@24|)) |l#5@@24|))
 :qid |DiemSystemcvc5bpl.82:30|
 :skolemid |531|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@89))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]Int|) (|l#4@@25| |T@[Int]Int|) (|l#5@@25| Int) (|l#6@@16| Int) (j@@27 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@27) (ite  (and (>= j@@27 |l#0@@27|) (< j@@27 |l#1@@26|)) (ite (< j@@27 |l#2@@25|) (|Select__T@[Int]Int_| |l#3@@25| j@@27) (|Select__T@[Int]Int_| |l#4@@25| (+ j@@27 |l#5@@25|))) |l#6@@16|))
 :qid |DiemSystemcvc5bpl.63:20|
 :skolemid |532|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@27))
)))
(assert (forall ((|l#0@@28| |T@[$EventRep]Int|) (|l#1@@27| |T@[$EventRep]Int|) (v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@45) (- (|Select__T@[$EventRep]Int_| |l#0@@28| v@@45) (|Select__T@[$EventRep]Int_| |l#1@@27| v@@45)))
 :qid |DiemSystemcvc5bpl.154:29|
 :skolemid |533|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@45))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@26| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@26| Int) (|l#4@@26| T@$1_DiemSystem_ValidatorInfo) (k Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@26| |l#3@@26| |l#4@@26|) k) (ite  (and (<= |l#0@@29| k) (< k |l#1@@28|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@26| (+ |l#3@@26| k)) |l#4@@26|))
 :qid |DiemSystemcvc5bpl.90:14|
 :skolemid |534|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@26| |l#3@@26| |l#4@@26|) k))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12788)
(declare-fun $t14@1 () T@$Mutation_124574)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@1 () T@$Mutation_12788)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_124574)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_124079)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_125534)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_125607)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_124079)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $t25 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t9 () Int)
(declare-fun $t18@0 () Bool)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t11@0 () Int)
(declare-fun $t20 () Int)
(declare-fun $t17@0 () Bool)
(declare-fun $t15@0 () Int)
(declare-fun $t23 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| () T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $abort_code@1 () Int)
(declare-fun $t14 () T@$Mutation_124574)
(declare-fun $t14@0 () T@$Mutation_124574)
(declare-fun MapConstVec_12393 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_12393 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_124574)
(declare-fun $t24 () T@$Mutation_12788)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 294835) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12788 (|l#$Mutation_124574| $t14@1) (let ((l (|l#Vec_28829| (|p#$Mutation_124574| $t14@1))))
(Vec_28829 (|Store__T@[Int]Int_| (|v#Vec_28829| (|p#$Mutation_124574| $t14@1)) l 0) (+ l 1))) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_124574| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_12788 (|l#$Mutation_12788| $t24@0) (|p#$Mutation_12788| $t24@0) _$t2)) (= $t14@2 ($Mutation_124574 (|l#$Mutation_124574| $t14@1) (|p#$Mutation_124574| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12788| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_124079 (|Store__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_124574| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_124574| $t14@2)) (|v#$Mutation_124574| $t14@2)))))) (and (=> (= (ControlFlow 0 211858) (- 0 295465)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 211858) (- 0 295498)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 211858) (- 0 295508)) (not (not (= (|$addr#$signer| _$t0) 0)))) (=> (not (not (= (|$addr#$signer| _$t0) 0))) (and (=> (= (ControlFlow 0 211858) (- 0 295522)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 211858) (- 0 295546)) (= $t25 _$t2)))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 211916) 211858)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 211700) 211858)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 211696) (- 0 295590)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 211696) (- 0 295627)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 211912) 211696))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 211896) 211916) anon25_Then_correct) (=> (= (ControlFlow 0 211896) 211912) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 211580) 211696))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 211564) 211700) anon26_Then_correct) (=> (= (ControlFlow 0 211564) 211580) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 211528) 211564)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 211534) 211528)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_124574| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_124574| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 211482) 211896) anon24_Then_correct) (=> (= (ControlFlow 0 211482) 211534) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 211930) 211696))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 211982) 211930) anon23_Then_correct) (=> (= (ControlFlow 0 211982) 211482) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 211980) 211982)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_124574 ($Global 173345816) (Vec_28829 (MapConstVec_12393 DefaultVecElem_12393) 0) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 211436) 211930) anon23_Then_correct) (=> (= (ControlFlow 0 211436) 211482) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 211414) (- 0 295133)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 211414) 211980) anon22_Then_correct) (=> (= (ControlFlow 0 211414) 211436) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 212012) 211696))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= (|$addr#$signer| _$t0) 0)))) (and (=> (= (ControlFlow 0 211394) 212012) anon21_Then_correct) (=> (= (ControlFlow 0 211394) 211414) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 212038) 211696))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemSystemcvc5bpl.3984:20|
 :skolemid |137|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 211372) 212038) anon20_Then_correct) (=> (= (ControlFlow 0 211372) 211394) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_87682| stream@@0) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@0) v@@46) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 211260) 211372)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_28829| (|p#$Mutation_124574| $t7)) 0) (= (|l#Vec_28829| (|p#$Mutation_124574| $t14)) 0)) (and (= (|l#Vec_28829| (|p#$Mutation_12788| $t24)) 0) (= (ControlFlow 0 211270) 211260))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 294835) 211270) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_125988)
(declare-fun $t2 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t3 () Bool)
(declare-fun $t1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_125988)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_125988)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_125988)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Roles_RoleId'@0| () T@$1_Roles_RoleId)
(declare-fun $t5 () Int)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 295887) (let ((L2_correct  (and (=> (= (ControlFlow 0 212948) (- 0 296633)) (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 212948) (- 0 296664)) (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t2))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2))))))))
(let ((anon13_Then_correct  (=> $t6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 212836) 212948))) L2_correct))))
(let ((anon12_Then_correct  (=> $t3 (=> (and (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 212978) 212948))) L2_correct))))
(let ((anon11_Then_correct  (=> $t1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 213004) 212948))) L2_correct))))
(let ((anon9_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0)) (and (=> (= (ControlFlow 0 212794) (- 0 296279)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 212794) (- 0 296289)) (not (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 173345816))) (and (=> (= (ControlFlow 0 212794) (- 0 296303)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 212794) (- 0 296314)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 212794) (- 0 296324)) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0)) (and (=> (= (ControlFlow 0 212794) (- 0 296333)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0) (and (=> (= (ControlFlow 0 212794) (- 0 296348)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@0)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@0)) 1))))
 :qid |DiemSystemcvc5bpl.4577:15|
 :skolemid |141|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@1)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@1)) 1))))
 :qid |DiemSystemcvc5bpl.4577:15|
 :skolemid |141|
)) (and (=> (= (ControlFlow 0 212794) (- 0 296395)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@2)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@2)) 3))))
 :qid |DiemSystemcvc5bpl.4581:15|
 :skolemid |142|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@3)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@3)) 3))))
 :qid |DiemSystemcvc5bpl.4581:15|
 :skolemid |142|
)) (and (=> (= (ControlFlow 0 212794) (- 0 296442)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@4)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@4)) 4))))
 :qid |DiemSystemcvc5bpl.4585:15|
 :skolemid |143|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@5)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@5)) 4))))
 :qid |DiemSystemcvc5bpl.4585:15|
 :skolemid |143|
)) (and (=> (= (ControlFlow 0 212794) (- 0 296489)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@6)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@6)) 2))))
 :qid |DiemSystemcvc5bpl.4589:15|
 :skolemid |144|
))) (=> (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@7)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@7)) 2))))
 :qid |DiemSystemcvc5bpl.4589:15|
 :skolemid |144|
)) (and (=> (= (ControlFlow 0 212794) (- 0 296536)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@8)) 5))))
 :qid |DiemSystemcvc5bpl.4593:15|
 :skolemid |145|
))) (=> (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@9)) 5))))
 :qid |DiemSystemcvc5bpl.4593:15|
 :skolemid |145|
)) (=> (= (ControlFlow 0 212794) (- 0 296583)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2) addr@@10)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@10)) 6))))
 :qid |DiemSystemcvc5bpl.4597:15|
 :skolemid |146|
))))))))))))))))))))))))))))
(let ((anon14_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_Roles_RoleId_$memory@1 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) false) (|contents#$Memory_125988| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 212388) 212794))) anon9_correct)))
(let ((anon14_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_Roles_RoleId_$memory@0 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) |$temp_0'$1_Roles_RoleId'@0|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 212808) 212794))) anon9_correct)))
(let ((anon13_Else_correct  (=> (not $t6) (and (=> (= (ControlFlow 0 212374) 212808) anon14_Then_correct) (=> (= (ControlFlow 0 212374) 212388) anon14_Else_correct)))))
(let ((anon12_Else_correct  (=> (not $t3) (=> (and (|$IsValid'u64'| 0) (= $t5 (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 212368) (- 0 296129)) (=> (= 0 0) (= $t5 173345816))) (=> (=> (= 0 0) (= $t5 173345816)) (and (=> (= (ControlFlow 0 212368) (- 0 296145)) (=> (= 0 1) (= $t5 186537453))) (=> (=> (= 0 1) (= $t5 186537453)) (and (=> (= (ControlFlow 0 212368) (- 0 296161)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0)) (=> (= $t6 (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 212368) 212836) anon13_Then_correct) (=> (= (ControlFlow 0 212368) 212374) anon13_Else_correct)))))))))))))
(let ((anon11_Else_correct  (=> (and (not $t1) (= $t3  (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (and (=> (= (ControlFlow 0 212290) 212978) anon12_Then_correct) (=> (= (ControlFlow 0 212290) 212368) anon12_Else_correct)))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |DiemSystemcvc5bpl.4391:20|
 :skolemid |139|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
))) (=> (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |DiemSystemcvc5bpl.4395:20|
 :skolemid |140|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@1))
)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0))) (and (= _$t0@@0 _$t0@@0) (= $t1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 212268) 213004) anon11_Then_correct) (=> (= (ControlFlow 0 212268) 212290) anon11_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_87682| stream@@1) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@1) v@@47) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 212160) 212268)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 295887) 212160) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_125988)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_125988)
(declare-fun $t11@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t9@@0 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 296742) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 213574) (- 0 297177)) (let (($range_0 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@11))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@1@@0) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@1@@0) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))) i1)))) 3))))
 :qid |DiemSystemcvc5bpl.4783:146|
 :skolemid |149|
)))) (=> (let (($range_0@@0 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((i1@@0 $i_1@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@1@@0) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14))))) i1@@0))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@1@@0) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14))))) i1@@0)))) 3))))
 :qid |DiemSystemcvc5bpl.4783:146|
 :skolemid |149|
))) (and (=> (= (ControlFlow 0 213574) (- 0 297223)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 213574) (- 0 297234)) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 213574) (- 0 297243)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1))) _$t1@@0)))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 213400) (- 0 297147)) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 213400) (- 0 297153)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= 6 $t10@0)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t10@0 $abort_code@1@@0) (= (ControlFlow 0 213588) 213400))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 213640) 213588) anon12_Then_correct@@0) (=> (= (ControlFlow 0 213640) 213574) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 213638) 213640)) anon11_Then$1_correct)))
(let ((anon11_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (=> (and (and (= $1_Roles_RoleId_$memory@0@@0 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) $t11@0@@0))) (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 213483) 213588) anon12_Then_correct@@0) (=> (= (ControlFlow 0 213483) 213574) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0@@0 ($1_Roles_RoleId _$t1@@0))) (and (=> (= (ControlFlow 0 213461) (- 0 296986)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1)) (=> (let (($range_0@@1 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@15))))))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i1@@1 $i_1@@1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16))))) i1@@1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16))))) i1@@1)))) 3))))
 :qid |DiemSystemcvc5bpl.4762:151|
 :skolemid |148|
))) (and (=> (= (ControlFlow 0 213461) 213638) anon11_Then_correct@@0) (=> (= (ControlFlow 0 213461) 213483) anon11_Else_correct@@0))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9@@0 $t9@@0)) (and (= $t10@0 $t9@@0) (= (ControlFlow 0 213368) 213400))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9@@0) (= $t9@@0 6)) (and (= $t9@@0 $t9@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 213352) 213461) anon10_Then_correct) (=> (= (ControlFlow 0 213352) 213368) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 213316) 213352)) anon0$2_correct)))
(let ((anon0$1_correct@@1  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) (=> (and (and (|$IsValid'u64'| _$t1@@0) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@2)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@2))
 :qid |DiemSystemcvc5bpl.4658:20|
 :skolemid |147|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@2))
))) (and (= $t4 (|$addr#$signer| _$t0@@1)) (=> (= _$t1@@0 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1@@0 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1))) (and (= _$t0@@1 _$t0@@1) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t5@@0) (= $t5@@0 (|$addr#$signer| _$t0@@1))) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t5@@0)) (= (ControlFlow 0 213322) 213316)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_87682| stream@@2) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@2) v@@48) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 213154) 213322)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 296742) 213154) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@2 () T@$signer)
(declare-fun $t2@@0 () Int)
(declare-fun _$t1@@1 () T@$signer)
(declare-fun $t4@@0 () Int)
(declare-fun $t10@@0 () Bool)
(declare-fun $t7@@0 () Bool)
(declare-fun $t6@@0 () Int)
(declare-fun $t5@@1 () Bool)
(declare-fun $t3@@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2@@0 () T@$Memory_125988)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@1 () T@$Memory_125988)
(declare-fun $1_Roles_RoleId_$memory@0@@1 () T@$Memory_125988)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@0| () T@$1_Roles_RoleId)
(declare-fun $t9@@1 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 297263) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 214773) (- 0 298236)) (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 214773) (- 0 298302)) (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (not (= (|$addr#$signer| _$t0@@2) 186537453)) (= 2 $t4@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)) (= 6 $t4@@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0))))))))
(let ((anon16_Then_correct  (=> $t10@@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)) (= 6 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 214561) 214773))) L2_correct@@0))))
(let ((anon15_Then_correct  (=> (and (and $t7@@0 (or (or (or (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t6@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0)))) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 214865) 214773))) L2_correct@@0)))
(let ((anon14_Then_correct@@0  (=> $t5@@1 (=> (and (and (not (= (|$addr#$signer| _$t0@@2) 186537453)) (= 2 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 214895) 214773))) L2_correct@@0))))
(let ((anon13_Then_correct@@0  (=> $t3@@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 214921) 214773))) L2_correct@@0))))
(let ((anon11_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1)) (and (=> (= (ControlFlow 0 214519) (- 0 297838)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 214519) (- 0 297848)) (not (not (= (|$addr#$signer| _$t0@@2) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@2) 186537453))) (and (=> (= (ControlFlow 0 214519) (- 0 297862)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@0))) (and (=> (= (ControlFlow 0 214519) (- 0 297874)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (and (=> (= (ControlFlow 0 214519) (- 0 297892)) (not (not (= (|$addr#$signer| _$t1@@1) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@1) 173345816))) (and (=> (= (ControlFlow 0 214519) (- 0 297906)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 214519) (- 0 297917)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 214519) (- 0 297927)) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2)) (and (=> (= (ControlFlow 0 214519) (- 0 297936)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1) (and (=> (= (ControlFlow 0 214519) (- 0 297951)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@17)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@17)) 0))))
 :qid |DiemSystemcvc5bpl.5111:15|
 :skolemid |152|
))) (=> (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@18)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@18)) 0))))
 :qid |DiemSystemcvc5bpl.5111:15|
 :skolemid |152|
)) (and (=> (= (ControlFlow 0 214519) (- 0 297998)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@19)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@19)) 3))))
 :qid |DiemSystemcvc5bpl.5115:15|
 :skolemid |153|
))) (=> (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@20)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@20)) 3))))
 :qid |DiemSystemcvc5bpl.5115:15|
 :skolemid |153|
)) (and (=> (= (ControlFlow 0 214519) (- 0 298045)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@21)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@21)) 4))))
 :qid |DiemSystemcvc5bpl.5119:15|
 :skolemid |154|
))) (=> (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@22)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@22)) 4))))
 :qid |DiemSystemcvc5bpl.5119:15|
 :skolemid |154|
)) (and (=> (= (ControlFlow 0 214519) (- 0 298092)) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@23)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@23)) 2))))
 :qid |DiemSystemcvc5bpl.5123:15|
 :skolemid |155|
))) (=> (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@24)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@24)) 2))))
 :qid |DiemSystemcvc5bpl.5123:15|
 :skolemid |155|
)) (and (=> (= (ControlFlow 0 214519) (- 0 298139)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@25)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@25)) 5))))
 :qid |DiemSystemcvc5bpl.5127:15|
 :skolemid |156|
))) (=> (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@26)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@26)) 5))))
 :qid |DiemSystemcvc5bpl.5127:15|
 :skolemid |156|
)) (=> (= (ControlFlow 0 214519) (- 0 298186)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@0) addr@@27)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@27)) 6))))
 :qid |DiemSystemcvc5bpl.5131:15|
 :skolemid |157|
))))))))))))))))))))))))))))))))))
(let ((anon17_Else_correct  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_Roles_RoleId_$memory@1@@1 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) false) (|contents#$Memory_125988| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@1@@1) (= (ControlFlow 0 214069) 214519))) anon11_correct)))
(let ((anon17_Then_correct  (=> (and (and |$temp_0'bool'@0@@0| (= $1_Roles_RoleId_$memory@0@@1 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) |$temp_0'$1_Roles_RoleId'@0@@0|)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@0@@1) (= (ControlFlow 0 214533) 214519))) anon11_correct)))
(let ((anon16_Else_correct  (=> (not $t10@@0) (and (=> (= (ControlFlow 0 214055) 214533) anon17_Then_correct) (=> (= (ControlFlow 0 214055) 214069) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> (not $t7@@0) (=> (and (|$IsValid'u64'| 1) (= $t9@@1 (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 214049) (- 0 297688)) (=> (= 1 0) (= $t9@@1 173345816))) (=> (=> (= 1 0) (= $t9@@1 173345816)) (and (=> (= (ControlFlow 0 214049) (- 0 297704)) (=> (= 1 1) (= $t9@@1 186537453))) (=> (=> (= 1 1) (= $t9@@1 186537453)) (and (=> (= (ControlFlow 0 214049) (- 0 297720)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2)) (=> (= $t10@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 214049) 214561) anon16_Then_correct) (=> (= (ControlFlow 0 214049) 214055) anon16_Else_correct)))))))))))))
(let ((anon14_Else_correct@@0  (=> (not $t5@@1) (=> (and (= $t6@@0 (|$addr#$signer| _$t1@@1)) (= $t7@@0  (or (or (or (not (= (|$addr#$signer| _$t1@@1) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t6@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))))) (and (=> (= (ControlFlow 0 213971) 214865) anon15_Then_correct) (=> (= (ControlFlow 0 213971) 214049) anon15_Else_correct))))))
(let ((anon13_Else_correct@@0  (=> (and (not $t3@@0) (= $t5@@1  (not (= (|$addr#$signer| _$t0@@2) 186537453)))) (and (=> (= (ControlFlow 0 213899) 214895) anon14_Then_correct@@0) (=> (= (ControlFlow 0 213899) 213971) anon14_Else_correct@@0)))))
(let ((anon0$1_correct@@2  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@2))) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1@@1)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@3))
 :qid |DiemSystemcvc5bpl.4868:20|
 :skolemid |150|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3))
))) (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |DiemSystemcvc5bpl.4872:20|
 :skolemid |151|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@4))
)) (= $t2@@0 (|$addr#$signer| _$t1@@1)))) (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2)) (= _$t0@@2 _$t0@@2)) (and (= _$t1@@1 _$t1@@1) (= $t3@@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 213877) 214921) anon13_Then_correct@@0) (=> (= (ControlFlow 0 213877) 213899) anon13_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_87682| stream@@3) 0) (forall ((v@@49 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@3) v@@49) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 213749) 213877)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 297263) 213749) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@1 () Int)
(declare-fun _$t1@@2 () T@$signer)
(declare-fun $t3@@1 () Int)
(declare-fun $t6@@1 () Int)
(declare-fun $t9@@2 () Bool)
(declare-fun $t5@@2 () Bool)
(declare-fun $t4@@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@1 () T@$Memory_125988)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@2 () T@$Memory_125988)
(declare-fun $1_Roles_RoleId_$memory@0@@2 () T@$Memory_125988)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@1| () T@$1_Roles_RoleId)
(declare-fun $t8 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@2 () |T@[Int]Bool|)
(declare-fun _$t0@@3 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 298439) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 215968) (- 0 299210)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (=> (= (ControlFlow 0 215968) (- 0 299264)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $t6@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@1)) (= 5 $t6@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@1)) 5)) (= 3 $t6@@1))))))))
(let ((anon10_Then_correct@@0  (=> $t9@@2 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@1)) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 215800) 215968))) L2_correct@@1))))
(let ((anon9_Then_correct  (=> (and (and $t5@@2 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@1)) 5)) (= 3 $t6@@1)))) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 216020) 215968))) L2_correct@@1)))
(let ((anon7_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6)) (and (=> (= (ControlFlow 0 215758) (- 0 298830)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 215758) (- 0 298842)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 215758) (- 0 298860)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 215758) (- 0 298871)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@1))) (and (=> (= (ControlFlow 0 215758) (- 0 298883)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (and (=> (= (ControlFlow 0 215758) (- 0 298901)) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2)) (and (=> (= (ControlFlow 0 215758) (- 0 298910)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6) (and (=> (= (ControlFlow 0 215758) (- 0 298925)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@28)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@28)) 0))))
 :qid |DiemSystemcvc5bpl.5359:15|
 :skolemid |159|
))) (=> (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@29)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@29)) 0))))
 :qid |DiemSystemcvc5bpl.5359:15|
 :skolemid |159|
)) (and (=> (= (ControlFlow 0 215758) (- 0 298972)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@30)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@30)) 1))))
 :qid |DiemSystemcvc5bpl.5363:15|
 :skolemid |160|
))) (=> (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@31)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@31)) 1))))
 :qid |DiemSystemcvc5bpl.5363:15|
 :skolemid |160|
)) (and (=> (= (ControlFlow 0 215758) (- 0 299019)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@32)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@32)) 3))))
 :qid |DiemSystemcvc5bpl.5367:15|
 :skolemid |161|
))) (=> (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@33)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@33)) 3))))
 :qid |DiemSystemcvc5bpl.5367:15|
 :skolemid |161|
)) (and (=> (= (ControlFlow 0 215758) (- 0 299066)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@34)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@34)) 4))))
 :qid |DiemSystemcvc5bpl.5371:15|
 :skolemid |162|
))) (=> (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@35)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@35)) 4))))
 :qid |DiemSystemcvc5bpl.5371:15|
 :skolemid |162|
)) (and (=> (= (ControlFlow 0 215758) (- 0 299113)) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@36)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@36)) 2))))
 :qid |DiemSystemcvc5bpl.5375:15|
 :skolemid |163|
))) (=> (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@37)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@37)) 2))))
 :qid |DiemSystemcvc5bpl.5375:15|
 :skolemid |163|
)) (=> (= (ControlFlow 0 215758) (- 0 299160)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@1) addr@@38)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@38)) 5))))
 :qid |DiemSystemcvc5bpl.5379:15|
 :skolemid |164|
))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@1  (=> (and (and (not |$temp_0'bool'@0@@1|) (= $1_Roles_RoleId_$memory@1@@2 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) false) (|contents#$Memory_125988| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@1@@2) (= (ControlFlow 0 215326) 215758))) anon7_correct)))
(let ((anon11_Then_correct@@1  (=> (and (and |$temp_0'bool'@0@@1| (= $1_Roles_RoleId_$memory@0@@2 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) |$temp_0'$1_Roles_RoleId'@0@@1|)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@0@@2) (= (ControlFlow 0 215772) 215758))) anon7_correct)))
(let ((anon10_Else_correct@@0  (=> (not $t9@@2) (and (=> (= (ControlFlow 0 215312) 215772) anon11_Then_correct@@1) (=> (= (ControlFlow 0 215312) 215326) anon11_Else_correct@@1)))))
(let ((anon9_Else_correct  (=> (not $t5@@2) (=> (and (|$IsValid'u64'| 6) (= $t8 (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 215306) (- 0 298680)) (=> (= 6 0) (= $t8 173345816))) (=> (=> (= 6 0) (= $t8 173345816)) (and (=> (= (ControlFlow 0 215306) (- 0 298696)) (=> (= 6 1) (= $t8 186537453))) (=> (=> (= 6 1) (= $t8 186537453)) (and (=> (= (ControlFlow 0 215306) (- 0 298712)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2)) (=> (= $t9@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 215306) 215800) anon10_Then_correct@@0) (=> (= (ControlFlow 0 215306) 215312) anon10_Else_correct@@0)))))))))))))
(let ((anon0$1_correct@@3  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (|$IsValid'address'| (|$addr#$signer| _$t1@@2))) (=> (and (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |DiemSystemcvc5bpl.5190:20|
 :skolemid |158|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@5))
)) (= $t2@@1 (|$addr#$signer| _$t0@@3))) (and (= $t3@@1 (|$addr#$signer| _$t0@@3)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2)))) (and (and (= _$t0@@3 _$t0@@3) (= _$t1@@2 _$t1@@2)) (and (= $t4@@1 (|$addr#$signer| _$t0@@3)) (= $t5@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@1)) 5))))))) (and (=> (= (ControlFlow 0 215228) 216020) anon9_Then_correct) (=> (= (ControlFlow 0 215228) 215306) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_87682| stream@@4) 0) (forall ((v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@4) v@@50) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 215098) 215228)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 298439) 215098) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@2 () Int)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun _$t1@@3 () T@$signer)
(declare-fun $t3@@2 () Int)
(declare-fun $t6@@2 () Int)
(declare-fun $t9@@3 () Bool)
(declare-fun $t5@@3 () Bool)
(declare-fun $t4@@2 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@2 () T@$Memory_125988)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@3 () T@$Memory_125988)
(declare-fun $1_Roles_RoleId_$memory@0@@3 () T@$Memory_125988)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@2| () T@$1_Roles_RoleId)
(declare-fun $t8@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@3 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 299373) (let ((L2_correct@@2  (and (=> (= (ControlFlow 0 217149) (- 0 300202)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (=> (= (ControlFlow 0 217149) (- 0 300278)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@2)) (= 5 $t6@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2))))))))
(let ((anon10_Then_correct@@1  (=> $t9@@3 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@2)) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 216917) 217149))) L2_correct@@2))))
(let ((anon9_Then_correct@@0  (=> (and (and $t5@@3 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2)))) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 217221) 217149))) L2_correct@@2)))
(let ((anon7_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2)) (and (=> (= (ControlFlow 0 216875) (- 0 299794)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@2))) (and (=> (= (ControlFlow 0 216875) (- 0 299806)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (and (=> (= (ControlFlow 0 216875) (- 0 299824)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 216875) (- 0 299838)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 216875) (- 0 299849)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@2))) (and (=> (= (ControlFlow 0 216875) (- 0 299861)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (and (=> (= (ControlFlow 0 216875) (- 0 299879)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 216875) (- 0 299893)) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3)) (and (=> (= (ControlFlow 0 216875) (- 0 299902)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2) (and (=> (= (ControlFlow 0 216875) (- 0 299917)) (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@39)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@39)) 0))))
 :qid |DiemSystemcvc5bpl.5617:15|
 :skolemid |166|
))) (=> (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@40)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@40)) 0))))
 :qid |DiemSystemcvc5bpl.5617:15|
 :skolemid |166|
)) (and (=> (= (ControlFlow 0 216875) (- 0 299964)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@41)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@41)) 1))))
 :qid |DiemSystemcvc5bpl.5621:15|
 :skolemid |167|
))) (=> (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@42)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@42)) 1))))
 :qid |DiemSystemcvc5bpl.5621:15|
 :skolemid |167|
)) (and (=> (= (ControlFlow 0 216875) (- 0 300011)) (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@43)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@43)) 3))))
 :qid |DiemSystemcvc5bpl.5625:15|
 :skolemid |168|
))) (=> (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@44)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@44)) 3))))
 :qid |DiemSystemcvc5bpl.5625:15|
 :skolemid |168|
)) (and (=> (= (ControlFlow 0 216875) (- 0 300058)) (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@45)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@45)) 4))))
 :qid |DiemSystemcvc5bpl.5629:15|
 :skolemid |169|
))) (=> (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@46)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@46)) 4))))
 :qid |DiemSystemcvc5bpl.5629:15|
 :skolemid |169|
)) (and (=> (= (ControlFlow 0 216875) (- 0 300105)) (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@47)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@47)) 5))))
 :qid |DiemSystemcvc5bpl.5633:15|
 :skolemid |170|
))) (=> (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@48)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@48)) 5))))
 :qid |DiemSystemcvc5bpl.5633:15|
 :skolemid |170|
)) (=> (= (ControlFlow 0 216875) (- 0 300152)) (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@2) addr@@49)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@49)) 6))))
 :qid |DiemSystemcvc5bpl.5637:15|
 :skolemid |171|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@2  (=> (and (and (not |$temp_0'bool'@0@@2|) (= $1_Roles_RoleId_$memory@1@@3 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) false) (|contents#$Memory_125988| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@1@@3) (= (ControlFlow 0 216415) 216875))) anon7_correct@@0)))
(let ((anon11_Then_correct@@2  (=> (and (and |$temp_0'bool'@0@@2| (= $1_Roles_RoleId_$memory@0@@3 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) |$temp_0'$1_Roles_RoleId'@0@@2|)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@0@@3) (= (ControlFlow 0 216889) 216875))) anon7_correct@@0)))
(let ((anon10_Else_correct@@1  (=> (not $t9@@3) (and (=> (= (ControlFlow 0 216401) 216889) anon11_Then_correct@@2) (=> (= (ControlFlow 0 216401) 216415) anon11_Else_correct@@2)))))
(let ((anon9_Else_correct@@0  (=> (not $t5@@3) (=> (and (|$IsValid'u64'| 2) (= $t8@@0 (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 216395) (- 0 299644)) (=> (= 2 0) (= $t8@@0 173345816))) (=> (=> (= 2 0) (= $t8@@0 173345816)) (and (=> (= (ControlFlow 0 216395) (- 0 299660)) (=> (= 2 1) (= $t8@@0 186537453))) (=> (=> (= 2 1) (= $t8@@0 186537453)) (and (=> (= (ControlFlow 0 216395) (- 0 299676)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3)) (=> (= $t9@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 216395) 216917) anon10_Then_correct@@1) (=> (= (ControlFlow 0 216395) 216401) anon10_Else_correct@@1)))))))))))))
(let ((anon0$1_correct@@4  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@4)) (|$IsValid'address'| (|$addr#$signer| _$t1@@3))) (=> (and (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |DiemSystemcvc5bpl.5438:20|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@6))
)) (= $t2@@2 (|$addr#$signer| _$t0@@4))) (and (= $t3@@2 (|$addr#$signer| _$t0@@4)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3)))) (and (and (= _$t0@@4 _$t0@@4) (= _$t1@@3 _$t1@@3)) (and (= $t4@@2 (|$addr#$signer| _$t0@@4)) (= $t5@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))))))) (and (=> (= (ControlFlow 0 216317) 217221) anon9_Then_correct@@0) (=> (= (ControlFlow 0 216317) 216395) anon9_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_87682| stream@@5) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@5) v@@51) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 216175) 216317)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 299373) 216175) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@3 () Int)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun _$t1@@4 () T@$signer)
(declare-fun $t3@@3 () Int)
(declare-fun $t6@@3 () Int)
(declare-fun $t9@@4 () Bool)
(declare-fun $t5@@4 () Bool)
(declare-fun $t4@@3 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@3 () T@$Memory_125988)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@4 () T@$Memory_125988)
(declare-fun $1_Roles_RoleId_$memory@0@@4 () T@$Memory_125988)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@3| () T@$1_Roles_RoleId)
(declare-fun $t8@@1 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@4 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 300425) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 218358) (- 0 301254)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (=> (= (ControlFlow 0 218358) (- 0 301330)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@3)) (= 5 $t6@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3))))))))
(let ((anon10_Then_correct@@2  (=> $t9@@4 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@3)) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 218126) 218358))) L2_correct@@3))))
(let ((anon9_Then_correct@@1  (=> (and (and $t5@@4 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3)))) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 218430) 218358))) L2_correct@@3)))
(let ((anon7_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5)) (and (=> (= (ControlFlow 0 218084) (- 0 300846)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@3))) (and (=> (= (ControlFlow 0 218084) (- 0 300858)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (and (=> (= (ControlFlow 0 218084) (- 0 300876)) (not (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 186537453))) (and (=> (= (ControlFlow 0 218084) (- 0 300890)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 218084) (- 0 300901)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 218084) (- 0 300913)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (and (=> (= (ControlFlow 0 218084) (- 0 300931)) (not (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 186537453))) (and (=> (= (ControlFlow 0 218084) (- 0 300945)) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4)) (and (=> (= (ControlFlow 0 218084) (- 0 300954)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5) (and (=> (= (ControlFlow 0 218084) (- 0 300969)) (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@50)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@50)) 0))))
 :qid |DiemSystemcvc5bpl.5875:15|
 :skolemid |173|
))) (=> (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@51)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@51)) 0))))
 :qid |DiemSystemcvc5bpl.5875:15|
 :skolemid |173|
)) (and (=> (= (ControlFlow 0 218084) (- 0 301016)) (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@52)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@52)) 1))))
 :qid |DiemSystemcvc5bpl.5879:15|
 :skolemid |174|
))) (=> (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@53)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@53)) 1))))
 :qid |DiemSystemcvc5bpl.5879:15|
 :skolemid |174|
)) (and (=> (= (ControlFlow 0 218084) (- 0 301063)) (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@54)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@54)) 3))))
 :qid |DiemSystemcvc5bpl.5883:15|
 :skolemid |175|
))) (=> (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@55)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@55)) 3))))
 :qid |DiemSystemcvc5bpl.5883:15|
 :skolemid |175|
)) (and (=> (= (ControlFlow 0 218084) (- 0 301110)) (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@56)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@56)) 4))))
 :qid |DiemSystemcvc5bpl.5887:15|
 :skolemid |176|
))) (=> (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@57)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@57)) 4))))
 :qid |DiemSystemcvc5bpl.5887:15|
 :skolemid |176|
)) (and (=> (= (ControlFlow 0 218084) (- 0 301157)) (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@58)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@58)) 2))))
 :qid |DiemSystemcvc5bpl.5891:15|
 :skolemid |177|
))) (=> (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@59)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@59)) 2))))
 :qid |DiemSystemcvc5bpl.5891:15|
 :skolemid |177|
)) (=> (= (ControlFlow 0 218084) (- 0 301204)) (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@3) addr@@60)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@60)) 6))))
 :qid |DiemSystemcvc5bpl.5895:15|
 :skolemid |178|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@3  (=> (and (and (not |$temp_0'bool'@0@@3|) (= $1_Roles_RoleId_$memory@1@@4 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) false) (|contents#$Memory_125988| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@1@@4) (= (ControlFlow 0 217624) 218084))) anon7_correct@@1)))
(let ((anon11_Then_correct@@3  (=> (and (and |$temp_0'bool'@0@@3| (= $1_Roles_RoleId_$memory@0@@4 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) |$temp_0'$1_Roles_RoleId'@0@@3|)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@0@@4) (= (ControlFlow 0 218098) 218084))) anon7_correct@@1)))
(let ((anon10_Else_correct@@2  (=> (not $t9@@4) (and (=> (= (ControlFlow 0 217610) 218098) anon11_Then_correct@@3) (=> (= (ControlFlow 0 217610) 217624) anon11_Else_correct@@3)))))
(let ((anon9_Else_correct@@1  (=> (not $t5@@4) (=> (and (|$IsValid'u64'| 5) (= $t8@@1 (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 217604) (- 0 300696)) (=> (= 5 0) (= $t8@@1 173345816))) (=> (=> (= 5 0) (= $t8@@1 173345816)) (and (=> (= (ControlFlow 0 217604) (- 0 300712)) (=> (= 5 1) (= $t8@@1 186537453))) (=> (=> (= 5 1) (= $t8@@1 186537453)) (and (=> (= (ControlFlow 0 217604) (- 0 300728)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4)) (=> (= $t9@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 217604) 218126) anon10_Then_correct@@2) (=> (= (ControlFlow 0 217604) 217610) anon10_Else_correct@@2)))))))))))))
(let ((anon0$1_correct@@5  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) (|$IsValid'address'| (|$addr#$signer| _$t1@@4))) (=> (and (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |DiemSystemcvc5bpl.5696:20|
 :skolemid |172|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@7))
)) (= $t2@@3 (|$addr#$signer| _$t0@@5))) (and (= $t3@@3 (|$addr#$signer| _$t0@@5)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4)))) (and (and (= _$t0@@5 _$t0@@5) (= _$t1@@4 _$t1@@4)) (and (= $t4@@3 (|$addr#$signer| _$t0@@5)) (= $t5@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))))))) (and (=> (= (ControlFlow 0 217526) 218430) anon9_Then_correct@@1) (=> (= (ControlFlow 0 217526) 217604) anon9_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_87682| stream@@6) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@6) v@@52) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 217384) 217526)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 300425) 217384) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@4 () Int)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun _$t1@@5 () T@$signer)
(declare-fun $t3@@4 () Int)
(declare-fun $t6@@4 () Int)
(declare-fun $t9@@5 () Bool)
(declare-fun $t5@@5 () Bool)
(declare-fun $t4@@4 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@4 () T@$Memory_125988)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@5 () T@$Memory_125988)
(declare-fun $1_Roles_RoleId_$memory@0@@5 () T@$Memory_125988)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@4| () T@$1_Roles_RoleId)
(declare-fun $t8@@2 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@5 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 301477) (let ((L2_correct@@4  (and (=> (= (ControlFlow 0 219579) (- 0 302336)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (=> (= (ControlFlow 0 219579) (- 0 302412)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@4)) (= 5 $t6@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4))))))))
(let ((anon10_Then_correct@@3  (=> $t9@@5 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@4)) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 219347) 219579))) L2_correct@@4))))
(let ((anon9_Then_correct@@2  (=> (and (and $t5@@5 (or (or (or (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4)))) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 219671) 219579))) L2_correct@@4)))
(let ((anon7_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4)) (and (=> (= (ControlFlow 0 219305) (- 0 301928)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@4))) (and (=> (= (ControlFlow 0 219305) (- 0 301940)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (and (=> (= (ControlFlow 0 219305) (- 0 301958)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 219305) (- 0 301972)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 219305) (- 0 301983)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@4))) (and (=> (= (ControlFlow 0 219305) (- 0 301995)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (and (=> (= (ControlFlow 0 219305) (- 0 302013)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 219305) (- 0 302027)) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5)) (and (=> (= (ControlFlow 0 219305) (- 0 302036)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4) (and (=> (= (ControlFlow 0 219305) (- 0 302051)) (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@61)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@61)) 0))))
 :qid |DiemSystemcvc5bpl.6133:15|
 :skolemid |180|
))) (=> (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@62)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@62)) 0))))
 :qid |DiemSystemcvc5bpl.6133:15|
 :skolemid |180|
)) (and (=> (= (ControlFlow 0 219305) (- 0 302098)) (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@63)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@63)) 1))))
 :qid |DiemSystemcvc5bpl.6137:15|
 :skolemid |181|
))) (=> (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@64)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@64)) 1))))
 :qid |DiemSystemcvc5bpl.6137:15|
 :skolemid |181|
)) (and (=> (= (ControlFlow 0 219305) (- 0 302145)) (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@65)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@65)) 3))))
 :qid |DiemSystemcvc5bpl.6141:15|
 :skolemid |182|
))) (=> (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@66)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@66)) 3))))
 :qid |DiemSystemcvc5bpl.6141:15|
 :skolemid |182|
)) (and (=> (= (ControlFlow 0 219305) (- 0 302192)) (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@67)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@67)) 2))))
 :qid |DiemSystemcvc5bpl.6145:15|
 :skolemid |183|
))) (=> (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@68)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@68)) 2))))
 :qid |DiemSystemcvc5bpl.6145:15|
 :skolemid |183|
)) (and (=> (= (ControlFlow 0 219305) (- 0 302239)) (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@69)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@69)) 5))))
 :qid |DiemSystemcvc5bpl.6149:15|
 :skolemid |184|
))) (=> (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@70)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@70)) 5))))
 :qid |DiemSystemcvc5bpl.6149:15|
 :skolemid |184|
)) (=> (= (ControlFlow 0 219305) (- 0 302286)) (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@4) addr@@71)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@71)) 6))))
 :qid |DiemSystemcvc5bpl.6153:15|
 :skolemid |185|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@4|) (= $1_Roles_RoleId_$memory@1@@5 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) false) (|contents#$Memory_125988| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@1@@5) (= (ControlFlow 0 218845) 219305))) anon7_correct@@2)))
(let ((anon11_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@4| (= $1_Roles_RoleId_$memory@0@@5 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) |$temp_0'$1_Roles_RoleId'@0@@4|)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@0@@5) (= (ControlFlow 0 219319) 219305))) anon7_correct@@2)))
(let ((anon10_Else_correct@@3  (=> (not $t9@@5) (and (=> (= (ControlFlow 0 218831) 219319) anon11_Then_correct@@4) (=> (= (ControlFlow 0 218831) 218845) anon11_Else_correct@@4)))))
(let ((anon9_Else_correct@@2  (=> (not $t5@@5) (=> (and (|$IsValid'u64'| 4) (= $t8@@2 (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 218825) (- 0 301778)) (=> (= 4 0) (= $t8@@2 173345816))) (=> (=> (= 4 0) (= $t8@@2 173345816)) (and (=> (= (ControlFlow 0 218825) (- 0 301794)) (=> (= 4 1) (= $t8@@2 186537453))) (=> (=> (= 4 1) (= $t8@@2 186537453)) (and (=> (= (ControlFlow 0 218825) (- 0 301810)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5)) (=> (= $t9@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 218825) 219347) anon10_Then_correct@@3) (=> (= (ControlFlow 0 218825) 218831) anon10_Else_correct@@3)))))))))))))
(let ((anon0$1_correct@@6  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@6)) (|$IsValid'address'| (|$addr#$signer| _$t1@@5))) (=> (and (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |DiemSystemcvc5bpl.5954:20|
 :skolemid |179|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@8))
)) (= $t2@@4 (|$addr#$signer| _$t0@@6))) (and (= $t3@@4 (|$addr#$signer| _$t0@@6)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5)))) (and (and (= _$t0@@6 _$t0@@6) (= _$t1@@5 _$t1@@5)) (and (= $t4@@4 (|$addr#$signer| _$t0@@6)) (= $t5@@5  (or (or (or (not (= (|$addr#$signer| _$t0@@6) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))))))) (and (=> (= (ControlFlow 0 218747) 219671) anon9_Then_correct@@2) (=> (= (ControlFlow 0 218747) 218825) anon9_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_87682| stream@@7) 0) (forall ((v@@53 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@7) v@@53) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 218593) 218747)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 301477) 218593) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@5 () Int)
(declare-fun _$t0@@7 () T@$signer)
(declare-fun _$t1@@6 () T@$signer)
(declare-fun $t3@@5 () Int)
(declare-fun $t6@@5 () Int)
(declare-fun $t9@@6 () Bool)
(declare-fun $t5@@6 () Bool)
(declare-fun $t4@@5 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@5 () T@$Memory_125988)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@6 () T@$Memory_125988)
(declare-fun $1_Roles_RoleId_$memory@0@@6 () T@$Memory_125988)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@5| () T@$1_Roles_RoleId)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@6 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 302559) (let ((L2_correct@@5  (and (=> (= (ControlFlow 0 220822) (- 0 303418)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (=> (= (ControlFlow 0 220822) (- 0 303494)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@5)) (= 5 $t6@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)) (= 6 $t6@@5))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5))))))))
(let ((anon10_Then_correct@@4  (=> $t9@@6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)) (= 6 $t6@@5)) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 220590) 220822))) L2_correct@@5))))
(let ((anon9_Then_correct@@3  (=> (and (and $t5@@6 (or (or (or (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5)))) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 220914) 220822))) L2_correct@@5)))
(let ((anon7_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3)) (and (=> (= (ControlFlow 0 220548) (- 0 303010)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@5))) (and (=> (= (ControlFlow 0 220548) (- 0 303022)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (and (=> (= (ControlFlow 0 220548) (- 0 303040)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 220548) (- 0 303054)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 220548) (- 0 303065)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@5))) (and (=> (= (ControlFlow 0 220548) (- 0 303077)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (and (=> (= (ControlFlow 0 220548) (- 0 303095)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 220548) (- 0 303109)) (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6)) (and (=> (= (ControlFlow 0 220548) (- 0 303118)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3) (and (=> (= (ControlFlow 0 220548) (- 0 303133)) (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@72)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@72)) 0))))
 :qid |DiemSystemcvc5bpl.6391:15|
 :skolemid |187|
))) (=> (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@73)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@73)) 0))))
 :qid |DiemSystemcvc5bpl.6391:15|
 :skolemid |187|
)) (and (=> (= (ControlFlow 0 220548) (- 0 303180)) (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@74)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@74)) 1))))
 :qid |DiemSystemcvc5bpl.6395:15|
 :skolemid |188|
))) (=> (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@75)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@75)) 1))))
 :qid |DiemSystemcvc5bpl.6395:15|
 :skolemid |188|
)) (and (=> (= (ControlFlow 0 220548) (- 0 303227)) (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@76)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@76)) 4))))
 :qid |DiemSystemcvc5bpl.6399:15|
 :skolemid |189|
))) (=> (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@77)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@77)) 4))))
 :qid |DiemSystemcvc5bpl.6399:15|
 :skolemid |189|
)) (and (=> (= (ControlFlow 0 220548) (- 0 303274)) (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@78)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@78)) 2))))
 :qid |DiemSystemcvc5bpl.6403:15|
 :skolemid |190|
))) (=> (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@79)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@79)) 2))))
 :qid |DiemSystemcvc5bpl.6403:15|
 :skolemid |190|
)) (and (=> (= (ControlFlow 0 220548) (- 0 303321)) (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@80)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@80)) 5))))
 :qid |DiemSystemcvc5bpl.6407:15|
 :skolemid |191|
))) (=> (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@81)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@81)) 5))))
 :qid |DiemSystemcvc5bpl.6407:15|
 :skolemid |191|
)) (=> (= (ControlFlow 0 220548) (- 0 303368)) (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory@2@@5) addr@@82)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@82)) 6))))
 :qid |DiemSystemcvc5bpl.6411:15|
 :skolemid |192|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@5  (=> (and (and (not |$temp_0'bool'@0@@5|) (= $1_Roles_RoleId_$memory@1@@6 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) false) (|contents#$Memory_125988| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@1@@6) (= (ControlFlow 0 220088) 220548))) anon7_correct@@3)))
(let ((anon11_Then_correct@@5  (=> (and (and |$temp_0'bool'@0@@5| (= $1_Roles_RoleId_$memory@0@@6 ($Memory_125988 (|Store__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) |$temp_0'$1_Roles_RoleId'@0@@5|)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@0@@6) (= (ControlFlow 0 220562) 220548))) anon7_correct@@3)))
(let ((anon10_Else_correct@@4  (=> (not $t9@@6) (and (=> (= (ControlFlow 0 220074) 220562) anon11_Then_correct@@5) (=> (= (ControlFlow 0 220074) 220088) anon11_Else_correct@@5)))))
(let ((anon9_Else_correct@@3  (=> (not $t5@@6) (=> (and (|$IsValid'u64'| 3) (= $t8@@3 (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 220068) (- 0 302860)) (=> (= 3 0) (= $t8@@3 173345816))) (=> (=> (= 3 0) (= $t8@@3 173345816)) (and (=> (= (ControlFlow 0 220068) (- 0 302876)) (=> (= 3 1) (= $t8@@3 186537453))) (=> (=> (= 3 1) (= $t8@@3 186537453)) (and (=> (= (ControlFlow 0 220068) (- 0 302892)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6)) (=> (= $t9@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 220068) 220590) anon10_Then_correct@@4) (=> (= (ControlFlow 0 220068) 220074) anon10_Else_correct@@4)))))))))))))
(let ((anon0$1_correct@@7  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@7)) (|$IsValid'address'| (|$addr#$signer| _$t1@@6))) (=> (and (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |DiemSystemcvc5bpl.6212:20|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@9))
)) (= $t2@@5 (|$addr#$signer| _$t0@@7))) (and (= $t3@@5 (|$addr#$signer| _$t0@@7)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6)))) (and (and (= _$t0@@7 _$t0@@7) (= _$t1@@6 _$t1@@6)) (and (= $t4@@5 (|$addr#$signer| _$t0@@7)) (= $t5@@6  (or (or (or (not (= (|$addr#$signer| _$t0@@7) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t4@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))))))) (and (=> (= (ControlFlow 0 219990) 220914) anon9_Then_correct@@3) (=> (= (ControlFlow 0 219990) 220068) anon9_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_87682| stream@@8) 0) (forall ((v@@54 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@8) v@@54) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 219836) 219990)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 302559) 219836) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t56 () T@$1_DiemConfig_Configuration)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_140236)
(declare-fun $t57 () Int)
(declare-fun $t58 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| () T@$Memory_125534)
(declare-fun $t14@0@@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t59 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t60 () T@$1_Event_EventHandle)
(declare-fun $t54 () T@$1_Event_EventHandle)
(declare-fun $t61 () Bool)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_140124)
(declare-fun $t53 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_87682_| (|T@[$1_Event_EventHandle]Multiset_87682| T@$1_Event_EventHandle T@Multiset_87682) |T@[$1_Event_EventHandle]Multiset_87682|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_87682|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_87682)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|Store__T@[$1_Event_EventHandle]Multiset_87682_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_87682|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_87682)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|Store__T@[$1_Event_EventHandle]Multiset_87682_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_87682_| ?x0 ?y1))) :weight 0)))
(declare-fun $t62 () T@Vec_87979)
(declare-fun $t63 () T@$1_DiemConfig_Configuration)
(declare-fun $t64 () Int)
(declare-fun $t65 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_139153)
(declare-fun _$t1@@7 () Int)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t15 () Int)
(declare-fun _$t0@@8 () T@$signer)
(declare-fun $t16 () T@$1_DiemConfig_Configuration)
(declare-fun $t17 () Int)
(declare-fun $t21 () Int)
(declare-fun $t18 () T@Vec_87979)
(declare-fun DefaultVecElem_78433 () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t19 () T@$1_DiemConfig_Configuration)
(declare-fun $t20@@0 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_140236)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_140236)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_140236)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun |$temp_0'bool'@0@@6| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_125534)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_125534)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t55 () Bool)
(declare-fun $t23@0 () Int)
(declare-fun $t23@@0 () Int)
(declare-fun $t51 () T@$1_DiemConfig_Configuration)
(declare-fun $t52 () Int)
(declare-fun $t44@1 () T@$Mutation_142214)
(declare-fun $t44@0 () T@$Mutation_142214)
(declare-fun |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_98322)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| () |T@[Int]Bool|)
(declare-fun $t45@0 () T@$Mutation_98322)
(declare-fun |Store__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemSystem_ValidatorInfo|) ( ?x1 Int) ( ?x2 T@$1_DiemSystem_ValidatorInfo)) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|Store__T@[Int]$1_DiemSystem_ValidatorInfo_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemSystem_ValidatorInfo|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemSystem_ValidatorInfo)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|Store__T@[Int]$1_DiemSystem_ValidatorInfo_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| ?x0 ?y1))) :weight 0)))
(declare-fun $t49@0 () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t47 () Bool)
(declare-fun $t46 () Int)
(declare-fun $t42 () T@$1_ValidatorConfig_Config)
(declare-fun $t43 () Bool)
(declare-fun $t14@@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0| () T@Vec_87979)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t41 () Int)
(declare-fun $t38 () Bool)
(declare-fun $t35 () Bool)
(declare-fun $t37@0 () T@Vec_87979)
(declare-fun inline$$Lt$0$dst@1@@0 () Bool)
(declare-fun $t34 () Int)
(declare-fun $t29 () Int)
(declare-fun $t30 () Bool)
(declare-fun $t26 () Bool)
(declare-fun $t28 () Int)
(declare-fun $t25@@0 () Bool)
(declare-fun $t24@@0 () Int)
(declare-fun $t22 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_138029)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_139800)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_139881)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_139962)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_140043)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|T@[Int]$1_DiemSystem_CapabilityHolder| Int) T@$1_DiemSystem_CapabilityHolder)
(declare-fun $t4@@6 () T@$Mutation_98322)
(declare-fun $t44 () T@$Mutation_142214)
(declare-fun $t45 () T@$Mutation_98322)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_add_validator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 303641) (let ((anon31_correct  (=> (= $t56 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory@2) 173345816)) (=> (and (and (= $t57 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t58 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t56)))) (and (= (|$scheme#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816))) (|$scheme#$1_DiemSystem_DiemSystem| $t14@0@@0)) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816))) (|$validators#$1_DiemSystem_DiemSystem| $t14@0@@0)))) (=> (and (and (and (= $t59 $t58) (= $t60 $t54)) (and (= $t61  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t57 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t53))))) (= $es@0 (ite $t61 (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) $t60)))
(let ((stream_new (let ((len (|l#Multiset_87682| stream@@9)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t59))))
(Multiset_87682 (|Store__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t59) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) $t60 stream_new)))) $es)))) (and (and (= $t62 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@83 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@83))))) (= $t63 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory@2) 173345816))) (and (= $t64 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t65 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t63)))))) (and (=> (= (ControlFlow 0 223719) (- 0 306420)) (not (>= (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@84 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@84))))) 256))) (=> (not (>= (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@85 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@85))))) 256)) (and (=> (= (ControlFlow 0 223719) (- 0 306432)) (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0)))))) (=> (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0))))) (and (=> (= (ControlFlow 0 223719) (- 0 306443)) (not (let (($range_0@@2 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@86 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@86))))))
(exists (($i_1@@2 Int) ) (!  (and (InRangeVec_78413 $range_0@@2 $i_1@@2) (let ((v@@55 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@2) $i_1@@2)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@55) _$t1@@7)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
))))) (=> (not (let (($range_0@@3 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@87 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@87))))))
(exists (($i_1@@3 Int) ) (!  (and (InRangeVec_78413 $range_0@@3 $i_1@@3) (let ((v@@56 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@3) $i_1@@3)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@56) _$t1@@7)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
)))) (and (=> (= (ControlFlow 0 223719) (- 0 306452)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 223719) (- 0 306462)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t15)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t15))) (and (=> (= (ControlFlow 0 223719) (- 0 306474)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t15)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t15)) 0))) (and (=> (= (ControlFlow 0 223719) (- 0 306492)) (not (not (= (|$addr#$signer| _$t0@@8) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@8) 173345816))) (and (=> (= (ControlFlow 0 223719) (- 0 306506)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16)))) (and (=> (= (ControlFlow 0 223719) (- 0 306548)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t21)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t21))) (and (=> (= (ControlFlow 0 223719) (- 0 306560)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t21)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t21)) 0))) (and (=> (= (ControlFlow 0 223719) (- 0 306578)) (not (not (= (|$addr#$signer| _$t0@@8) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@8) 173345816))) (and (=> (= (ControlFlow 0 223719) (- 0 306592)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) _$t1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) _$t1@@7)) 3))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) _$t1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) _$t1@@7)) 3)) (and (=> (= (ControlFlow 0 223719) (- 0 306600)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0))) (and (=> (= (ControlFlow 0 223719) (- 0 306608)) (let (($range_0@@4 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@88 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@88))))))
(exists (($i_1@@4 Int) ) (!  (and (InRangeVec_78413 $range_0@@4 $i_1@@4) (let ((v@@57 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@4) $i_1@@4)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@57) _$t1@@7)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
)))) (=> (let (($range_0@@5 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@89 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@89))))))
(exists (($i_1@@5 Int) ) (!  (and (InRangeVec_78413 $range_0@@5 $i_1@@5) (let ((v@@58 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@5) $i_1@@5)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@58) _$t1@@7)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
))) (and (=> (= (ControlFlow 0 223719) (- 0 306615)) (and (and (= (|l#Vec_87979| $t62) (+ (|l#Vec_87979| $t18) 1)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t62) (- (|l#Vec_87979| $t62) 1))) (|$addr#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t62) (- (|l#Vec_87979| $t62) 1))) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t62) (- (|l#Vec_87979| $t62) 1)))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t62) (- (|l#Vec_87979| $t62) 1)))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t62) (- (|l#Vec_87979| $t62) 1)))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t62) (- (|l#Vec_87979| $t62) 1))) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (let ((m (|v#Vec_87979| $t62)))
(Vec_87979 (|lambda#31| 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1)))) m (|lb#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1))) DefaultVecElem_78433) (ite (< (- (|ub#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1)))) 0) 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1))))))) (let ((m@@0 (|v#Vec_87979| $t18)))
(Vec_87979 (|lambda#31| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_87979| $t18))) (|lb#$Range| ($Range 0 (|l#Vec_87979| $t18)))) m@@0 (|lb#$Range| ($Range 0 (|l#Vec_87979| $t18))) DefaultVecElem_78433) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_87979| $t18))) (|lb#$Range| ($Range 0 (|l#Vec_87979| $t18)))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_87979| $t18))) (|lb#$Range| ($Range 0 (|l#Vec_87979| $t18)))))))))) (=> (and (and (= (|l#Vec_87979| $t62) (+ (|l#Vec_87979| $t18) 1)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t62) (- (|l#Vec_87979| $t62) 1))) (|$addr#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t62) (- (|l#Vec_87979| $t62) 1))) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t62) (- (|l#Vec_87979| $t62) 1)))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t62) (- (|l#Vec_87979| $t62) 1)))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t62) (- (|l#Vec_87979| $t62) 1)))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t62) (- (|l#Vec_87979| $t62) 1))) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (let ((m@@1 (|v#Vec_87979| $t62)))
(Vec_87979 (|lambda#31| 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1)))) m@@1 (|lb#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1))) DefaultVecElem_78433) (ite (< (- (|ub#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1)))) 0) 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_87979| $t62) 1))))))) (let ((m@@2 (|v#Vec_87979| $t18)))
(Vec_87979 (|lambda#31| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_87979| $t18))) (|lb#$Range| ($Range 0 (|l#Vec_87979| $t18)))) m@@2 (|lb#$Range| ($Range 0 (|l#Vec_87979| $t18))) DefaultVecElem_78433) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_87979| $t18))) (|lb#$Range| ($Range 0 (|l#Vec_87979| $t18)))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_87979| $t18))) (|lb#$Range| ($Range 0 (|l#Vec_87979| $t18))))))))) (and (=> (= (ControlFlow 0 223719) (- 0 306638)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t64 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t19)))) (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $EmptyEventStore) $t20@@0)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_87682| stream@@10)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65))))
(Multiset_87682 (|Store__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $EmptyEventStore) $t20@@0 stream_new@@0)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@10 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| expected) handle@@10)) (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| actual) handle@@10))) (forall ((v@@59 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| expected) handle@@10)) v@@59) (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| actual) handle@@10)) v@@59))
 :qid |DiemSystemcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemSystemcvc5bpl.2780:13|
 :skolemid |99|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t64 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t19)))) (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $EmptyEventStore) $t20@@0)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_87682| stream@@11)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65))))
(Multiset_87682 (|Store__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $EmptyEventStore) $t20@@0 stream_new@@1)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@11 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| expected@@0) handle@@11)) (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| actual@@0) handle@@11))) (forall ((v@@60 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| expected@@0) handle@@11)) v@@60) (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| actual@@0) handle@@11)) v@@60))
 :qid |DiemSystemcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemSystemcvc5bpl.2780:13|
 :skolemid |99|
))))) (=> (= (ControlFlow 0 223719) (- 0 306683)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t64 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t19)))) (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $EmptyEventStore) $t20@@0)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_87682| stream@@12)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@12) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65))))
(Multiset_87682 (|Store__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@12) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $EmptyEventStore) $t20@@0 stream_new@@2)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@12 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| actual@@1) handle@@12)) (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| expected@@1) handle@@12))) (forall ((v@@61 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| actual@@1) handle@@12)) v@@61) (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| expected@@1) handle@@12)) v@@61))
 :qid |DiemSystemcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemSystemcvc5bpl.2780:13|
 :skolemid |99|
)))))))))))))))))))))))))))))))))))))))))))
(let ((anon46_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= $1_DiemConfig_Configuration_$memory@1 ($Memory_140236 (|Store__T@[Int]Bool_| (|domain#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1) (= (ControlFlow 0 223255) 223719))) anon31_correct)))
(let ((anon46_Then_correct  (=> (and (and |$temp_0'bool'@1| (= $1_DiemConfig_Configuration_$memory@0 ($Memory_140236 (|Store__T@[Int]Bool_| (|domain#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0|)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0) (= (ControlFlow 0 223731) 223719))) anon31_correct)))
(let ((anon45_Else_correct  (=> (not |$temp_0'bool'@0@@6|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| ($Memory_125534 (|Store__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1|)) (and (=> (= (ControlFlow 0 223241) 223731) anon46_Then_correct) (=> (= (ControlFlow 0 223241) 223255) anon46_Else_correct))))))
(let ((anon45_Then_correct  (=> |$temp_0'bool'@0@@6| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| ($Memory_125534 (|Store__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0|)) (and (=> (= (ControlFlow 0 223743) 223731) anon46_Then_correct) (=> (= (ControlFlow 0 223743) 223255) anon46_Else_correct))))))
(let ((anon44_Else_correct  (=> (not $t55) (and (=> (= (ControlFlow 0 223229) 223743) anon45_Then_correct) (=> (= (ControlFlow 0 223229) 223241) anon45_Else_correct)))))
(let ((anon43_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 222385) (- 0 305816)) (or (or (or (or (or (or (or (or (or (or (>= (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@90 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@90))))) 256) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0))))) (let (($range_0@@6 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@91 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@91))))))
(exists (($i_1@@6 Int) ) (!  (and (InRangeVec_78413 $range_0@@6 $i_1@@6) (let ((v@@62 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@6) $i_1@@6)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@62) _$t1@@7)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t15))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t15)) 0))) (not (= (|$addr#$signer| _$t0@@8) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t21))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t21)) 0))) (not (= (|$addr#$signer| _$t0@@8) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (or (>= (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@92 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@92))))) 256) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0))))) (let (($range_0@@7 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@93 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@93))))))
(exists (($i_1@@7 Int) ) (!  (and (InRangeVec_78413 $range_0@@7 $i_1@@7) (let ((v@@63 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@7) $i_1@@7)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@63) _$t1@@7)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t15))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t15)) 0))) (not (= (|$addr#$signer| _$t0@@8) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t21))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t21)) 0))) (not (= (|$addr#$signer| _$t0@@8) 173345816))) (=> (= (ControlFlow 0 222385) (- 0 305953)) (or (or (or (or (or (or (or (or (or (or (and (>= (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@94 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@94))))) 256) (= 8 $t23@0)) (and (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0)))) (= 7 $t23@0))) (and (let (($range_0@@8 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@95 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@95))))))
(exists (($i_1@@8 Int) ) (!  (and (InRangeVec_78413 $range_0@@8 $i_1@@8) (let ((v@@64 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@8) $i_1@@8)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@64) _$t1@@7)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
))) (= 7 $t23@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t15)) (= 5 $t23@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t15)) 0)) (= 3 $t23@0))) (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t23@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16))) (= 1 $t23@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t21)) (= 5 $t23@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t21)) 0)) (= 3 $t23@0))) (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t23@0))))))))
(let ((anon44_Then_correct  (=> $t55 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@@0)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t51) 18446744073709551615)) (< $t52 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t51))) (= 1 $t23@@0))) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 223819) 222385))) L7_correct))))
(let ((anon43_Else_correct  (=> (and (not false) (= $t44@1 ($Mutation_142214 (|l#$Mutation_142214| $t44@0) (|p#$Mutation_142214| $t44@0) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t44@0)) (|v#$Mutation_98322| |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1|))))) (and (=> (= (ControlFlow 0 223223) (- 0 305483)) (let (($range_0@@9 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t44@1))))))
(let (($range_1 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t44@1))))))
(forall (($i_2 Int) ($i_3 Int) ) (!  (=> ($InRange $range_0@@9 $i_2) (=> ($InRange $range_1 $i_3) (let ((i@@90 $i_2))
(let ((j@@28 $i_3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t44@1))) i@@90)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t44@1))) j@@28))) (= i@@90 j@@28))))))
 :qid |DiemSystemcvc5bpl.7684:203|
 :skolemid |240|
))))) (=> (let (($range_0@@10 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t44@1))))))
(let (($range_1@@0 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t44@1))))))
(forall (($i_2@@0 Int) ($i_3@@0 Int) ) (!  (=> ($InRange $range_0@@10 $i_2@@0) (=> ($InRange $range_1@@0 $i_3@@0) (let ((i@@91 $i_2@@0))
(let ((j@@29 $i_3@@0))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t44@1))) i@@91)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t44@1))) j@@29))) (= i@@91 j@@29))))))
 :qid |DiemSystemcvc5bpl.7684:203|
 :skolemid |240|
)))) (=> (= $t14@0@@0 (|v#$Mutation_142214| $t44@1)) (=> (and (and (= $t51 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t52 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t53 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t54 (|$events#$1_DiemConfig_Configuration| $t53)))) (and (=> (= (ControlFlow 0 223223) (- 0 305636)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816) (=> (= $t55  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t51) 18446744073709551615)) (< $t52 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t51))))) (and (=> (= (ControlFlow 0 223223) 223819) anon44_Then_correct) (=> (= (ControlFlow 0 223223) 223229) anon44_Else_correct))))))))))))
(let ((|inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| ($Mutation_98322 (|l#$Mutation_98322| $t45@0) (|p#$Mutation_98322| $t45@0) (let ((l@@0 (|l#Vec_87979| (|v#$Mutation_98322| $t45@0))))
(Vec_87979 (|Store__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|v#$Mutation_98322| $t45@0)) l@@0 $t49@0) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 222990) 223833) anon43_Then_correct) (=> (= (ControlFlow 0 222990) 223223) anon43_Else_correct)))))
(let ((anon42_Else_correct  (=> (not $t47) (=> (and (|$IsValid'u64'| $t46) (= $t46 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (= $t46 $t46) (|$IsValid'u64'| 1)) (and (= $t49@0 ($1_DiemSystem_ValidatorInfo _$t1@@7 1 $t42 $t46)) (= (ControlFlow 0 222996) 222990))) |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))))
(let ((anon42_Then_correct  (=> $t47 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 223859) 222385))) L7_correct))))
(let ((anon41_Else_correct  (=> (and (not $t43) (|$IsValid'$1_ValidatorConfig_Config'| $t42)) (=> (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| $t42) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| $t42) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| $t42) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0)))) (=> (and (and (and (= $t42 $t42) (= $t44@0 ($Mutation_142214 ($Local 14) (Vec_28829 (MapConstVec_12393 DefaultVecElem_12393) 0) $t14@@0))) (and (= $t45@0 ($Mutation_98322 (|l#$Mutation_142214| $t44@0) (let ((l@@1 (|l#Vec_28829| (|p#$Mutation_142214| $t44@0))))
(Vec_28829 (|Store__T@[Int]Int_| (|v#Vec_28829| (|p#$Mutation_142214| $t44@0)) l@@1 1) (+ l@@1 1))) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t44@0)))) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0| (|v#$Mutation_98322| $t45@0)))) (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0|) (= _$t1@@7 _$t1@@7)) (and (= $t42 $t42) (= $t47  (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 222895) 223859) anon42_Then_correct) (=> (= (ControlFlow 0 222895) 222996) anon42_Else_correct)))))))
(let ((anon41_Then_correct  (=> $t43 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)) (= 5 $t23@@0)) (and (= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (= 7 $t23@@0))) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 223907) 222385))) L7_correct))))
(let ((anon40_Then_correct  (=> (and inline$$Not$0$dst@1@@0 (= $t43  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)) (= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0)))) (and (=> (= (ControlFlow 0 222807) 223907) anon41_Then_correct) (=> (= (ControlFlow 0 222807) 222895) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t41 $t41)) (and (= $t23@0 $t41) (= (ControlFlow 0 222779) 222385))) L7_correct)))
(let ((anon39_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t41) (= $t41 7)) (and (= $t41 $t41) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 222763) 222807) anon40_Then_correct) (=> (= (ControlFlow 0 222763) 222779) anon40_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t38)) (= (ControlFlow 0 222723) 222763)) anon39_Else$1_correct)))
(let ((anon39_Else_correct  (=> (not $t35) (=> (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t14@@0) (let (($range_0@@11 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t14@@0)))))
(let (($range_1@@1 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t14@@0)))))
(forall (($i_2@@1 Int) ($i_3@@1 Int) ) (!  (=> ($InRange $range_0@@11 $i_2@@1) (=> ($InRange $range_1@@1 $i_3@@1) (let ((i@@92 $i_2@@1))
(let ((j@@30 $i_3@@1))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t14@@0)) i@@92)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t14@@0)) j@@30))) (= i@@92 j@@30))))))
 :qid |DiemSystemcvc5bpl.7482:225|
 :skolemid |238|
))))) (and (= (|$scheme#$1_DiemSystem_DiemSystem| $t14@@0) (|$scheme#$1_DiemSystem_DiemSystem| (let ((addr@@96 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@96))))) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| $t14@@0) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@96 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@96))))))) (and (and (= $t14@@0 $t14@@0) (= $t37@0 (|$validators#$1_DiemSystem_DiemSystem| $t14@@0))) (and (= $t38 (let (($range_0@@12 $t37@0))
(exists (($i_1@@9 Int) ) (!  (and (InRangeVec_78413 $range_0@@12 $i_1@@9) (let ((v@@65 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@12) $i_1@@9)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@65) _$t1@@7)))
 :qid |DiemSystemcvc5bpl.7510:64|
 :skolemid |239|
)))) (= (ControlFlow 0 222729) 222723)))) inline$$Not$0$anon0_correct@@0))))
(let ((anon39_Then_correct  (=> $t35 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 223935) 222385))) L7_correct))))
(let ((anon38_Then_correct  (=> (and inline$$Lt$0$dst@1@@0 (= $t35  (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 222539) 223935) anon39_Then_correct) (=> (= (ControlFlow 0 222539) 222729) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1@@0) (= $t34 $t34)) (and (= $t23@0 $t34) (= (ControlFlow 0 222523) 222385))) L7_correct)))
(let ((anon37_Else$1_correct  (=> (|$IsValid'u64'| 7) (=> (and (and (|$IsValid'u64'| $t34) (= $t34 8)) (and (= $t34 $t34) (= inline$$Lt$0$dst@1@@0 inline$$Lt$0$dst@1@@0))) (and (=> (= (ControlFlow 0 222507) 222539) anon38_Then_correct) (=> (= (ControlFlow 0 222507) 222523) anon38_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct@@0  (=> (and (= inline$$Lt$0$dst@1@@0 (< $t29 256)) (= (ControlFlow 0 222467) 222507)) anon37_Else$1_correct)))
(let ((anon37_Else_correct  (=> (not $t30) (=> (and (and (|$IsValid'u64'| $t29) (= $t29 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@97 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@97))))))) (and (|$IsValid'u64'| 256) (= (ControlFlow 0 222473) 222467))) inline$$Lt$0$anon0_correct@@0))))
(let ((anon37_Then_correct  (=> $t30 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 223963) 222385))) L7_correct))))
(let ((anon36_Then_correct  (=> (and $t26 (= $t30  (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 222401) 223963) anon37_Then_correct) (=> (= (ControlFlow 0 222401) 222473) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (and (not $t26) (= $t28 $t28)) (and (= $t23@0 $t28) (= (ControlFlow 0 221985) 222385))) L7_correct)))
(let ((anon35_Else_correct  (=> (not $t25@@0) (=> (and (= $t26  (and (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0)))) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t28) (= $t28 7)) (and (= $t28 $t28) (= $t26 $t26))) (and (=> (= (ControlFlow 0 221969) 222401) anon36_Then_correct) (=> (= (ControlFlow 0 221969) 221985) anon36_Else_correct)))))))
(let ((anon35_Then_correct  (=> $t25@@0 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t23@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t24@@0)) (= 5 $t23@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t24@@0)) 0)) (= 3 $t23@@0))) (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t23@@0))) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 224055) 222385))) L7_correct))))
(let ((anon34_Else_correct  (=> (not $t22) (=> (and (= $t24@@0 (|$addr#$signer| _$t0@@8)) (= $t25@@0  (or (or (or (not (= (|$addr#$signer| _$t0@@8) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t24@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t24@@0)) 0))) (not (= (|$addr#$signer| _$t0@@8) 173345816))))) (and (=> (= (ControlFlow 0 221919) 224055) anon35_Then_correct) (=> (= (ControlFlow 0 221919) 221969) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> $t22 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 224081) 222385))) L7_correct))))
(let ((anon0$1_correct@@8  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_138029| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@98) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@98)) 4))))
 :qid |DiemSystemcvc5bpl.7119:20|
 :skolemid |219|
))) (=> (and (and (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@99) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@99)) 3))))
 :qid |DiemSystemcvc5bpl.7123:20|
 :skolemid |220|
)) (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@100) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@100)) 3))))
 :qid |DiemSystemcvc5bpl.7127:20|
 :skolemid |221|
))) (and (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@101) (not (= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@101)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@101) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@101)) 3))))
 :qid |DiemSystemcvc5bpl.7131:20|
 :skolemid |222|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816)))) (=> (and (and (and (and (and (and (and (and (forall ((config_address Int) ) (!  (=> (|$IsValid'address'| config_address) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address) (= config_address 173345816)))
 :qid |DiemSystemcvc5bpl.7139:24|
 :skolemid |223|
)) (forall ((config_address@@0 Int) ) (!  (=> (|$IsValid'address'| config_address@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139800| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@0) (= config_address@@0 173345816)))
 :qid |DiemSystemcvc5bpl.7139:243|
 :skolemid |224|
))) (forall ((config_address@@1 Int) ) (!  (=> (|$IsValid'address'| config_address@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139881| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@1) (= config_address@@1 173345816)))
 :qid |DiemSystemcvc5bpl.7139:483|
 :skolemid |225|
))) (forall ((config_address@@2 Int) ) (!  (=> (|$IsValid'address'| config_address@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139962| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@2) (= config_address@@2 173345816)))
 :qid |DiemSystemcvc5bpl.7139:745|
 :skolemid |226|
))) (forall ((config_address@@3 Int) ) (!  (=> (|$IsValid'address'| config_address@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140043| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@3) (= config_address@@3 173345816)))
 :qid |DiemSystemcvc5bpl.7139:969|
 :skolemid |227|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (let (($range_0@@13 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@102 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@102))))))))
(forall (($i_1@@10 Int) ) (!  (=> ($InRange $range_0@@13 $i_1@@10) (let ((i1@@2 $i_1@@10))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@103 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@103))))) i1@@2))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@103 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@103))))) i1@@2)))) 3))))
 :qid |DiemSystemcvc5bpl.7147:151|
 :skolemid |228|
))) (let (($range_0@@14 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@104 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@104))))))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@14 $i_1@@11) (let ((i1@@3 $i_1@@11))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@105 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@105))))) i1@@3)) 1)))
 :qid |DiemSystemcvc5bpl.7152:151|
 :skolemid |229|
))))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@8)) (|$IsValid'address'| _$t1@@7)) (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@10))
 :qid |DiemSystemcvc5bpl.7162:20|
 :skolemid |230|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@11)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@11))
 :qid |DiemSystemcvc5bpl.7166:20|
 :skolemid |231|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@11))
))))) (and (and (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@12)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@12) (and (<= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@12))) 1) (<= (|l#Vec_28829| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@12))) 1))))
 :qid |DiemSystemcvc5bpl.7170:20|
 :skolemid |232|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) $a_0@@13)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@13))
 :qid |DiemSystemcvc5bpl.7174:20|
 :skolemid |233|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) $a_0@@13))
))) (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@14)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@14))
 :qid |DiemSystemcvc5bpl.7178:20|
 :skolemid |234|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@14))
)) (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@15)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@15) (let (($range_1@@2 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@15))))))
(let (($range_2 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@15))))))
(forall (($i_3@@2 Int) ($i_4 Int) ) (!  (=> ($InRange $range_1@@2 $i_3@@2) (=> ($InRange $range_2 $i_4) (let ((i@@93 $i_3@@2))
(let ((j@@31 $i_4))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@15))) i@@93)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@15))) j@@31))) (= i@@93 j@@31))))))
 :qid |DiemSystemcvc5bpl.7183:367|
 :skolemid |235|
))))))
 :qid |DiemSystemcvc5bpl.7182:20|
 :skolemid |236|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@15))
)))) (and (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@16)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@16))
 :qid |DiemSystemcvc5bpl.7188:20|
 :skolemid |237|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@16))
)) (= $t15 (|$addr#$signer| _$t0@@8))) (and (= $t16 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t17 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (and (and (= $t18 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@106 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@106))))) (= $t19 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t20@@0 (|$events#$1_DiemConfig_Configuration| $t19)) (= $t21 (|$addr#$signer| _$t0@@8)))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816) (= _$t0@@8 _$t0@@8)) (and (= _$t1@@7 _$t1@@7) (= $t22  (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 221847) 224081) anon34_Then_correct) (=> (= (ControlFlow 0 221847) 221919) anon34_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_87682| stream@@13) 0) (forall ((v@@66 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@13) v@@66) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 221097) 221847)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (and (and (= (|l#Vec_28829| (|p#$Mutation_98322| $t4@@6)) 0) (= (|l#Vec_28829| (|p#$Mutation_142214| $t44)) 0)) (and (= (|l#Vec_28829| (|p#$Mutation_98322| $t45)) 0) (= (ControlFlow 0 221107) 221097))) inline$$InitEventStore$0$anon0_correct@@8)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 303641) 221107) anon0_correct@@8)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t1@@0 () Bool)
(declare-fun $t0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t2@@6 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_get_diem_system_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 306734) (let ((anon4_Else_correct  (=> (not $t1@@0) (=> (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t0) (let (($range_0@@15 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t0)))))
(let (($range_1@@3 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t0)))))
(forall (($i_2@@2 Int) ($i_3@@3 Int) ) (!  (=> ($InRange $range_0@@15 $i_2@@2) (=> ($InRange $range_1@@3 $i_3@@3) (let ((i@@94 $i_2@@2))
(let ((j@@32 $i_3@@3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t0)) i@@94)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t0)) j@@32))) (= i@@94 j@@32))))))
 :qid |DiemSystemcvc5bpl.8005:222|
 :skolemid |250|
))))) (=> (and (and (= (|$scheme#$1_DiemSystem_DiemSystem| $t0) (|$scheme#$1_DiemSystem_DiemSystem| (let ((addr@@107 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@107))))) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| $t0) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@107 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@107)))))) (= $t0 $t0)) (and (=> (= (ControlFlow 0 225012) (- 0 307299)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 225012) (- 0 307311)) (and (= (|$scheme#$1_DiemSystem_DiemSystem| $t0) (|$scheme#$1_DiemSystem_DiemSystem| (let ((addr@@108 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@108))))) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| $t0) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@108 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@108))))))) (=> (and (= (|$scheme#$1_DiemSystem_DiemSystem| $t0) (|$scheme#$1_DiemSystem_DiemSystem| (let ((addr@@109 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@109))))) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| $t0) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@109 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@109)))))) (=> (= (ControlFlow 0 225012) (- 0 307322)) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@110 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@110)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@111 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@111)))))))))))))))
(let ((anon4_Then_correct  (=> $t1@@0 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t2@@6)) (= $t2@@6 $t2@@6)) (and (=> (= (ControlFlow 0 225070) (- 0 307159)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (= (ControlFlow 0 225070) (- 0 307166)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t2@@6)))))))))
(let ((anon0$1_correct@@9  (=> (and (and (and (and (and (and (forall ((config_address@@4 Int) ) (!  (=> (|$IsValid'address'| config_address@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@4) (= config_address@@4 173345816)))
 :qid |DiemSystemcvc5bpl.7949:24|
 :skolemid |241|
)) (forall ((config_address@@5 Int) ) (!  (=> (|$IsValid'address'| config_address@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139800| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@5) (= config_address@@5 173345816)))
 :qid |DiemSystemcvc5bpl.7949:243|
 :skolemid |242|
))) (forall ((config_address@@6 Int) ) (!  (=> (|$IsValid'address'| config_address@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139881| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@6) (= config_address@@6 173345816)))
 :qid |DiemSystemcvc5bpl.7949:483|
 :skolemid |243|
))) (forall ((config_address@@7 Int) ) (!  (=> (|$IsValid'address'| config_address@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139962| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@7) (= config_address@@7 173345816)))
 :qid |DiemSystemcvc5bpl.7949:745|
 :skolemid |244|
))) (forall ((config_address@@8 Int) ) (!  (=> (|$IsValid'address'| config_address@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140043| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@8) (= config_address@@8 173345816)))
 :qid |DiemSystemcvc5bpl.7949:969|
 :skolemid |245|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (and (let (($range_0@@16 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@112 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@112))))))))
(forall (($i_1@@12 Int) ) (!  (=> ($InRange $range_0@@16 $i_1@@12) (let ((i1@@4 $i_1@@12))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@113 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@113))))) i1@@4))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@113 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@113))))) i1@@4)))) 3))))
 :qid |DiemSystemcvc5bpl.7957:151|
 :skolemid |246|
))) (let (($range_0@@17 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@114 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@114))))))))
(forall (($i_1@@13 Int) ) (!  (=> ($InRange $range_0@@17 $i_1@@13) (let ((i1@@5 $i_1@@13))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@115 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@115))))) i1@@5)) 1)))
 :qid |DiemSystemcvc5bpl.7962:151|
 :skolemid |247|
)))) (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@17)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@17) (let (($range_1@@4 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@17))))))
(let (($range_2@@0 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@17))))))
(forall (($i_3@@4 Int) ($i_4@@0 Int) ) (!  (=> ($InRange $range_1@@4 $i_3@@4) (=> ($InRange $range_2@@0 $i_4@@0) (let ((i@@95 $i_3@@4))
(let ((j@@33 $i_4@@0))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@17))) i@@95)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@17))) j@@33))) (= i@@95 j@@33))))))
 :qid |DiemSystemcvc5bpl.7968:367|
 :skolemid |248|
))))))
 :qid |DiemSystemcvc5bpl.7967:20|
 :skolemid |249|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@17))
)) (= $t1@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 224867) 225070) anon4_Then_correct) (=> (= (ControlFlow 0 224867) 225012) anon4_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_87682| stream@@14) 0) (forall ((v@@67 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@14) v@@67) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 224497) 224867)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 306734) 224497) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t14@0@@1 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun _$t0@@9 () Int)
(declare-fun $t6@0@@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t12@0 () T@Vec_87979)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t11@@0 () Bool)
(declare-fun $t10@@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t6@@6 () Int)
(declare-fun inline$$Lt$0$dst@1@@1 () Bool)
(declare-fun $t9@@7 () Int)
(declare-fun $t4@@7 () Int)
(declare-fun $t5@@7 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_get_ith_validator_address$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 307343) (let ((anon14_Else_correct@@1  (=> (not $abort_flag@0@@1) (=> (and (= $t14@0@@1 (|$addr#$1_DiemSystem_ValidatorInfo| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2|)) (= $t14@0@@1 $t14@0@@1)) (and (=> (= (ControlFlow 0 226083) (- 0 308232)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 226083) (- 0 308244)) (not (>= _$t0@@9 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@116 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@116)))))))) (=> (not (>= _$t0@@9 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@117 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@117))))))) (and (=> (= (ControlFlow 0 226083) (- 0 308257)) (= $t14@0@@1 (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@118 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@118))))) _$t0@@9)))) (=> (= $t14@0@@1 (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@119 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@119))))) _$t0@@9))) (=> (= (ControlFlow 0 226083) (- 0 308272)) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@120 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@120)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@121 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@121))))))))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 225739) (- 0 308156)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (>= _$t0@@9 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@122 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@122)))))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (>= _$t0@@9 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@123 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@123))))))) (=> (= (ControlFlow 0 225739) (- 0 308173)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t6@0@@0)) (and (>= _$t0@@9 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@124 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@124)))))) (= 7 $t6@0@@0))))))))
(let ((anon14_Then_correct@@1  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t6@0@@0 $abort_code@1@@1) (= (ControlFlow 0 226097) 225739))) L3_correct@@0)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0|)) (and (=> (= (ControlFlow 0 226001) 226097) anon14_Then_correct@@1) (=> (= (ControlFlow 0 226001) 226083) anon14_Else_correct@@1))))))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_78413 $t12@0 _$t0@@9)) (= (ControlFlow 0 225999) 226001)) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|  (=> (InRangeVec_78413 $t12@0 _$t0@@9) (=> (and (and (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t12@0) _$t0@@9)) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1|))) (and (=> (= (ControlFlow 0 225949) 226097) anon14_Then_correct@@1) (=> (= (ControlFlow 0 225949) 226083) anon14_Else_correct@@1))))))
(let ((anon13_Else_correct@@1  (=> (not $t11@@0) (=> (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t10@@1) (let (($range_0@@18 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t10@@1)))))
(let (($range_1@@5 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t10@@1)))))
(forall (($i_2@@3 Int) ($i_3@@5 Int) ) (!  (=> ($InRange $range_0@@18 $i_2@@3) (=> ($InRange $range_1@@5 $i_3@@5) (let ((i@@96 $i_2@@3))
(let ((j@@34 $i_3@@5))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t10@@1)) i@@96)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t10@@1)) j@@34))) (= i@@96 j@@34))))))
 :qid |DiemSystemcvc5bpl.8236:225|
 :skolemid |260|
))))) (=> (and (and (= (|$scheme#$1_DiemSystem_DiemSystem| $t10@@1) (|$scheme#$1_DiemSystem_DiemSystem| (let ((addr@@125 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@125))))) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| $t10@@1) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@125 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@125)))))) (and (= $t10@@1 $t10@@1) (= $t12@0 (|$validators#$1_DiemSystem_DiemSystem| $t10@@1)))) (and (=> (= (ControlFlow 0 226007) 225999) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 226007) 225949) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|)))))))
(let ((anon13_Then_correct@@1  (=> $t11@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t6@@6)) (= $t6@@6 $t6@@6)) (and (= $t6@0@@0 $t6@@6) (= (ControlFlow 0 226125) 225739))) L3_correct@@0))))
(let ((anon12_Then_correct@@1  (=> (and inline$$Lt$0$dst@1@@1 (= $t11@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 225755) 226125) anon13_Then_correct@@1) (=> (= (ControlFlow 0 225755) 226007) anon13_Else_correct@@1)))))
(let ((anon12_Else_correct@@1  (=> (and (and (not inline$$Lt$0$dst@1@@1) (= $t9@@7 $t9@@7)) (and (= $t6@0@@0 $t9@@7) (= (ControlFlow 0 225675) 225739))) L3_correct@@0)))
(let ((anon11_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| $t9@@7) (= $t9@@7 7)) (and (= $t9@@7 $t9@@7) (= inline$$Lt$0$dst@1@@1 inline$$Lt$0$dst@1@@1))) (and (=> (= (ControlFlow 0 225659) 225755) anon12_Then_correct@@1) (=> (= (ControlFlow 0 225659) 225675) anon12_Else_correct@@1))))))
(let ((inline$$Lt$0$anon0_correct@@1  (=> (and (= inline$$Lt$0$dst@1@@1 (< _$t0@@9 $t4@@7)) (= (ControlFlow 0 225623) 225659)) anon11_Else$1_correct)))
(let ((anon11_Else_correct@@6  (=> (and (and (not $t5@@7) (|$IsValid'u64'| $t4@@7)) (and (= $t4@@7 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@126 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@126)))))) (= (ControlFlow 0 225629) 225623))) inline$$Lt$0$anon0_correct@@1)))
(let ((anon11_Then_correct@@6  (=> $t5@@7 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t6@@6)) (= $t6@@6 $t6@@6)) (and (= $t6@0@@0 $t6@@6) (= (ControlFlow 0 226153) 225739))) L3_correct@@0))))
(let ((anon0$1_correct@@10  (=> (and (and (and (and (and (and (and (forall ((config_address@@9 Int) ) (!  (=> (|$IsValid'address'| config_address@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@9) (= config_address@@9 173345816)))
 :qid |DiemSystemcvc5bpl.8093:24|
 :skolemid |251|
)) (forall ((config_address@@10 Int) ) (!  (=> (|$IsValid'address'| config_address@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139800| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@10) (= config_address@@10 173345816)))
 :qid |DiemSystemcvc5bpl.8093:243|
 :skolemid |252|
))) (forall ((config_address@@11 Int) ) (!  (=> (|$IsValid'address'| config_address@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139881| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@11) (= config_address@@11 173345816)))
 :qid |DiemSystemcvc5bpl.8093:483|
 :skolemid |253|
))) (forall ((config_address@@12 Int) ) (!  (=> (|$IsValid'address'| config_address@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139962| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@12) (= config_address@@12 173345816)))
 :qid |DiemSystemcvc5bpl.8093:745|
 :skolemid |254|
))) (forall ((config_address@@13 Int) ) (!  (=> (|$IsValid'address'| config_address@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140043| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@13) (= config_address@@13 173345816)))
 :qid |DiemSystemcvc5bpl.8093:969|
 :skolemid |255|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (let (($range_0@@19 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@127 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@127))))))))
(forall (($i_1@@14 Int) ) (!  (=> ($InRange $range_0@@19 $i_1@@14) (let ((i1@@6 $i_1@@14))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@128 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@128))))) i1@@6))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@128 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@128))))) i1@@6)))) 3))))
 :qid |DiemSystemcvc5bpl.8101:151|
 :skolemid |256|
))) (let (($range_0@@20 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@129 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@129))))))))
(forall (($i_1@@15 Int) ) (!  (=> ($InRange $range_0@@20 $i_1@@15) (let ((i1@@7 $i_1@@15))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@130 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@130))))) i1@@7)) 1)))
 :qid |DiemSystemcvc5bpl.8106:151|
 :skolemid |257|
))))) (and (and (|$IsValid'u64'| _$t0@@9) (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@18)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@18) (let (($range_1@@6 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@18))))))
(let (($range_2@@1 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@18))))))
(forall (($i_3@@6 Int) ($i_4@@1 Int) ) (!  (=> ($InRange $range_1@@6 $i_3@@6) (=> ($InRange $range_2@@1 $i_4@@1) (let ((i@@97 $i_3@@6))
(let ((j@@35 $i_4@@1))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@18))) i@@97)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@18))) j@@35))) (= i@@97 j@@35))))))
 :qid |DiemSystemcvc5bpl.8115:367|
 :skolemid |258|
))))))
 :qid |DiemSystemcvc5bpl.8114:20|
 :skolemid |259|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@18))
))) (and (= _$t0@@9 _$t0@@9) (= $t5@@7  (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 225563) 226153) anon11_Then_correct@@6) (=> (= (ControlFlow 0 225563) 225629) anon11_Else_correct@@6)))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@15 T@$1_Event_EventHandle) ) (! (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@15)))
 (and (= (|l#Multiset_87682| stream@@15) 0) (forall ((v@@68 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@15) v@@68) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 225183) 225563)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (ControlFlow 0 307343) 225183) inline$$InitEventStore$0$anon0_correct@@10)))
anon0_correct@@10))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t18@0@@0 () T@$1_ValidatorConfig_Config)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun _$t0@@10 () Int)
(declare-fun $t7@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0@@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t14@0@@2 () T@Vec_87979)
(declare-fun $t15@@0 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t16@@0 () Bool)
(declare-fun $t10@@2 () |T@$1_Option_Option'u64'|)
(declare-fun $t7@@1 () Int)
(declare-fun $t11@@1 () Bool)
(declare-fun $t5@@8 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t13 () Int)
(declare-fun $t6@@7 () Bool)
(declare-fun $t8@0 () T@Vec_87979)
(declare-fun $t9@@8 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_get_validator_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 308292) (let ((anon14_Else_correct@@2  (=> (not $abort_flag@0@@2) (=> (and (= $t18@0@@0 (|$config#$1_DiemSystem_ValidatorInfo| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@0|)) (= $t18@0@@0 $t18@0@@0)) (and (=> (= (ControlFlow 0 227329) (- 0 309324)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 227329) (- 0 309336)) (not (not (let (($range_0@@21 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@131 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@131))))))
(exists (($i_1@@16 Int) ) (!  (and (InRangeVec_78413 $range_0@@21 $i_1@@16) (let ((v@@69 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@21) $i_1@@16)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@69) _$t0@@10)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
)))))) (=> (not (not (let (($range_0@@22 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@132 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@132))))))
(exists (($i_1@@17 Int) ) (!  (and (InRangeVec_78413 $range_0@@22 $i_1@@17) (let ((v@@70 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@22) $i_1@@17)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@70) _$t0@@10)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
))))) (and (=> (= (ControlFlow 0 227329) (- 0 309347)) (let (($range_0@@23 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@133 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@133))))))
(exists (($i_1@@18 Int) ) (!  (and (InRangeVec_78413 $range_0@@23 $i_1@@18) (let ((info (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@23) $i_1@@18)))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| info) _$t0@@10) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| $t18@0@@0) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| info))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| $t18@0@@0) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| info)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| $t18@0@@0) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| info)))))))
 :qid |DiemSystemcvc5bpl.8584:176|
 :skolemid |273|
)))) (=> (let (($range_0@@24 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@134 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@134))))))
(exists (($i_1@@19 Int) ) (!  (and (InRangeVec_78413 $range_0@@24 $i_1@@19) (let ((info@@0 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@24) $i_1@@19)))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| info@@0) _$t0@@10) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| $t18@0@@0) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| info@@0))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| $t18@0@@0) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| info@@0)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| $t18@0@@0) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| info@@0)))))))
 :qid |DiemSystemcvc5bpl.8584:176|
 :skolemid |273|
))) (=> (= (ControlFlow 0 227329) (- 0 309393)) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@135 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@135)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@136 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@136))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 227049) (- 0 309252)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (not (let (($range_0@@25 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@137 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@137))))))
(exists (($i_1@@20 Int) ) (!  (and (InRangeVec_78413 $range_0@@25 $i_1@@20) (let ((v@@71 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@25) $i_1@@20)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@71) _$t0@@10)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
)))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (not (let (($range_0@@26 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@138 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@138))))))
(exists (($i_1@@21 Int) ) (!  (and (InRangeVec_78413 $range_0@@26 $i_1@@21) (let ((v@@72 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@26) $i_1@@21)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@72) _$t0@@10)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
))))) (=> (= (ControlFlow 0 227049) (- 0 309267)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t7@0)) (and (not (let (($range_0@@27 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@139 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@139))))))
(exists (($i_1@@22 Int) ) (!  (and (InRangeVec_78413 $range_0@@27 $i_1@@22) (let ((v@@73 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@27) $i_1@@22)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@73) _$t0@@10)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
)))) (= 7 $t7@0))))))))
(let ((anon14_Then_correct@@2  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t7@0 $abort_code@1@@2) (= (ControlFlow 0 227343) 227049))) L3_correct@@1)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct@@0|  (=> (= $abort_flag@0@@2 true) (=> (and (= $abort_code@1@@2 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@0| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0@@0|)) (and (=> (= (ControlFlow 0 227218) 227343) anon14_Then_correct@@2) (=> (= (ControlFlow 0 227218) 227329) anon14_Else_correct@@2))))))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct@@0|  (=> (and (not (InRangeVec_78413 $t14@0@@2 $t15@@0)) (= (ControlFlow 0 227216) 227218)) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct@@0|)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct@@0|  (=> (InRangeVec_78413 $t14@0@@2 $t15@@0) (=> (and (and (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@0| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t14@0@@2) $t15@@0)) (= $abort_flag@0@@2 false)) (and (= $abort_code@1@@2 $abort_code@0@@2) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@0| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@0|))) (and (=> (= (ControlFlow 0 227166) 227343) anon14_Then_correct@@2) (=> (= (ControlFlow 0 227166) 227329) anon14_Else_correct@@2))))))
(let ((anon13_Else_correct@@2  (=> (not $t16@@0) (=> (and (|$IsValid'u64'| $t15@@0) (= $t15@@0 (|Select__T@[Int]Int_| (|v#Vec_28829| (|$vec#$1_Option_Option'u64'| $t10@@2)) 0))) (and (=> (= (ControlFlow 0 227224) 227216) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct@@0|) (=> (= (ControlFlow 0 227224) 227166) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct@@0|))))))
(let ((anon13_Then_correct@@2  (=> $t16@@0 (=> (and (and (and (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t10@@2)) 0) (= 7 $t7@@1)) (= $t7@@1 $t7@@1)) (and (= $t7@0 $t7@@1) (= (ControlFlow 0 227367) 227049))) L3_correct@@1))))
(let ((anon12_Then_correct@@2  (=> $t11@@1 (=> (and (= $t14@0@@2 (|$validators#$1_DiemSystem_DiemSystem| $t5@@8)) (= $t16@@0 (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t10@@2)) 0))) (and (=> (= (ControlFlow 0 227065) 227367) anon13_Then_correct@@2) (=> (= (ControlFlow 0 227065) 227224) anon13_Else_correct@@2))))))
(let ((anon12_Else_correct@@2  (=> (and (and (not $t11@@1) (= $t13 $t13)) (and (= $t7@0 $t13) (= (ControlFlow 0 226989) 227049))) L3_correct@@1)))
(let ((anon11_Else_correct@@7  (=> (not $t6@@7) (=> (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t5@@8) (let (($range_0@@28 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t5@@8)))))
(let (($range_1@@7 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t5@@8)))))
(forall (($i_2@@4 Int) ($i_3@@7 Int) ) (!  (=> ($InRange $range_0@@28 $i_2@@4) (=> ($InRange $range_1@@7 $i_3@@7) (let ((i@@98 $i_2@@4))
(let ((j@@36 $i_3@@7))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t5@@8)) i@@98)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t5@@8)) j@@36))) (= i@@98 j@@36))))))
 :qid |DiemSystemcvc5bpl.8415:222|
 :skolemid |270|
))))) (=> (and (and (and (and (and (= (|$scheme#$1_DiemSystem_DiemSystem| $t5@@8) (|$scheme#$1_DiemSystem_DiemSystem| (let ((addr@@140 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@140))))) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| $t5@@8) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@140 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@140)))))) (= $t5@@8 $t5@@8)) (and (= $t8@0 (|$validators#$1_DiemSystem_DiemSystem| $t5@@8)) (= $t9@@8 (|l#Vec_87979| $t8@0)))) (and (and (|$IsValid'$1_Option_Option'u64''| $t10@@2) (<= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t10@@2)) 1)) (=> (let (($range_0@@29 ($Range 0 $t9@@8)))
(forall (($i_1@@23 Int) ) (!  (=> ($InRange $range_0@@29 $i_1@@23) (let ((i@@99 $i_1@@23))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t8@0) i@@99)) _$t0@@10))))
 :qid |DiemSystemcvc5bpl.8445:54|
 :skolemid |271|
))) (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t10@@2)) 0)))) (and (and (and (=> (let (($range_0@@30 ($Range 0 $t9@@8)))
(exists (($i_1@@24 Int) ) (!  (and ($InRange $range_0@@30 $i_1@@24) (let ((i@@100 $i_1@@24))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t8@0) i@@100)) _$t0@@10)))
 :qid |DiemSystemcvc5bpl.8449:54|
 :skolemid |272|
))) (and (not (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t10@@2)) 0)) (let ((at (|Select__T@[Int]Int_| (|v#Vec_28829| (|$vec#$1_Option_Option'u64'| $t10@@2)) 0)))
 (and (and (<= 0 at) (< at $t9@@8)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t8@0) at)) _$t0@@10))))) (= $t10@@2 $t10@@2)) (and (= $t11@@1  (not (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t10@@2)) 0))) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t13) (= $t13 7)) (and (= $t13 $t13) (= $t11@@1 $t11@@1))))) (and (=> (= (ControlFlow 0 226973) 227065) anon12_Then_correct@@2) (=> (= (ControlFlow 0 226973) 226989) anon12_Else_correct@@2)))))))
(let ((anon11_Then_correct@@7  (=> $t6@@7 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t7@@1)) (= $t7@@1 $t7@@1)) (and (= $t7@0 $t7@@1) (= (ControlFlow 0 227395) 227049))) L3_correct@@1))))
(let ((anon0$1_correct@@11  (=> (and (and (and (and (and (and (and (forall ((config_address@@14 Int) ) (!  (=> (|$IsValid'address'| config_address@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@14) (= config_address@@14 173345816)))
 :qid |DiemSystemcvc5bpl.8353:24|
 :skolemid |261|
)) (forall ((config_address@@15 Int) ) (!  (=> (|$IsValid'address'| config_address@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139800| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@15) (= config_address@@15 173345816)))
 :qid |DiemSystemcvc5bpl.8353:243|
 :skolemid |262|
))) (forall ((config_address@@16 Int) ) (!  (=> (|$IsValid'address'| config_address@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139881| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@16) (= config_address@@16 173345816)))
 :qid |DiemSystemcvc5bpl.8353:483|
 :skolemid |263|
))) (forall ((config_address@@17 Int) ) (!  (=> (|$IsValid'address'| config_address@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139962| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@17) (= config_address@@17 173345816)))
 :qid |DiemSystemcvc5bpl.8353:745|
 :skolemid |264|
))) (forall ((config_address@@18 Int) ) (!  (=> (|$IsValid'address'| config_address@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140043| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@18) (= config_address@@18 173345816)))
 :qid |DiemSystemcvc5bpl.8353:969|
 :skolemid |265|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (let (($range_0@@31 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@141 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@141))))))))
(forall (($i_1@@25 Int) ) (!  (=> ($InRange $range_0@@31 $i_1@@25) (let ((i1@@8 $i_1@@25))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@142 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@142))))) i1@@8))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@142 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@142))))) i1@@8)))) 3))))
 :qid |DiemSystemcvc5bpl.8361:151|
 :skolemid |266|
))) (let (($range_0@@32 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@143 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@143))))))))
(forall (($i_1@@26 Int) ) (!  (=> ($InRange $range_0@@32 $i_1@@26) (let ((i1@@9 $i_1@@26))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@144 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@144))))) i1@@9)) 1)))
 :qid |DiemSystemcvc5bpl.8366:151|
 :skolemid |267|
))))) (and (and (|$IsValid'address'| _$t0@@10) (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@19)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@19) (let (($range_1@@8 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@19))))))
(let (($range_2@@2 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@19))))))
(forall (($i_3@@8 Int) ($i_4@@2 Int) ) (!  (=> ($InRange $range_1@@8 $i_3@@8) (=> ($InRange $range_2@@2 $i_4@@2) (let ((i@@101 $i_3@@8))
(let ((j@@37 $i_4@@2))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@19))) i@@101)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@19))) j@@37))) (= i@@101 j@@37))))))
 :qid |DiemSystemcvc5bpl.8375:367|
 :skolemid |268|
))))))
 :qid |DiemSystemcvc5bpl.8374:20|
 :skolemid |269|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@19))
))) (and (= _$t0@@10 _$t0@@10) (= $t6@@7  (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 226664) 227395) anon11_Then_correct@@7) (=> (= (ControlFlow 0 226664) 226973) anon11_Else_correct@@7)))))
(let ((inline$$InitEventStore$0$anon0_correct@@11  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@16 T@$1_Event_EventHandle) ) (! (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@16)))
 (and (= (|l#Multiset_87682| stream@@16) 0) (forall ((v@@74 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@16) v@@74) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 226284) 226664)) anon0$1_correct@@11)))
(let ((anon0_correct@@11  (=> (= (ControlFlow 0 308292) 226284) inline$$InitEventStore$0$anon0_correct@@11)))
anon0_correct@@11))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1| () Int)
(declare-fun _$t0@@11 () T@Vec_87979)
(declare-fun _$t1@@8 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t8@0@@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $t12@1 () Bool)
(declare-fun $t5@@9 () Int)
(declare-fun $t16@0 () |T@$1_Option_Option'u64'|)
(declare-fun $t15@@1 () |T@$1_Option_Option'u64'|)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t11@1 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0@@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun inline$$Lt$0$dst@1@@2 () Bool)
(declare-fun $t17@@0 () |T@$1_Option_Option'u64'|)
(declare-fun $t10@0@@0 () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t11@0@@1 () Int)
(declare-fun $t13@0 () Int)
(declare-fun $t14@0@@3 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_get_validator_index_$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 309415) (let ((L9_correct  (=> (= (ControlFlow 0 228512) (- 0 310319)) false)))
(let ((anon22_Then_correct@@0  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 228502) 228512)) L9_correct))))
(let ((anon20_Then_correct@@0  (=> $abort_flag@0@@3 (=> (and (= $abort_code@1@@3 $abort_code@1@@3) (= (ControlFlow 0 228578) 228512)) L9_correct))))
(let ((anon22_Else_correct@@0  (=> (and (not $abort_flag@1) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (=> (= (ControlFlow 0 228488) (- 0 310273)) (<= inline$$AddU64$0$dst@2 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (=> (<= inline$$AddU64$0$dst@2 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|) (=> (= (ControlFlow 0 228488) (- 0 310280)) (let (($range_0@@33 ($Range 0 inline$$AddU64$0$dst@2)))
(forall (($i_1@@27 Int) ) (!  (=> ($InRange $range_0@@33 $i_1@@27) (let ((j@@38 $i_1@@27))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) j@@38)) _$t1@@8))))
 :qid |DiemSystemcvc5bpl.8900:49|
 :skolemid |277|
)))))))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 228419) 228502) anon22_Then_correct@@0) (=> (= (ControlFlow 0 228419) 228488) anon22_Else_correct@@0))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t8@0@@0 1) $MAX_U64) (= (ControlFlow 0 228417) 228419)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t8@0@@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t8@0@@0 1)) (= $abort_code@2 $abort_code@1@@3)) (and (= $abort_flag@1 $abort_flag@0@@3) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 228365) 228502) anon22_Then_correct@@0) (=> (= (ControlFlow 0 228365) 228488) anon22_Else_correct@@0))))))
(let ((anon21_Else_correct@@0  (=> (and (not $t12@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 228425) 228417) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 228425) 228365) inline$$AddU64$0$anon3_Else_correct)))))
(let ((L8_correct@@0  (and (=> (= (ControlFlow 0 228089) (- 0 310031)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 228089) (- 0 310038)) (=> (let (($range_0@@34 ($Range 0 $t5@@9)))
(forall (($i_1@@28 Int) ) (!  (=> ($InRange $range_0@@34 $i_1@@28) (let ((i@@102 $i_1@@28))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) i@@102)) _$t1@@8))))
 :qid |DiemSystemcvc5bpl.8919:49|
 :skolemid |278|
))) (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t16@0)) 0))) (=> (=> (let (($range_0@@35 ($Range 0 $t5@@9)))
(forall (($i_1@@29 Int) ) (!  (=> ($InRange $range_0@@35 $i_1@@29) (let ((i@@103 $i_1@@29))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) i@@103)) _$t1@@8))))
 :qid |DiemSystemcvc5bpl.8919:49|
 :skolemid |278|
))) (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t16@0)) 0)) (and (=> (= (ControlFlow 0 228089) (- 0 310081)) (=> (let (($range_0@@36 ($Range 0 $t5@@9)))
(exists (($i_1@@30 Int) ) (!  (and ($InRange $range_0@@36 $i_1@@30) (let ((i@@104 $i_1@@30))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) i@@104)) _$t1@@8)))
 :qid |DiemSystemcvc5bpl.8925:49|
 :skolemid |279|
))) (and (not (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t16@0)) 0)) (let ((at@@0 (|Select__T@[Int]Int_| (|v#Vec_28829| (|$vec#$1_Option_Option'u64'| $t16@0)) 0)))
 (and (and (<= 0 at@@0) (< at@@0 $t5@@9)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) at@@0)) _$t1@@8)))))) (=> (=> (let (($range_0@@37 ($Range 0 $t5@@9)))
(exists (($i_1@@31 Int) ) (!  (and ($InRange $range_0@@37 $i_1@@31) (let ((i@@105 $i_1@@31))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) i@@105)) _$t1@@8)))
 :qid |DiemSystemcvc5bpl.8925:49|
 :skolemid |279|
))) (and (not (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t16@0)) 0)) (let ((at@@1 (|Select__T@[Int]Int_| (|v#Vec_28829| (|$vec#$1_Option_Option'u64'| $t16@0)) 0)))
 (and (and (<= 0 at@@1) (< at@@1 $t5@@9)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) at@@1)) _$t1@@8))))) (=> (= (ControlFlow 0 228089) (- 0 310155)) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@145 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@145)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@146 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@146))))))))))))))
(let ((anon21_Then_correct@@0  (=> $t12@1 (and (=> (= (ControlFlow 0 228564) (- 0 309974)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) $t8@0@@0)) _$t1@@8)) (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) $t8@0@@0)) _$t1@@8) (=> (and (|$IsValid'$1_Option_Option'u64''| $t15@@1) (<= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t15@@1)) 1)) (=> (and (and (|$IsEqual'vec'u64''| (|$vec#$1_Option_Option'u64'| $t15@@1) (|$vec#$1_Option_Option'u64'| (|$1_Option_Option'u64'| (Vec_28829 (|Store__T@[Int]Int_| (MapConstVec_12393 DefaultVecElem_12393) 0 $t8@0@@0) 1)))) (= $t15@@1 $t15@@1)) (and (= $t16@0 $t15@@1) (= (ControlFlow 0 228564) 228089))) L8_correct@@0)))))))
(let ((anon20_Else_correct@@0  (=> (and (and (not $abort_flag@0@@3) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1|)) (and (= $t11@1 (|$addr#$1_DiemSystem_ValidatorInfo| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1|)) (= $t12@1 (= $t11@1 _$t1@@8)))) (and (=> (= (ControlFlow 0 228260) 228564) anon21_Then_correct@@0) (=> (= (ControlFlow 0 228260) 228425) anon21_Else_correct@@0)))))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct@@1|  (=> (= $abort_flag@0@@3 true) (=> (and (= $abort_code@1@@3 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0@@1|)) (and (=> (= (ControlFlow 0 228228) 228578) anon20_Then_correct@@0) (=> (= (ControlFlow 0 228228) 228260) anon20_Else_correct@@0))))))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct@@1|  (=> (and (not (InRangeVec_78413 _$t0@@11 $t8@0@@0)) (= (ControlFlow 0 228226) 228228)) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct@@1|)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct@@1|  (=> (InRangeVec_78413 _$t0@@11 $t8@0@@0) (=> (and (and (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@1| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) $t8@0@@0)) (= $abort_flag@0@@3 false)) (and (= $abort_code@1@@3 $abort_code@0@@3) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@1|))) (and (=> (= (ControlFlow 0 228176) 228578) anon20_Then_correct@@0) (=> (= (ControlFlow 0 228176) 228260) anon20_Else_correct@@0))))))
(let ((anon19_Then_correct  (=> inline$$Lt$0$dst@1@@2 (and (=> (= (ControlFlow 0 228234) 228226) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct@@1|) (=> (= (ControlFlow 0 228234) 228176) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct@@1|)))))
(let ((anon19_Else_correct  (=> (not inline$$Lt$0$dst@1@@2) (and (=> (= (ControlFlow 0 227943) (- 0 309783)) (= $t8@0@@0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (=> (= $t8@0@@0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|) (and (=> (= (ControlFlow 0 227943) (- 0 309790)) (let (($range_0@@38 ($Range 0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)))
(forall (($i_1@@32 Int) ) (!  (=> ($InRange $range_0@@38 $i_1@@32) (let ((j@@39 $i_1@@32))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) j@@39)) _$t1@@8))))
 :qid |DiemSystemcvc5bpl.8861:48|
 :skolemid |276|
)))) (=> (let (($range_0@@39 ($Range 0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)))
(forall (($i_1@@33 Int) ) (!  (=> ($InRange $range_0@@39 $i_1@@33) (let ((j@@40 $i_1@@33))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) j@@40)) _$t1@@8))))
 :qid |DiemSystemcvc5bpl.8861:48|
 :skolemid |276|
))) (=> (and (|$IsValid'$1_Option_Option'u64''| $t17@@0) (<= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t17@@0)) 1)) (=> (and (and (|$IsEqual'vec'u64''| (|$vec#$1_Option_Option'u64'| $t17@@0) (|$vec#$1_Option_Option'u64'| (|$1_Option_Option'u64'| (Vec_28829 (MapConstVec_12393 DefaultVecElem_12393) 0)))) (= $t17@@0 $t17@@0)) (and (= $t16@0 $t17@@0) (= (ControlFlow 0 227943) 228089))) L8_correct@@0)))))))))
(let ((anon18_Else$1_correct  (and (=> (= (ControlFlow 0 227858) 228234) anon19_Then_correct) (=> (= (ControlFlow 0 227858) 227943) anon19_Else_correct))))
(let ((inline$$Lt$0$anon0_correct@@2  (=> (and (= inline$$Lt$0$dst@1@@2 (< $t8@0@@0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (= (ControlFlow 0 227848) 227858)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1| |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (and (|$IsValid'u64'| 0) (= 0 0))) (and (=> (= (ControlFlow 0 227854) (- 0 309621)) (<= 0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (=> (<= 0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|) (and (=> (= (ControlFlow 0 227854) (- 0 309628)) (let (($range_0@@40 ($Range 0 0)))
(forall (($i_1@@34 Int) ) (!  (=> ($InRange $range_0@@40 $i_1@@34) (let ((j@@41 $i_1@@34))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) j@@41)) _$t1@@8))))
 :qid |DiemSystemcvc5bpl.8705:48|
 :skolemid |274|
)))) (=> (let (($range_0@@41 ($Range 0 0)))
(forall (($i_1@@35 Int) ) (!  (=> ($InRange $range_0@@41 $i_1@@35) (let ((j@@42 $i_1@@35))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) j@@42)) _$t1@@8))))
 :qid |DiemSystemcvc5bpl.8705:48|
 :skolemid |274|
))) (=> (|$IsValid'u64'| $t8@0@@0) (=> (and (and (and (|$IsValid'$1_DiemSystem_ValidatorInfo'| $t10@0@@0) (|$IsValid'address'| $t11@0@@1)) (and (|$IsValid'u64'| $t13@0) (|$IsValid'u64'| $t14@0@@3))) (and (and (not false) (<= $t8@0@@0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (and (let (($range_0@@42 ($Range 0 $t8@0@@0)))
(forall (($i_1@@36 Int) ) (!  (=> ($InRange $range_0@@42 $i_1@@36) (let ((j@@43 $i_1@@36))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t0@@11) j@@43)) _$t1@@8))))
 :qid |DiemSystemcvc5bpl.8745:53|
 :skolemid |275|
))) (= (ControlFlow 0 227854) 227848)))) inline$$Lt$0$anon0_correct@@2)))))))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1| (|l#Vec_87979| _$t0@@11)) (and (=> (= (ControlFlow 0 227644) 228592) anon18_Then_correct) (=> (= (ControlFlow 0 227644) 227854) anon18_Else_correct)))))
(let ((anon0$1_correct@@12  (=> (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| _$t0@@11) (|$IsValid'address'| _$t1@@8)) (=> (and (and (= $t5@@9 (|l#Vec_87979| _$t0@@11)) (= _$t0@@11 _$t0@@11)) (and (= _$t1@@8 _$t1@@8) (= (ControlFlow 0 227650) 227644))) |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|))))
(let ((inline$$InitEventStore$0$anon0_correct@@12  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@17 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@17)))
 (and (= (|l#Multiset_87682| stream@@17) 0) (forall ((v@@75 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@17) v@@75) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 227564) 227650)) anon0$1_correct@@12)))
(let ((anon0_correct@@12  (=> (= (ControlFlow 0 309415) 227564) inline$$InitEventStore$0$anon0_correct@@12)))
anon0_correct@@12)))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| () T@$Memory_125534)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory@1 () T@$Memory_125607)
(declare-fun $t5@@10 () Int)
(declare-fun _$t0@@12 () T@$signer)
(declare-fun $t4@@8 () Int)
(declare-fun $t7@0@@0 () Int)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory@0 () T@$Memory_125607)
(declare-fun |Store__T@[Int]$1_DiemSystem_CapabilityHolder_| (|T@[Int]$1_DiemSystem_CapabilityHolder| Int T@$1_DiemSystem_CapabilityHolder) |T@[Int]$1_DiemSystem_CapabilityHolder|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemSystem_CapabilityHolder|) ( ?x1 Int) ( ?x2 T@$1_DiemSystem_CapabilityHolder)) (! (= (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|Store__T@[Int]$1_DiemSystem_CapabilityHolder_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemSystem_CapabilityHolder|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemSystem_CapabilityHolder)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|Store__T@[Int]$1_DiemSystem_CapabilityHolder_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| ?x0 ?y1))) :weight 0)))
(declare-fun $t21@0 () T@$1_DiemSystem_CapabilityHolder)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun $t14@@1 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(declare-fun $t20@@1 () Int)
(declare-fun $t17@0@@0 () Bool)
(declare-fun $t12@0@@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun |$temp_0'bool'@0@@7| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0| () T@$Memory_125534)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0| () T@$Memory_125534)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t15@@2 () Bool)
(declare-fun $t13@@0 () Int)
(declare-fun $t7@@2 () Int)
(declare-fun |inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$v@1| () T@Vec_87979)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $t9@@9 () Bool)
(declare-fun $t8@@4 () Int)
(declare-fun $t6@@8 () Bool)
(declare-fun MapConstVec_78433 (T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_initialize_validator_set$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 310338) (let ((anon28_Else_correct  (=> (not $abort_flag@0@@4) (and (=> (= (ControlFlow 0 230082) (- 0 311924)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory@1) 173345816)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory@1) 173345816))) (and (=> (= (ControlFlow 0 230082) (- 0 311946)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 230082) (- 0 311956)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t5@@10)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t5@@10))) (and (=> (= (ControlFlow 0 230082) (- 0 311968)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t5@@10)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t5@@10)) 0))) (and (=> (= (ControlFlow 0 230082) (- 0 311986)) (not (not (= (|$addr#$signer| _$t0@@12) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@12) 173345816))) (and (=> (= (ControlFlow 0 230082) (- 0 312000)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 230082) (- 0 312008)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) $t4@@8))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) $t4@@8)) (and (=> (= (ControlFlow 0 230082) (- 0 312018)) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory@1) $t4@@8)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory@1) $t4@@8) (and (=> (= (ControlFlow 0 230082) (- 0 312026)) (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816) (=> (= (ControlFlow 0 230082) (- 0 312032)) (= (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@147 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@147))))) 0)))))))))))))))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 229924) (- 0 311767)) (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t5@@10))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t5@@10)) 0))) (not (= (|$addr#$signer| _$t0@@12) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) $t4@@8))) (=> (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t5@@10))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t5@@10)) 0))) (not (= (|$addr#$signer| _$t0@@12) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) $t4@@8)) (=> (= (ControlFlow 0 229924) (- 0 311819)) (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t7@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t5@@10)) (= 5 $t7@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t5@@10)) 0)) (= 3 $t7@0@@0))) (and (not (= (|$addr#$signer| _$t0@@12) 173345816)) (= 2 $t7@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (= 6 $t7@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) $t4@@8) (= 6 $t7@0@@0))))))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t7@0@@0 $abort_code@1@@4) (= (ControlFlow 0 230096) 229924))) L3_correct@@2)))
(let ((anon27_Then$1_correct  (=> (= $1_DiemSystem_CapabilityHolder_$memory@1 $1_DiemSystem_CapabilityHolder_$memory) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 230148) 230096) anon28_Then_correct) (=> (= (ControlFlow 0 230148) 230082) anon28_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) (|$addr#$signer| _$t0@@12)) (= (ControlFlow 0 230146) 230148)) anon27_Then$1_correct)))
(let ((anon27_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) (|$addr#$signer| _$t0@@12))) (=> (and (and (= $1_DiemSystem_CapabilityHolder_$memory@0 ($Memory_125607 (|Store__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) (|$addr#$signer| _$t0@@12) true) (|Store__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) (|$addr#$signer| _$t0@@12) $t21@0))) (= $1_DiemSystem_CapabilityHolder_$memory@1 $1_DiemSystem_CapabilityHolder_$memory@0)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 229954) 230096) anon28_Then_correct) (=> (= (ControlFlow 0 229954) 230082) anon28_Else_correct))))))
(let ((anon26_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@1 (= $t21@0 ($1_DiemSystem_CapabilityHolder $t14@@1))) (and (=> (= (ControlFlow 0 229932) 230146) anon27_Then_correct) (=> (= (ControlFlow 0 229932) 229954) anon27_Else_correct)))))
(let ((anon26_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@1) (= $t20@@1 $t20@@1)) (and (= $t7@0@@0 $t20@@1) (= (ControlFlow 0 229752) 229924))) L3_correct@@2)))
(let ((anon11$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t20@@1) (= $t20@@1 6)) (and (= $t20@@1 $t20@@1) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 229736) 229932) anon26_Then_correct@@0) (=> (= (ControlFlow 0 229736) 229752) anon26_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not $t17@0@@0)) (= (ControlFlow 0 229696) 229736)) anon11$1_correct)))
(let ((anon11_correct@@0  (=> (and (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| $t14@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) (=> (and (and (and (= (|$scheme#$1_DiemSystem_DiemSystem| (let ((addr@@148 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@148)))) (|$scheme#$1_DiemSystem_DiemSystem| $t12@0@@0)) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@148 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@148)))) (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0))) (= (|Select__T@[Int]Bool_| (|domain#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816))) (and (and (= $t14@@1 $t14@@1) (|$IsValid'address'| 173345816)) (and (= $t17@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) 173345816)) (= (ControlFlow 0 229702) 229696)))) inline$$Not$0$anon0_correct@@1))))
(let ((anon25_Else_correct@@0  (=> (and (and (not |$temp_0'bool'@0@@7|) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0| ($Memory_125534 (|Store__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0|) (= (ControlFlow 0 229618) 229702))) anon11_correct@@0)))
(let ((anon25_Then_correct@@0  (=> (and (and |$temp_0'bool'@0@@7| (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0| ($Memory_125534 (|Store__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@0|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0|) (= (ControlFlow 0 230160) 229702))) anon11_correct@@0)))
(let ((anon24_Else_correct@@0  (=> (not $t15@@2) (and (=> (= (ControlFlow 0 229606) 230160) anon25_Then_correct@@0) (=> (= (ControlFlow 0 229606) 229618) anon25_Else_correct@@0)))))
(let ((anon24_Then_correct@@0  (=> $t15@@2 (=> (and (and (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@0)) (= 5 $t7@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@0)) 0)) (= 3 $t7@@2))) (and (not (= (|$addr#$signer| _$t0@@12) 173345816)) (= 2 $t7@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (= 6 $t7@@2))) (= $t7@@2 $t7@@2)) (and (= $t7@0@@0 $t7@@2) (= (ControlFlow 0 230248) 229924))) L3_correct@@2))))
(let ((anon23_Else_correct@@0  (=> (and (not false) (= $t12@0@@0 ($1_DiemSystem_DiemSystem 0 |inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (and (=> (= (ControlFlow 0 229598) (- 0 311251)) (let (($range_0@@43 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)))))
(let (($range_1@@9 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)))))
(forall (($i_2@@5 Int) ($i_3@@9 Int) ) (!  (=> ($InRange $range_0@@43 $i_2@@5) (=> ($InRange $range_1@@9 $i_3@@9) (let ((i@@106 $i_2@@5))
(let ((j@@44 $i_3@@9))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)) i@@106)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)) j@@44))) (= i@@106 j@@44))))))
 :qid |DiemSystemcvc5bpl.9461:175|
 :skolemid |296|
))))) (=> (let (($range_0@@44 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)))))
(let (($range_1@@10 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)))))
(forall (($i_2@@6 Int) ($i_3@@10 Int) ) (!  (=> ($InRange $range_0@@44 $i_2@@6) (=> ($InRange $range_1@@10 $i_3@@10) (let ((i@@107 $i_2@@6))
(let ((j@@45 $i_3@@10))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)) i@@107)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)) j@@45))) (= i@@107 j@@45))))))
 :qid |DiemSystemcvc5bpl.9461:175|
 :skolemid |296|
)))) (=> (= $t13@@0 (|$addr#$signer| _$t0@@12)) (and (=> (= (ControlFlow 0 229598) (- 0 311344)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| 173345816) (=> (= $t15@@2  (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@0)) 0))) (not (= (|$addr#$signer| _$t0@@12) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 229598) 230248) anon24_Then_correct@@0) (=> (= (ControlFlow 0 229598) 229606) anon24_Else_correct@@0)))))))))))
(let ((anon22_Then_correct@@1  (=> $t9@@9 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t0@@12) 173345816)) (= 2 $t7@@2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t8@@4)) (= 5 $t7@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t8@@4)) 0)) (= 3 $t7@@2))) (and (not (= (|$addr#$signer| _$t0@@12) 173345816)) (= 2 $t7@@2))) (= $t7@@2 $t7@@2)) (and (= $t7@0@@0 $t7@@2) (= (ControlFlow 0 230354) 229924))) L3_correct@@2))))
(let ((anon21_Then_correct@@1  (=> $t6@@8 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t7@@2)) (= $t7@@2 $t7@@2)) (and (= $t7@0@@0 $t7@@2) (= (ControlFlow 0 230380) 229924))) L3_correct@@2))))
(let ((anon23_Then_correct@@0 true))
(let ((|inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$v@1| (Vec_87979 (MapConstVec_78433 DefaultVecElem_78433) 0)) (and (=> (= (ControlFlow 0 229425) 230262) anon23_Then_correct@@0) (=> (= (ControlFlow 0 229425) 229598) anon23_Else_correct@@0)))))
(let ((anon22_Else_correct@@1  (=> (not $t9@@9) (=> (and (|$IsValid'u8'| 0) (= (ControlFlow 0 229431) 229425)) |inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|))))
(let ((anon21_Else_correct@@1  (=> (not $t6@@8) (=> (and (= $t8@@4 (|$addr#$signer| _$t0@@12)) (= $t9@@9  (or (or (or (not (= (|$addr#$signer| _$t0@@12) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t8@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t8@@4)) 0))) (not (= (|$addr#$signer| _$t0@@12) 173345816))))) (and (=> (= (ControlFlow 0 229389) 230354) anon22_Then_correct@@1) (=> (= (ControlFlow 0 229389) 229431) anon22_Else_correct@@1))))))
(let ((anon0$1_correct@@13  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@149 Int) ) (!  (=> (|$IsValid'address'| addr@@149) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_138029| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@149) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@149) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@149)) 4))))
 :qid |DiemSystemcvc5bpl.9288:20|
 :skolemid |280|
))) (=> (and (and (forall ((addr@@150 Int) ) (!  (=> (|$IsValid'address'| addr@@150) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@150) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@150) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@150)) 3))))
 :qid |DiemSystemcvc5bpl.9292:20|
 :skolemid |281|
)) (forall ((addr@@151 Int) ) (!  (=> (|$IsValid'address'| addr@@151) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@151) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@151) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@151)) 3))))
 :qid |DiemSystemcvc5bpl.9296:20|
 :skolemid |282|
))) (and (forall ((addr@@152 Int) ) (!  (=> (|$IsValid'address'| addr@@152) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@152) (not (= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@152)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@152) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@152)) 3))))
 :qid |DiemSystemcvc5bpl.9300:20|
 :skolemid |283|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816)))) (=> (and (and (and (and (and (and (and (forall ((config_address@@19 Int) ) (!  (=> (|$IsValid'address'| config_address@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@19) (= config_address@@19 173345816)))
 :qid |DiemSystemcvc5bpl.9308:24|
 :skolemid |284|
)) (forall ((config_address@@20 Int) ) (!  (=> (|$IsValid'address'| config_address@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139800| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@20) (= config_address@@20 173345816)))
 :qid |DiemSystemcvc5bpl.9308:243|
 :skolemid |285|
))) (forall ((config_address@@21 Int) ) (!  (=> (|$IsValid'address'| config_address@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139881| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@21) (= config_address@@21 173345816)))
 :qid |DiemSystemcvc5bpl.9308:483|
 :skolemid |286|
))) (forall ((config_address@@22 Int) ) (!  (=> (|$IsValid'address'| config_address@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139962| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@22) (= config_address@@22 173345816)))
 :qid |DiemSystemcvc5bpl.9308:745|
 :skolemid |287|
))) (forall ((config_address@@23 Int) ) (!  (=> (|$IsValid'address'| config_address@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140043| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@23) (= config_address@@23 173345816)))
 :qid |DiemSystemcvc5bpl.9308:969|
 :skolemid |288|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (and (let (($range_0@@45 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@153 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@153))))))))
(forall (($i_1@@37 Int) ) (!  (=> ($InRange $range_0@@45 $i_1@@37) (let ((i1@@10 $i_1@@37))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@154 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@154))))) i1@@10))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@154 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@154))))) i1@@10)))) 3))))
 :qid |DiemSystemcvc5bpl.9316:151|
 :skolemid |289|
))) (let (($range_0@@46 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@155 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@155))))))))
(forall (($i_1@@38 Int) ) (!  (=> ($InRange $range_0@@46 $i_1@@38) (let ((i1@@11 $i_1@@38))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@156 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@156))))) i1@@11)) 1)))
 :qid |DiemSystemcvc5bpl.9321:151|
 :skolemid |290|
)))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@12)) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@20)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@20))
 :qid |DiemSystemcvc5bpl.9328:20|
 :skolemid |291|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@20))
))))) (and (and (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@21)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@21))
 :qid |DiemSystemcvc5bpl.9332:20|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@21))
)) (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@22)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@22) (let (($range_1@@11 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@22))))))
(let (($range_2@@3 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@22))))))
(forall (($i_3@@11 Int) ($i_4@@3 Int) ) (!  (=> ($InRange $range_1@@11 $i_3@@11) (=> ($InRange $range_2@@3 $i_4@@3) (let ((i@@108 $i_3@@11))
(let ((j@@46 $i_4@@3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@22))) i@@108)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@22))) j@@46))) (= i@@108 j@@46))))))
 :qid |DiemSystemcvc5bpl.9337:367|
 :skolemid |293|
))))))
 :qid |DiemSystemcvc5bpl.9336:20|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@22))
))) (and (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@23)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@23))
 :qid |DiemSystemcvc5bpl.9342:20|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@23))
)) (= $t4@@8 (|$addr#$signer| _$t0@@12)))) (and (and (= $t5@@10 (|$addr#$signer| _$t0@@12)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| 173345816)) (and (= _$t0@@12 _$t0@@12) (= $t6@@8  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 229317) 230380) anon21_Then_correct@@1) (=> (= (ControlFlow 0 229317) 229389) anon21_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@13  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@18 T@$1_Event_EventHandle) ) (! (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@18)))
 (and (= (|l#Multiset_87682| stream@@18) 0) (forall ((v@@76 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@18) v@@76) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 228727) 229317)) anon0$1_correct@@13)))
(let ((anon0_correct@@13  (=> (= (ControlFlow 0 310338) 228727) inline$$InitEventStore$0$anon0_correct@@13)))
anon0_correct@@13))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t4@@9 () Bool)
(declare-fun $t3@@6 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t6@0@@1 () T@Vec_87979)
(declare-fun $t7@@3 () Bool)
(declare-fun _$t0@@13 () Int)
(declare-fun $t5@@11 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_is_validator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 312051) (let ((anon4_Else_correct@@0  (=> (not $t4@@9) (=> (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t3@@6) (let (($range_0@@47 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t3@@6)))))
(let (($range_1@@12 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t3@@6)))))
(forall (($i_2@@7 Int) ($i_3@@12 Int) ) (!  (=> ($InRange $range_0@@47 $i_2@@7) (=> ($InRange $range_1@@12 $i_3@@12) (let ((i@@109 $i_2@@7))
(let ((j@@47 $i_3@@12))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t3@@6)) i@@109)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t3@@6)) j@@47))) (= i@@109 j@@47))))))
 :qid |DiemSystemcvc5bpl.9773:222|
 :skolemid |306|
))))) (and (= (|$scheme#$1_DiemSystem_DiemSystem| $t3@@6) (|$scheme#$1_DiemSystem_DiemSystem| (let ((addr@@157 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@157))))) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| $t3@@6) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@157 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@157))))))) (and (and (= $t3@@6 $t3@@6) (= $t6@0@@1 (|$validators#$1_DiemSystem_DiemSystem| $t3@@6))) (and (= $t7@@3 (let (($range_0@@48 $t6@0@@1))
(exists (($i_1@@39 Int) ) (!  (and (InRangeVec_78413 $range_0@@48 $i_1@@39) (let ((v@@77 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@48) $i_1@@39)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@77) _$t0@@13)))
 :qid |DiemSystemcvc5bpl.9797:62|
 :skolemid |307|
)))) (= $t7@@3 $t7@@3)))) (and (=> (= (ControlFlow 0 231187) (- 0 312690)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 231187) (- 0 312702)) (= $t7@@3 (let (($range_0@@49 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@158 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@158))))))
(exists (($i_1@@40 Int) ) (!  (and (InRangeVec_78413 $range_0@@49 $i_1@@40) (let ((v@@78 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@49) $i_1@@40)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@78) _$t0@@13)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
))))) (=> (= $t7@@3 (let (($range_0@@50 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@159 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@159))))))
(exists (($i_1@@41 Int) ) (!  (and (InRangeVec_78413 $range_0@@50 $i_1@@41) (let ((v@@79 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@50) $i_1@@41)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@79) _$t0@@13)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
)))) (=> (= (ControlFlow 0 231187) (- 0 312714)) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@160 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@160)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@161 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@161))))))))))))))
(let ((anon4_Then_correct@@0  (=> $t4@@9 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t5@@11)) (= $t5@@11 $t5@@11)) (and (=> (= (ControlFlow 0 231245) (- 0 312496)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (= (ControlFlow 0 231245) (- 0 312503)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t5@@11)))))))))
(let ((anon0$1_correct@@14  (=> (and (and (and (and (and (forall ((config_address@@24 Int) ) (!  (=> (|$IsValid'address'| config_address@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@24) (= config_address@@24 173345816)))
 :qid |DiemSystemcvc5bpl.9708:24|
 :skolemid |297|
)) (forall ((config_address@@25 Int) ) (!  (=> (|$IsValid'address'| config_address@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139800| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@25) (= config_address@@25 173345816)))
 :qid |DiemSystemcvc5bpl.9708:243|
 :skolemid |298|
))) (forall ((config_address@@26 Int) ) (!  (=> (|$IsValid'address'| config_address@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139881| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@26) (= config_address@@26 173345816)))
 :qid |DiemSystemcvc5bpl.9708:483|
 :skolemid |299|
))) (forall ((config_address@@27 Int) ) (!  (=> (|$IsValid'address'| config_address@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139962| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@27) (= config_address@@27 173345816)))
 :qid |DiemSystemcvc5bpl.9708:745|
 :skolemid |300|
))) (forall ((config_address@@28 Int) ) (!  (=> (|$IsValid'address'| config_address@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140043| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@28) (= config_address@@28 173345816)))
 :qid |DiemSystemcvc5bpl.9708:969|
 :skolemid |301|
))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (let (($range_0@@51 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@162 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@162))))))))
(forall (($i_1@@42 Int) ) (!  (=> ($InRange $range_0@@51 $i_1@@42) (let ((i1@@12 $i_1@@42))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@163 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@163))))) i1@@12))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@163 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@163))))) i1@@12)))) 3))))
 :qid |DiemSystemcvc5bpl.9716:151|
 :skolemid |302|
)))) (and (let (($range_0@@52 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@164 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@164))))))))
(forall (($i_1@@43 Int) ) (!  (=> ($InRange $range_0@@52 $i_1@@43) (let ((i1@@13 $i_1@@43))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@165 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@165))))) i1@@13)) 1)))
 :qid |DiemSystemcvc5bpl.9721:151|
 :skolemid |303|
))) (|$IsValid'address'| _$t0@@13))) (and (and (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@24)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@24) (let (($range_1@@13 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@24))))))
(let (($range_2@@4 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@24))))))
(forall (($i_3@@13 Int) ($i_4@@4 Int) ) (!  (=> ($InRange $range_1@@13 $i_3@@13) (=> ($InRange $range_2@@4 $i_4@@4) (let ((i@@110 $i_3@@13))
(let ((j@@48 $i_4@@4))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@24))) i@@110)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@24))) j@@48))) (= i@@110 j@@48))))))
 :qid |DiemSystemcvc5bpl.9730:367|
 :skolemid |304|
))))))
 :qid |DiemSystemcvc5bpl.9729:20|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@24))
)) (= _$t0@@13 _$t0@@13)) (and (= _$t0@@13 _$t0@@13) (= $t4@@9  (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))))))) (and (=> (= (ControlFlow 0 230991) 231245) anon4_Then_correct@@0) (=> (= (ControlFlow 0 230991) 231187) anon4_Else_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@14  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@19 T@$1_Event_EventHandle) ) (! (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@19)))
 (and (= (|l#Multiset_87682| stream@@19) 0) (forall ((v@@80 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@19) v@@80) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 230605) 230991)) anon0$1_correct@@14)))
(let ((anon0_correct@@14  (=> (= (ControlFlow 0 312051) 230605) inline$$InitEventStore$0$anon0_correct@@14)))
anon0_correct@@14))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@14 () Int)
(declare-fun _$t1@@9 () T@Vec_87979)
(declare-fun $t3@@7 () Int)
(declare-fun $t4@@10 () |T@$1_Option_Option'u64'|)
(declare-fun $t5@@12 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_is_validator_$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 312732) (let ((anon0$1_correct@@15  (=> (|$IsValid'address'| _$t0@@14) (=> (and (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| _$t1@@9) (= _$t0@@14 _$t0@@14)) (and (= _$t1@@9 _$t1@@9) (= $t3@@7 (|l#Vec_87979| _$t1@@9)))) (=> (and (and (and (|$IsValid'$1_Option_Option'u64''| $t4@@10) (<= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t4@@10)) 1)) (=> (let (($range_0@@53 ($Range 0 $t3@@7)))
(forall (($i_1@@44 Int) ) (!  (=> ($InRange $range_0@@53 $i_1@@44) (let ((i@@111 $i_1@@44))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t1@@9) i@@111)) _$t0@@14))))
 :qid |DiemSystemcvc5bpl.9902:54|
 :skolemid |308|
))) (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t4@@10)) 0))) (and (and (=> (let (($range_0@@54 ($Range 0 $t3@@7)))
(exists (($i_1@@45 Int) ) (!  (and ($InRange $range_0@@54 $i_1@@45) (let ((i@@112 $i_1@@45))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t1@@9) i@@112)) _$t0@@14)))
 :qid |DiemSystemcvc5bpl.9906:54|
 :skolemid |309|
))) (and (not (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t4@@10)) 0)) (let ((at@@2 (|Select__T@[Int]Int_| (|v#Vec_28829| (|$vec#$1_Option_Option'u64'| $t4@@10)) 0)))
 (and (and (<= 0 at@@2) (< at@@2 $t3@@7)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| _$t1@@9) at@@2)) _$t0@@14))))) (= $t4@@10 $t4@@10)) (and (= $t5@@12  (not (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t4@@10)) 0))) (= $t5@@12 $t5@@12)))) (and (=> (= (ControlFlow 0 231636) (- 0 312972)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 231636) (- 0 312979)) (= $t5@@12 (let (($range_0@@55 _$t1@@9))
(exists (($i_1@@46 Int) ) (!  (and (InRangeVec_78413 $range_0@@55 $i_1@@46) (let ((v@@81 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@55) $i_1@@46)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@81) _$t0@@14)))
 :qid |DiemSystemcvc5bpl.9942:57|
 :skolemid |310|
))))) (=> (= $t5@@12 (let (($range_0@@56 _$t1@@9))
(exists (($i_1@@47 Int) ) (!  (and (InRangeVec_78413 $range_0@@56 $i_1@@47) (let ((v@@82 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@56) $i_1@@47)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@82) _$t0@@14)))
 :qid |DiemSystemcvc5bpl.9942:57|
 :skolemid |310|
)))) (=> (= (ControlFlow 0 231636) (- 0 313015)) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@166 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@166)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@167 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@167)))))))))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@15  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@20 T@$1_Event_EventHandle) ) (! (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@20)))
 (and (= (|l#Multiset_87682| stream@@20) 0) (forall ((v@@83 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@20) v@@83) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 231365) 231636)) anon0$1_correct@@15)))
(let ((anon0_correct@@15  (=> (= (ControlFlow 0 312732) 231365) inline$$InitEventStore$0$anon0_correct@@15)))
anon0_correct@@15))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t37 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@0 () T@$Memory_140236)
(declare-fun $t38@@0 () Int)
(declare-fun $t39 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1| () T@$Memory_125534)
(declare-fun $t4@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t40 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t41@@0 () T@$1_Event_EventHandle)
(declare-fun $t35@@0 () T@$1_Event_EventHandle)
(declare-fun $t42@@0 () Bool)
(declare-fun $t34@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t43@@0 () T@Vec_87979)
(declare-fun $t44@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t45@@0 () Int)
(declare-fun $t46@@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun _$t1@@10 () Int)
(declare-fun $t7@@4 () Int)
(declare-fun _$t0@@15 () T@$signer)
(declare-fun $t8@@5 () T@$1_DiemConfig_Configuration)
(declare-fun $t9@@10 () Int)
(declare-fun $t13@@1 () Int)
(declare-fun $t10@@3 () T@Vec_87979)
(declare-fun $t11@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t12@@0 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@1@@0| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@0 () T@$Memory_140236)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@0 () T@$Memory_140236)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@0| () T@$1_DiemConfig_Configuration)
(declare-fun |$temp_0'bool'@0@@8| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1| () T@$Memory_125534)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1| () T@$Memory_125534)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t36 () Bool)
(declare-fun $t15@0@@0 () Int)
(declare-fun $t15@@3 () Int)
(declare-fun $t32 () T@$1_DiemConfig_Configuration)
(declare-fun $t33 () Int)
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $t28@1 () T@$Mutation_142214)
(declare-fun $t28@0 () T@$Mutation_142214)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| () T@$Mutation_98322)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@1| () |T@[Int]Bool|)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@0| () T@$Mutation_98322)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| () T@Vec_87979)
(declare-fun $t26@@0 () Int)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$e@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_98322)
(declare-fun $t29@0 () T@$Mutation_98322)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| () Int)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t27 () Bool)
(declare-fun $t22@@0 () |T@$1_Option_Option'u64'|)
(declare-fun $t4@@11 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t23@@1 () Bool)
(declare-fun $t25@@1 () Int)
(declare-fun $t18@@0 () Bool)
(declare-fun $t20@0 () T@Vec_87979)
(declare-fun $t21@@0 () Int)
(declare-fun $t17@@1 () Bool)
(declare-fun $t16@@1 () Int)
(declare-fun $t14@@2 () Bool)
(declare-fun $t28@@0 () T@$Mutation_142214)
(declare-fun $t29@@0 () T@$Mutation_98322)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_remove_validator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 313036) (let ((anon21_correct  (=> (= $t37 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory@2@@0) 173345816)) (=> (and (and (= $t38@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t39 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t37)))) (and (= (|$scheme#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) 173345816))) (|$scheme#$1_DiemSystem_DiemSystem| $t4@0)) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) 173345816))) (|$validators#$1_DiemSystem_DiemSystem| $t4@0)))) (=> (and (and (and (= $t40 $t39) (= $t41@@0 $t35@@0)) (and (= $t42@@0  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t38@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t34@@0))))) (= $es@0@@0 (ite $t42@@0 (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) $t41@@0)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_87682| stream@@21)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t40))))
(Multiset_87682 (|Store__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t40) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) $t41@@0 stream_new@@3)))) $es)))) (and (and (= $t43@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@168 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) addr@@168))))) (= $t44@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory@2@@0) 173345816))) (and (= $t45@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t46@@0 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t44@@0)))))) (and (=> (= (ControlFlow 0 234201) (- 0 315538)) (not (not (let (($range_0@@57 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@169 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@169))))))
(exists (($i_1@@48 Int) ) (!  (and (InRangeVec_78413 $range_0@@57 $i_1@@48) (let ((v@@84 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@57) $i_1@@48)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@84) _$t1@@10)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
)))))) (=> (not (not (let (($range_0@@58 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@170 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@170))))))
(exists (($i_1@@49 Int) ) (!  (and (InRangeVec_78413 $range_0@@58 $i_1@@49) (let ((v@@85 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@58) $i_1@@49)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@85) _$t1@@10)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
))))) (and (=> (= (ControlFlow 0 234201) (- 0 315549)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t7@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t7@@4))) (and (=> (= (ControlFlow 0 234201) (- 0 315561)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t7@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t7@@4)) 0))) (and (=> (= (ControlFlow 0 234201) (- 0 315579)) (not (not (= (|$addr#$signer| _$t0@@15) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@15) 173345816))) (and (=> (= (ControlFlow 0 234201) (- 0 315593)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 234201) (- 0 315603)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@5) 18446744073709551615)) (< $t9@@10 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@5))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@5) 18446744073709551615)) (< $t9@@10 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@5)))) (and (=> (= (ControlFlow 0 234201) (- 0 315645)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@1))) (and (=> (= (ControlFlow 0 234201) (- 0 315657)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@1)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@1)) 0))) (and (=> (= (ControlFlow 0 234201) (- 0 315675)) (not (not (= (|$addr#$signer| _$t0@@15) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@15) 173345816))) (and (=> (= (ControlFlow 0 234201) (- 0 315689)) (let (($range_0@@59 $t43@@0))
(forall (($i_1@@50 Int) ) (!  (=> (InRangeVec_78413 $range_0@@59 $i_1@@50) (let ((vi (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@59) $i_1@@50)))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| vi) _$t1@@10)) (let (($range_2@@5 $t10@@3))
(exists (($i_3@@14 Int) ) (!  (and (InRangeVec_78413 $range_2@@5 $i_3@@14) (let ((ovi (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_2@@5) $i_3@@14)))
 (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| vi) (|$addr#$1_DiemSystem_ValidatorInfo| ovi)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| vi) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| ovi))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| vi)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ovi))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| vi)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ovi)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| vi)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ovi))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| vi) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| ovi)))))
 :qid |DiemSystemcvc5bpl.10592:107|
 :skolemid |333|
))))))
 :qid |DiemSystemcvc5bpl.10591:38|
 :skolemid |334|
)))) (=> (let (($range_0@@60 $t43@@0))
(forall (($i_1@@51 Int) ) (!  (=> (InRangeVec_78413 $range_0@@60 $i_1@@51) (let ((vi@@0 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@60) $i_1@@51)))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| vi@@0) _$t1@@10)) (let (($range_2@@6 $t10@@3))
(exists (($i_3@@15 Int) ) (!  (and (InRangeVec_78413 $range_2@@6 $i_3@@15) (let ((ovi@@0 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_2@@6) $i_3@@15)))
 (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| vi@@0) (|$addr#$1_DiemSystem_ValidatorInfo| ovi@@0)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| vi@@0) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| ovi@@0))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| vi@@0)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ovi@@0))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| vi@@0)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ovi@@0)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| vi@@0)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| ovi@@0))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| vi@@0) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| ovi@@0)))))
 :qid |DiemSystemcvc5bpl.10592:107|
 :skolemid |333|
))))))
 :qid |DiemSystemcvc5bpl.10591:38|
 :skolemid |334|
))) (and (=> (= (ControlFlow 0 234201) (- 0 315755)) (not (let (($range_0@@61 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@171 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) addr@@171))))))
(exists (($i_1@@52 Int) ) (!  (and (InRangeVec_78413 $range_0@@61 $i_1@@52) (let ((v@@86 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@61) $i_1@@52)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@86) _$t1@@10)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
))))) (=> (not (let (($range_0@@62 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@172 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) addr@@172))))))
(exists (($i_1@@53 Int) ) (!  (and (InRangeVec_78413 $range_0@@62 $i_1@@53) (let ((v@@87 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@62) $i_1@@53)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@87) _$t1@@10)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
)))) (and (=> (= (ControlFlow 0 234201) (- 0 315764)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11@@2)))) (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $EmptyEventStore) $t12@@0)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_87682| stream@@22)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@22) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0))))
(Multiset_87682 (|Store__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@22) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $EmptyEventStore) $t12@@0 stream_new@@4)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@21 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| expected@@2) handle@@21)) (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| actual@@2) handle@@21))) (forall ((v@@88 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| expected@@2) handle@@21)) v@@88) (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| actual@@2) handle@@21)) v@@88))
 :qid |DiemSystemcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemSystemcvc5bpl.2780:13|
 :skolemid |99|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11@@2)))) (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $EmptyEventStore) $t12@@0)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_87682| stream@@23)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0))))
(Multiset_87682 (|Store__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $EmptyEventStore) $t12@@0 stream_new@@5)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@22 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| expected@@3) handle@@22)) (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| actual@@3) handle@@22))) (forall ((v@@89 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| expected@@3) handle@@22)) v@@89) (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| actual@@3) handle@@22)) v@@89))
 :qid |DiemSystemcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemSystemcvc5bpl.2780:13|
 :skolemid |99|
))))) (=> (= (ControlFlow 0 234201) (- 0 315809)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11@@2)))) (let ((stream@@24 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $EmptyEventStore) $t12@@0)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_87682| stream@@24)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0))))
(Multiset_87682 (|Store__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $EmptyEventStore) $t12@@0 stream_new@@6)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@23 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| actual@@4) handle@@23)) (|l#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| expected@@4) handle@@23))) (forall ((v@@90 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| actual@@4) handle@@23)) v@@90) (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| expected@@4) handle@@23)) v@@90))
 :qid |DiemSystemcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemSystemcvc5bpl.2780:13|
 :skolemid |99|
)))))))))))))))))))))))))))))))))))
(let ((anon31_Else_correct  (=> (and (and (not |$temp_0'bool'@1@@0|) (= $1_DiemConfig_Configuration_$memory@1@@0 ($Memory_140236 (|Store__T@[Int]Bool_| (|domain#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2@@0 $1_DiemConfig_Configuration_$memory@1@@0) (= (ControlFlow 0 233731) 234201))) anon21_correct)))
(let ((anon31_Then_correct  (=> (and (and |$temp_0'bool'@1@@0| (= $1_DiemConfig_Configuration_$memory@0@@0 ($Memory_140236 (|Store__T@[Int]Bool_| (|domain#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0@@0|)))) (and (= $1_DiemConfig_Configuration_$memory@2@@0 $1_DiemConfig_Configuration_$memory@0@@0) (= (ControlFlow 0 234213) 234201))) anon21_correct)))
(let ((anon30_Else_correct  (=> (not |$temp_0'bool'@0@@8|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1| ($Memory_125534 (|Store__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1|)) (and (=> (= (ControlFlow 0 233717) 234213) anon31_Then_correct) (=> (= (ControlFlow 0 233717) 233731) anon31_Else_correct))))))
(let ((anon30_Then_correct  (=> |$temp_0'bool'@0@@8| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1| ($Memory_125534 (|Store__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@1|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1|)) (and (=> (= (ControlFlow 0 234225) 234213) anon31_Then_correct) (=> (= (ControlFlow 0 234225) 233731) anon31_Else_correct))))))
(let ((anon29_Else_correct  (=> (not $t36) (and (=> (= (ControlFlow 0 233705) 234225) anon30_Then_correct) (=> (= (ControlFlow 0 233705) 233717) anon30_Else_correct)))))
(let ((L3_correct@@3  (and (=> (= (ControlFlow 0 233206) (- 0 314978)) (or (or (or (or (or (or (or (or (not (let (($range_0@@63 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@173 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@173))))))
(exists (($i_1@@54 Int) ) (!  (and (InRangeVec_78413 $range_0@@63 $i_1@@54) (let ((v@@91 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@63) $i_1@@54)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@91) _$t1@@10)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t7@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t7@@4)) 0))) (not (= (|$addr#$signer| _$t0@@15) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@5) 18446744073709551615)) (< $t9@@10 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@5)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@1)) 0))) (not (= (|$addr#$signer| _$t0@@15) 173345816)))) (=> (or (or (or (or (or (or (or (or (not (let (($range_0@@64 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@174 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@174))))))
(exists (($i_1@@55 Int) ) (!  (and (InRangeVec_78413 $range_0@@64 $i_1@@55) (let ((v@@92 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@64) $i_1@@55)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@92) _$t1@@10)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t7@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t7@@4)) 0))) (not (= (|$addr#$signer| _$t0@@15) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@5) 18446744073709551615)) (< $t9@@10 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@5)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@1)) 0))) (not (= (|$addr#$signer| _$t0@@15) 173345816))) (=> (= (ControlFlow 0 233206) (- 0 315100)) (or (or (or (or (or (or (or (or (and (not (let (($range_0@@65 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@175 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@175))))))
(exists (($i_1@@56 Int) ) (!  (and (InRangeVec_78413 $range_0@@65 $i_1@@56) (let ((v@@93 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $range_0@@65) $i_1@@56)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@93) _$t1@@10)))
 :qid |DiemSystemcvc5bpl.6950:125|
 :skolemid |215|
)))) (= 7 $t15@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t7@@4)) (= 5 $t15@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t7@@4)) 0)) (= 3 $t15@0@@0))) (and (not (= (|$addr#$signer| _$t0@@15) 173345816)) (= 2 $t15@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@0@@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@5) 18446744073709551615)) (< $t9@@10 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@5))) (= 1 $t15@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@1)) (= 5 $t15@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t13@@1)) 0)) (= 3 $t15@0@@0))) (and (not (= (|$addr#$signer| _$t0@@15) 173345816)) (= 2 $t15@0@@0))))))))
(let ((anon29_Then_correct  (=> $t36 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@3)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t32) 18446744073709551615)) (< $t33 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t32))) (= 1 $t15@@3))) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 234301) 233206))) L3_correct@@3))))
(let ((anon28_Else_correct@@0  (=> (and (not $abort_flag@0@@5) (= $t28@1 ($Mutation_142214 (|l#$Mutation_142214| $t28@0) (|p#$Mutation_142214| $t28@0) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t28@0)) (|v#$Mutation_98322| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2|))))) (and (=> (= (ControlFlow 0 233699) (- 0 314659)) (let (($range_0@@66 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t28@1))))))
(let (($range_1@@14 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t28@1))))))
(forall (($i_2@@8 Int) ($i_3@@16 Int) ) (!  (=> ($InRange $range_0@@66 $i_2@@8) (=> ($InRange $range_1@@14 $i_3@@16) (let ((i@@113 $i_2@@8))
(let ((j@@49 $i_3@@16))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t28@1))) i@@113)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t28@1))) j@@49))) (= i@@113 j@@49))))))
 :qid |DiemSystemcvc5bpl.10412:203|
 :skolemid |332|
))))) (=> (let (($range_0@@67 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t28@1))))))
(let (($range_1@@15 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t28@1))))))
(forall (($i_2@@9 Int) ($i_3@@17 Int) ) (!  (=> ($InRange $range_0@@67 $i_2@@9) (=> ($InRange $range_1@@15 $i_3@@17) (let ((i@@114 $i_2@@9))
(let ((j@@50 $i_3@@17))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t28@1))) i@@114)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t28@1))) j@@50))) (= i@@114 j@@50))))))
 :qid |DiemSystemcvc5bpl.10412:203|
 :skolemid |332|
)))) (=> (= $t4@0 (|v#$Mutation_142214| $t28@1)) (=> (and (and (= $t32 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t33 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t34@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t35@@0 (|$events#$1_DiemConfig_Configuration| $t34@@0)))) (and (=> (= (ControlFlow 0 233699) (- 0 314812)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@1| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@1| 173345816) (=> (= $t36  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t32) 18446744073709551615)) (< $t33 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t32))))) (and (=> (= (ControlFlow 0 233699) 234301) anon29_Then_correct) (=> (= (ControlFlow 0 233699) 233705) anon29_Else_correct))))))))))))
(let ((anon28_Then_correct@@0  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t15@0@@0 $abort_code@1@@5) (= (ControlFlow 0 234315) 233206))) L3_correct@@3)))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0@@5 true) (=> (and (= $abort_code@1@@5 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@0|)) (and (=> (= (ControlFlow 0 233464) 234315) anon28_Then_correct@@0) (=> (= (ControlFlow 0 233464) 233699) anon28_Else_correct@@0))))))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_78413 |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0)) (= (ControlFlow 0 233462) 233464)) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|  (=> (and (InRangeVec_78413 |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$e@1| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) $t26@@0))) (=> (and (and (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1| ($Mutation_98322 (|l#$Mutation_98322| $t29@0) (|p#$Mutation_98322| $t29@0) (let ((l@@2 (- (|l#Vec_87979| (let ((m@@3 (|v#Vec_87979| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|)))
(Vec_87979 (|Store__T@[Int]$1_DiemSystem_ValidatorInfo_| (|Store__T@[Int]$1_DiemSystem_ValidatorInfo_| m@@3 $t26@@0 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| m@@3 (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1))) (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| m@@3 $t26@@0)) (|l#Vec_87979| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|)))) 1)))
(Vec_87979 (|Store__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (let ((m@@3 (|v#Vec_87979| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|)))
(Vec_87979 (|Store__T@[Int]$1_DiemSystem_ValidatorInfo_| (|Store__T@[Int]$1_DiemSystem_ValidatorInfo_| m@@3 $t26@@0 (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| m@@3 (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1))) (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| m@@3 $t26@@0)) (|l#Vec_87979| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|)))) l@@2 DefaultVecElem_78433) l@@2)))) (= $abort_flag@0@@5 false)) (and (= $abort_code@1@@5 $abort_code@0@@5) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1|))) (and (=> (= (ControlFlow 0 233412) 234315) anon28_Then_correct@@0) (=> (= (ControlFlow 0 233412) 233699) anon28_Else_correct@@0))))))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (|v#$Mutation_98322| $t29@0)) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| (|l#Vec_87979| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (and (=> (= (ControlFlow 0 233380) 233462) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 233380) 233412) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|)))))
(let ((anon27_Else_correct@@0  (=> (not $t27) (=> (and (|$IsValid'u64'| $t26@@0) (= $t26@@0 (|Select__T@[Int]Int_| (|v#Vec_28829| (|$vec#$1_Option_Option'u64'| $t22@@0)) 0))) (=> (and (and (= $t26@@0 $t26@@0) (= $t28@0 ($Mutation_142214 ($Local 4) (Vec_28829 (MapConstVec_12393 DefaultVecElem_12393) 0) $t4@@11))) (and (= $t29@0 ($Mutation_98322 (|l#$Mutation_142214| $t28@0) (let ((l@@3 (|l#Vec_28829| (|p#$Mutation_142214| $t28@0))))
(Vec_28829 (|Store__T@[Int]Int_| (|v#Vec_28829| (|p#$Mutation_142214| $t28@0)) l@@3 1) (+ l@@3 1))) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_142214| $t28@0)))) (= (ControlFlow 0 233472) 233380))) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))))
(let ((anon27_Then_correct@@0  (=> $t27 (=> (and (and (and (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t22@@0)) 0) (= 7 $t15@@3)) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 234339) 233206))) L3_correct@@3))))
(let ((anon26_Then_correct@@1  (=> (and $t23@@1 (= $t27 (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t22@@0)) 0))) (and (=> (= (ControlFlow 0 233218) 234339) anon27_Then_correct@@0) (=> (= (ControlFlow 0 233218) 233472) anon27_Else_correct@@0)))))
(let ((anon26_Else_correct@@1  (=> (and (and (not $t23@@1) (= $t25@@1 $t25@@1)) (and (= $t15@0@@0 $t25@@1) (= (ControlFlow 0 232858) 233206))) L3_correct@@3)))
(let ((anon25_Else_correct@@1  (=> (not $t18@@0) (=> (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t4@@11) (let (($range_0@@68 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t4@@11)))))
(let (($range_1@@16 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t4@@11)))))
(forall (($i_2@@10 Int) ($i_3@@18 Int) ) (!  (=> ($InRange $range_0@@68 $i_2@@10) (=> ($InRange $range_1@@16 $i_3@@18) (let ((i@@115 $i_2@@10))
(let ((j@@51 $i_3@@18))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t4@@11)) i@@115)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| $t4@@11)) j@@51))) (= i@@115 j@@51))))))
 :qid |DiemSystemcvc5bpl.10249:222|
 :skolemid |329|
))))) (=> (and (and (and (and (and (= (|$scheme#$1_DiemSystem_DiemSystem| $t4@@11) (|$scheme#$1_DiemSystem_DiemSystem| (let ((addr@@176 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@176))))) (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| $t4@@11) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@176 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@176)))))) (= $t4@@11 $t4@@11)) (and (= $t20@0 (|$validators#$1_DiemSystem_DiemSystem| $t4@@11)) (= $t21@@0 (|l#Vec_87979| $t20@0)))) (and (and (|$IsValid'$1_Option_Option'u64''| $t22@@0) (<= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t22@@0)) 1)) (=> (let (($range_0@@69 ($Range 0 $t21@@0)))
(forall (($i_1@@57 Int) ) (!  (=> ($InRange $range_0@@69 $i_1@@57) (let ((i@@116 $i_1@@57))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t20@0) i@@116)) _$t1@@10))))
 :qid |DiemSystemcvc5bpl.10282:55|
 :skolemid |330|
))) (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t22@@0)) 0)))) (and (and (and (=> (let (($range_0@@70 ($Range 0 $t21@@0)))
(exists (($i_1@@58 Int) ) (!  (and ($InRange $range_0@@70 $i_1@@58) (let ((i@@117 $i_1@@58))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t20@0) i@@117)) _$t1@@10)))
 :qid |DiemSystemcvc5bpl.10286:55|
 :skolemid |331|
))) (and (not (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t22@@0)) 0)) (let ((at@@3 (|Select__T@[Int]Int_| (|v#Vec_28829| (|$vec#$1_Option_Option'u64'| $t22@@0)) 0)))
 (and (and (<= 0 at@@3) (< at@@3 $t21@@0)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| $t20@0) at@@3)) _$t1@@10))))) (= $t22@@0 $t22@@0)) (and (= $t23@@1  (not (= (|l#Vec_28829| (|$vec#$1_Option_Option'u64'| $t22@@0)) 0))) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t25@@1) (= $t25@@1 7)) (and (= $t25@@1 $t25@@1) (= $t23@@1 $t23@@1))))) (and (=> (= (ControlFlow 0 232842) 233218) anon26_Then_correct@@1) (=> (= (ControlFlow 0 232842) 232858) anon26_Else_correct@@1)))))))
(let ((anon25_Then_correct@@1  (=> $t18@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t15@@3)) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 234367) 233206))) L3_correct@@3))))
(let ((anon24_Else_correct@@1  (=> (and (not $t17@@1) (= $t18@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 232531) 234367) anon25_Then_correct@@1) (=> (= (ControlFlow 0 232531) 232842) anon25_Else_correct@@1)))))
(let ((anon24_Then_correct@@1  (=> $t17@@1 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t0@@15) 173345816)) (= 2 $t15@@3)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t16@@1)) (= 5 $t15@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t16@@1)) 0)) (= 3 $t15@@3))) (and (not (= (|$addr#$signer| _$t0@@15) 173345816)) (= 2 $t15@@3))) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 234459) 233206))) L3_correct@@3))))
(let ((anon23_Else_correct@@1  (=> (not $t14@@2) (=> (and (= $t16@@1 (|$addr#$signer| _$t0@@15)) (= $t17@@1  (or (or (or (not (= (|$addr#$signer| _$t0@@15) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) $t16@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $t16@@1)) 0))) (not (= (|$addr#$signer| _$t0@@15) 173345816))))) (and (=> (= (ControlFlow 0 232511) 234459) anon24_Then_correct@@1) (=> (= (ControlFlow 0 232511) 232531) anon24_Else_correct@@1))))))
(let ((anon23_Then_correct@@1  (=> $t14@@2 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@3)) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 234485) 233206))) L3_correct@@3))))
(let ((anon0$1_correct@@16  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@177 Int) ) (!  (=> (|$IsValid'address'| addr@@177) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_138029| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@177) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@177)) 4))))
 :qid |DiemSystemcvc5bpl.10036:20|
 :skolemid |311|
))) (=> (and (and (forall ((addr@@178 Int) ) (!  (=> (|$IsValid'address'| addr@@178) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@178) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@178)) 3))))
 :qid |DiemSystemcvc5bpl.10040:20|
 :skolemid |312|
)) (forall ((addr@@179 Int) ) (!  (=> (|$IsValid'address'| addr@@179) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@179) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@179)) 3))))
 :qid |DiemSystemcvc5bpl.10044:20|
 :skolemid |313|
))) (and (forall ((addr@@180 Int) ) (!  (=> (|$IsValid'address'| addr@@180) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@180) (not (= (|l#Vec_87775| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_139153| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@180)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) addr@@180)) 3))))
 :qid |DiemSystemcvc5bpl.10048:20|
 :skolemid |314|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816)))) (=> (and (and (and (and (and (and (and (forall ((config_address@@29 Int) ) (!  (=> (|$IsValid'address'| config_address@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@29) (= config_address@@29 173345816)))
 :qid |DiemSystemcvc5bpl.10056:24|
 :skolemid |315|
)) (forall ((config_address@@30 Int) ) (!  (=> (|$IsValid'address'| config_address@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139800| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@30) (= config_address@@30 173345816)))
 :qid |DiemSystemcvc5bpl.10056:243|
 :skolemid |316|
))) (forall ((config_address@@31 Int) ) (!  (=> (|$IsValid'address'| config_address@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139881| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@31) (= config_address@@31 173345816)))
 :qid |DiemSystemcvc5bpl.10056:483|
 :skolemid |317|
))) (forall ((config_address@@32 Int) ) (!  (=> (|$IsValid'address'| config_address@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_139962| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@32) (= config_address@@32 173345816)))
 :qid |DiemSystemcvc5bpl.10056:745|
 :skolemid |318|
))) (forall ((config_address@@33 Int) ) (!  (=> (|$IsValid'address'| config_address@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140043| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@33) (= config_address@@33 173345816)))
 :qid |DiemSystemcvc5bpl.10056:969|
 :skolemid |319|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (let (($range_0@@71 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@181 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@181))))))))
(forall (($i_1@@59 Int) ) (!  (=> ($InRange $range_0@@71 $i_1@@59) (let ((i1@@14 $i_1@@59))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@182 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@182))))) i1@@14))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@182 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@182))))) i1@@14)))) 3))))
 :qid |DiemSystemcvc5bpl.10064:151|
 :skolemid |320|
))))) (and (and (let (($range_0@@72 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@183 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@183))))))))
(forall (($i_1@@60 Int) ) (!  (=> ($InRange $range_0@@72 $i_1@@60) (let ((i1@@15 $i_1@@60))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@184 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@184))))) i1@@15)) 1)))
 :qid |DiemSystemcvc5bpl.10069:151|
 :skolemid |321|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@15))) (and (|$IsValid'address'| _$t1@@10) (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@25)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@25))
 :qid |DiemSystemcvc5bpl.10079:20|
 :skolemid |322|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@25))
))))) (and (and (and (and (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@26)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@26))
 :qid |DiemSystemcvc5bpl.10083:20|
 :skolemid |323|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125988| $1_Roles_RoleId_$memory) $a_0@@26))
)) (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) $a_0@@27)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@27))
 :qid |DiemSystemcvc5bpl.10087:20|
 :skolemid |324|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) $a_0@@27))
))) (and (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@28)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@28))
 :qid |DiemSystemcvc5bpl.10091:20|
 :skolemid |325|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_140124| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@28))
)) (forall (($a_0@@29 Int) ) (! (let (($rsc@@29 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@29)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@29) (let (($range_1@@17 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@29))))))
(let (($range_2@@7 ($Range 0 (|l#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@29))))))
(forall (($i_3@@19 Int) ($i_4@@5 Int) ) (!  (=> ($InRange $range_1@@17 $i_3@@19) (=> ($InRange $range_2@@7 $i_4@@5) (let ((i@@118 $i_3@@19))
(let ((j@@52 $i_4@@5))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@29))) i@@118)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_87979| (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@29))) j@@52))) (= i@@118 j@@52))))))
 :qid |DiemSystemcvc5bpl.10096:367|
 :skolemid |326|
))))))
 :qid |DiemSystemcvc5bpl.10095:20|
 :skolemid |327|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@29))
)))) (and (and (forall (($a_0@@30 Int) ) (! (let (($rsc@@30 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@30)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@30))
 :qid |DiemSystemcvc5bpl.10101:20|
 :skolemid |328|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_125607| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@30))
)) (= $t7@@4 (|$addr#$signer| _$t0@@15))) (and (= $t8@@5 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t9@@10 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (and (and (= $t10@@3 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@185 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_125534| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@185))))) (= $t11@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_140236| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t12@@0 (|$events#$1_DiemConfig_Configuration| $t11@@2)) (= $t13@@1 (|$addr#$signer| _$t0@@15)))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@1| 173345816) (= _$t0@@15 _$t0@@15)) (and (= _$t1@@10 _$t1@@10) (= $t14@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_124079| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 232439) 234485) anon23_Then_correct@@1) (=> (= (ControlFlow 0 232439) 232511) anon23_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@16  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@24 T@$1_Event_EventHandle) ) (! (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_87682_| (|streams#$EventStore| $es) handle@@24)))
 (and (= (|l#Multiset_87682| stream@@25) 0) (forall ((v@@94 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_87682| stream@@25) v@@94) 0)
 :qid |DiemSystemcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystemcvc5bpl.2764:13|
 :skolemid |98|
))) (= (ControlFlow 0 231741) 232439)) anon0$1_correct@@16)))
(let ((anon0_correct@@16  (=> (= (|l#Vec_28829| (|p#$Mutation_142214| $t28@@0)) 0) (=> (and (= (|l#Vec_28829| (|p#$Mutation_98322| $t29@@0)) 0) (= (ControlFlow 0 231751) 231741)) inline$$InitEventStore$0$anon0_correct@@16))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 313036) 231751) anon0_correct@@16)))
PreconditionGeneratedEntry_correct@@1)))))))))))))))))))))))))))))
))
(check-sat)
