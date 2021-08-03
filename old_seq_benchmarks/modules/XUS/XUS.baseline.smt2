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
(declare-datatypes ((T@$Memory_90744 0)) ((($Memory_90744 (|domain#$Memory_90744| |T@[Int]Bool|) (|contents#$Memory_90744| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_65083 0)) (((Vec_65083 (|v#Vec_65083| |T@[Int]#0|) (|l#Vec_65083| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_135876 0)) ((($Memory_135876 (|domain#$Memory_135876| |T@[Int]Bool|) (|contents#$Memory_135876| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_132711 0)) ((($Memory_132711 (|domain#$Memory_132711| |T@[Int]Bool|) (|contents#$Memory_132711| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_130519 0)) ((($Memory_130519 (|domain#$Memory_130519| |T@[Int]Bool|) (|contents#$Memory_130519| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_130831 0)) ((($Memory_130831 (|domain#$Memory_130831| |T@[Int]Bool|) (|contents#$Memory_130831| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_130486 0)) ((($Memory_130486 (|domain#$Memory_130486| |T@[Int]Bool|) (|contents#$Memory_130486| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_130266 0)) ((($Memory_130266 (|domain#$Memory_130266| |T@[Int]Bool|) (|contents#$Memory_130266| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_127605 0)) ((($Memory_127605 (|domain#$Memory_127605| |T@[Int]Bool|) (|contents#$Memory_127605| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_126159 0)) ((($Memory_126159 (|domain#$Memory_126159| |T@[Int]Bool|) (|contents#$Memory_126159| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_118916 0)) ((($Memory_118916 (|domain#$Memory_118916| |T@[Int]Bool|) (|contents#$Memory_118916| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_99577 0)) ((($Memory_99577 (|domain#$Memory_99577| |T@[Int]Bool|) (|contents#$Memory_99577| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_132489 0)) ((($Memory_132489 (|domain#$Memory_132489| |T@[Int]Bool|) (|contents#$Memory_132489| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_111622 0)) ((($Memory_111622 (|domain#$Memory_111622| |T@[Int]Bool|) (|contents#$Memory_111622| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107526 0)) ((($Memory_107526 (|domain#$Memory_107526| |T@[Int]Bool|) (|contents#$Memory_107526| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107839 0)) ((($Memory_107839 (|domain#$Memory_107839| |T@[Int]Bool|) (|contents#$Memory_107839| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107752 0)) ((($Memory_107752 (|domain#$Memory_107752| |T@[Int]Bool|) (|contents#$Memory_107752| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_111870 0)) ((($Memory_111870 (|domain#$Memory_111870| |T@[Int]Bool|) (|contents#$Memory_111870| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_124866 0)) ((($Memory_124866 (|domain#$Memory_124866| |T@[Int]Bool|) (|contents#$Memory_124866| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_111789 0)) ((($Memory_111789 (|domain#$Memory_111789| |T@[Int]Bool|) (|contents#$Memory_111789| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_126475 0)) ((($Memory_126475 (|domain#$Memory_126475| |T@[Int]Bool|) (|contents#$Memory_126475| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_103428 0)) ((($Memory_103428 (|domain#$Memory_103428| |T@[Int]Bool|) (|contents#$Memory_103428| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_103341 0)) ((($Memory_103341 (|domain#$Memory_103341| |T@[Int]Bool|) (|contents#$Memory_103341| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_103254 0)) ((($Memory_103254 (|domain#$Memory_103254| |T@[Int]Bool|) (|contents#$Memory_103254| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_103167 0)) ((($Memory_103167 (|domain#$Memory_103167| |T@[Int]Bool|) (|contents#$Memory_103167| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_103080 0)) ((($Memory_103080 (|domain#$Memory_103080| |T@[Int]Bool|) (|contents#$Memory_103080| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_103683 0)) ((($Memory_103683 (|domain#$Memory_103683| |T@[Int]Bool|) (|contents#$Memory_103683| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_101900 0)) ((($Memory_101900 (|domain#$Memory_101900| |T@[Int]Bool|) (|contents#$Memory_101900| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_101966 0)) ((($Memory_101966 (|domain#$Memory_101966| |T@[Int]Bool|) (|contents#$Memory_101966| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_101819 0)) ((($Memory_101819 (|domain#$Memory_101819| |T@[Int]Bool|) (|contents#$Memory_101819| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_101462 0)) ((($Memory_101462 (|domain#$Memory_101462| |T@[Int]Bool|) (|contents#$Memory_101462| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_63428 0)) (((Vec_63428 (|v#Vec_63428| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_63428| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_63428) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_63389 0)) (((Vec_63389 (|v#Vec_63389| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_63389| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_63389) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_20558 0)) (((Vec_20558 (|v#Vec_20558| |T@[Int]Int|) (|l#Vec_20558| Int) ) ) ))
(declare-sort |T@[Int]Vec_20558| 0)
(declare-datatypes ((T@Vec_63611 0)) (((Vec_63611 (|v#Vec_63611| |T@[Int]Vec_20558|) (|l#Vec_63611| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_63611) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_101657 0)) ((($Memory_101657 (|domain#$Memory_101657| |T@[Int]Bool|) (|contents#$Memory_101657| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_63611) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_101576 0)) ((($Memory_101576 (|domain#$Memory_101576| |T@[Int]Bool|) (|contents#$Memory_101576| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_20558) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_20558) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_101738 0)) ((($Memory_101738 (|domain#$Memory_101738| |T@[Int]Bool|) (|contents#$Memory_101738| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_20558) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_131472 0)) ((($Memory_131472 (|domain#$Memory_131472| |T@[Int]Bool|) (|contents#$Memory_131472| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_20558) (|$base_url#$1_DualAttestation_Credential| T@Vec_20558) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_20558) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_127541 0)) ((($Memory_127541 (|domain#$Memory_127541| |T@[Int]Bool|) (|contents#$Memory_127541| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_20558) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_63815 0)) (((Vec_63815 (|v#Vec_63815| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_63815| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_63815) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112237 0)) ((($Memory_112237 (|domain#$Memory_112237| |T@[Int]Bool|) (|contents#$Memory_112237| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_63776 0)) (((Vec_63776 (|v#Vec_63776| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_63776| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_63776) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112120 0)) ((($Memory_112120 (|domain#$Memory_112120| |T@[Int]Bool|) (|contents#$Memory_112120| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_20558) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107390 0)) ((($Memory_107390 (|domain#$Memory_107390| |T@[Int]Bool|) (|contents#$Memory_107390| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_20558) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_99493 0)) ((($Memory_99493 (|domain#$Memory_99493| |T@[Int]Bool|) (|contents#$Memory_99493| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_20558) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_20558) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_63350 0)) (((Vec_63350 (|v#Vec_63350| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_63350| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_63350) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_63554 0)) (((Vec_63554 (|v#Vec_63554| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_63554| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_63554) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_101495 0)) ((($Memory_101495 (|domain#$Memory_101495| |T@[Int]Bool|) (|contents#$Memory_101495| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_100876 0)) ((($Memory_100876 (|domain#$Memory_100876| |T@[Int]Bool|) (|contents#$Memory_100876| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_100233 0)) ((($Memory_100233 (|domain#$Memory_100233| |T@[Int]Bool|) (|contents#$Memory_100233| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_99964 0)) ((($Memory_99964 (|domain#$Memory_99964| |T@[Int]Bool|) (|contents#$Memory_99964| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_98077 0)) ((($Memory_98077 (|domain#$Memory_98077| |T@[Int]Bool|) (|contents#$Memory_98077| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_20558) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_20558) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_20558) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_20558) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_20558) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_20558) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_20558) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_20558) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_20558) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_20558) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_63264 0)) (((Multiset_63264 (|v#Multiset_63264| |T@[$EventRep]Int|) (|l#Multiset_63264| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_63264| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_63264|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_133563 0)) ((($Mutation_133563 (|l#$Mutation_133563| T@$Location) (|p#$Mutation_133563| T@Vec_20558) (|v#$Mutation_133563| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_133518 0)) ((($Mutation_133518 (|l#$Mutation_133518| T@$Location) (|p#$Mutation_133518| T@Vec_20558) (|v#$Mutation_133518| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_33232 0)) ((($Mutation_33232 (|l#$Mutation_33232| T@$Location) (|p#$Mutation_33232| T@Vec_20558) (|v#$Mutation_33232| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_117450 0)) ((($Mutation_117450 (|l#$Mutation_117450| T@$Location) (|p#$Mutation_117450| T@Vec_20558) (|v#$Mutation_117450| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_106104 0)) ((($Mutation_106104 (|l#$Mutation_106104| T@$Location) (|p#$Mutation_106104| T@Vec_20558) (|v#$Mutation_106104| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_98546 0)) ((($Mutation_98546 (|l#$Mutation_98546| T@$Location) (|p#$Mutation_98546| T@Vec_20558) (|v#$Mutation_98546| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_91372 0)) ((($Mutation_91372 (|l#$Mutation_91372| T@$Location) (|p#$Mutation_91372| T@Vec_20558) (|v#$Mutation_91372| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12788 0)) ((($Mutation_12788 (|l#$Mutation_12788| T@$Location) (|p#$Mutation_12788| T@Vec_20558) (|v#$Mutation_12788| Int) ) ) ))
(declare-datatypes ((T@$Mutation_85685 0)) ((($Mutation_85685 (|l#$Mutation_85685| T@$Location) (|p#$Mutation_85685| T@Vec_20558) (|v#$Mutation_85685| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$Mutation_84597 0)) ((($Mutation_84597 (|l#$Mutation_84597| T@$Location) (|p#$Mutation_84597| T@Vec_20558) (|v#$Mutation_84597| T@Vec_63611) ) ) ))
(declare-datatypes ((T@$Mutation_82888 0)) ((($Mutation_82888 (|l#$Mutation_82888| T@$Location) (|p#$Mutation_82888| T@Vec_20558) (|v#$Mutation_82888| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_81901 0)) ((($Mutation_81901 (|l#$Mutation_81901| T@$Location) (|p#$Mutation_81901| T@Vec_20558) (|v#$Mutation_81901| T@Vec_63350) ) ) ))
(declare-datatypes ((T@$Mutation_80246 0)) ((($Mutation_80246 (|l#$Mutation_80246| T@$Location) (|p#$Mutation_80246| T@Vec_20558) (|v#$Mutation_80246| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_79259 0)) ((($Mutation_79259 (|l#$Mutation_79259| T@$Location) (|p#$Mutation_79259| T@Vec_20558) (|v#$Mutation_79259| T@Vec_63776) ) ) ))
(declare-datatypes ((T@$Mutation_77550 0)) ((($Mutation_77550 (|l#$Mutation_77550| T@$Location) (|p#$Mutation_77550| T@Vec_20558) (|v#$Mutation_77550| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_76563 0)) ((($Mutation_76563 (|l#$Mutation_76563| T@$Location) (|p#$Mutation_76563| T@Vec_20558) (|v#$Mutation_76563| T@Vec_63815) ) ) ))
(declare-datatypes ((T@$Mutation_74854 0)) ((($Mutation_74854 (|l#$Mutation_74854| T@$Location) (|p#$Mutation_74854| T@Vec_20558) (|v#$Mutation_74854| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_73867 0)) ((($Mutation_73867 (|l#$Mutation_73867| T@$Location) (|p#$Mutation_73867| T@Vec_20558) (|v#$Mutation_73867| T@Vec_63554) ) ) ))
(declare-datatypes ((T@$Mutation_72067 0)) ((($Mutation_72067 (|l#$Mutation_72067| T@$Location) (|p#$Mutation_72067| T@Vec_20558) (|v#$Mutation_72067| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_71080 0)) ((($Mutation_71080 (|l#$Mutation_71080| T@$Location) (|p#$Mutation_71080| T@Vec_20558) (|v#$Mutation_71080| T@Vec_63428) ) ) ))
(declare-datatypes ((T@$Mutation_69415 0)) ((($Mutation_69415 (|l#$Mutation_69415| T@$Location) (|p#$Mutation_69415| T@Vec_20558) (|v#$Mutation_69415| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68428 0)) ((($Mutation_68428 (|l#$Mutation_68428| T@$Location) (|p#$Mutation_68428| T@Vec_20558) (|v#$Mutation_68428| T@Vec_63389) ) ) ))
(declare-datatypes ((T@$Mutation_66715 0)) ((($Mutation_66715 (|l#$Mutation_66715| T@$Location) (|p#$Mutation_66715| T@Vec_20558) (|v#$Mutation_66715| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_65728 0)) ((($Mutation_65728 (|l#$Mutation_65728| T@$Location) (|p#$Mutation_65728| T@Vec_20558) (|v#$Mutation_65728| T@Vec_65083) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_65083 T@Vec_65083) Bool)
(declare-fun InRangeVec_56006 (T@Vec_65083 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_65083) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_65083 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_63389 T@Vec_63389) Bool)
(declare-fun InRangeVec_56207 (T@Vec_63389 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_63389) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_63389 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_63428 T@Vec_63428) Bool)
(declare-fun InRangeVec_56408 (T@Vec_63428 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_63428) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_63428 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_63554 T@Vec_63554) Bool)
(declare-fun InRangeVec_56609 (T@Vec_63554 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_20558 T@Vec_20558) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_63554) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_63554 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_63815 T@Vec_63815) Bool)
(declare-fun InRangeVec_56810 (T@Vec_63815 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_63815) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_63815 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_63776 T@Vec_63776) Bool)
(declare-fun InRangeVec_57011 (T@Vec_63776 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_63776) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_63776 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_63350 T@Vec_63350) Bool)
(declare-fun InRangeVec_57212 (T@Vec_63350 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_63350) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_63350 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_63611 T@Vec_63611) Bool)
(declare-fun InRangeVec_84020 (T@Vec_63611 Int) Bool)
(declare-fun |Select__T@[Int]Vec_20558_| (|T@[Int]Vec_20558| Int) T@Vec_20558)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_63611) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_20558) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_63611 T@Vec_20558) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_20558 T@Vec_20558) Bool)
(declare-fun InRangeVec_12164 (T@Vec_20558 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_20558) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_20558 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_20558 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_20558) T@Vec_20558)
(declare-fun $1_Hash_sha3 (T@Vec_20558) T@Vec_20558)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_20558) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_20558 T@Vec_20558 T@Vec_20558) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_63264_| (|T@[$1_Event_EventHandle]Multiset_63264| T@$1_Event_EventHandle) T@Multiset_63264)
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
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
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
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun IndexOfVec_20558 (T@Vec_20558 Int) Int)
(declare-fun IndexOfVec_63350 (T@Vec_63350 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_63389 (T@Vec_63389 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_63428 (T@Vec_63428 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_63554 (T@Vec_63554 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_63611 (T@Vec_63611 T@Vec_20558) Int)
(declare-fun IndexOfVec_63776 (T@Vec_63776 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_63815 (T@Vec_63815 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_65083 (T@Vec_65083 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_63264| |T@[$1_Event_EventHandle]Multiset_63264|) |T@[$1_Event_EventHandle]Multiset_63264|)
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
(declare-fun |lambda#24| (Int Int Int |T@[Int]Vec_20558| |T@[Int]Vec_20558| Int T@Vec_20558) |T@[Int]Vec_20558|)
(declare-fun |lambda#25| (Int Int |T@[Int]Vec_20558| Int Int T@Vec_20558) |T@[Int]Vec_20558|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Vec_20558| |T@[Int]Vec_20558| Int T@Vec_20558) |T@[Int]Vec_20558|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |XUSbaselinebpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XUSbaselinebpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XUSbaselinebpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XUSbaselinebpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XUSbaselinebpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XUSbaselinebpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XUSbaselinebpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XUSbaselinebpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_65083) (v2 T@Vec_65083) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_65083| v1) (|l#Vec_65083| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_56006 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_65083| v2) i@@0)))
 :qid |XUSbaselinebpl.615:13|
 :skolemid |17|
))))
 :qid |XUSbaselinebpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_65083) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_65083| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_56006 v@@4 i@@1) true)
 :qid |XUSbaselinebpl.621:13|
 :skolemid |19|
))))
 :qid |XUSbaselinebpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_65083) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_56006 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@5) i@@3) e))
 :qid |XUSbaselinebpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_56006 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@5) j) e)))
 :qid |XUSbaselinebpl.634:17|
 :skolemid |22|
)))))
 :qid |XUSbaselinebpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_63389) (v2@@0 T@Vec_63389) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_63389| v1@@0) (|l#Vec_63389| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_56207 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v2@@0) i@@4)))
 :qid |XUSbaselinebpl.796:13|
 :skolemid |24|
))))
 :qid |XUSbaselinebpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_63389) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_63389| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_56207 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@6) i@@5)))
 :qid |XUSbaselinebpl.802:13|
 :skolemid |26|
))))
 :qid |XUSbaselinebpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_63389) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_56207 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@7) i@@7) e@@0))
 :qid |XUSbaselinebpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_56207 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@7) j@@0) e@@0)))
 :qid |XUSbaselinebpl.815:17|
 :skolemid |29|
)))))
 :qid |XUSbaselinebpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_63428) (v2@@1 T@Vec_63428) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_63428| v1@@1) (|l#Vec_63428| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_56408 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v2@@1) i@@8)))
 :qid |XUSbaselinebpl.977:13|
 :skolemid |31|
))))
 :qid |XUSbaselinebpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_63428) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_63428| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_56408 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@8) i@@9)))
 :qid |XUSbaselinebpl.983:13|
 :skolemid |33|
))))
 :qid |XUSbaselinebpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_63428) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_56408 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@9) i@@11) e@@1))
 :qid |XUSbaselinebpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_56408 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@9) j@@1) e@@1)))
 :qid |XUSbaselinebpl.996:17|
 :skolemid |36|
)))))
 :qid |XUSbaselinebpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_63554) (v2@@2 T@Vec_63554) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_63554| v1@@2) (|l#Vec_63554| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_56609 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12)))))
 :qid |XUSbaselinebpl.1158:13|
 :skolemid |38|
))))
 :qid |XUSbaselinebpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_63554) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_63554| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_56609 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@10) i@@13)))
 :qid |XUSbaselinebpl.1164:13|
 :skolemid |40|
))))
 :qid |XUSbaselinebpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_63554) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_56609 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |XUSbaselinebpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_56609 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |XUSbaselinebpl.1177:17|
 :skolemid |43|
)))))
 :qid |XUSbaselinebpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_63815) (v2@@3 T@Vec_63815) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3)  (and (= (|l#Vec_63815| v1@@3) (|l#Vec_63815| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_56810 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v2@@3) i@@16)))))
 :qid |XUSbaselinebpl.1339:13|
 :skolemid |45|
))))
 :qid |XUSbaselinebpl.1337:65|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_63815) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_63815| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_56810 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@12) i@@17)))
 :qid |XUSbaselinebpl.1345:13|
 :skolemid |47|
))))
 :qid |XUSbaselinebpl.1343:65|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_63815) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_56810 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3))))
 :qid |XUSbaselinebpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_56810 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))))
 :qid |XUSbaselinebpl.1358:17|
 :skolemid |50|
)))))
 :qid |XUSbaselinebpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_63776) (v2@@4 T@Vec_63776) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4)  (and (= (|l#Vec_63776| v1@@4) (|l#Vec_63776| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_57011 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v2@@4) i@@20)))))
 :qid |XUSbaselinebpl.1520:13|
 :skolemid |52|
))))
 :qid |XUSbaselinebpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_63776) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_63776| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_57011 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@14) i@@21)))
 :qid |XUSbaselinebpl.1526:13|
 :skolemid |54|
))))
 :qid |XUSbaselinebpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_63776) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_57011 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4))))
 :qid |XUSbaselinebpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_57011 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))))
 :qid |XUSbaselinebpl.1539:17|
 :skolemid |57|
)))))
 :qid |XUSbaselinebpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_63350) (v2@@5 T@Vec_63350) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5)  (and (= (|l#Vec_63350| v1@@5) (|l#Vec_63350| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_57212 v1@@5 i@@24) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v1@@5) i@@24)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v1@@5) i@@24)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v2@@5) i@@24)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v1@@5) i@@24)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v2@@5) i@@24)))))
 :qid |XUSbaselinebpl.1701:13|
 :skolemid |59|
))))
 :qid |XUSbaselinebpl.1699:51|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_63350) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_63350| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_57212 v@@16 i@@25) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@16) i@@25)))
 :qid |XUSbaselinebpl.1707:13|
 :skolemid |61|
))))
 :qid |XUSbaselinebpl.1705:51|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_63350) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@26 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_57212 v@@17 i@@27)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@27)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@27)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@27)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5))))
 :qid |XUSbaselinebpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_57212 v@@17 i@@26)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@26)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@26)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@26)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) j@@5)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) j@@5)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) j@@5)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))))
 :qid |XUSbaselinebpl.1720:17|
 :skolemid |64|
)))))
 :qid |XUSbaselinebpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_63611) (v2@@6 T@Vec_63611) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6)  (and (= (|l#Vec_63611| v1@@6) (|l#Vec_63611| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_84020 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v1@@6) i@@28) (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v2@@6) i@@28)))
 :qid |XUSbaselinebpl.1882:13|
 :skolemid |66|
))))
 :qid |XUSbaselinebpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_63611) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_63611| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_84020 v@@18 i@@29) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@18) i@@29)))
 :qid |XUSbaselinebpl.1888:13|
 :skolemid |68|
))))
 :qid |XUSbaselinebpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_63611) (e@@6 T@Vec_20558) ) (! (let ((i@@30 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_84020 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@19) i@@31) e@@6))
 :qid |XUSbaselinebpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_84020 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@19) j@@6) e@@6)))
 :qid |XUSbaselinebpl.1901:17|
 :skolemid |71|
)))))
 :qid |XUSbaselinebpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_20558) (v2@@7 T@Vec_20558) ) (! (= (|$IsEqual'vec'address''| v1@@7 v2@@7)  (and (= (|l#Vec_20558| v1@@7) (|l#Vec_20558| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_12164 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_20558| v2@@7) i@@32)))
 :qid |XUSbaselinebpl.2063:13|
 :skolemid |73|
))))
 :qid |XUSbaselinebpl.2061:33|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'address''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_20558) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_20558| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_12164 v@@20 i@@33) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_20558| v@@20) i@@33)))
 :qid |XUSbaselinebpl.2069:13|
 :skolemid |75|
))))
 :qid |XUSbaselinebpl.2067:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_20558) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_12164 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@21) i@@35) e@@7))
 :qid |XUSbaselinebpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_12164 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@21) j@@7) e@@7)))
 :qid |XUSbaselinebpl.2082:17|
 :skolemid |78|
)))))
 :qid |XUSbaselinebpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_20558) (v2@@8 T@Vec_20558) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8)  (and (= (|l#Vec_20558| v1@@8) (|l#Vec_20558| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_12164 v1@@8 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v1@@8) i@@36) (|Select__T@[Int]Int_| (|v#Vec_20558| v2@@8) i@@36)))
 :qid |XUSbaselinebpl.2244:13|
 :skolemid |80|
))))
 :qid |XUSbaselinebpl.2242:28|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'u8''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_20558) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_20558| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_12164 v@@22 i@@37) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_20558| v@@22) i@@37)))
 :qid |XUSbaselinebpl.2250:13|
 :skolemid |82|
))))
 :qid |XUSbaselinebpl.2248:28|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_20558) (e@@8 Int) ) (! (let ((i@@38 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_12164 v@@23 i@@39)) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@23) i@@39) e@@8))
 :qid |XUSbaselinebpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_12164 v@@23 i@@38)) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@23) j@@8) e@@8)))
 :qid |XUSbaselinebpl.2263:17|
 :skolemid |85|
)))))
 :qid |XUSbaselinebpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_20558) (v2@@9 T@Vec_20558) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9)))
 :qid |XUSbaselinebpl.2436:15|
 :skolemid |87|
 :pattern ( ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9))
)))
(assert (forall ((v1@@10 T@Vec_20558) (v2@@10 T@Vec_20558) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10)))
 :qid |XUSbaselinebpl.2452:15|
 :skolemid |88|
 :pattern ( ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10))
)))
(assert (forall ((k1 T@Vec_20558) (k2 T@Vec_20558) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XUSbaselinebpl.2499:15|
 :skolemid |89|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_20558) (s2 T@Vec_20558) (k1@@0 T@Vec_20558) (k2@@0 T@Vec_20558) (m1 T@Vec_20558) (m2 T@Vec_20558) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XUSbaselinebpl.2502:15|
 :skolemid |90|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_63264_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_63264| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63264| stream) v@@24) 0)
 :qid |XUSbaselinebpl.159:13|
 :skolemid |4|
))))
 :qid |XUSbaselinebpl.2578:13|
 :skolemid |91|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XUSbaselinebpl.2619:80|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@11 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@11 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11)))
 :qid |XUSbaselinebpl.2625:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XUSbaselinebpl.2675:82|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12)))
 :qid |XUSbaselinebpl.2681:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XUSbaselinebpl.2731:80|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@13 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@13 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@13)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13)))
 :qid |XUSbaselinebpl.2737:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XUSbaselinebpl.2787:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_AdminTransactionEvent) (v2@@14 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14)))
 :qid |XUSbaselinebpl.2793:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XUSbaselinebpl.2843:76|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_CreateAccountEvent) (v2@@15 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15)))
 :qid |XUSbaselinebpl.2849:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XUSbaselinebpl.2899:78|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@16 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16)))
 :qid |XUSbaselinebpl.2905:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XUSbaselinebpl.2955:74|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_SentPaymentEvent) (v2@@17 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@17)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@17))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17)))
 :qid |XUSbaselinebpl.2961:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XUSbaselinebpl.3011:69|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@18 T@$1_DiemBlock_NewBlockEvent) (v2@@18 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@18) (|$round#$1_DiemBlock_NewBlockEvent| v2@@18)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@18) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@18))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@18) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@18) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18)))
 :qid |XUSbaselinebpl.3017:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XUSbaselinebpl.3067:70|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@19 T@$1_DiemConfig_NewEpochEvent) (v2@@19 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19)))
 :qid |XUSbaselinebpl.3073:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |XUSbaselinebpl.3123:60|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@20 T@$1_Diem_BurnEvent) (v2@@20 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@20) (|$amount#$1_Diem_BurnEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@20) (|$currency_code#$1_Diem_BurnEvent| v2@@20))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@20) (|$preburn_address#$1_Diem_BurnEvent| v2@@20))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@20)))
 :qid |XUSbaselinebpl.3129:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@20))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |XUSbaselinebpl.3179:66|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@21 T@$1_Diem_CancelBurnEvent) (v2@@21 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@21) (|$amount#$1_Diem_CancelBurnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@21) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@21) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@21)))
 :qid |XUSbaselinebpl.3185:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@21))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |XUSbaselinebpl.3235:60|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@22 T@$1_Diem_MintEvent) (v2@@22 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@22) (|$amount#$1_Diem_MintEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@22) (|$currency_code#$1_Diem_MintEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@22) (|$ToEventRep'$1_Diem_MintEvent'| v2@@22)))
 :qid |XUSbaselinebpl.3241:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@22) (|$ToEventRep'$1_Diem_MintEvent'| v2@@22))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |XUSbaselinebpl.3291:63|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@23 T@$1_Diem_PreburnEvent) (v2@@23 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@23) (|$amount#$1_Diem_PreburnEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@23) (|$currency_code#$1_Diem_PreburnEvent| v2@@23))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@23) (|$preburn_address#$1_Diem_PreburnEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@23) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@23)))
 :qid |XUSbaselinebpl.3297:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@23) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@23))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |XUSbaselinebpl.3347:79|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@24 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@24 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@24) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@24)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@24) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@24) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@24)))
 :qid |XUSbaselinebpl.3353:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@24) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@24))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |XUSbaselinebpl.3403:82|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@25 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@25 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@25) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@25)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@25) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@25))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@25)))
 :qid |XUSbaselinebpl.3409:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@25))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |XUSbaselinebpl.3459:88|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@26 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@26 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@26) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@26)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@26) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@26))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@26)))
 :qid |XUSbaselinebpl.3465:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@26))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |XUSbaselinebpl.3515:72|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@27 T@$1_VASPDomain_VASPDomainEvent) (v2@@27 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@27)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@27)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@27))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27)))
 :qid |XUSbaselinebpl.3521:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |XUSbaselinebpl.3600:61|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |XUSbaselinebpl.4155:36|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |XUSbaselinebpl.4174:71|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |XUSbaselinebpl.4237:46|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |XUSbaselinebpl.4249:64|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |XUSbaselinebpl.4261:75|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |XUSbaselinebpl.4273:72|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |XUSbaselinebpl.4301:55|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |XUSbaselinebpl.4324:46|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |XUSbaselinebpl.4343:49|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |XUSbaselinebpl.4418:71|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |XUSbaselinebpl.4431:91|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |XUSbaselinebpl.4444:113|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |XUSbaselinebpl.4457:75|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |XUSbaselinebpl.4470:73|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |XUSbaselinebpl.4490:48|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |XUSbaselinebpl.4507:57|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |XUSbaselinebpl.4521:83|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |XUSbaselinebpl.4535:103|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |XUSbaselinebpl.4549:125|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |XUSbaselinebpl.4563:87|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |XUSbaselinebpl.4577:85|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |XUSbaselinebpl.4591:48|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |XUSbaselinebpl.4612:45|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |XUSbaselinebpl.4626:51|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |XUSbaselinebpl.4649:48|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |XUSbaselinebpl.4957:49|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |XUSbaselinebpl.4970:65|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |XUSbaselinebpl.5478:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |XUSbaselinebpl.5491:45|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29) true)
 :qid |XUSbaselinebpl.5504:55|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30) true)
 :qid |XUSbaselinebpl.5518:55|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@31))))
 :qid |XUSbaselinebpl.5538:38|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@32))))
 :qid |XUSbaselinebpl.5560:44|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))))
 :qid |XUSbaselinebpl.5612:53|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))))
 :qid |XUSbaselinebpl.5685:53|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35) true)
 :qid |XUSbaselinebpl.5722:55|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36) true)
 :qid |XUSbaselinebpl.5736:55|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@37)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@37))))
 :qid |XUSbaselinebpl.5753:38|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@38)))
 :qid |XUSbaselinebpl.5767:48|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@39)))
 :qid |XUSbaselinebpl.5781:48|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@40)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@40))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@40))))
 :qid |XUSbaselinebpl.5801:41|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@41)))
 :qid |XUSbaselinebpl.5817:53|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@42)))
 :qid |XUSbaselinebpl.5830:53|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43))))
 :qid |XUSbaselinebpl.5846:60|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44))))
 :qid |XUSbaselinebpl.5863:60|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45))))
 :qid |XUSbaselinebpl.5880:57|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46) true)
 :qid |XUSbaselinebpl.8081:68|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))))
 :qid |XUSbaselinebpl.8103:66|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))))
 :qid |XUSbaselinebpl.8129:66|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@49) true)
 :qid |XUSbaselinebpl.8462:31|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@50) true)
 :qid |XUSbaselinebpl.9408:31|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@51)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@51)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@51))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@51))))
 :qid |XUSbaselinebpl.9427:35|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@51))
)))
(assert (forall ((s@@52 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@52)))
 :qid |XUSbaselinebpl.9848:45|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@53))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@53))))
 :qid |XUSbaselinebpl.9866:50|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@54)))
 :qid |XUSbaselinebpl.9882:52|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55))))
 :qid |XUSbaselinebpl.9908:65|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@56)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@56))))
 :qid |XUSbaselinebpl.10293:60|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57))))
 :qid |XUSbaselinebpl.10310:66|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@58)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@58)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@58))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@58))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@58))))
 :qid |XUSbaselinebpl.10339:50|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@59) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@59)))
 :qid |XUSbaselinebpl.10362:45|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@60)) true))
 :qid |XUSbaselinebpl.10681:87|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@61)))
 :qid |XUSbaselinebpl.10893:47|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@62)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@62))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@62))))
 :qid |XUSbaselinebpl.10912:58|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@63) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@63)))
 :qid |XUSbaselinebpl.10928:39|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@64))))
 :qid |XUSbaselinebpl.10950:58|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65))))
 :qid |XUSbaselinebpl.10967:58|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66) true)
 :qid |XUSbaselinebpl.10982:51|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67))))
 :qid |XUSbaselinebpl.10999:60|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@68)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@68))))
 :qid |XUSbaselinebpl.11297:47|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@69)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@69))))
 :qid |XUSbaselinebpl.11323:63|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@70)))
 :qid |XUSbaselinebpl.11338:57|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@71)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@71))))
 :qid |XUSbaselinebpl.11354:54|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@72)))
 :qid |XUSbaselinebpl.11368:55|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@73)))
 :qid |XUSbaselinebpl.11381:57|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@74)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@74))))
 :qid |XUSbaselinebpl.11403:56|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@75)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@75))))
 :qid |XUSbaselinebpl.11430:52|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@76)))
 :qid |XUSbaselinebpl.11448:54|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |XUSbaselinebpl.12319:47|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |XUSbaselinebpl.12343:47|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |XUSbaselinebpl.12586:49|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |XUSbaselinebpl.12628:49|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |XUSbaselinebpl.12657:48|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |XUSbaselinebpl.12953:47|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@25 T@Vec_65083) (i@@40 Int) ) (! (= (InRangeVec_56006 v@@25 i@@40)  (and (>= i@@40 0) (< i@@40 (|l#Vec_65083| v@@25))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56006 v@@25 i@@40))
)))
(assert (forall ((v@@26 T@Vec_63389) (i@@41 Int) ) (! (= (InRangeVec_56207 v@@26 i@@41)  (and (>= i@@41 0) (< i@@41 (|l#Vec_63389| v@@26))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56207 v@@26 i@@41))
)))
(assert (forall ((v@@27 T@Vec_63428) (i@@42 Int) ) (! (= (InRangeVec_56408 v@@27 i@@42)  (and (>= i@@42 0) (< i@@42 (|l#Vec_63428| v@@27))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56408 v@@27 i@@42))
)))
(assert (forall ((v@@28 T@Vec_63554) (i@@43 Int) ) (! (= (InRangeVec_56609 v@@28 i@@43)  (and (>= i@@43 0) (< i@@43 (|l#Vec_63554| v@@28))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56609 v@@28 i@@43))
)))
(assert (forall ((v@@29 T@Vec_63815) (i@@44 Int) ) (! (= (InRangeVec_56810 v@@29 i@@44)  (and (>= i@@44 0) (< i@@44 (|l#Vec_63815| v@@29))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56810 v@@29 i@@44))
)))
(assert (forall ((v@@30 T@Vec_63776) (i@@45 Int) ) (! (= (InRangeVec_57011 v@@30 i@@45)  (and (>= i@@45 0) (< i@@45 (|l#Vec_63776| v@@30))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57011 v@@30 i@@45))
)))
(assert (forall ((v@@31 T@Vec_63350) (i@@46 Int) ) (! (= (InRangeVec_57212 v@@31 i@@46)  (and (>= i@@46 0) (< i@@46 (|l#Vec_63350| v@@31))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57212 v@@31 i@@46))
)))
(assert (forall ((v@@32 T@Vec_63611) (i@@47 Int) ) (! (= (InRangeVec_84020 v@@32 i@@47)  (and (>= i@@47 0) (< i@@47 (|l#Vec_63611| v@@32))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_84020 v@@32 i@@47))
)))
(assert (forall ((v@@33 T@Vec_20558) (i@@48 Int) ) (! (= (InRangeVec_12164 v@@33 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_20558| v@@33))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_12164 v@@33 i@@48))
)))
(assert (forall ((v@@34 T@Vec_20558) (e@@9 Int) ) (! (let ((i@@49 (IndexOfVec_20558 v@@34 e@@9)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_12164 v@@34 i@@50) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@34) i@@50) e@@9))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_12164 v@@34 i@@49) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@34) i@@49) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@49)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@34) j@@9) e@@9)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_20558 v@@34 e@@9))
)))
(assert (forall ((v@@35 T@Vec_63350) (e@@10 T@$1_ValidatorConfig_Config) ) (! (let ((i@@51 (IndexOfVec_63350 v@@35 e@@10)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_57212 v@@35 i@@52) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@35) i@@52) e@@10))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_57212 v@@35 i@@51) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@35) i@@51) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@51)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@35) j@@10) e@@10)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63350 v@@35 e@@10))
)))
(assert (forall ((v@@36 T@Vec_63389) (e@@11 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@53 (IndexOfVec_63389 v@@36 e@@11)))
(ite  (not (exists ((i@@54 Int) ) (!  (and (InRangeVec_56207 v@@36 i@@54) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@36) i@@54) e@@11))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@53 (- 0 1))  (and (and (InRangeVec_56207 v@@36 i@@53) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@36) i@@53) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@53)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@36) j@@11) e@@11)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63389 v@@36 e@@11))
)))
(assert (forall ((v@@37 T@Vec_63428) (e@@12 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@55 (IndexOfVec_63428 v@@37 e@@12)))
(ite  (not (exists ((i@@56 Int) ) (!  (and (InRangeVec_56408 v@@37 i@@56) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@37) i@@56) e@@12))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@55 (- 0 1))  (and (and (InRangeVec_56408 v@@37 i@@55) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@37) i@@55) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@55)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@37) j@@12) e@@12)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63428 v@@37 e@@12))
)))
(assert (forall ((v@@38 T@Vec_63554) (e@@13 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@57 (IndexOfVec_63554 v@@38 e@@13)))
(ite  (not (exists ((i@@58 Int) ) (!  (and (InRangeVec_56609 v@@38 i@@58) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@38) i@@58) e@@13))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@57 (- 0 1))  (and (and (InRangeVec_56609 v@@38 i@@57) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@38) i@@57) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@57)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@38) j@@13) e@@13)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63554 v@@38 e@@13))
)))
(assert (forall ((v@@39 T@Vec_63611) (e@@14 T@Vec_20558) ) (! (let ((i@@59 (IndexOfVec_63611 v@@39 e@@14)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_84020 v@@39 i@@60) (= (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@39) i@@60) e@@14))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_84020 v@@39 i@@59) (= (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@39) i@@59) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@59)) (not (= (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@39) j@@14) e@@14)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63611 v@@39 e@@14))
)))
(assert (forall ((v@@40 T@Vec_63776) (e@@15 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@61 (IndexOfVec_63776 v@@40 e@@15)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_57011 v@@40 i@@62) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@40) i@@62) e@@15))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_57011 v@@40 i@@61) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@40) i@@61) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@61)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@40) j@@15) e@@15)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63776 v@@40 e@@15))
)))
(assert (forall ((v@@41 T@Vec_63815) (e@@16 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@63 (IndexOfVec_63815 v@@41 e@@16)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_56810 v@@41 i@@64) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@41) i@@64) e@@16))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_56810 v@@41 i@@63) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@41) i@@63) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@63)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@41) j@@16) e@@16)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63815 v@@41 e@@16))
)))
(assert (forall ((v@@42 T@Vec_65083) (e@@17 |T@#0|) ) (! (let ((i@@65 (IndexOfVec_65083 v@@42 e@@17)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_56006 v@@42 i@@66) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@42) i@@66) e@@17))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_56006 v@@42 i@@65) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@42) i@@65) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@65)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@42) j@@17) e@@17)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_65083 v@@42 e@@17))
)))
(assert (forall ((|l#0| Bool) (i@@67 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67) |l#0|)
 :qid |XUSbaselinebpl.275:54|
 :skolemid |283|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_63264|) (|l#1| |T@[$1_Event_EventHandle]Multiset_63264|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_63264_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_63264| (|Select__T@[$1_Event_EventHandle]Multiset_63264_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_63264| (|Select__T@[$1_Event_EventHandle]Multiset_63264_| |l#1| handle@@0))))
(Multiset_63264 (|lambda#30| (|v#Multiset_63264| (|Select__T@[$1_Event_EventHandle]Multiset_63264_| |l#0@@0| handle@@0)) (|v#Multiset_63264| (|Select__T@[$1_Event_EventHandle]Multiset_63264_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XUSbaselinebpl.2588:13|
 :skolemid |284|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_63264_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@68 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68) (ite  (and (>= i@@68 |l#0@@1|) (< i@@68 |l#1@@0|)) (ite (< i@@68 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@68) (|Select__T@[Int]#0_| |l#4| (- i@@68 |l#5|))) |l#6|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@69 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69) (ite  (and (<= |l#0@@2| i@@69) (< i@@69 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@69) |l#4@@0|)) |l#5@@0|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@18 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18) (ite  (and (>= j@@18 |l#0@@3|) (< j@@18 |l#1@@2|)) (ite (< j@@18 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@18) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@18 |l#5@@1|))) |l#6@@0|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@70 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70) (ite  (and (>= i@@70 |l#0@@4|) (< i@@70 |l#1@@3|)) (ite (< i@@70 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@70) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@70 |l#5@@2|))) |l#6@@1|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@71 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71) (ite  (and (<= |l#0@@5| i@@71) (< i@@71 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@71) |l#4@@3|)) |l#5@@3|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |289|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19) (ite  (and (>= j@@19 |l#0@@6|) (< j@@19 |l#1@@5|)) (ite (< j@@19 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@19) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@19 |l#5@@4|))) |l#6@@2|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |290|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72) (ite  (and (>= i@@72 |l#0@@7|) (< i@@72 |l#1@@6|)) (ite (< i@@72 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@72) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@72 |l#5@@5|))) |l#6@@3|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |291|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@73 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73) (ite  (and (<= |l#0@@8| i@@73) (< i@@73 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@73) |l#4@@6|)) |l#5@@6|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20) (ite  (and (>= j@@20 |l#0@@9|) (< j@@20 |l#1@@8|)) (ite (< j@@20 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@20) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@20 |l#5@@7|))) |l#6@@4|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@74 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74) (ite  (and (>= i@@74 |l#0@@10|) (< i@@74 |l#1@@9|)) (ite (< i@@74 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@74) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@74 |l#5@@8|))) |l#6@@5|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@75 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75) (ite  (and (<= |l#0@@11| i@@75) (< i@@75 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@75) |l#4@@9|)) |l#5@@9|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21) (ite  (and (>= j@@21 |l#0@@12|) (< j@@21 |l#1@@11|)) (ite (< j@@21 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@21) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@21 |l#5@@10|))) |l#6@@6|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@76 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76) (ite  (and (>= i@@76 |l#0@@13|) (< i@@76 |l#1@@12|)) (ite (< i@@76 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@11| i@@76) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@11| (- i@@76 |l#5@@11|))) |l#6@@7|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@77 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77) (ite  (and (<= |l#0@@14| i@@77) (< i@@77 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@12| (- (- |l#3@@12| i@@77) |l#4@@12|)) |l#5@@12|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@22 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22) (ite  (and (>= j@@22 |l#0@@15|) (< j@@22 |l#1@@14|)) (ite (< j@@22 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@13| j@@22) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@13| (+ j@@22 |l#5@@13|))) |l#6@@8|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@78 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78) (ite  (and (>= i@@78 |l#0@@16|) (< i@@78 |l#1@@15|)) (ite (< i@@78 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@14| i@@78) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@14| (- i@@78 |l#5@@14|))) |l#6@@9|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |300|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@79 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79) (ite  (and (<= |l#0@@17| i@@79) (< i@@79 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@15| (- (- |l#3@@15| i@@79) |l#4@@15|)) |l#5@@15|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23) (ite  (and (>= j@@23 |l#0@@18|) (< j@@23 |l#1@@17|)) (ite (< j@@23 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@16| j@@23) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@16| (+ j@@23 |l#5@@16|))) |l#6@@10|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |302|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@17| Int) (|l#6@@11| T@$1_ValidatorConfig_Config) (i@@80 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80) (ite  (and (>= i@@80 |l#0@@19|) (< i@@80 |l#1@@18|)) (ite (< i@@80 |l#2@@17|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@17| i@@80) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@17| (- i@@80 |l#5@@17|))) |l#6@@11|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@$1_ValidatorConfig_Config) (i@@81 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81) (ite  (and (<= |l#0@@20| i@@81) (< i@@81 |l#1@@19|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@18| (- (- |l#3@@18| i@@81) |l#4@@18|)) |l#5@@18|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@19| Int) (|l#6@@12| T@$1_ValidatorConfig_Config) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24) (ite  (and (>= j@@24 |l#0@@21|) (< j@@24 |l#1@@20|)) (ite (< j@@24 |l#2@@19|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@19| j@@24) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@19| (+ j@@24 |l#5@@19|))) |l#6@@12|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Vec_20558|) (|l#4@@20| |T@[Int]Vec_20558|) (|l#5@@20| Int) (|l#6@@13| T@Vec_20558) (i@@82 Int) ) (! (= (|Select__T@[Int]Vec_20558_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82) (ite  (and (>= i@@82 |l#0@@22|) (< i@@82 |l#1@@21|)) (ite (< i@@82 |l#2@@20|) (|Select__T@[Int]Vec_20558_| |l#3@@20| i@@82) (|Select__T@[Int]Vec_20558_| |l#4@@20| (- i@@82 |l#5@@20|))) |l#6@@13|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]Vec_20558_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Vec_20558|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@Vec_20558) (i@@83 Int) ) (! (= (|Select__T@[Int]Vec_20558_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83) (ite  (and (<= |l#0@@23| i@@83) (< i@@83 |l#1@@22|)) (|Select__T@[Int]Vec_20558_| |l#2@@21| (- (- |l#3@@21| i@@83) |l#4@@21|)) |l#5@@21|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |307|
 :pattern ( (|Select__T@[Int]Vec_20558_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Vec_20558|) (|l#4@@22| |T@[Int]Vec_20558|) (|l#5@@22| Int) (|l#6@@14| T@Vec_20558) (j@@25 Int) ) (! (= (|Select__T@[Int]Vec_20558_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25) (ite  (and (>= j@@25 |l#0@@24|) (< j@@25 |l#1@@23|)) (ite (< j@@25 |l#2@@22|) (|Select__T@[Int]Vec_20558_| |l#3@@22| j@@25) (|Select__T@[Int]Vec_20558_| |l#4@@22| (+ j@@25 |l#5@@22|))) |l#6@@14|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |308|
 :pattern ( (|Select__T@[Int]Vec_20558_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]Int|) (|l#4@@23| |T@[Int]Int|) (|l#5@@23| Int) (|l#6@@15| Int) (i@@84 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84) (ite  (and (>= i@@84 |l#0@@25|) (< i@@84 |l#1@@24|)) (ite (< i@@84 |l#2@@23|) (|Select__T@[Int]Int_| |l#3@@23| i@@84) (|Select__T@[Int]Int_| |l#4@@23| (- i@@84 |l#5@@23|))) |l#6@@15|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |309|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]Int|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| Int) (i@@85 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85) (ite  (and (<= |l#0@@26| i@@85) (< i@@85 |l#1@@25|)) (|Select__T@[Int]Int_| |l#2@@24| (- (- |l#3@@24| i@@85) |l#4@@24|)) |l#5@@24|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |310|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]Int|) (|l#4@@25| |T@[Int]Int|) (|l#5@@25| Int) (|l#6@@16| Int) (j@@26 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26) (ite  (and (>= j@@26 |l#0@@27|) (< j@@26 |l#1@@26|)) (ite (< j@@26 |l#2@@25|) (|Select__T@[Int]Int_| |l#3@@25| j@@26) (|Select__T@[Int]Int_| |l#4@@25| (+ j@@26 |l#5@@25|))) |l#6@@16|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |311|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26))
)))
(assert (forall ((|l#0@@28| |T@[$EventRep]Int|) (|l#1@@27| |T@[$EventRep]Int|) (v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43) (- (|Select__T@[$EventRep]Int_| |l#0@@28| v@@43) (|Select__T@[$EventRep]Int_| |l#1@@27| v@@43)))
 :qid |XUSbaselinebpl.154:29|
 :skolemid |312|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12788)
(declare-fun $t14@1 () T@$Mutation_98546)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@1 () T@$Mutation_12788)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_98546)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_98077)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_99493)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_99577)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_98077)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $t25 () Int)
(declare-fun _$t0 () Int)
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
(declare-fun $t14 () T@$Mutation_98546)
(declare-fun $t14@0 () T@$Mutation_98546)
(declare-fun MapConstVec_12393 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_12393 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_98546)
(declare-fun $t24 () T@$Mutation_12788)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 212684) (let ((L5_correct  (=> (and (= $t24@0 ($Mutation_12788 (|l#$Mutation_98546| $t14@1) (let ((l (|l#Vec_20558| (|p#$Mutation_98546| $t14@1))))
(Vec_20558 (|Store__T@[Int]Int_| (|v#Vec_20558| (|p#$Mutation_98546| $t14@1)) l 0) (+ l 1))) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_98546| $t14@1)))) (= $t24@1 ($Mutation_12788 (|l#$Mutation_12788| $t24@0) (|p#$Mutation_12788| $t24@0) _$t2))) (=> (and (and (= $t14@2 ($Mutation_98546 (|l#$Mutation_98546| $t14@1) (|p#$Mutation_98546| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12788| $t24@1)))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_98077 (|Store__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_98546| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_98546| $t14@2)) (|v#$Mutation_98546| $t14@2)))))) (and (=> (= (ControlFlow 0 150719) (- 0 213318)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 150719) (- 0 213330)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 150719) (- 0 213357)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 150719) (- 0 213367)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 150719) (- 0 213381)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 150719) (- 0 213405)) (= $t25 _$t2)))))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 150777) 150719)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 150551) 150719)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 150547) (- 0 213449)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 150547) (- 0 213486)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 150773) 150547))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 150757) 150777) anon25_Then_correct) (=> (= (ControlFlow 0 150757) 150773) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 150431) 150547))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 150415) 150551) anon26_Then_correct) (=> (= (ControlFlow 0 150415) 150431) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 150379) 150415)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 150385) 150379)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_98546| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_98546| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 150333) 150757) anon24_Then_correct) (=> (= (ControlFlow 0 150333) 150385) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 150791) 150547))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 150843) 150791) anon23_Then_correct) (=> (= (ControlFlow 0 150843) 150333) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 150841) 150843)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_98546 ($Global 173345816) (Vec_20558 (MapConstVec_12393 DefaultVecElem_12393) 0) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 150287) 150791) anon23_Then_correct) (=> (= (ControlFlow 0 150287) 150333) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 150265) (- 0 212982)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 150265) 150841) anon22_Then_correct) (=> (= (ControlFlow 0 150265) 150287) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 150873) 150547))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 150245) 150873) anon21_Then_correct) (=> (= (ControlFlow 0 150245) 150265) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 150899) 150547))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |XUSbaselinebpl.3788:20|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 150223) 150899) anon20_Then_correct) (=> (= (ControlFlow 0 150223) 150245) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_63264_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_63264| stream@@0) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63264| stream@@0) v@@44) 0)
 :qid |XUSbaselinebpl.159:13|
 :skolemid |4|
))))
 :qid |XUSbaselinebpl.2578:13|
 :skolemid |91|
))) (= (ControlFlow 0 150111) 150223)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_20558| (|p#$Mutation_98546| $t3)) 0) (= (|l#Vec_20558| (|p#$Mutation_98546| $t14)) 0)) (and (= (|l#Vec_20558| (|p#$Mutation_12788| $t24)) 0) (= (ControlFlow 0 150121) 150111))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 212684) 150121) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_90744 0)) ((($Memory_90744 (|domain#$Memory_90744| |T@[Int]Bool|) (|contents#$Memory_90744| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_65083 0)) (((Vec_65083 (|v#Vec_65083| |T@[Int]#0|) (|l#Vec_65083| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_135876 0)) ((($Memory_135876 (|domain#$Memory_135876| |T@[Int]Bool|) (|contents#$Memory_135876| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_132711 0)) ((($Memory_132711 (|domain#$Memory_132711| |T@[Int]Bool|) (|contents#$Memory_132711| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_130519 0)) ((($Memory_130519 (|domain#$Memory_130519| |T@[Int]Bool|) (|contents#$Memory_130519| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_130831 0)) ((($Memory_130831 (|domain#$Memory_130831| |T@[Int]Bool|) (|contents#$Memory_130831| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_130486 0)) ((($Memory_130486 (|domain#$Memory_130486| |T@[Int]Bool|) (|contents#$Memory_130486| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_130266 0)) ((($Memory_130266 (|domain#$Memory_130266| |T@[Int]Bool|) (|contents#$Memory_130266| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_127605 0)) ((($Memory_127605 (|domain#$Memory_127605| |T@[Int]Bool|) (|contents#$Memory_127605| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_126159 0)) ((($Memory_126159 (|domain#$Memory_126159| |T@[Int]Bool|) (|contents#$Memory_126159| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_118916 0)) ((($Memory_118916 (|domain#$Memory_118916| |T@[Int]Bool|) (|contents#$Memory_118916| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_99577 0)) ((($Memory_99577 (|domain#$Memory_99577| |T@[Int]Bool|) (|contents#$Memory_99577| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_132489 0)) ((($Memory_132489 (|domain#$Memory_132489| |T@[Int]Bool|) (|contents#$Memory_132489| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_111622 0)) ((($Memory_111622 (|domain#$Memory_111622| |T@[Int]Bool|) (|contents#$Memory_111622| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107526 0)) ((($Memory_107526 (|domain#$Memory_107526| |T@[Int]Bool|) (|contents#$Memory_107526| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107839 0)) ((($Memory_107839 (|domain#$Memory_107839| |T@[Int]Bool|) (|contents#$Memory_107839| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107752 0)) ((($Memory_107752 (|domain#$Memory_107752| |T@[Int]Bool|) (|contents#$Memory_107752| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_111870 0)) ((($Memory_111870 (|domain#$Memory_111870| |T@[Int]Bool|) (|contents#$Memory_111870| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_124866 0)) ((($Memory_124866 (|domain#$Memory_124866| |T@[Int]Bool|) (|contents#$Memory_124866| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_111789 0)) ((($Memory_111789 (|domain#$Memory_111789| |T@[Int]Bool|) (|contents#$Memory_111789| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_126475 0)) ((($Memory_126475 (|domain#$Memory_126475| |T@[Int]Bool|) (|contents#$Memory_126475| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_103428 0)) ((($Memory_103428 (|domain#$Memory_103428| |T@[Int]Bool|) (|contents#$Memory_103428| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_103341 0)) ((($Memory_103341 (|domain#$Memory_103341| |T@[Int]Bool|) (|contents#$Memory_103341| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_103254 0)) ((($Memory_103254 (|domain#$Memory_103254| |T@[Int]Bool|) (|contents#$Memory_103254| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_103167 0)) ((($Memory_103167 (|domain#$Memory_103167| |T@[Int]Bool|) (|contents#$Memory_103167| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_103080 0)) ((($Memory_103080 (|domain#$Memory_103080| |T@[Int]Bool|) (|contents#$Memory_103080| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_103683 0)) ((($Memory_103683 (|domain#$Memory_103683| |T@[Int]Bool|) (|contents#$Memory_103683| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_101900 0)) ((($Memory_101900 (|domain#$Memory_101900| |T@[Int]Bool|) (|contents#$Memory_101900| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_101966 0)) ((($Memory_101966 (|domain#$Memory_101966| |T@[Int]Bool|) (|contents#$Memory_101966| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_101819 0)) ((($Memory_101819 (|domain#$Memory_101819| |T@[Int]Bool|) (|contents#$Memory_101819| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_101462 0)) ((($Memory_101462 (|domain#$Memory_101462| |T@[Int]Bool|) (|contents#$Memory_101462| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_63428 0)) (((Vec_63428 (|v#Vec_63428| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_63428| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_63428) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_63389 0)) (((Vec_63389 (|v#Vec_63389| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_63389| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_63389) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_20558 0)) (((Vec_20558 (|v#Vec_20558| |T@[Int]Int|) (|l#Vec_20558| Int) ) ) ))
(declare-sort |T@[Int]Vec_20558| 0)
(declare-datatypes ((T@Vec_63611 0)) (((Vec_63611 (|v#Vec_63611| |T@[Int]Vec_20558|) (|l#Vec_63611| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_63611) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_101657 0)) ((($Memory_101657 (|domain#$Memory_101657| |T@[Int]Bool|) (|contents#$Memory_101657| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_63611) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_101576 0)) ((($Memory_101576 (|domain#$Memory_101576| |T@[Int]Bool|) (|contents#$Memory_101576| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_20558) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_20558) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_101738 0)) ((($Memory_101738 (|domain#$Memory_101738| |T@[Int]Bool|) (|contents#$Memory_101738| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_20558) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_131472 0)) ((($Memory_131472 (|domain#$Memory_131472| |T@[Int]Bool|) (|contents#$Memory_131472| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_20558) (|$base_url#$1_DualAttestation_Credential| T@Vec_20558) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_20558) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_127541 0)) ((($Memory_127541 (|domain#$Memory_127541| |T@[Int]Bool|) (|contents#$Memory_127541| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_20558) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_63815 0)) (((Vec_63815 (|v#Vec_63815| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_63815| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_63815) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112237 0)) ((($Memory_112237 (|domain#$Memory_112237| |T@[Int]Bool|) (|contents#$Memory_112237| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_63776 0)) (((Vec_63776 (|v#Vec_63776| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_63776| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_63776) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112120 0)) ((($Memory_112120 (|domain#$Memory_112120| |T@[Int]Bool|) (|contents#$Memory_112120| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_20558) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107390 0)) ((($Memory_107390 (|domain#$Memory_107390| |T@[Int]Bool|) (|contents#$Memory_107390| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_20558) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_99493 0)) ((($Memory_99493 (|domain#$Memory_99493| |T@[Int]Bool|) (|contents#$Memory_99493| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_20558) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_20558) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_63350 0)) (((Vec_63350 (|v#Vec_63350| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_63350| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_63350) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_63554 0)) (((Vec_63554 (|v#Vec_63554| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_63554| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_63554) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_101495 0)) ((($Memory_101495 (|domain#$Memory_101495| |T@[Int]Bool|) (|contents#$Memory_101495| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_100876 0)) ((($Memory_100876 (|domain#$Memory_100876| |T@[Int]Bool|) (|contents#$Memory_100876| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_100233 0)) ((($Memory_100233 (|domain#$Memory_100233| |T@[Int]Bool|) (|contents#$Memory_100233| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_99964 0)) ((($Memory_99964 (|domain#$Memory_99964| |T@[Int]Bool|) (|contents#$Memory_99964| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_98077 0)) ((($Memory_98077 (|domain#$Memory_98077| |T@[Int]Bool|) (|contents#$Memory_98077| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_20558) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_20558) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_20558) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_20558) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_20558) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_20558) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_20558) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_20558) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_20558) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_20558) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_63264 0)) (((Multiset_63264 (|v#Multiset_63264| |T@[$EventRep]Int|) (|l#Multiset_63264| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_63264| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_63264|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_133563 0)) ((($Mutation_133563 (|l#$Mutation_133563| T@$Location) (|p#$Mutation_133563| T@Vec_20558) (|v#$Mutation_133563| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_133518 0)) ((($Mutation_133518 (|l#$Mutation_133518| T@$Location) (|p#$Mutation_133518| T@Vec_20558) (|v#$Mutation_133518| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_33232 0)) ((($Mutation_33232 (|l#$Mutation_33232| T@$Location) (|p#$Mutation_33232| T@Vec_20558) (|v#$Mutation_33232| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_117450 0)) ((($Mutation_117450 (|l#$Mutation_117450| T@$Location) (|p#$Mutation_117450| T@Vec_20558) (|v#$Mutation_117450| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_106104 0)) ((($Mutation_106104 (|l#$Mutation_106104| T@$Location) (|p#$Mutation_106104| T@Vec_20558) (|v#$Mutation_106104| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_98546 0)) ((($Mutation_98546 (|l#$Mutation_98546| T@$Location) (|p#$Mutation_98546| T@Vec_20558) (|v#$Mutation_98546| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_91372 0)) ((($Mutation_91372 (|l#$Mutation_91372| T@$Location) (|p#$Mutation_91372| T@Vec_20558) (|v#$Mutation_91372| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12788 0)) ((($Mutation_12788 (|l#$Mutation_12788| T@$Location) (|p#$Mutation_12788| T@Vec_20558) (|v#$Mutation_12788| Int) ) ) ))
(declare-datatypes ((T@$Mutation_85685 0)) ((($Mutation_85685 (|l#$Mutation_85685| T@$Location) (|p#$Mutation_85685| T@Vec_20558) (|v#$Mutation_85685| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$Mutation_84597 0)) ((($Mutation_84597 (|l#$Mutation_84597| T@$Location) (|p#$Mutation_84597| T@Vec_20558) (|v#$Mutation_84597| T@Vec_63611) ) ) ))
(declare-datatypes ((T@$Mutation_82888 0)) ((($Mutation_82888 (|l#$Mutation_82888| T@$Location) (|p#$Mutation_82888| T@Vec_20558) (|v#$Mutation_82888| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_81901 0)) ((($Mutation_81901 (|l#$Mutation_81901| T@$Location) (|p#$Mutation_81901| T@Vec_20558) (|v#$Mutation_81901| T@Vec_63350) ) ) ))
(declare-datatypes ((T@$Mutation_80246 0)) ((($Mutation_80246 (|l#$Mutation_80246| T@$Location) (|p#$Mutation_80246| T@Vec_20558) (|v#$Mutation_80246| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_79259 0)) ((($Mutation_79259 (|l#$Mutation_79259| T@$Location) (|p#$Mutation_79259| T@Vec_20558) (|v#$Mutation_79259| T@Vec_63776) ) ) ))
(declare-datatypes ((T@$Mutation_77550 0)) ((($Mutation_77550 (|l#$Mutation_77550| T@$Location) (|p#$Mutation_77550| T@Vec_20558) (|v#$Mutation_77550| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_76563 0)) ((($Mutation_76563 (|l#$Mutation_76563| T@$Location) (|p#$Mutation_76563| T@Vec_20558) (|v#$Mutation_76563| T@Vec_63815) ) ) ))
(declare-datatypes ((T@$Mutation_74854 0)) ((($Mutation_74854 (|l#$Mutation_74854| T@$Location) (|p#$Mutation_74854| T@Vec_20558) (|v#$Mutation_74854| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_73867 0)) ((($Mutation_73867 (|l#$Mutation_73867| T@$Location) (|p#$Mutation_73867| T@Vec_20558) (|v#$Mutation_73867| T@Vec_63554) ) ) ))
(declare-datatypes ((T@$Mutation_72067 0)) ((($Mutation_72067 (|l#$Mutation_72067| T@$Location) (|p#$Mutation_72067| T@Vec_20558) (|v#$Mutation_72067| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_71080 0)) ((($Mutation_71080 (|l#$Mutation_71080| T@$Location) (|p#$Mutation_71080| T@Vec_20558) (|v#$Mutation_71080| T@Vec_63428) ) ) ))
(declare-datatypes ((T@$Mutation_69415 0)) ((($Mutation_69415 (|l#$Mutation_69415| T@$Location) (|p#$Mutation_69415| T@Vec_20558) (|v#$Mutation_69415| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68428 0)) ((($Mutation_68428 (|l#$Mutation_68428| T@$Location) (|p#$Mutation_68428| T@Vec_20558) (|v#$Mutation_68428| T@Vec_63389) ) ) ))
(declare-datatypes ((T@$Mutation_66715 0)) ((($Mutation_66715 (|l#$Mutation_66715| T@$Location) (|p#$Mutation_66715| T@Vec_20558) (|v#$Mutation_66715| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_65728 0)) ((($Mutation_65728 (|l#$Mutation_65728| T@$Location) (|p#$Mutation_65728| T@Vec_20558) (|v#$Mutation_65728| T@Vec_65083) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_65083 T@Vec_65083) Bool)
(declare-fun InRangeVec_56006 (T@Vec_65083 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_65083) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_65083 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_63389 T@Vec_63389) Bool)
(declare-fun InRangeVec_56207 (T@Vec_63389 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_63389) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_63389 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_63428 T@Vec_63428) Bool)
(declare-fun InRangeVec_56408 (T@Vec_63428 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_63428) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_63428 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_63554 T@Vec_63554) Bool)
(declare-fun InRangeVec_56609 (T@Vec_63554 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_20558 T@Vec_20558) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_63554) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_63554 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_63815 T@Vec_63815) Bool)
(declare-fun InRangeVec_56810 (T@Vec_63815 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_63815) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_63815 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_63776 T@Vec_63776) Bool)
(declare-fun InRangeVec_57011 (T@Vec_63776 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_63776) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_63776 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_63350 T@Vec_63350) Bool)
(declare-fun InRangeVec_57212 (T@Vec_63350 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_63350) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_63350 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_63611 T@Vec_63611) Bool)
(declare-fun InRangeVec_84020 (T@Vec_63611 Int) Bool)
(declare-fun |Select__T@[Int]Vec_20558_| (|T@[Int]Vec_20558| Int) T@Vec_20558)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_63611) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_20558) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_63611 T@Vec_20558) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_20558 T@Vec_20558) Bool)
(declare-fun InRangeVec_12164 (T@Vec_20558 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_20558) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_20558 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_20558 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_20558) T@Vec_20558)
(declare-fun $1_Hash_sha3 (T@Vec_20558) T@Vec_20558)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_20558) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_20558 T@Vec_20558 T@Vec_20558) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_63264_| (|T@[$1_Event_EventHandle]Multiset_63264| T@$1_Event_EventHandle) T@Multiset_63264)
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
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
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
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun IndexOfVec_20558 (T@Vec_20558 Int) Int)
(declare-fun IndexOfVec_63350 (T@Vec_63350 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_63389 (T@Vec_63389 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_63428 (T@Vec_63428 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_63554 (T@Vec_63554 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_63611 (T@Vec_63611 T@Vec_20558) Int)
(declare-fun IndexOfVec_63776 (T@Vec_63776 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_63815 (T@Vec_63815 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_65083 (T@Vec_65083 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_63264| |T@[$1_Event_EventHandle]Multiset_63264|) |T@[$1_Event_EventHandle]Multiset_63264|)
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
(declare-fun |lambda#24| (Int Int Int |T@[Int]Vec_20558| |T@[Int]Vec_20558| Int T@Vec_20558) |T@[Int]Vec_20558|)
(declare-fun |lambda#25| (Int Int |T@[Int]Vec_20558| Int Int T@Vec_20558) |T@[Int]Vec_20558|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Vec_20558| |T@[Int]Vec_20558| Int T@Vec_20558) |T@[Int]Vec_20558|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |XUSbaselinebpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XUSbaselinebpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XUSbaselinebpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XUSbaselinebpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XUSbaselinebpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XUSbaselinebpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XUSbaselinebpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XUSbaselinebpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_65083) (v2 T@Vec_65083) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_65083| v1) (|l#Vec_65083| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_56006 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_65083| v2) i@@0)))
 :qid |XUSbaselinebpl.615:13|
 :skolemid |17|
))))
 :qid |XUSbaselinebpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_65083) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_65083| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_56006 v@@4 i@@1) true)
 :qid |XUSbaselinebpl.621:13|
 :skolemid |19|
))))
 :qid |XUSbaselinebpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_65083) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_56006 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@5) i@@3) e))
 :qid |XUSbaselinebpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_56006 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@5) j) e)))
 :qid |XUSbaselinebpl.634:17|
 :skolemid |22|
)))))
 :qid |XUSbaselinebpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_63389) (v2@@0 T@Vec_63389) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_63389| v1@@0) (|l#Vec_63389| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_56207 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v2@@0) i@@4)))
 :qid |XUSbaselinebpl.796:13|
 :skolemid |24|
))))
 :qid |XUSbaselinebpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_63389) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_63389| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_56207 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@6) i@@5)))
 :qid |XUSbaselinebpl.802:13|
 :skolemid |26|
))))
 :qid |XUSbaselinebpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_63389) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_56207 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@7) i@@7) e@@0))
 :qid |XUSbaselinebpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_56207 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@7) j@@0) e@@0)))
 :qid |XUSbaselinebpl.815:17|
 :skolemid |29|
)))))
 :qid |XUSbaselinebpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_63428) (v2@@1 T@Vec_63428) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_63428| v1@@1) (|l#Vec_63428| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_56408 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v2@@1) i@@8)))
 :qid |XUSbaselinebpl.977:13|
 :skolemid |31|
))))
 :qid |XUSbaselinebpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_63428) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_63428| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_56408 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@8) i@@9)))
 :qid |XUSbaselinebpl.983:13|
 :skolemid |33|
))))
 :qid |XUSbaselinebpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_63428) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_56408 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@9) i@@11) e@@1))
 :qid |XUSbaselinebpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_56408 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@9) j@@1) e@@1)))
 :qid |XUSbaselinebpl.996:17|
 :skolemid |36|
)))))
 :qid |XUSbaselinebpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_63554) (v2@@2 T@Vec_63554) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_63554| v1@@2) (|l#Vec_63554| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_56609 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12)))))
 :qid |XUSbaselinebpl.1158:13|
 :skolemid |38|
))))
 :qid |XUSbaselinebpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_63554) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_63554| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_56609 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@10) i@@13)))
 :qid |XUSbaselinebpl.1164:13|
 :skolemid |40|
))))
 :qid |XUSbaselinebpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_63554) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_56609 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |XUSbaselinebpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_56609 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |XUSbaselinebpl.1177:17|
 :skolemid |43|
)))))
 :qid |XUSbaselinebpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_63815) (v2@@3 T@Vec_63815) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3)  (and (= (|l#Vec_63815| v1@@3) (|l#Vec_63815| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_56810 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v2@@3) i@@16)))))
 :qid |XUSbaselinebpl.1339:13|
 :skolemid |45|
))))
 :qid |XUSbaselinebpl.1337:65|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_63815) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_63815| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_56810 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@12) i@@17)))
 :qid |XUSbaselinebpl.1345:13|
 :skolemid |47|
))))
 :qid |XUSbaselinebpl.1343:65|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_63815) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_56810 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3))))
 :qid |XUSbaselinebpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_56810 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))))
 :qid |XUSbaselinebpl.1358:17|
 :skolemid |50|
)))))
 :qid |XUSbaselinebpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_63776) (v2@@4 T@Vec_63776) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4)  (and (= (|l#Vec_63776| v1@@4) (|l#Vec_63776| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_57011 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v2@@4) i@@20)))))
 :qid |XUSbaselinebpl.1520:13|
 :skolemid |52|
))))
 :qid |XUSbaselinebpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_63776) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_63776| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_57011 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@14) i@@21)))
 :qid |XUSbaselinebpl.1526:13|
 :skolemid |54|
))))
 :qid |XUSbaselinebpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_63776) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_57011 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4))))
 :qid |XUSbaselinebpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_57011 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))))
 :qid |XUSbaselinebpl.1539:17|
 :skolemid |57|
)))))
 :qid |XUSbaselinebpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_63350) (v2@@5 T@Vec_63350) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5)  (and (= (|l#Vec_63350| v1@@5) (|l#Vec_63350| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_57212 v1@@5 i@@24) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v1@@5) i@@24)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v1@@5) i@@24)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v2@@5) i@@24)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v1@@5) i@@24)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v2@@5) i@@24)))))
 :qid |XUSbaselinebpl.1701:13|
 :skolemid |59|
))))
 :qid |XUSbaselinebpl.1699:51|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_63350) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_63350| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_57212 v@@16 i@@25) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@16) i@@25)))
 :qid |XUSbaselinebpl.1707:13|
 :skolemid |61|
))))
 :qid |XUSbaselinebpl.1705:51|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_63350) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@26 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_57212 v@@17 i@@27)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@27)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@27)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@27)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5))))
 :qid |XUSbaselinebpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_57212 v@@17 i@@26)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@26)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@26)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@26)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) j@@5)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) j@@5)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) j@@5)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))))
 :qid |XUSbaselinebpl.1720:17|
 :skolemid |64|
)))))
 :qid |XUSbaselinebpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_63611) (v2@@6 T@Vec_63611) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6)  (and (= (|l#Vec_63611| v1@@6) (|l#Vec_63611| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_84020 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v1@@6) i@@28) (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v2@@6) i@@28)))
 :qid |XUSbaselinebpl.1882:13|
 :skolemid |66|
))))
 :qid |XUSbaselinebpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_63611) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_63611| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_84020 v@@18 i@@29) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@18) i@@29)))
 :qid |XUSbaselinebpl.1888:13|
 :skolemid |68|
))))
 :qid |XUSbaselinebpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_63611) (e@@6 T@Vec_20558) ) (! (let ((i@@30 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_84020 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@19) i@@31) e@@6))
 :qid |XUSbaselinebpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_84020 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@19) j@@6) e@@6)))
 :qid |XUSbaselinebpl.1901:17|
 :skolemid |71|
)))))
 :qid |XUSbaselinebpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_20558) (v2@@7 T@Vec_20558) ) (! (= (|$IsEqual'vec'address''| v1@@7 v2@@7)  (and (= (|l#Vec_20558| v1@@7) (|l#Vec_20558| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_12164 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_20558| v2@@7) i@@32)))
 :qid |XUSbaselinebpl.2063:13|
 :skolemid |73|
))))
 :qid |XUSbaselinebpl.2061:33|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'address''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_20558) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_20558| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_12164 v@@20 i@@33) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_20558| v@@20) i@@33)))
 :qid |XUSbaselinebpl.2069:13|
 :skolemid |75|
))))
 :qid |XUSbaselinebpl.2067:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_20558) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_12164 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@21) i@@35) e@@7))
 :qid |XUSbaselinebpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_12164 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@21) j@@7) e@@7)))
 :qid |XUSbaselinebpl.2082:17|
 :skolemid |78|
)))))
 :qid |XUSbaselinebpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_20558) (v2@@8 T@Vec_20558) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8)  (and (= (|l#Vec_20558| v1@@8) (|l#Vec_20558| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_12164 v1@@8 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v1@@8) i@@36) (|Select__T@[Int]Int_| (|v#Vec_20558| v2@@8) i@@36)))
 :qid |XUSbaselinebpl.2244:13|
 :skolemid |80|
))))
 :qid |XUSbaselinebpl.2242:28|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'u8''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_20558) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_20558| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_12164 v@@22 i@@37) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_20558| v@@22) i@@37)))
 :qid |XUSbaselinebpl.2250:13|
 :skolemid |82|
))))
 :qid |XUSbaselinebpl.2248:28|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_20558) (e@@8 Int) ) (! (let ((i@@38 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_12164 v@@23 i@@39)) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@23) i@@39) e@@8))
 :qid |XUSbaselinebpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_12164 v@@23 i@@38)) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@23) j@@8) e@@8)))
 :qid |XUSbaselinebpl.2263:17|
 :skolemid |85|
)))))
 :qid |XUSbaselinebpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_20558) (v2@@9 T@Vec_20558) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9)))
 :qid |XUSbaselinebpl.2436:15|
 :skolemid |87|
 :pattern ( ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9))
)))
(assert (forall ((v1@@10 T@Vec_20558) (v2@@10 T@Vec_20558) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10)))
 :qid |XUSbaselinebpl.2452:15|
 :skolemid |88|
 :pattern ( ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10))
)))
(assert (forall ((k1 T@Vec_20558) (k2 T@Vec_20558) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XUSbaselinebpl.2499:15|
 :skolemid |89|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_20558) (s2 T@Vec_20558) (k1@@0 T@Vec_20558) (k2@@0 T@Vec_20558) (m1 T@Vec_20558) (m2 T@Vec_20558) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XUSbaselinebpl.2502:15|
 :skolemid |90|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_63264_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_63264| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63264| stream) v@@24) 0)
 :qid |XUSbaselinebpl.159:13|
 :skolemid |4|
))))
 :qid |XUSbaselinebpl.2578:13|
 :skolemid |91|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XUSbaselinebpl.2619:80|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@11 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@11 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11)))
 :qid |XUSbaselinebpl.2625:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XUSbaselinebpl.2675:82|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12)))
 :qid |XUSbaselinebpl.2681:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XUSbaselinebpl.2731:80|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@13 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@13 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@13)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13)))
 :qid |XUSbaselinebpl.2737:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XUSbaselinebpl.2787:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_AdminTransactionEvent) (v2@@14 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14)))
 :qid |XUSbaselinebpl.2793:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XUSbaselinebpl.2843:76|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_CreateAccountEvent) (v2@@15 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15)))
 :qid |XUSbaselinebpl.2849:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XUSbaselinebpl.2899:78|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@16 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16)))
 :qid |XUSbaselinebpl.2905:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XUSbaselinebpl.2955:74|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_SentPaymentEvent) (v2@@17 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@17)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@17))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17)))
 :qid |XUSbaselinebpl.2961:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XUSbaselinebpl.3011:69|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@18 T@$1_DiemBlock_NewBlockEvent) (v2@@18 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@18) (|$round#$1_DiemBlock_NewBlockEvent| v2@@18)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@18) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@18))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@18) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@18) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18)))
 :qid |XUSbaselinebpl.3017:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XUSbaselinebpl.3067:70|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@19 T@$1_DiemConfig_NewEpochEvent) (v2@@19 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19)))
 :qid |XUSbaselinebpl.3073:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |XUSbaselinebpl.3123:60|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@20 T@$1_Diem_BurnEvent) (v2@@20 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@20) (|$amount#$1_Diem_BurnEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@20) (|$currency_code#$1_Diem_BurnEvent| v2@@20))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@20) (|$preburn_address#$1_Diem_BurnEvent| v2@@20))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@20)))
 :qid |XUSbaselinebpl.3129:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@20))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |XUSbaselinebpl.3179:66|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@21 T@$1_Diem_CancelBurnEvent) (v2@@21 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@21) (|$amount#$1_Diem_CancelBurnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@21) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@21) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@21)))
 :qid |XUSbaselinebpl.3185:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@21))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |XUSbaselinebpl.3235:60|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@22 T@$1_Diem_MintEvent) (v2@@22 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@22) (|$amount#$1_Diem_MintEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@22) (|$currency_code#$1_Diem_MintEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@22) (|$ToEventRep'$1_Diem_MintEvent'| v2@@22)))
 :qid |XUSbaselinebpl.3241:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@22) (|$ToEventRep'$1_Diem_MintEvent'| v2@@22))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |XUSbaselinebpl.3291:63|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@23 T@$1_Diem_PreburnEvent) (v2@@23 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@23) (|$amount#$1_Diem_PreburnEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@23) (|$currency_code#$1_Diem_PreburnEvent| v2@@23))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@23) (|$preburn_address#$1_Diem_PreburnEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@23) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@23)))
 :qid |XUSbaselinebpl.3297:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@23) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@23))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |XUSbaselinebpl.3347:79|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@24 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@24 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@24) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@24)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@24) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@24) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@24)))
 :qid |XUSbaselinebpl.3353:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@24) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@24))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |XUSbaselinebpl.3403:82|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@25 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@25 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@25) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@25)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@25) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@25))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@25)))
 :qid |XUSbaselinebpl.3409:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@25))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |XUSbaselinebpl.3459:88|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@26 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@26 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@26) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@26)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@26) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@26))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@26)))
 :qid |XUSbaselinebpl.3465:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@26))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |XUSbaselinebpl.3515:72|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@27 T@$1_VASPDomain_VASPDomainEvent) (v2@@27 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@27)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@27)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@27))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27)))
 :qid |XUSbaselinebpl.3521:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |XUSbaselinebpl.3600:61|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |XUSbaselinebpl.4155:36|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |XUSbaselinebpl.4174:71|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |XUSbaselinebpl.4237:46|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |XUSbaselinebpl.4249:64|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |XUSbaselinebpl.4261:75|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |XUSbaselinebpl.4273:72|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |XUSbaselinebpl.4301:55|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |XUSbaselinebpl.4324:46|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |XUSbaselinebpl.4343:49|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |XUSbaselinebpl.4418:71|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |XUSbaselinebpl.4431:91|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |XUSbaselinebpl.4444:113|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |XUSbaselinebpl.4457:75|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |XUSbaselinebpl.4470:73|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |XUSbaselinebpl.4490:48|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |XUSbaselinebpl.4507:57|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |XUSbaselinebpl.4521:83|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |XUSbaselinebpl.4535:103|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |XUSbaselinebpl.4549:125|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |XUSbaselinebpl.4563:87|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |XUSbaselinebpl.4577:85|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |XUSbaselinebpl.4591:48|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |XUSbaselinebpl.4612:45|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |XUSbaselinebpl.4626:51|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |XUSbaselinebpl.4649:48|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |XUSbaselinebpl.4957:49|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |XUSbaselinebpl.4970:65|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |XUSbaselinebpl.5478:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |XUSbaselinebpl.5491:45|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29) true)
 :qid |XUSbaselinebpl.5504:55|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30) true)
 :qid |XUSbaselinebpl.5518:55|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@31))))
 :qid |XUSbaselinebpl.5538:38|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@32))))
 :qid |XUSbaselinebpl.5560:44|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))))
 :qid |XUSbaselinebpl.5612:53|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))))
 :qid |XUSbaselinebpl.5685:53|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35) true)
 :qid |XUSbaselinebpl.5722:55|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36) true)
 :qid |XUSbaselinebpl.5736:55|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@37)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@37))))
 :qid |XUSbaselinebpl.5753:38|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@38)))
 :qid |XUSbaselinebpl.5767:48|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@39)))
 :qid |XUSbaselinebpl.5781:48|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@40)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@40))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@40))))
 :qid |XUSbaselinebpl.5801:41|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@41)))
 :qid |XUSbaselinebpl.5817:53|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@42)))
 :qid |XUSbaselinebpl.5830:53|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43))))
 :qid |XUSbaselinebpl.5846:60|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44))))
 :qid |XUSbaselinebpl.5863:60|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45))))
 :qid |XUSbaselinebpl.5880:57|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46) true)
 :qid |XUSbaselinebpl.8081:68|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))))
 :qid |XUSbaselinebpl.8103:66|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))))
 :qid |XUSbaselinebpl.8129:66|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@49) true)
 :qid |XUSbaselinebpl.8462:31|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@50) true)
 :qid |XUSbaselinebpl.9408:31|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@51)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@51)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@51))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@51))))
 :qid |XUSbaselinebpl.9427:35|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@51))
)))
(assert (forall ((s@@52 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@52)))
 :qid |XUSbaselinebpl.9848:45|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@53))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@53))))
 :qid |XUSbaselinebpl.9866:50|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@54)))
 :qid |XUSbaselinebpl.9882:52|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55))))
 :qid |XUSbaselinebpl.9908:65|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@56)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@56))))
 :qid |XUSbaselinebpl.10293:60|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57))))
 :qid |XUSbaselinebpl.10310:66|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@58)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@58)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@58))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@58))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@58))))
 :qid |XUSbaselinebpl.10339:50|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@59) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@59)))
 :qid |XUSbaselinebpl.10362:45|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@60)) true))
 :qid |XUSbaselinebpl.10681:87|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@61)))
 :qid |XUSbaselinebpl.10893:47|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@62)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@62))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@62))))
 :qid |XUSbaselinebpl.10912:58|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@63) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@63)))
 :qid |XUSbaselinebpl.10928:39|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@64))))
 :qid |XUSbaselinebpl.10950:58|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65))))
 :qid |XUSbaselinebpl.10967:58|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66) true)
 :qid |XUSbaselinebpl.10982:51|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67))))
 :qid |XUSbaselinebpl.10999:60|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@68)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@68))))
 :qid |XUSbaselinebpl.11297:47|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@69)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@69))))
 :qid |XUSbaselinebpl.11323:63|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@70)))
 :qid |XUSbaselinebpl.11338:57|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@71)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@71))))
 :qid |XUSbaselinebpl.11354:54|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@72)))
 :qid |XUSbaselinebpl.11368:55|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@73)))
 :qid |XUSbaselinebpl.11381:57|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@74)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@74))))
 :qid |XUSbaselinebpl.11403:56|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@75)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@75))))
 :qid |XUSbaselinebpl.11430:52|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@76)))
 :qid |XUSbaselinebpl.11448:54|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |XUSbaselinebpl.12319:47|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |XUSbaselinebpl.12343:47|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |XUSbaselinebpl.12586:49|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |XUSbaselinebpl.12628:49|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |XUSbaselinebpl.12657:48|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |XUSbaselinebpl.12953:47|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@25 T@Vec_65083) (i@@40 Int) ) (! (= (InRangeVec_56006 v@@25 i@@40)  (and (>= i@@40 0) (< i@@40 (|l#Vec_65083| v@@25))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56006 v@@25 i@@40))
)))
(assert (forall ((v@@26 T@Vec_63389) (i@@41 Int) ) (! (= (InRangeVec_56207 v@@26 i@@41)  (and (>= i@@41 0) (< i@@41 (|l#Vec_63389| v@@26))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56207 v@@26 i@@41))
)))
(assert (forall ((v@@27 T@Vec_63428) (i@@42 Int) ) (! (= (InRangeVec_56408 v@@27 i@@42)  (and (>= i@@42 0) (< i@@42 (|l#Vec_63428| v@@27))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56408 v@@27 i@@42))
)))
(assert (forall ((v@@28 T@Vec_63554) (i@@43 Int) ) (! (= (InRangeVec_56609 v@@28 i@@43)  (and (>= i@@43 0) (< i@@43 (|l#Vec_63554| v@@28))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56609 v@@28 i@@43))
)))
(assert (forall ((v@@29 T@Vec_63815) (i@@44 Int) ) (! (= (InRangeVec_56810 v@@29 i@@44)  (and (>= i@@44 0) (< i@@44 (|l#Vec_63815| v@@29))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56810 v@@29 i@@44))
)))
(assert (forall ((v@@30 T@Vec_63776) (i@@45 Int) ) (! (= (InRangeVec_57011 v@@30 i@@45)  (and (>= i@@45 0) (< i@@45 (|l#Vec_63776| v@@30))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57011 v@@30 i@@45))
)))
(assert (forall ((v@@31 T@Vec_63350) (i@@46 Int) ) (! (= (InRangeVec_57212 v@@31 i@@46)  (and (>= i@@46 0) (< i@@46 (|l#Vec_63350| v@@31))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57212 v@@31 i@@46))
)))
(assert (forall ((v@@32 T@Vec_63611) (i@@47 Int) ) (! (= (InRangeVec_84020 v@@32 i@@47)  (and (>= i@@47 0) (< i@@47 (|l#Vec_63611| v@@32))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_84020 v@@32 i@@47))
)))
(assert (forall ((v@@33 T@Vec_20558) (i@@48 Int) ) (! (= (InRangeVec_12164 v@@33 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_20558| v@@33))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_12164 v@@33 i@@48))
)))
(assert (forall ((v@@34 T@Vec_20558) (e@@9 Int) ) (! (let ((i@@49 (IndexOfVec_20558 v@@34 e@@9)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_12164 v@@34 i@@50) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@34) i@@50) e@@9))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_12164 v@@34 i@@49) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@34) i@@49) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@49)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@34) j@@9) e@@9)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_20558 v@@34 e@@9))
)))
(assert (forall ((v@@35 T@Vec_63350) (e@@10 T@$1_ValidatorConfig_Config) ) (! (let ((i@@51 (IndexOfVec_63350 v@@35 e@@10)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_57212 v@@35 i@@52) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@35) i@@52) e@@10))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_57212 v@@35 i@@51) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@35) i@@51) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@51)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@35) j@@10) e@@10)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63350 v@@35 e@@10))
)))
(assert (forall ((v@@36 T@Vec_63389) (e@@11 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@53 (IndexOfVec_63389 v@@36 e@@11)))
(ite  (not (exists ((i@@54 Int) ) (!  (and (InRangeVec_56207 v@@36 i@@54) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@36) i@@54) e@@11))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@53 (- 0 1))  (and (and (InRangeVec_56207 v@@36 i@@53) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@36) i@@53) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@53)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@36) j@@11) e@@11)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63389 v@@36 e@@11))
)))
(assert (forall ((v@@37 T@Vec_63428) (e@@12 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@55 (IndexOfVec_63428 v@@37 e@@12)))
(ite  (not (exists ((i@@56 Int) ) (!  (and (InRangeVec_56408 v@@37 i@@56) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@37) i@@56) e@@12))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@55 (- 0 1))  (and (and (InRangeVec_56408 v@@37 i@@55) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@37) i@@55) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@55)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@37) j@@12) e@@12)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63428 v@@37 e@@12))
)))
(assert (forall ((v@@38 T@Vec_63554) (e@@13 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@57 (IndexOfVec_63554 v@@38 e@@13)))
(ite  (not (exists ((i@@58 Int) ) (!  (and (InRangeVec_56609 v@@38 i@@58) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@38) i@@58) e@@13))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@57 (- 0 1))  (and (and (InRangeVec_56609 v@@38 i@@57) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@38) i@@57) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@57)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@38) j@@13) e@@13)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63554 v@@38 e@@13))
)))
(assert (forall ((v@@39 T@Vec_63611) (e@@14 T@Vec_20558) ) (! (let ((i@@59 (IndexOfVec_63611 v@@39 e@@14)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_84020 v@@39 i@@60) (= (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@39) i@@60) e@@14))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_84020 v@@39 i@@59) (= (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@39) i@@59) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@59)) (not (= (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@39) j@@14) e@@14)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63611 v@@39 e@@14))
)))
(assert (forall ((v@@40 T@Vec_63776) (e@@15 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@61 (IndexOfVec_63776 v@@40 e@@15)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_57011 v@@40 i@@62) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@40) i@@62) e@@15))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_57011 v@@40 i@@61) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@40) i@@61) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@61)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@40) j@@15) e@@15)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63776 v@@40 e@@15))
)))
(assert (forall ((v@@41 T@Vec_63815) (e@@16 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@63 (IndexOfVec_63815 v@@41 e@@16)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_56810 v@@41 i@@64) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@41) i@@64) e@@16))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_56810 v@@41 i@@63) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@41) i@@63) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@63)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@41) j@@16) e@@16)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63815 v@@41 e@@16))
)))
(assert (forall ((v@@42 T@Vec_65083) (e@@17 |T@#0|) ) (! (let ((i@@65 (IndexOfVec_65083 v@@42 e@@17)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_56006 v@@42 i@@66) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@42) i@@66) e@@17))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_56006 v@@42 i@@65) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@42) i@@65) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@65)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@42) j@@17) e@@17)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_65083 v@@42 e@@17))
)))
(assert (forall ((|l#0| Bool) (i@@67 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67) |l#0|)
 :qid |XUSbaselinebpl.275:54|
 :skolemid |283|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_63264|) (|l#1| |T@[$1_Event_EventHandle]Multiset_63264|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_63264_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_63264| (|Select__T@[$1_Event_EventHandle]Multiset_63264_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_63264| (|Select__T@[$1_Event_EventHandle]Multiset_63264_| |l#1| handle@@0))))
(Multiset_63264 (|lambda#30| (|v#Multiset_63264| (|Select__T@[$1_Event_EventHandle]Multiset_63264_| |l#0@@0| handle@@0)) (|v#Multiset_63264| (|Select__T@[$1_Event_EventHandle]Multiset_63264_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XUSbaselinebpl.2588:13|
 :skolemid |284|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_63264_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@68 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68) (ite  (and (>= i@@68 |l#0@@1|) (< i@@68 |l#1@@0|)) (ite (< i@@68 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@68) (|Select__T@[Int]#0_| |l#4| (- i@@68 |l#5|))) |l#6|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@69 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69) (ite  (and (<= |l#0@@2| i@@69) (< i@@69 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@69) |l#4@@0|)) |l#5@@0|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@18 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18) (ite  (and (>= j@@18 |l#0@@3|) (< j@@18 |l#1@@2|)) (ite (< j@@18 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@18) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@18 |l#5@@1|))) |l#6@@0|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@70 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70) (ite  (and (>= i@@70 |l#0@@4|) (< i@@70 |l#1@@3|)) (ite (< i@@70 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@70) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@70 |l#5@@2|))) |l#6@@1|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@71 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71) (ite  (and (<= |l#0@@5| i@@71) (< i@@71 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@71) |l#4@@3|)) |l#5@@3|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |289|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19) (ite  (and (>= j@@19 |l#0@@6|) (< j@@19 |l#1@@5|)) (ite (< j@@19 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@19) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@19 |l#5@@4|))) |l#6@@2|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |290|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72) (ite  (and (>= i@@72 |l#0@@7|) (< i@@72 |l#1@@6|)) (ite (< i@@72 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@72) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@72 |l#5@@5|))) |l#6@@3|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |291|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@73 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73) (ite  (and (<= |l#0@@8| i@@73) (< i@@73 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@73) |l#4@@6|)) |l#5@@6|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20) (ite  (and (>= j@@20 |l#0@@9|) (< j@@20 |l#1@@8|)) (ite (< j@@20 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@20) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@20 |l#5@@7|))) |l#6@@4|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@74 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74) (ite  (and (>= i@@74 |l#0@@10|) (< i@@74 |l#1@@9|)) (ite (< i@@74 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@74) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@74 |l#5@@8|))) |l#6@@5|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@75 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75) (ite  (and (<= |l#0@@11| i@@75) (< i@@75 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@75) |l#4@@9|)) |l#5@@9|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21) (ite  (and (>= j@@21 |l#0@@12|) (< j@@21 |l#1@@11|)) (ite (< j@@21 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@21) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@21 |l#5@@10|))) |l#6@@6|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@76 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76) (ite  (and (>= i@@76 |l#0@@13|) (< i@@76 |l#1@@12|)) (ite (< i@@76 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@11| i@@76) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@11| (- i@@76 |l#5@@11|))) |l#6@@7|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@77 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77) (ite  (and (<= |l#0@@14| i@@77) (< i@@77 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@12| (- (- |l#3@@12| i@@77) |l#4@@12|)) |l#5@@12|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@22 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22) (ite  (and (>= j@@22 |l#0@@15|) (< j@@22 |l#1@@14|)) (ite (< j@@22 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@13| j@@22) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@13| (+ j@@22 |l#5@@13|))) |l#6@@8|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@78 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78) (ite  (and (>= i@@78 |l#0@@16|) (< i@@78 |l#1@@15|)) (ite (< i@@78 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@14| i@@78) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@14| (- i@@78 |l#5@@14|))) |l#6@@9|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |300|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@79 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79) (ite  (and (<= |l#0@@17| i@@79) (< i@@79 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@15| (- (- |l#3@@15| i@@79) |l#4@@15|)) |l#5@@15|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23) (ite  (and (>= j@@23 |l#0@@18|) (< j@@23 |l#1@@17|)) (ite (< j@@23 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@16| j@@23) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@16| (+ j@@23 |l#5@@16|))) |l#6@@10|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |302|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@17| Int) (|l#6@@11| T@$1_ValidatorConfig_Config) (i@@80 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80) (ite  (and (>= i@@80 |l#0@@19|) (< i@@80 |l#1@@18|)) (ite (< i@@80 |l#2@@17|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@17| i@@80) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@17| (- i@@80 |l#5@@17|))) |l#6@@11|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@$1_ValidatorConfig_Config) (i@@81 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81) (ite  (and (<= |l#0@@20| i@@81) (< i@@81 |l#1@@19|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@18| (- (- |l#3@@18| i@@81) |l#4@@18|)) |l#5@@18|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@19| Int) (|l#6@@12| T@$1_ValidatorConfig_Config) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24) (ite  (and (>= j@@24 |l#0@@21|) (< j@@24 |l#1@@20|)) (ite (< j@@24 |l#2@@19|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@19| j@@24) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@19| (+ j@@24 |l#5@@19|))) |l#6@@12|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Vec_20558|) (|l#4@@20| |T@[Int]Vec_20558|) (|l#5@@20| Int) (|l#6@@13| T@Vec_20558) (i@@82 Int) ) (! (= (|Select__T@[Int]Vec_20558_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82) (ite  (and (>= i@@82 |l#0@@22|) (< i@@82 |l#1@@21|)) (ite (< i@@82 |l#2@@20|) (|Select__T@[Int]Vec_20558_| |l#3@@20| i@@82) (|Select__T@[Int]Vec_20558_| |l#4@@20| (- i@@82 |l#5@@20|))) |l#6@@13|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]Vec_20558_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Vec_20558|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@Vec_20558) (i@@83 Int) ) (! (= (|Select__T@[Int]Vec_20558_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83) (ite  (and (<= |l#0@@23| i@@83) (< i@@83 |l#1@@22|)) (|Select__T@[Int]Vec_20558_| |l#2@@21| (- (- |l#3@@21| i@@83) |l#4@@21|)) |l#5@@21|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |307|
 :pattern ( (|Select__T@[Int]Vec_20558_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Vec_20558|) (|l#4@@22| |T@[Int]Vec_20558|) (|l#5@@22| Int) (|l#6@@14| T@Vec_20558) (j@@25 Int) ) (! (= (|Select__T@[Int]Vec_20558_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25) (ite  (and (>= j@@25 |l#0@@24|) (< j@@25 |l#1@@23|)) (ite (< j@@25 |l#2@@22|) (|Select__T@[Int]Vec_20558_| |l#3@@22| j@@25) (|Select__T@[Int]Vec_20558_| |l#4@@22| (+ j@@25 |l#5@@22|))) |l#6@@14|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |308|
 :pattern ( (|Select__T@[Int]Vec_20558_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]Int|) (|l#4@@23| |T@[Int]Int|) (|l#5@@23| Int) (|l#6@@15| Int) (i@@84 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84) (ite  (and (>= i@@84 |l#0@@25|) (< i@@84 |l#1@@24|)) (ite (< i@@84 |l#2@@23|) (|Select__T@[Int]Int_| |l#3@@23| i@@84) (|Select__T@[Int]Int_| |l#4@@23| (- i@@84 |l#5@@23|))) |l#6@@15|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |309|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]Int|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| Int) (i@@85 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85) (ite  (and (<= |l#0@@26| i@@85) (< i@@85 |l#1@@25|)) (|Select__T@[Int]Int_| |l#2@@24| (- (- |l#3@@24| i@@85) |l#4@@24|)) |l#5@@24|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |310|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]Int|) (|l#4@@25| |T@[Int]Int|) (|l#5@@25| Int) (|l#6@@16| Int) (j@@26 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26) (ite  (and (>= j@@26 |l#0@@27|) (< j@@26 |l#1@@26|)) (ite (< j@@26 |l#2@@25|) (|Select__T@[Int]Int_| |l#3@@25| j@@26) (|Select__T@[Int]Int_| |l#4@@25| (+ j@@26 |l#5@@25|))) |l#6@@16|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |311|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26))
)))
(assert (forall ((|l#0@@28| |T@[$EventRep]Int|) (|l#1@@27| |T@[$EventRep]Int|) (v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43) (- (|Select__T@[$EventRep]Int_| |l#0@@28| v@@43) (|Select__T@[$EventRep]Int_| |l#1@@27| v@@43)))
 :qid |XUSbaselinebpl.154:29|
 :skolemid |312|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_107526)
(declare-fun _$t1 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_99964)
(declare-fun $t2 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_99493)
(declare-fun _$t0 () Int)
(declare-fun $t3 () Int)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_101576)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun MapConstVec_12393 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_12393 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_103167)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_98077)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_101900)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $t4 () T@$1_DiemConfig_Configuration)
(declare-fun $t5 () Int)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_107752)
(declare-fun $t6 () Int)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_99577)
(declare-fun $t7 () Int)
(declare-fun $t8 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun $t24 () Bool)
(declare-fun $t21 () Int)
(declare-fun $t10 () Int)
(declare-fun $t22 () Int)
(declare-fun $t20 () Int)
(declare-fun $t14 () Bool)
(declare-fun $t13 () Int)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t9 () Bool)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@3| () T@$Memory_107526)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@3| () T@$Memory_99577)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@1| () T@$Memory_99577)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t13@1| () Int)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@2| () T@$Memory_99577)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@0| () T@$Memory_99577)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t18@1| () |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)
(declare-fun inline$$Not$4$dst@1 () Bool)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0| () Int)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t9@1| () Bool)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t8@0| () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@1| () T@$Memory_107526)
(declare-fun $abort_code@6 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| () T@$Memory_107526)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@1| () Int)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory@0| () T@$Memory_107752)
(declare-fun |Store__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| Int |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| Int) |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1| () |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$Not$3$dst@1 () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t10@1| () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t8@0| () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t9@0| () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| () T@$Memory_99493)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t6@0| () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t5@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t4@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t33@0| () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@0| () T@$Memory_107526)
(declare-fun |Store__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| Int |T@$1_Diem_MintCapability'$1_XUS_XUS'|) |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| Int) |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_MintCapability'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_MintCapability'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t29@1| () Bool)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t28@0| () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t42@1| () |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t44@1| () |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| () T@$Memory_99493)
(declare-fun $abort_code@2 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| () T@$Memory_99493)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@0| () |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_101576)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@1 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_101966)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_101966)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_101576)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_101576)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1| () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_101966)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_101966)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_Configuration'@1| () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 () Int)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2 () T@$Mutation_106104)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1 () T@$Mutation_106104)
(declare-fun |inline$$1_Vector_push_back'vec'u8''$0$m'@1| () T@$Mutation_84597)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1 () T@$Mutation_84597)
(declare-fun |Store__T@[Int]Vec_20558_| (|T@[Int]Vec_20558| Int T@Vec_20558) |T@[Int]Vec_20558|)
(assert (forall ( ( ?x0 |T@[Int]Vec_20558|) ( ?x1 Int) ( ?x2 T@Vec_20558)) (! (= (|Select__T@[Int]Vec_20558_| (|Store__T@[Int]Vec_20558_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Vec_20558|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@Vec_20558)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Vec_20558_| (|Store__T@[Int]Vec_20558_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Vec_20558_| ?x0 ?y1))) :weight 0)))
(declare-fun $t27@0 () T@Vec_20558)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 () Int)
(declare-fun |inline$$1_Vector_contains'vec'u8''$0$res@1| () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 () T@Vec_63611)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@0 () T@$Mutation_106104)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@0 () T@$Mutation_84597)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t5@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t6@0 () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t39@0| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t40@0| () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0| () T@$Memory_99493)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t38@1| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $abort_code@0 () Int)
(declare-fun $t23 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles@3 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@4 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Event_EventHandles@2 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@1 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0| () Int)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t19@1| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t18@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t15@0| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t14@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t11@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t12@0| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t13@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t23@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t24@0| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t25@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t20@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t18@0| () Bool)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t17@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t10@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t11@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t12@0| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t13@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t14@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t15@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t16@0| () Int)
(declare-fun $t28 () Int)
(declare-fun $t29 () Int)
(declare-fun $t30 () T@$1_DiemConfig_Configuration)
(declare-fun $t31 () Int)
(declare-fun $t32 () Int)
(declare-fun $t33 () Int)
(declare-fun $t34 () Int)
(declare-fun $t17 () Int)
(declare-fun $t18 () Int)
(declare-fun $t19 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_111622)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_107839)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_112120)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_111789)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_112237)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_111870)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_XUS_initialize$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 213732) (let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon39_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon38_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon37_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon36_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon35_Then_correct| true))
(let ((L2_correct  (and (=> (= (ControlFlow 0 160707) (- 0 219485)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t2)) 1))) (not (= _$t1 186537453))) (or (= 1000000 0) (> 1000000 10000000000))) (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t3)) 0))) (not (= _$t0 173345816))) (not (= _$t0 173345816))) (exists ((i@@86 Int) ) (!  (and (and (|$IsValid'u64'| i@@86) (InRangeVec_84020 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr)))) i@@86)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr))))) i@@86) (Vec_20558 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_12393 DefaultVecElem_12393) 0 88) 1 85) 2 83) 3)))
 :qid |XUSbaselinebpl.1893:13|
 :skolemid |70|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103167| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101900| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4) 18446744073709551615)) (< $t5 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4)))) (|Select__T@[Int]Bool_| (|domain#$Memory_107752| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= _$t1 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t7)) 0))) (not (= _$t0 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t8)) 1))) (not (= _$t1 186537453)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t2)) 1))) (not (= _$t1 186537453))) (or (= 1000000 0) (> 1000000 10000000000))) (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t3)) 0))) (not (= _$t0 173345816))) (not (= _$t0 173345816))) (exists ((i@@87 Int) ) (!  (and (and (|$IsValid'u64'| i@@87) (InRangeVec_84020 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0)))) i@@87)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0))))) i@@87) (Vec_20558 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_12393 DefaultVecElem_12393) 0 88) 1 85) 2 83) 3)))
 :qid |XUSbaselinebpl.1893:13|
 :skolemid |70|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103167| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101900| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4) 18446744073709551615)) (< $t5 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4)))) (|Select__T@[Int]Bool_| (|domain#$Memory_107752| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= _$t1 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t7)) 0))) (not (= _$t0 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t8)) 1))) (not (= _$t1 186537453))) (=> (= (ControlFlow 0 160707) (- 0 219799)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1) (= 6 $t10@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t2)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t2)) 1)) (= 3 $t10@0))) (and (not (= _$t1 186537453)) (= 2 $t10@0))) (and (or (= 1000000 0) (> 1000000 10000000000)) (= 7 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0) (= 6 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t3)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t3)) 0)) (= 3 $t10@0))) (and (not (= _$t0 173345816)) (= 2 $t10@0))) (and (not (= _$t0 173345816)) (= 2 $t10@0))) (and (exists ((i@@88 Int) ) (!  (and (and (|$IsValid'u64'| i@@88) (InRangeVec_84020 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@1)))) i@@88)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@1))))) i@@88) (Vec_20558 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_12393 DefaultVecElem_12393) 0 88) 1 85) 2 83) 3)))
 :qid |XUSbaselinebpl.1893:13|
 :skolemid |70|
)) (= 7 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103167| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (= 4 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 $t10@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101900| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4) 18446744073709551615)) (< $t5 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4))) (= 1 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107752| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1) (= 6 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t6)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t10@0))) (and (not (= _$t1 186537453)) (= 2 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0) (= 6 $t10@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t7)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t7)) 0)) (= 3 $t10@0))) (and (not (= _$t0 173345816)) (= 2 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t8)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t8)) 1)) (= 3 $t10@0))) (and (not (= _$t1 186537453)) (= 2 $t10@0))))))))
(let ((anon19_Then_correct  (=> (and (and $abort_flag@8 (= $abort_code@9 $abort_code@9)) (and (= $t10@0 $abort_code@9) (= (ControlFlow 0 159799) 160707))) L2_correct)))
(let ((anon18_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t10@0 $abort_code@7) (= (ControlFlow 0 160721) 160707))) L2_correct)))
(let ((anon17_Then_correct  (=> $t24 (=> (and (and (or (or (and (= $t21 0) (= 7 $t10)) (and (and (= $t22 0) (not (= $t20 0))) (= 7 $t10))) (and (> $t22 18446744073709551615) (= 8 $t10))) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 160789) 160707))) L2_correct))))
(let ((anon16_Then_correct  (=> $t14 (=> (and (and (or (or (or (and (not (= _$t0 173345816)) (= 2 $t10)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t13)) (= 5 $t10))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t13)) 0)) (= 3 $t10))) (and (not (= _$t0 173345816)) (= 2 $t10))) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 160881) 160707))) L2_correct))))
(let ((anon15_Then_correct  (=> $t12 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t11)) (= 5 $t10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t11)) 1)) (= 3 $t10))) (and (not (= _$t1 186537453)) (= 2 $t10))) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 160953) 160707))) L2_correct))))
(let ((anon14_Then_correct  (=> $t9 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t10)) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 160979) 160707))) L2_correct))))
(let ((anon19_Else_correct  (=> (not $abort_flag@8) (and (=> (= (ControlFlow 0 159785) (- 0 219048)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1)) (and (=> (= (ControlFlow 0 159785) (- 0 219059)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t2))) (and (=> (= (ControlFlow 0 159785) (- 0 219071)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t2)) 1))) (and (=> (= (ControlFlow 0 159785) (- 0 219089)) (not (not (= _$t1 186537453)))) (=> (not (not (= _$t1 186537453))) (and (=> (= (ControlFlow 0 159785) (- 0 219103)) (not (or (= 1000000 0) (> 1000000 10000000000)))) (=> (not (or (= 1000000 0) (> 1000000 10000000000))) (and (=> (= (ControlFlow 0 159785) (- 0 219122)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0)) (and (=> (= (ControlFlow 0 159785) (- 0 219133)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t3))) (and (=> (= (ControlFlow 0 159785) (- 0 219145)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t3)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t3)) 0))) (and (=> (= (ControlFlow 0 159785) (- 0 219163)) (not (not (= _$t0 173345816)))) (=> (not (not (= _$t0 173345816))) (and (=> (= (ControlFlow 0 159785) (- 0 219177)) (not (not (= _$t0 173345816)))) (=> (not (not (= _$t0 173345816))) (and (=> (= (ControlFlow 0 159785) (- 0 219191)) (not (exists ((i@@89 Int) ) (!  (and (and (|$IsValid'u64'| i@@89) (InRangeVec_84020 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2)))) i@@89)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2))))) i@@89) (Vec_20558 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_12393 DefaultVecElem_12393) 0 88) 1 85) 2 83) 3)))
 :qid |XUSbaselinebpl.1893:13|
 :skolemid |70|
)))) (=> (not (exists ((i@@90 Int) ) (!  (and (and (|$IsValid'u64'| i@@90) (InRangeVec_84020 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@3)))) i@@90)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@3))))) i@@90) (Vec_20558 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_12393 DefaultVecElem_12393) 0 88) 1 85) 2 83) 3)))
 :qid |XUSbaselinebpl.1893:13|
 :skolemid |70|
))) (and (=> (= (ControlFlow 0 159785) (- 0 219211)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103167| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103167| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0))) (and (=> (= (ControlFlow 0 159785) (- 0 219224)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 159785) (- 0 219236)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101900| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4) 18446744073709551615)) (< $t5 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101900| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4) 18446744073709551615)) (< $t5 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4)))) (and (=> (= (ControlFlow 0 159785) (- 0 219278)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107752| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107752| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1)) (and (=> (= (ControlFlow 0 159785) (- 0 219289)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 159785) (- 0 219301)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 159785) (- 0 219319)) (not (not (= _$t1 186537453)))) (=> (not (not (= _$t1 186537453))) (and (=> (= (ControlFlow 0 159785) (- 0 219333)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0)) (and (=> (= (ControlFlow 0 159785) (- 0 219344)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 159785) (- 0 219354)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 159785) (- 0 219366)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t7)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t7)) 0))) (and (=> (= (ControlFlow 0 159785) (- 0 219384)) (not (not (= _$t0 173345816)))) (=> (not (not (= _$t0 173345816))) (and (=> (= (ControlFlow 0 159785) (- 0 219398)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t8))) (and (=> (= (ControlFlow 0 159785) (- 0 219410)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t8)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t8)) 1))) (and (=> (= (ControlFlow 0 159785) (- 0 219428)) (not (not (= _$t1 186537453)))) (=> (not (not (= _$t1 186537453))) (and (=> (= (ControlFlow 0 159785) (- 0 219442)) (|Select__T@[Int]Bool_| (|domain#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@3|) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@3|) _$t1) (=> (= (ControlFlow 0 159785) (- 0 219451)) (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@3|) _$t0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon11_Else_correct|  (=> (and (and (not $abort_flag@7) (= $abort_code@9 $abort_code@8)) (and (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@3| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@1|) (= $abort_flag@8 $abort_flag@7))) (and (=> (= (ControlFlow 0 159287) 159799) anon19_Then_correct) (=> (= (ControlFlow 0 159287) 159785) anon19_Else_correct)))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$L3_correct|  (=> (= $abort_code@9 |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t13@1|) (=> (and (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@3| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@2|) (= $abort_flag@8 true)) (and (=> (= (ControlFlow 0 159203) 159799) anon19_Then_correct) (=> (= (ControlFlow 0 159203) 159785) anon19_Else_correct))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon11_Then_correct|  (=> $abort_flag@7 (=> (and (and (= $abort_code@8 $abort_code@8) (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@2| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@1|)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t13@1| $abort_code@8) (= (ControlFlow 0 159301) 159203))) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon10_Then$1_correct|  (=> (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@1| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) (=> (and (= $abort_code@8 $EXEC_FAILURE_CODE) (= $abort_flag@7 true)) (and (=> (= (ControlFlow 0 159351) 159301) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 159351) 159287) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon11_Else_correct|))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon10_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0) (= (ControlFlow 0 159349) 159351)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon10_Then$1_correct|)))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon10_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0)) (=> (and (and (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@0| ($Memory_99577 (|Store__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0 true) (|Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|contents#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0 |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t18@1|))) (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@1| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@0|)) (and (= $abort_code@8 $abort_code@7) (= $abort_flag@7 $abort_flag@6))) (and (=> (= (ControlFlow 0 159277) 159301) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 159277) 159287) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon11_Else_correct|))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon9_Then_correct|  (=> inline$$Not$4$dst@1 (=> (and (= _$t0 _$t0) (|$IsValid'u64'| 18446744073709551615)) (=> (and (and (|$IsValid'u64'| 18446744073709551615) (|$IsValid'u64'| 86400000000)) (and (|$IsValid'u64'| 18446744073709551615) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t18@1| (|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 18446744073709551615 18446744073709551615 86400000000 18446744073709551615)))) (and (=> (= (ControlFlow 0 159259) 159349) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 159259) 159277) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon10_Else_correct|)))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon9_Else_correct|  (=> (not inline$$Not$4$dst@1) (=> (and (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0|) (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@2| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t13@1| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0|) (= (ControlFlow 0 159197) 159203))) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon0$1_correct|  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0|) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0| 6)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0|) (= inline$$Not$4$dst@1 inline$$Not$4$dst@1))) (and (=> (= (ControlFlow 0 159181) 159259) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 159181) 159197) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon9_Else_correct|))))))
(let ((inline$$Not$4$anon0_correct  (=> (and (= inline$$Not$4$dst@1  (not |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t9@1|)) (= (ControlFlow 0 159141) 159181)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon0$1_correct|)))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon0_correct|  (=> (= _$t0 _$t0) (=> (and (and (|$IsValid'address'| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t8@0|) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t8@0| _$t0)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t9@1| (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t8@0|)) (= (ControlFlow 0 159147) 159141))) inline$$Not$4$anon0_correct))))
(let ((anon18_Else_correct  (=> (and (not $abort_flag@6) (= (ControlFlow 0 159355) 159147)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon23_Else_correct|  (=> (and (and (not $abort_flag@5) (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@3| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@1|)) (and (= $abort_flag@6 $abort_flag@5) (= $abort_code@7 $abort_code@6))) (and (=> (= (ControlFlow 0 158468) 160721) anon18_Then_correct) (=> (= (ControlFlow 0 158468) 159355) anon18_Else_correct)))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|  (=> (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@3| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2|) (=> (and (= $abort_flag@6 true) (= $abort_code@7 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1|)) (and (=> (= (ControlFlow 0 157510) 160721) anon18_Then_correct) (=> (= (ControlFlow 0 157510) 159355) anon18_Else_correct))))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon23_Then_correct|  (=> $abort_flag@5 (=> (and (and (= $abort_code@6 $abort_code@6) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| $abort_code@6)) (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 158482) 157510))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon17_Else_correct|  (=> (not $abort_flag@4) (=> (and (= $abort_code@6 $abort_code@5) (= $abort_flag@5 $abort_flag@4)) (and (=> (= (ControlFlow 0 158292) 158482) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 158292) 158468) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon23_Else_correct|))))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$L3_correct|  (=> (and (= $abort_code@6 |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@1|) (= $abort_flag@5 true)) (and (=> (= (ControlFlow 0 158260) 158482) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 158260) 158468) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon23_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon17_Then_correct|  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@1| $abort_code@5) (= (ControlFlow 0 158306) 158260))) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon16_Then$1_correct|  (=> (and (= $abort_flag@4 true) (= $abort_code@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 158356) 158306) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 158356) 158292) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon17_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon16_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107752| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1) (= (ControlFlow 0 158354) 158356)) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon16_Then$1_correct|)))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon16_Else_correct|  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107752| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1)) (= |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory@0| ($Memory_107752 (|Store__T@[Int]Bool_| (|domain#$Memory_107752| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1 true) (|Store__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|contents#$Memory_107752| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1|)))) (and (= $abort_flag@4 $abort_flag@3) (= $abort_code@5 $abort_code@4))) (and (=> (= (ControlFlow 0 158282) 158306) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 158282) 158292) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon17_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon15_Then_correct|  (=> inline$$Not$3$dst@1 (and (=> (= (ControlFlow 0 158264) 158354) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 158264) 158282) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon15_Else_correct|  (=> (and (and (not inline$$Not$3$dst@1) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0|)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@1| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0|) (= (ControlFlow 0 158254) 158260))) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon14_Else$1_correct|  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0|) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0| 6)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0|) (= inline$$Not$3$dst@1 inline$$Not$3$dst@1))) (and (=> (= (ControlFlow 0 158238) 158264) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 158238) 158254) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon15_Else_correct|))))))
(let ((inline$$Not$3$anon0_correct  (=> (and (= inline$$Not$3$dst@1  (not |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t10@1|)) (= (ControlFlow 0 158198) 158238)) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon14_Else$1_correct|)))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon14_Else_correct|  (=> (not |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t8@0|) (=> (and (and (|$IsValid'address'| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t9@0| _$t1)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t10@1| (|Select__T@[Int]Bool_| (|domain#$Memory_107752| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t9@0|)) (= (ControlFlow 0 158204) 158198))) inline$$Not$3$anon0_correct))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon14_Then_correct|  (=> |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t8@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)) (= 5 |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|)) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@1| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|) (= (ControlFlow 0 158382) 158260))) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon13_Else_correct|  (=> (and (not |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t6@0|) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t8@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)))) (and (=> (= (ControlFlow 0 158142) 158382) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 158142) 158204) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon14_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon13_Then_correct|  (=> |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t6@0| (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t5@0|)) (= 5 |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t5@0|)) 1)) (= 3 |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|))) (and (not (= _$t1 186537453)) (= 2 |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|))) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@1| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|) (= (ControlFlow 0 158454) 158260))) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t4@0| _$t1) (=> (and (and (= _$t1 _$t1) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1|)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t5@0| _$t1) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t6@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t5@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t5@0|)) 1))) (not (= _$t1 186537453)))))) (and (=> (= (ControlFlow 0 158124) 158454) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon13_Then_correct|) (=> (= (ControlFlow 0 158124) 158142) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon13_Else_correct|))))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon22_Else_correct|  (=> (not $abort_flag@3) (=> (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t33@0| _$t1) (= (ControlFlow 0 158458) 158124)) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon0_correct|))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon22_Then_correct|  (=> $abort_flag@3 (=> (and (and (= $abort_code@4 $abort_code@4) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| $abort_code@4)) (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 158496) 157510))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon21_Then$1_correct|  (=> (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@1| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 158546) 158496) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon22_Then_correct|) (=> (= (ControlFlow 0 158546) 158458) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon22_Else_correct|))))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon21_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1) (= (ControlFlow 0 158544) 158546)) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon21_Then$1_correct|)))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon21_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1)) (=> (and (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@0| ($Memory_107526 (|Store__T@[Int]Bool_| (|domain#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1 true) (|Store__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@1|))) (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@1| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@0|)) (and (= $abort_flag@3 $abort_flag@2) (= $abort_code@4 $abort_code@3))) (and (=> (= (ControlFlow 0 157532) 158496) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon22_Then_correct|) (=> (= (ControlFlow 0 157532) 158458) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon22_Else_correct|))))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon20_Then_correct|  (=> inline$$Not$2$dst@1 (and (=> (= (ControlFlow 0 157514) 158544) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 157514) 157532) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon21_Else_correct|)))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon20_Else_correct|  (=> (not inline$$Not$2$dst@1) (=> (and (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0|) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0|)) (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 157504) 157510))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Else$1_correct|  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0|) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0| 6)) (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0|) (= inline$$Not$2$dst@1 inline$$Not$2$dst@1))) (and (=> (= (ControlFlow 0 157488) 157514) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 157488) 157504) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon20_Else_correct|))))))
(let ((inline$$Not$2$anon0_correct  (=> (and (= inline$$Not$2$dst@1  (not |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t29@1|)) (= (ControlFlow 0 157448) 157488)) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Else$1_correct|)))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Else_correct|  (=> (not $abort_flag@2) (=> (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@1|)) (=> (and (and (|$IsValid'address'| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t28@0|) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t28@0| _$t1)) (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t29@1| (|Select__T@[Int]Bool_| (|domain#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t28@0|)) (= (ControlFlow 0 157454) 157448))) inline$$Not$2$anon0_correct)))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Then_correct|  (=> $abort_flag@2 (=> (and (and (= $abort_code@3 $abort_code@3) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| $abort_code@3)) (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 158560) 157510))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon42_Else_correct|  (=> (and (not $abort_flag@1) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t42@1| (|$1_Diem_MintCapability'$1_XUS_XUS'| false))) (=> (and (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t44@1| (|$1_Diem_BurnCapability'$1_XUS_XUS'| false)) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t42@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t42@1|)) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t44@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t44@1|) (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|))) (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t42@1|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t44@1|)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1)))) (and (=> (= (ControlFlow 0 157032) 158560) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 157032) 157454) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|  (=> (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@0|)) (and (= $abort_code@3 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1|) (= $abort_flag@2 true))) (and (=> (= (ControlFlow 0 154867) 158560) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 154867) 157454) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon42_Then_correct|  (=> $abort_flag@1 (=> (and (and (= $abort_code@2 $abort_code@2) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| $abort_code@2)) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 157046) 154867))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816) (=> (and (and (|$IsEqual'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@4)))) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@1)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_101966| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101966| $1_DiemConfig_Configuration_$memory@2) 173345816))) (and (= $abort_flag@1 $abort_flag@0) (= $abort_code@2 $abort_code@1))) (and (=> (= (ControlFlow 0 156802) 157046) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 156802) 157032) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon42_Else_correct|))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct  (=> (and (and (not |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2|) (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| ($Memory_101576 (|Store__T@[Int]Bool_| (|domain#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 false) (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) (= (ControlFlow 0 156776) 156802))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct  (=> (and (and |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2| (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_101576 (|Store__T@[Int]Bool_| (|domain#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|) (= (ControlFlow 0 156814) 156802))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Else_correct  (=> (not |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1|) (=> (and (= $1_DiemConfig_Configuration_$memory@1 ($Memory_101966 (|Store__T@[Int]Bool_| (|domain#$Memory_101966| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_101966| $1_DiemConfig_Configuration_$memory))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1)) (and (=> (= (ControlFlow 0 156762) 156814) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct) (=> (= (ControlFlow 0 156762) 156776) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Then_correct  (=> |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1| (=> (and (= $1_DiemConfig_Configuration_$memory@0 ($Memory_101966 (|Store__T@[Int]Bool_| (|domain#$Memory_101966| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101966| $1_DiemConfig_Configuration_$memory) 173345816 |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_Configuration'@1|))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0)) (and (=> (= (ControlFlow 0 156826) 156814) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct) (=> (= (ControlFlow 0 156826) 156776) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Else_correct  (=> (not inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0) (and (=> (= (ControlFlow 0 156750) 156826) inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Then_correct) (=> (= (ControlFlow 0 156750) 156762) inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct  (=> (and (= $abort_flag@1 true) (= $abort_code@2 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1)) (and (=> (= (ControlFlow 0 156539) 157046) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 156539) 157032) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon42_Else_correct|)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Then_correct  (=> inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103167| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (= 4 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101900| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0) 18446744073709551615)) (< inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0))) (= 1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0) (= (ControlFlow 0 156924) 156539))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Else_correct  (=> (and (not $abort_flag@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2 ($Mutation_106104 (|l#$Mutation_106104| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (|p#$Mutation_106104| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) ($1_RegisteredCurrencies_RegisteredCurrencies (|v#$Mutation_84597| |inline$$1_Vector_push_back'vec'u8''$0$m'@1|))))) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@1 (|v#$Mutation_106104| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2)) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101966| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103167| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101900| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0) 18446744073709551615)) (< inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0))))))) (and (=> (= (ControlFlow 0 156742) 156924) inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Then_correct) (=> (= (ControlFlow 0 156742) 156750) inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 $abort_code@1) (= (ControlFlow 0 156938) 156539))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((|inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'vec'u8''$0$m'@1| ($Mutation_84597 (|l#$Mutation_84597| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (|p#$Mutation_84597| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (let ((l (|l#Vec_63611| (|v#$Mutation_84597| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1))))
(Vec_63611 (|Store__T@[Int]Vec_20558_| (|v#Vec_63611| (|v#$Mutation_84597| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1)) l $t27@0) (+ l 1))))) (and (=> (= (ControlFlow 0 156616) 156938) inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Then_correct) (=> (= (ControlFlow 0 156616) 156742) inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Then_correct  (=> (and (and inline$$Not$1$dst@1 (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1 ($Mutation_106104 ($Local 2) (Vec_20558 (MapConstVec_12393 DefaultVecElem_12393) 0) inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0))) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1 ($Mutation_84597 (|l#$Mutation_106104| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (let ((l@@0 (|l#Vec_20558| (|p#$Mutation_106104| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1))))
(Vec_20558 (|Store__T@[Int]Int_| (|v#Vec_20558| (|p#$Mutation_106104| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1)) l@@0 0) (+ l@@0 1))) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (|v#$Mutation_106104| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1)))) (= (ControlFlow 0 156622) 156616))) |inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Else_correct  (=> (and (and (not inline$$Not$1$dst@1) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= (ControlFlow 0 156533) 156539))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 7)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 156517) 156622) inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Then_correct) (=> (= (ControlFlow 0 156517) 156533) inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not |inline$$1_Vector_contains'vec'u8''$0$res@1|)) (= (ControlFlow 0 156477) 156517)) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else$1_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 156483) 156477)) inline$$Not$1$anon0_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 $abort_code@1) (= (ControlFlow 0 156952) 156539))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((|inline$$1_Vector_contains'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'vec'u8''$0$res@1| (exists ((i@@91 Int) ) (!  (and (and (|$IsValid'u64'| i@@91) (InRangeVec_84020 inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 i@@91)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1) i@@91) $t27@0))
 :qid |XUSbaselinebpl.1893:13|
 :skolemid |70|
))) (and (=> (= (ControlFlow 0 156433) 156952) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Then_correct) (=> (= (ControlFlow 0 156433) 156483) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Else_correct  (=> (and (not inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0)) (=> (and (and (|$IsEqual'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@5))))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0)) (= (ControlFlow 0 156439) 156433))) |inline$$1_Vector_contains'vec'u8''$0$anon0_correct|))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Then_correct  (=> inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0) (= (ControlFlow 0 156980) 156539))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon0_correct  (=> (= (|l#Vec_20558| (|p#$Mutation_106104| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@0)) 0) (=> (and (= (|l#Vec_20558| (|p#$Mutation_84597| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@0)) 0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t5@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101966| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t6@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= _$t0 _$t0)) (and (= $t27@0 $t27@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 156361) 156980) inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Then_correct) (=> (= (ControlFlow 0 156361) 156439) inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Else_correct)))))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon41_Else_correct|  (=> (and (and (not $abort_flag@0) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t39@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101966| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t40@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= (ControlFlow 0 156984) 156361))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon0_correct)))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon41_Then_correct|  (=> $abort_flag@0 (=> (and (and (= $abort_code@1 $abort_code@1) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| $abort_code@1)) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 157060) 154867))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon40_Then$1_correct|  (=> (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 157110) 157060) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 157110) 156984) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon41_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon40_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0) (= (ControlFlow 0 157108) 157110)) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon40_Then$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon40_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0)) (=> (and (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0| ($Memory_99493 (|Store__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t38@1|))) (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 155477) 157060) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 155477) 156984) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon41_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon39_Else_correct|  (=> (and (not false) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t38@1| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0 0 $t23 false 1000000 100 $t27@0 true |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 155459) 157108) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon40_Then_correct|) (=> (= (ControlFlow 0 155459) 155477) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon40_Else_correct|)))))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@3 |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0|) false) (= $1_Event_EventHandles@4 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@3 |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 155415) 157124) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon39_Then_correct|) (=> (= (ControlFlow 0 155415) 155459) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon39_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon38_Else_correct|  (=> (and (not false) (= (ControlFlow 0 155421) 155415)) |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@2 |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0|) false) (= $1_Event_EventHandles@3 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@2 |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 155333) 157138) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon38_Then_correct|) (=> (= (ControlFlow 0 155333) 155421) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon38_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon37_Else_correct|  (=> (and (not false) (= (ControlFlow 0 155339) 155333)) |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@1 |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0|) false) (= $1_Event_EventHandles@2 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@1 |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 155251) 157152) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon37_Then_correct|) (=> (= (ControlFlow 0 155251) 155339) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon37_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon36_Else_correct|  (=> (and (not false) (= (ControlFlow 0 155257) 155251)) |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 155169) 157166) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon36_Then_correct|) (=> (= (ControlFlow 0 155169) 155257) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon36_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon35_Else_correct|  (=> (and (not false) (= (ControlFlow 0 155175) 155169)) |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 155087) 157180) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon35_Then_correct|) (=> (= (ControlFlow 0 155087) 155175) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon35_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon34_Then_correct|  (=> (and (and |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1| (|$IsValid'u128'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 155093) 155087))) |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$anon0_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon34_Else_correct|  (=> (not |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1|) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 154991) 154867))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L5_correct|  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0| 7)) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1|))) (and (=> (= (ControlFlow 0 154975) 155093) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon34_Then_correct|) (=> (= (ControlFlow 0 154975) 154991) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon34_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon33_Then$1_correct|  (=> (= inline$$Le$0$dst@1 inline$$Le$0$dst@1) (=> (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1| inline$$Le$0$dst@1) (= (ControlFlow 0 157246) 154975)) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L5_correct|))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= 1000000 10000000000)) (= (ControlFlow 0 157230) 157246)) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon33_Then$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon33_Then_correct|  (=> inline$$Lt$0$dst@1 (=> (and (|$IsValid'u64'| 10000000000) (= (ControlFlow 0 157236) 157230)) inline$$Le$0$anon0_correct))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon33_Else_correct|  (=> (and (and (not inline$$Lt$0$dst@1) (= false false)) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1| false) (= (ControlFlow 0 154945) 154975))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L5_correct|)))
(let ((inline$$Lt$0$anon0_correct  (=> (= inline$$Lt$0$dst@1 (< 0 1000000)) (and (=> (= (ControlFlow 0 154917) 157236) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon33_Then_correct|) (=> (= (ControlFlow 0 154917) 154945) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon33_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon32_Then_correct|  (=> inline$$Not$0$dst@1 (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 154923) 154917)) inline$$Lt$0$anon0_correct))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon32_Else_correct|  (=> (not inline$$Not$0$dst@1) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 154861) 154867))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon31_Else$1_correct|  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0| 6)) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0|) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 154845) 154923) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon32_Then_correct|) (=> (= (ControlFlow 0 154845) 154861) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon32_Else_correct|))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t19@1|)) (= (ControlFlow 0 154805) 154845)) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon31_Else$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon31_Else_correct|  (=> (not |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t17@0|) (=> (and (and (|$IsValid'address'| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t18@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t18@0| _$t0)) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t19@1| (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t18@0|)) (= (ControlFlow 0 154811) 154805))) inline$$Not$0$anon0_correct))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon31_Then_correct|  (=> |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t17@0| (=> (and (not (= _$t0 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|)) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 157276) 154867))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon30_Else_correct|  (=> (and (not |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t15@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t17@0|  (not (= _$t0 173345816)))) (and (=> (= (ControlFlow 0 154749) 157276) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 154749) 154811) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon31_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon30_Then_correct|  (=> (and |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t15@0| (or (or (or (and (not (= _$t0 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t14@0|)) (= 5 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t14@0|)) 0)) (= 3 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|))) (and (not (= _$t0 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|)))) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 157368) 154867))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t11@0| _$t0) (=> (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t12@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101966| $1_DiemConfig_Configuration_$memory) 173345816)) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t13@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (and (= _$t0 _$t0) (= $t23 $t23)) (and (= false false) (= 1000000 1000000))) (and (and (= 100 100) (= $t27@0 $t27@0)) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t14@0| _$t0) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t15@0|  (or (or (or (not (= _$t0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t14@0|))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t14@0|)) 0))) (not (= _$t0 173345816))))))) (and (=> (= (ControlFlow 0 154727) 157368) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 154727) 154749) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon30_Else_correct|)))))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon18_Else_correct|  (=> (not |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t21@0|) (=> (and (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t23@0| _$t0) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t24@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101966| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t25@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= (ControlFlow 0 157376) 154727))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon0_correct|))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon18_Then_correct|  (=> (and |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t21@0| (or (or (or (and (not (= _$t0 173345816)) (= 2 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t20@0|)) (= 5 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t20@0|)) 0)) (= 3 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|))) (and (not (= _$t0 173345816)) (= 2 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|)))) (=> (and (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|)) (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 158652) 157510))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t18@0|) (=> (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t20@0| _$t0) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t21@0|  (or (or (or (not (= _$t0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t20@0|))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t20@0|)) 0))) (not (= _$t0 173345816))))) (and (=> (= (ControlFlow 0 153290) 158652) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 153290) 157376) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon18_Else_correct|))))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon17_Then_correct|  (=> (and |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t18@0| (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t17@0|)) (= 5 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t17@0|)) 1)) (= 3 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|))) (and (not (= _$t1 186537453)) (= 2 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|)))) (=> (and (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|)) (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 158724) 157510))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t10@0| _$t1) (=> (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t11@0| _$t0) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t12@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101966| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t13@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t14@0| _$t1)) (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t15@0| _$t1) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t16@0| _$t1))) (=> (and (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t23 $t23) (= 1000000 1000000))) (and (and (= 100 100) (= $t27@0 $t27@0)) (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t17@0| _$t1) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t18@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t17@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t17@0|)) 1))) (not (= _$t1 186537453))))))) (and (=> (= (ControlFlow 0 153218) 158724) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 153218) 153290) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon17_Else_correct|))))))))
(let ((anon17_Else_correct  (=> (not $t24) (=> (and (|$IsValid'$1_FixedPoint32_FixedPoint32'| $t23) (= $t23 (ite (= 1 1) ($1_FixedPoint32_FixedPoint32 1) ($1_FixedPoint32_FixedPoint32 2)))) (=> (and (and (|$IsValid'u64'| 1000000) (|$IsValid'u64'| 100)) (and (= $t27@0 (Vec_20558 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_12393 DefaultVecElem_12393) 0 88) 1 85) 2 83) 3)) (|$IsValid'vec'u8''| $t27@0))) (=> (and (and (and (= $t28 _$t1) (= $t29 _$t0)) (and (= $t30 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101966| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t31 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (and (= $t32 _$t1) (= $t33 _$t1)) (and (= $t34 _$t1) (= (ControlFlow 0 158728) 153218)))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon0_correct|))))))
(let ((anon16_Else_correct  (=> (and (not $t14) (|$IsValid'u64'| 1)) (=> (and (and (and (|$IsValid'u64'| 1) (= $t17 ($shl 1 64))) (and (= $t18 ($shl 1 32)) (= $t19 (div $t17 $t18)))) (and (and (= $t20 ($shl 1 64)) (= $t21 ($shl 1 32))) (and (= $t22 (div $t20 $t21)) (= $t24  (or (or (= $t21 0) (and (= $t22 0) (not (= $t20 0)))) (> $t22 18446744073709551615)))))) (and (=> (= (ControlFlow 0 151931) 160789) anon17_Then_correct) (=> (= (ControlFlow 0 151931) 158728) anon17_Else_correct))))))
(let ((anon15_Else_correct  (=> (not $t12) (=> (and (= $t13 _$t0) (= $t14  (or (or (or (not (= _$t0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t13))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t13)) 0))) (not (= _$t0 173345816))))) (and (=> (= (ControlFlow 0 151801) 160881) anon16_Then_correct) (=> (= (ControlFlow 0 151801) 151931) anon16_Else_correct))))))
(let ((anon14_Else_correct  (=> (not $t9) (=> (and (= $t11 _$t1) (= $t12  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) $t11)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $t11)) 1))) (not (= _$t1 186537453))))) (and (=> (= (ControlFlow 0 151729) 160953) anon15_Then_correct) (=> (= (ControlFlow 0 151729) 151801) anon15_Else_correct))))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101966| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (and (and (and (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |XUSbaselinebpl.8866:21|
 :skolemid |179|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111622| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |XUSbaselinebpl.8866:268|
 :skolemid |180|
))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107752| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |XUSbaselinebpl.8870:21|
 :skolemid |181|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107839| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |XUSbaselinebpl.8870:231|
 :skolemid |182|
)))) (and (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_112120| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_111789| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |XUSbaselinebpl.8874:21|
 :skolemid |183|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_112237| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_111870| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99964| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |XUSbaselinebpl.8874:292|
 :skolemid |184|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) addr@@6) (= addr@@6 173345816)))
 :qid |XUSbaselinebpl.8890:20|
 :skolemid |185|
))) (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1))) (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |XUSbaselinebpl.8899:20|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |XUSbaselinebpl.8903:20|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99964| $1_Roles_RoleId_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101966| $1_DiemConfig_Configuration_$memory) $a_0@@1)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@1))
 :qid |XUSbaselinebpl.8907:20|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101966| $1_DiemConfig_Configuration_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_101900| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@2)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@2))
 :qid |XUSbaselinebpl.8911:20|
 :skolemid |189|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_101900| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@2))
)))))) (and (and (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@3)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@3))
 :qid |XUSbaselinebpl.8915:20|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_101576| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103167| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@4)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@4))
 :qid |XUSbaselinebpl.8919:20|
 :skolemid |191|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103167| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@4))
))) (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|contents#$Memory_107752| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) $a_0@@5)))
(|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| $rsc@@5))
 :qid |XUSbaselinebpl.8923:20|
 :skolemid |192|
 :pattern ( (|Select__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|contents#$Memory_107752| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@6)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@6) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@6)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@6) 10000000000))))
 :qid |XUSbaselinebpl.8927:20|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_99493| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@6))
)))) (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) $a_0@@7)))
(|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| $rsc@@7))
 :qid |XUSbaselinebpl.8931:20|
 :skolemid |194|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_107526| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|contents#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) $a_0@@8)))
 (and (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| $rsc@@8) (and (and (and (> (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| $rsc@@8) 0) (> (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| $rsc@@8) 0)) (> (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| $rsc@@8) 0)) (> (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| $rsc@@8) 0))))
 :qid |XUSbaselinebpl.8935:20|
 :skolemid |195|
 :pattern ( (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|contents#$Memory_99577| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) $a_0@@8))
))) (and (= $t2 _$t1) (= $t3 _$t0)))) (and (and (and (= $t4 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101966| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t5 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t6 _$t1) (= $t7 _$t0))) (and (and (= $t8 _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t9  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98077| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))))) (and (=> (= (ControlFlow 0 151669) 160979) anon14_Then_correct) (=> (= (ControlFlow 0 151669) 151729) anon14_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_63264_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_63264| stream@@0) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63264| stream@@0) v@@44) 0)
 :qid |XUSbaselinebpl.159:13|
 :skolemid |4|
))))
 :qid |XUSbaselinebpl.2578:13|
 :skolemid |91|
))) (= (ControlFlow 0 151012) 151669)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 213732) 151012) inline$$InitEventStore$0$anon0_correct)))
anon0_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_90744 0)) ((($Memory_90744 (|domain#$Memory_90744| |T@[Int]Bool|) (|contents#$Memory_90744| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_65083 0)) (((Vec_65083 (|v#Vec_65083| |T@[Int]#0|) (|l#Vec_65083| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_135876 0)) ((($Memory_135876 (|domain#$Memory_135876| |T@[Int]Bool|) (|contents#$Memory_135876| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_132711 0)) ((($Memory_132711 (|domain#$Memory_132711| |T@[Int]Bool|) (|contents#$Memory_132711| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_130519 0)) ((($Memory_130519 (|domain#$Memory_130519| |T@[Int]Bool|) (|contents#$Memory_130519| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_130831 0)) ((($Memory_130831 (|domain#$Memory_130831| |T@[Int]Bool|) (|contents#$Memory_130831| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_130486 0)) ((($Memory_130486 (|domain#$Memory_130486| |T@[Int]Bool|) (|contents#$Memory_130486| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_130266 0)) ((($Memory_130266 (|domain#$Memory_130266| |T@[Int]Bool|) (|contents#$Memory_130266| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_127605 0)) ((($Memory_127605 (|domain#$Memory_127605| |T@[Int]Bool|) (|contents#$Memory_127605| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_126159 0)) ((($Memory_126159 (|domain#$Memory_126159| |T@[Int]Bool|) (|contents#$Memory_126159| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_118916 0)) ((($Memory_118916 (|domain#$Memory_118916| |T@[Int]Bool|) (|contents#$Memory_118916| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_99577 0)) ((($Memory_99577 (|domain#$Memory_99577| |T@[Int]Bool|) (|contents#$Memory_99577| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_132489 0)) ((($Memory_132489 (|domain#$Memory_132489| |T@[Int]Bool|) (|contents#$Memory_132489| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_111622 0)) ((($Memory_111622 (|domain#$Memory_111622| |T@[Int]Bool|) (|contents#$Memory_111622| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107526 0)) ((($Memory_107526 (|domain#$Memory_107526| |T@[Int]Bool|) (|contents#$Memory_107526| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107839 0)) ((($Memory_107839 (|domain#$Memory_107839| |T@[Int]Bool|) (|contents#$Memory_107839| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107752 0)) ((($Memory_107752 (|domain#$Memory_107752| |T@[Int]Bool|) (|contents#$Memory_107752| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_111870 0)) ((($Memory_111870 (|domain#$Memory_111870| |T@[Int]Bool|) (|contents#$Memory_111870| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_124866 0)) ((($Memory_124866 (|domain#$Memory_124866| |T@[Int]Bool|) (|contents#$Memory_124866| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_111789 0)) ((($Memory_111789 (|domain#$Memory_111789| |T@[Int]Bool|) (|contents#$Memory_111789| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_126475 0)) ((($Memory_126475 (|domain#$Memory_126475| |T@[Int]Bool|) (|contents#$Memory_126475| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_103428 0)) ((($Memory_103428 (|domain#$Memory_103428| |T@[Int]Bool|) (|contents#$Memory_103428| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_103341 0)) ((($Memory_103341 (|domain#$Memory_103341| |T@[Int]Bool|) (|contents#$Memory_103341| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_103254 0)) ((($Memory_103254 (|domain#$Memory_103254| |T@[Int]Bool|) (|contents#$Memory_103254| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_103167 0)) ((($Memory_103167 (|domain#$Memory_103167| |T@[Int]Bool|) (|contents#$Memory_103167| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_103080 0)) ((($Memory_103080 (|domain#$Memory_103080| |T@[Int]Bool|) (|contents#$Memory_103080| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_103683 0)) ((($Memory_103683 (|domain#$Memory_103683| |T@[Int]Bool|) (|contents#$Memory_103683| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_101900 0)) ((($Memory_101900 (|domain#$Memory_101900| |T@[Int]Bool|) (|contents#$Memory_101900| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_101966 0)) ((($Memory_101966 (|domain#$Memory_101966| |T@[Int]Bool|) (|contents#$Memory_101966| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_101819 0)) ((($Memory_101819 (|domain#$Memory_101819| |T@[Int]Bool|) (|contents#$Memory_101819| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_101462 0)) ((($Memory_101462 (|domain#$Memory_101462| |T@[Int]Bool|) (|contents#$Memory_101462| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_63428 0)) (((Vec_63428 (|v#Vec_63428| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_63428| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_63428) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_63389 0)) (((Vec_63389 (|v#Vec_63389| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_63389| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_63389) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_20558 0)) (((Vec_20558 (|v#Vec_20558| |T@[Int]Int|) (|l#Vec_20558| Int) ) ) ))
(declare-sort |T@[Int]Vec_20558| 0)
(declare-datatypes ((T@Vec_63611 0)) (((Vec_63611 (|v#Vec_63611| |T@[Int]Vec_20558|) (|l#Vec_63611| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_63611) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_101657 0)) ((($Memory_101657 (|domain#$Memory_101657| |T@[Int]Bool|) (|contents#$Memory_101657| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_63611) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_101576 0)) ((($Memory_101576 (|domain#$Memory_101576| |T@[Int]Bool|) (|contents#$Memory_101576| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_20558) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_20558) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_101738 0)) ((($Memory_101738 (|domain#$Memory_101738| |T@[Int]Bool|) (|contents#$Memory_101738| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_20558) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_131472 0)) ((($Memory_131472 (|domain#$Memory_131472| |T@[Int]Bool|) (|contents#$Memory_131472| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_20558) (|$base_url#$1_DualAttestation_Credential| T@Vec_20558) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_20558) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_127541 0)) ((($Memory_127541 (|domain#$Memory_127541| |T@[Int]Bool|) (|contents#$Memory_127541| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_20558) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_63815 0)) (((Vec_63815 (|v#Vec_63815| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_63815| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_63815) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112237 0)) ((($Memory_112237 (|domain#$Memory_112237| |T@[Int]Bool|) (|contents#$Memory_112237| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_63776 0)) (((Vec_63776 (|v#Vec_63776| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_63776| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_63776) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112120 0)) ((($Memory_112120 (|domain#$Memory_112120| |T@[Int]Bool|) (|contents#$Memory_112120| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_20558) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107390 0)) ((($Memory_107390 (|domain#$Memory_107390| |T@[Int]Bool|) (|contents#$Memory_107390| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_20558) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_99493 0)) ((($Memory_99493 (|domain#$Memory_99493| |T@[Int]Bool|) (|contents#$Memory_99493| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_20558) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_20558) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_63350 0)) (((Vec_63350 (|v#Vec_63350| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_63350| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_63350) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_63554 0)) (((Vec_63554 (|v#Vec_63554| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_63554| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_63554) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_101495 0)) ((($Memory_101495 (|domain#$Memory_101495| |T@[Int]Bool|) (|contents#$Memory_101495| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_100876 0)) ((($Memory_100876 (|domain#$Memory_100876| |T@[Int]Bool|) (|contents#$Memory_100876| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_20558) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_100233 0)) ((($Memory_100233 (|domain#$Memory_100233| |T@[Int]Bool|) (|contents#$Memory_100233| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_99964 0)) ((($Memory_99964 (|domain#$Memory_99964| |T@[Int]Bool|) (|contents#$Memory_99964| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_98077 0)) ((($Memory_98077 (|domain#$Memory_98077| |T@[Int]Bool|) (|contents#$Memory_98077| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_20558) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_20558) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_20558) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_20558) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_20558) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_20558) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_20558) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_20558) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_20558) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_20558) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_63264 0)) (((Multiset_63264 (|v#Multiset_63264| |T@[$EventRep]Int|) (|l#Multiset_63264| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_63264| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_63264|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_133563 0)) ((($Mutation_133563 (|l#$Mutation_133563| T@$Location) (|p#$Mutation_133563| T@Vec_20558) (|v#$Mutation_133563| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_133518 0)) ((($Mutation_133518 (|l#$Mutation_133518| T@$Location) (|p#$Mutation_133518| T@Vec_20558) (|v#$Mutation_133518| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_33232 0)) ((($Mutation_33232 (|l#$Mutation_33232| T@$Location) (|p#$Mutation_33232| T@Vec_20558) (|v#$Mutation_33232| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_117450 0)) ((($Mutation_117450 (|l#$Mutation_117450| T@$Location) (|p#$Mutation_117450| T@Vec_20558) (|v#$Mutation_117450| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_106104 0)) ((($Mutation_106104 (|l#$Mutation_106104| T@$Location) (|p#$Mutation_106104| T@Vec_20558) (|v#$Mutation_106104| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_98546 0)) ((($Mutation_98546 (|l#$Mutation_98546| T@$Location) (|p#$Mutation_98546| T@Vec_20558) (|v#$Mutation_98546| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_91372 0)) ((($Mutation_91372 (|l#$Mutation_91372| T@$Location) (|p#$Mutation_91372| T@Vec_20558) (|v#$Mutation_91372| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12788 0)) ((($Mutation_12788 (|l#$Mutation_12788| T@$Location) (|p#$Mutation_12788| T@Vec_20558) (|v#$Mutation_12788| Int) ) ) ))
(declare-datatypes ((T@$Mutation_85685 0)) ((($Mutation_85685 (|l#$Mutation_85685| T@$Location) (|p#$Mutation_85685| T@Vec_20558) (|v#$Mutation_85685| T@Vec_20558) ) ) ))
(declare-datatypes ((T@$Mutation_84597 0)) ((($Mutation_84597 (|l#$Mutation_84597| T@$Location) (|p#$Mutation_84597| T@Vec_20558) (|v#$Mutation_84597| T@Vec_63611) ) ) ))
(declare-datatypes ((T@$Mutation_82888 0)) ((($Mutation_82888 (|l#$Mutation_82888| T@$Location) (|p#$Mutation_82888| T@Vec_20558) (|v#$Mutation_82888| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_81901 0)) ((($Mutation_81901 (|l#$Mutation_81901| T@$Location) (|p#$Mutation_81901| T@Vec_20558) (|v#$Mutation_81901| T@Vec_63350) ) ) ))
(declare-datatypes ((T@$Mutation_80246 0)) ((($Mutation_80246 (|l#$Mutation_80246| T@$Location) (|p#$Mutation_80246| T@Vec_20558) (|v#$Mutation_80246| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_79259 0)) ((($Mutation_79259 (|l#$Mutation_79259| T@$Location) (|p#$Mutation_79259| T@Vec_20558) (|v#$Mutation_79259| T@Vec_63776) ) ) ))
(declare-datatypes ((T@$Mutation_77550 0)) ((($Mutation_77550 (|l#$Mutation_77550| T@$Location) (|p#$Mutation_77550| T@Vec_20558) (|v#$Mutation_77550| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_76563 0)) ((($Mutation_76563 (|l#$Mutation_76563| T@$Location) (|p#$Mutation_76563| T@Vec_20558) (|v#$Mutation_76563| T@Vec_63815) ) ) ))
(declare-datatypes ((T@$Mutation_74854 0)) ((($Mutation_74854 (|l#$Mutation_74854| T@$Location) (|p#$Mutation_74854| T@Vec_20558) (|v#$Mutation_74854| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_73867 0)) ((($Mutation_73867 (|l#$Mutation_73867| T@$Location) (|p#$Mutation_73867| T@Vec_20558) (|v#$Mutation_73867| T@Vec_63554) ) ) ))
(declare-datatypes ((T@$Mutation_72067 0)) ((($Mutation_72067 (|l#$Mutation_72067| T@$Location) (|p#$Mutation_72067| T@Vec_20558) (|v#$Mutation_72067| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_71080 0)) ((($Mutation_71080 (|l#$Mutation_71080| T@$Location) (|p#$Mutation_71080| T@Vec_20558) (|v#$Mutation_71080| T@Vec_63428) ) ) ))
(declare-datatypes ((T@$Mutation_69415 0)) ((($Mutation_69415 (|l#$Mutation_69415| T@$Location) (|p#$Mutation_69415| T@Vec_20558) (|v#$Mutation_69415| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68428 0)) ((($Mutation_68428 (|l#$Mutation_68428| T@$Location) (|p#$Mutation_68428| T@Vec_20558) (|v#$Mutation_68428| T@Vec_63389) ) ) ))
(declare-datatypes ((T@$Mutation_66715 0)) ((($Mutation_66715 (|l#$Mutation_66715| T@$Location) (|p#$Mutation_66715| T@Vec_20558) (|v#$Mutation_66715| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_65728 0)) ((($Mutation_65728 (|l#$Mutation_65728| T@$Location) (|p#$Mutation_65728| T@Vec_20558) (|v#$Mutation_65728| T@Vec_65083) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_65083 T@Vec_65083) Bool)
(declare-fun InRangeVec_56006 (T@Vec_65083 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_65083) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_65083 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_63389 T@Vec_63389) Bool)
(declare-fun InRangeVec_56207 (T@Vec_63389 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_63389) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_63389 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_63428 T@Vec_63428) Bool)
(declare-fun InRangeVec_56408 (T@Vec_63428 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_63428) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_63428 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_63554 T@Vec_63554) Bool)
(declare-fun InRangeVec_56609 (T@Vec_63554 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_20558 T@Vec_20558) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_63554) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_63554 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_63815 T@Vec_63815) Bool)
(declare-fun InRangeVec_56810 (T@Vec_63815 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_63815) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_63815 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_63776 T@Vec_63776) Bool)
(declare-fun InRangeVec_57011 (T@Vec_63776 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_63776) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_63776 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_63350 T@Vec_63350) Bool)
(declare-fun InRangeVec_57212 (T@Vec_63350 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_63350) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_63350 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_63611 T@Vec_63611) Bool)
(declare-fun InRangeVec_84020 (T@Vec_63611 Int) Bool)
(declare-fun |Select__T@[Int]Vec_20558_| (|T@[Int]Vec_20558| Int) T@Vec_20558)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_63611) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_20558) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_63611 T@Vec_20558) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_20558 T@Vec_20558) Bool)
(declare-fun InRangeVec_12164 (T@Vec_20558 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_20558) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_20558 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_20558 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_20558) T@Vec_20558)
(declare-fun $1_Hash_sha3 (T@Vec_20558) T@Vec_20558)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_20558) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_20558 T@Vec_20558 T@Vec_20558) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_63264_| (|T@[$1_Event_EventHandle]Multiset_63264| T@$1_Event_EventHandle) T@Multiset_63264)
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
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
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
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun IndexOfVec_20558 (T@Vec_20558 Int) Int)
(declare-fun IndexOfVec_63350 (T@Vec_63350 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_63389 (T@Vec_63389 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_63428 (T@Vec_63428 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_63554 (T@Vec_63554 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_63611 (T@Vec_63611 T@Vec_20558) Int)
(declare-fun IndexOfVec_63776 (T@Vec_63776 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_63815 (T@Vec_63815 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_65083 (T@Vec_65083 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_63264| |T@[$1_Event_EventHandle]Multiset_63264|) |T@[$1_Event_EventHandle]Multiset_63264|)
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
(declare-fun |lambda#24| (Int Int Int |T@[Int]Vec_20558| |T@[Int]Vec_20558| Int T@Vec_20558) |T@[Int]Vec_20558|)
(declare-fun |lambda#25| (Int Int |T@[Int]Vec_20558| Int Int T@Vec_20558) |T@[Int]Vec_20558|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Vec_20558| |T@[Int]Vec_20558| Int T@Vec_20558) |T@[Int]Vec_20558|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |XUSbaselinebpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XUSbaselinebpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XUSbaselinebpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XUSbaselinebpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XUSbaselinebpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XUSbaselinebpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XUSbaselinebpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XUSbaselinebpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_65083) (v2 T@Vec_65083) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_65083| v1) (|l#Vec_65083| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_56006 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_65083| v2) i@@0)))
 :qid |XUSbaselinebpl.615:13|
 :skolemid |17|
))))
 :qid |XUSbaselinebpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_65083) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_65083| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_56006 v@@4 i@@1) true)
 :qid |XUSbaselinebpl.621:13|
 :skolemid |19|
))))
 :qid |XUSbaselinebpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_65083) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_56006 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@5) i@@3) e))
 :qid |XUSbaselinebpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_56006 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@5) j) e)))
 :qid |XUSbaselinebpl.634:17|
 :skolemid |22|
)))))
 :qid |XUSbaselinebpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_63389) (v2@@0 T@Vec_63389) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_63389| v1@@0) (|l#Vec_63389| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_56207 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v2@@0) i@@4)))
 :qid |XUSbaselinebpl.796:13|
 :skolemid |24|
))))
 :qid |XUSbaselinebpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_63389) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_63389| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_56207 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@6) i@@5)))
 :qid |XUSbaselinebpl.802:13|
 :skolemid |26|
))))
 :qid |XUSbaselinebpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_63389) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_56207 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@7) i@@7) e@@0))
 :qid |XUSbaselinebpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_56207 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@7) j@@0) e@@0)))
 :qid |XUSbaselinebpl.815:17|
 :skolemid |29|
)))))
 :qid |XUSbaselinebpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_63428) (v2@@1 T@Vec_63428) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_63428| v1@@1) (|l#Vec_63428| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_56408 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v2@@1) i@@8)))
 :qid |XUSbaselinebpl.977:13|
 :skolemid |31|
))))
 :qid |XUSbaselinebpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_63428) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_63428| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_56408 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@8) i@@9)))
 :qid |XUSbaselinebpl.983:13|
 :skolemid |33|
))))
 :qid |XUSbaselinebpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_63428) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_56408 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@9) i@@11) e@@1))
 :qid |XUSbaselinebpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_56408 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@9) j@@1) e@@1)))
 :qid |XUSbaselinebpl.996:17|
 :skolemid |36|
)))))
 :qid |XUSbaselinebpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_63554) (v2@@2 T@Vec_63554) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_63554| v1@@2) (|l#Vec_63554| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_56609 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v2@@2) i@@12)))))
 :qid |XUSbaselinebpl.1158:13|
 :skolemid |38|
))))
 :qid |XUSbaselinebpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_63554) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_63554| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_56609 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@10) i@@13)))
 :qid |XUSbaselinebpl.1164:13|
 :skolemid |40|
))))
 :qid |XUSbaselinebpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_63554) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_56609 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |XUSbaselinebpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_56609 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |XUSbaselinebpl.1177:17|
 :skolemid |43|
)))))
 :qid |XUSbaselinebpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_63815) (v2@@3 T@Vec_63815) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3)  (and (= (|l#Vec_63815| v1@@3) (|l#Vec_63815| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_56810 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v2@@3) i@@16)))))
 :qid |XUSbaselinebpl.1339:13|
 :skolemid |45|
))))
 :qid |XUSbaselinebpl.1337:65|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_63815) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_63815| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_56810 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@12) i@@17)))
 :qid |XUSbaselinebpl.1345:13|
 :skolemid |47|
))))
 :qid |XUSbaselinebpl.1343:65|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_63815) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_56810 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3))))
 :qid |XUSbaselinebpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_56810 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))))
 :qid |XUSbaselinebpl.1358:17|
 :skolemid |50|
)))))
 :qid |XUSbaselinebpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_63776) (v2@@4 T@Vec_63776) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4)  (and (= (|l#Vec_63776| v1@@4) (|l#Vec_63776| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_57011 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v2@@4) i@@20)))))
 :qid |XUSbaselinebpl.1520:13|
 :skolemid |52|
))))
 :qid |XUSbaselinebpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_63776) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_63776| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_57011 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@14) i@@21)))
 :qid |XUSbaselinebpl.1526:13|
 :skolemid |54|
))))
 :qid |XUSbaselinebpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_63776) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_57011 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4))))
 :qid |XUSbaselinebpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_57011 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))))
 :qid |XUSbaselinebpl.1539:17|
 :skolemid |57|
)))))
 :qid |XUSbaselinebpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_63350) (v2@@5 T@Vec_63350) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5)  (and (= (|l#Vec_63350| v1@@5) (|l#Vec_63350| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_57212 v1@@5 i@@24) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v1@@5) i@@24)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v1@@5) i@@24)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v2@@5) i@@24)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v1@@5) i@@24)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v2@@5) i@@24)))))
 :qid |XUSbaselinebpl.1701:13|
 :skolemid |59|
))))
 :qid |XUSbaselinebpl.1699:51|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_63350) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_63350| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_57212 v@@16 i@@25) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@16) i@@25)))
 :qid |XUSbaselinebpl.1707:13|
 :skolemid |61|
))))
 :qid |XUSbaselinebpl.1705:51|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_63350) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@26 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_57212 v@@17 i@@27)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@27)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@27)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@27)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5))))
 :qid |XUSbaselinebpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_57212 v@@17 i@@26)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@26)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@26)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) i@@26)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) j@@5)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) j@@5)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@17) j@@5)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))))
 :qid |XUSbaselinebpl.1720:17|
 :skolemid |64|
)))))
 :qid |XUSbaselinebpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_63611) (v2@@6 T@Vec_63611) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6)  (and (= (|l#Vec_63611| v1@@6) (|l#Vec_63611| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_84020 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v1@@6) i@@28) (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v2@@6) i@@28)))
 :qid |XUSbaselinebpl.1882:13|
 :skolemid |66|
))))
 :qid |XUSbaselinebpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_63611) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_63611| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_84020 v@@18 i@@29) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@18) i@@29)))
 :qid |XUSbaselinebpl.1888:13|
 :skolemid |68|
))))
 :qid |XUSbaselinebpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_63611) (e@@6 T@Vec_20558) ) (! (let ((i@@30 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_84020 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@19) i@@31) e@@6))
 :qid |XUSbaselinebpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_84020 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@19) j@@6) e@@6)))
 :qid |XUSbaselinebpl.1901:17|
 :skolemid |71|
)))))
 :qid |XUSbaselinebpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_20558) (v2@@7 T@Vec_20558) ) (! (= (|$IsEqual'vec'address''| v1@@7 v2@@7)  (and (= (|l#Vec_20558| v1@@7) (|l#Vec_20558| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_12164 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_20558| v2@@7) i@@32)))
 :qid |XUSbaselinebpl.2063:13|
 :skolemid |73|
))))
 :qid |XUSbaselinebpl.2061:33|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'address''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_20558) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_20558| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_12164 v@@20 i@@33) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_20558| v@@20) i@@33)))
 :qid |XUSbaselinebpl.2069:13|
 :skolemid |75|
))))
 :qid |XUSbaselinebpl.2067:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_20558) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_12164 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@21) i@@35) e@@7))
 :qid |XUSbaselinebpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_12164 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@21) j@@7) e@@7)))
 :qid |XUSbaselinebpl.2082:17|
 :skolemid |78|
)))))
 :qid |XUSbaselinebpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_20558) (v2@@8 T@Vec_20558) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8)  (and (= (|l#Vec_20558| v1@@8) (|l#Vec_20558| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_12164 v1@@8 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v1@@8) i@@36) (|Select__T@[Int]Int_| (|v#Vec_20558| v2@@8) i@@36)))
 :qid |XUSbaselinebpl.2244:13|
 :skolemid |80|
))))
 :qid |XUSbaselinebpl.2242:28|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'u8''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_20558) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_20558| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_12164 v@@22 i@@37) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_20558| v@@22) i@@37)))
 :qid |XUSbaselinebpl.2250:13|
 :skolemid |82|
))))
 :qid |XUSbaselinebpl.2248:28|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_20558) (e@@8 Int) ) (! (let ((i@@38 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_12164 v@@23 i@@39)) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@23) i@@39) e@@8))
 :qid |XUSbaselinebpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_12164 v@@23 i@@38)) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@23) j@@8) e@@8)))
 :qid |XUSbaselinebpl.2263:17|
 :skolemid |85|
)))))
 :qid |XUSbaselinebpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_20558) (v2@@9 T@Vec_20558) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9)))
 :qid |XUSbaselinebpl.2436:15|
 :skolemid |87|
 :pattern ( ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9))
)))
(assert (forall ((v1@@10 T@Vec_20558) (v2@@10 T@Vec_20558) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10)))
 :qid |XUSbaselinebpl.2452:15|
 :skolemid |88|
 :pattern ( ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10))
)))
(assert (forall ((k1 T@Vec_20558) (k2 T@Vec_20558) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XUSbaselinebpl.2499:15|
 :skolemid |89|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_20558) (s2 T@Vec_20558) (k1@@0 T@Vec_20558) (k2@@0 T@Vec_20558) (m1 T@Vec_20558) (m2 T@Vec_20558) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XUSbaselinebpl.2502:15|
 :skolemid |90|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_63264_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_63264| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63264| stream) v@@24) 0)
 :qid |XUSbaselinebpl.159:13|
 :skolemid |4|
))))
 :qid |XUSbaselinebpl.2578:13|
 :skolemid |91|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XUSbaselinebpl.2619:80|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@11 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@11 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11)))
 :qid |XUSbaselinebpl.2625:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XUSbaselinebpl.2675:82|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12)))
 :qid |XUSbaselinebpl.2681:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XUSbaselinebpl.2731:80|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@13 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@13 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@13)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13)))
 :qid |XUSbaselinebpl.2737:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XUSbaselinebpl.2787:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_AdminTransactionEvent) (v2@@14 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14)))
 :qid |XUSbaselinebpl.2793:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XUSbaselinebpl.2843:76|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_CreateAccountEvent) (v2@@15 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15)))
 :qid |XUSbaselinebpl.2849:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XUSbaselinebpl.2899:78|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@16 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16)))
 :qid |XUSbaselinebpl.2905:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XUSbaselinebpl.2955:74|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_SentPaymentEvent) (v2@@17 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@17)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@17))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17)))
 :qid |XUSbaselinebpl.2961:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XUSbaselinebpl.3011:69|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@18 T@$1_DiemBlock_NewBlockEvent) (v2@@18 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@18) (|$round#$1_DiemBlock_NewBlockEvent| v2@@18)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@18) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@18))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@18) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@18) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18)))
 :qid |XUSbaselinebpl.3017:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XUSbaselinebpl.3067:70|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@19 T@$1_DiemConfig_NewEpochEvent) (v2@@19 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19)))
 :qid |XUSbaselinebpl.3073:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |XUSbaselinebpl.3123:60|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@20 T@$1_Diem_BurnEvent) (v2@@20 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@20) (|$amount#$1_Diem_BurnEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@20) (|$currency_code#$1_Diem_BurnEvent| v2@@20))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@20) (|$preburn_address#$1_Diem_BurnEvent| v2@@20))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@20)))
 :qid |XUSbaselinebpl.3129:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@20))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |XUSbaselinebpl.3179:66|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@21 T@$1_Diem_CancelBurnEvent) (v2@@21 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@21) (|$amount#$1_Diem_CancelBurnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@21) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@21) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@21)))
 :qid |XUSbaselinebpl.3185:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@21))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |XUSbaselinebpl.3235:60|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@22 T@$1_Diem_MintEvent) (v2@@22 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@22) (|$amount#$1_Diem_MintEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@22) (|$currency_code#$1_Diem_MintEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@22) (|$ToEventRep'$1_Diem_MintEvent'| v2@@22)))
 :qid |XUSbaselinebpl.3241:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@22) (|$ToEventRep'$1_Diem_MintEvent'| v2@@22))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |XUSbaselinebpl.3291:63|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@23 T@$1_Diem_PreburnEvent) (v2@@23 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@23) (|$amount#$1_Diem_PreburnEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@23) (|$currency_code#$1_Diem_PreburnEvent| v2@@23))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@23) (|$preburn_address#$1_Diem_PreburnEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@23) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@23)))
 :qid |XUSbaselinebpl.3297:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@23) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@23))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |XUSbaselinebpl.3347:79|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@24 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@24 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@24) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@24)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@24) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@24) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@24)))
 :qid |XUSbaselinebpl.3353:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@24) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@24))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |XUSbaselinebpl.3403:82|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@25 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@25 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@25) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@25)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@25) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@25))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@25)))
 :qid |XUSbaselinebpl.3409:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@25))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |XUSbaselinebpl.3459:88|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@26 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@26 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@26) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@26)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@26) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@26))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@26)))
 :qid |XUSbaselinebpl.3465:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@26))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |XUSbaselinebpl.3515:72|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@27 T@$1_VASPDomain_VASPDomainEvent) (v2@@27 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@27)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@27)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@27) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@27))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27)))
 :qid |XUSbaselinebpl.3521:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@27) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@27))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |XUSbaselinebpl.3600:61|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |XUSbaselinebpl.4155:36|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |XUSbaselinebpl.4174:71|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |XUSbaselinebpl.4237:46|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |XUSbaselinebpl.4249:64|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |XUSbaselinebpl.4261:75|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |XUSbaselinebpl.4273:72|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |XUSbaselinebpl.4301:55|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |XUSbaselinebpl.4324:46|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |XUSbaselinebpl.4343:49|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |XUSbaselinebpl.4418:71|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |XUSbaselinebpl.4431:91|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |XUSbaselinebpl.4444:113|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |XUSbaselinebpl.4457:75|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |XUSbaselinebpl.4470:73|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |XUSbaselinebpl.4490:48|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |XUSbaselinebpl.4507:57|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |XUSbaselinebpl.4521:83|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |XUSbaselinebpl.4535:103|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |XUSbaselinebpl.4549:125|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |XUSbaselinebpl.4563:87|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |XUSbaselinebpl.4577:85|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |XUSbaselinebpl.4591:48|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |XUSbaselinebpl.4612:45|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |XUSbaselinebpl.4626:51|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |XUSbaselinebpl.4649:48|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |XUSbaselinebpl.4957:49|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |XUSbaselinebpl.4970:65|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |XUSbaselinebpl.5478:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |XUSbaselinebpl.5491:45|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29) true)
 :qid |XUSbaselinebpl.5504:55|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30) true)
 :qid |XUSbaselinebpl.5518:55|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@31))))
 :qid |XUSbaselinebpl.5538:38|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@32))))
 :qid |XUSbaselinebpl.5560:44|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))))
 :qid |XUSbaselinebpl.5612:53|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))))
 :qid |XUSbaselinebpl.5685:53|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35) true)
 :qid |XUSbaselinebpl.5722:55|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36) true)
 :qid |XUSbaselinebpl.5736:55|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@37)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@37))))
 :qid |XUSbaselinebpl.5753:38|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@38)))
 :qid |XUSbaselinebpl.5767:48|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@39)))
 :qid |XUSbaselinebpl.5781:48|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@40)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@40))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@40))))
 :qid |XUSbaselinebpl.5801:41|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@41)))
 :qid |XUSbaselinebpl.5817:53|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@42)))
 :qid |XUSbaselinebpl.5830:53|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43))))
 :qid |XUSbaselinebpl.5846:60|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44))))
 :qid |XUSbaselinebpl.5863:60|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45))))
 :qid |XUSbaselinebpl.5880:57|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46) true)
 :qid |XUSbaselinebpl.8081:68|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))))
 :qid |XUSbaselinebpl.8103:66|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))))
 :qid |XUSbaselinebpl.8129:66|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@49) true)
 :qid |XUSbaselinebpl.8462:31|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@50) true)
 :qid |XUSbaselinebpl.9408:31|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@51)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@51)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@51))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@51))))
 :qid |XUSbaselinebpl.9427:35|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@51))
)))
(assert (forall ((s@@52 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@52)))
 :qid |XUSbaselinebpl.9848:45|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@53))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@53))))
 :qid |XUSbaselinebpl.9866:50|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@54)))
 :qid |XUSbaselinebpl.9882:52|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55))))
 :qid |XUSbaselinebpl.9908:65|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@56)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@56))))
 :qid |XUSbaselinebpl.10293:60|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57))))
 :qid |XUSbaselinebpl.10310:66|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@58)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@58)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@58))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@58))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@58))))
 :qid |XUSbaselinebpl.10339:50|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@59) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@59)))
 :qid |XUSbaselinebpl.10362:45|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@60)) true))
 :qid |XUSbaselinebpl.10681:87|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@61)))
 :qid |XUSbaselinebpl.10893:47|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@62)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@62))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@62))))
 :qid |XUSbaselinebpl.10912:58|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@63) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@63)))
 :qid |XUSbaselinebpl.10928:39|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@64))))
 :qid |XUSbaselinebpl.10950:58|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65))))
 :qid |XUSbaselinebpl.10967:58|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66) true)
 :qid |XUSbaselinebpl.10982:51|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67))))
 :qid |XUSbaselinebpl.10999:60|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@68)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@68))))
 :qid |XUSbaselinebpl.11297:47|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@69)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@69))))
 :qid |XUSbaselinebpl.11323:63|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@70)))
 :qid |XUSbaselinebpl.11338:57|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@71)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@71))))
 :qid |XUSbaselinebpl.11354:54|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@72)))
 :qid |XUSbaselinebpl.11368:55|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@73)))
 :qid |XUSbaselinebpl.11381:57|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@74)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@74))))
 :qid |XUSbaselinebpl.11403:56|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@75)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@75))))
 :qid |XUSbaselinebpl.11430:52|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@76)))
 :qid |XUSbaselinebpl.11448:54|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |XUSbaselinebpl.12319:47|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |XUSbaselinebpl.12343:47|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |XUSbaselinebpl.12586:49|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |XUSbaselinebpl.12628:49|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |XUSbaselinebpl.12657:48|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |XUSbaselinebpl.12953:47|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@25 T@Vec_65083) (i@@40 Int) ) (! (= (InRangeVec_56006 v@@25 i@@40)  (and (>= i@@40 0) (< i@@40 (|l#Vec_65083| v@@25))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56006 v@@25 i@@40))
)))
(assert (forall ((v@@26 T@Vec_63389) (i@@41 Int) ) (! (= (InRangeVec_56207 v@@26 i@@41)  (and (>= i@@41 0) (< i@@41 (|l#Vec_63389| v@@26))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56207 v@@26 i@@41))
)))
(assert (forall ((v@@27 T@Vec_63428) (i@@42 Int) ) (! (= (InRangeVec_56408 v@@27 i@@42)  (and (>= i@@42 0) (< i@@42 (|l#Vec_63428| v@@27))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56408 v@@27 i@@42))
)))
(assert (forall ((v@@28 T@Vec_63554) (i@@43 Int) ) (! (= (InRangeVec_56609 v@@28 i@@43)  (and (>= i@@43 0) (< i@@43 (|l#Vec_63554| v@@28))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56609 v@@28 i@@43))
)))
(assert (forall ((v@@29 T@Vec_63815) (i@@44 Int) ) (! (= (InRangeVec_56810 v@@29 i@@44)  (and (>= i@@44 0) (< i@@44 (|l#Vec_63815| v@@29))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56810 v@@29 i@@44))
)))
(assert (forall ((v@@30 T@Vec_63776) (i@@45 Int) ) (! (= (InRangeVec_57011 v@@30 i@@45)  (and (>= i@@45 0) (< i@@45 (|l#Vec_63776| v@@30))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57011 v@@30 i@@45))
)))
(assert (forall ((v@@31 T@Vec_63350) (i@@46 Int) ) (! (= (InRangeVec_57212 v@@31 i@@46)  (and (>= i@@46 0) (< i@@46 (|l#Vec_63350| v@@31))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57212 v@@31 i@@46))
)))
(assert (forall ((v@@32 T@Vec_63611) (i@@47 Int) ) (! (= (InRangeVec_84020 v@@32 i@@47)  (and (>= i@@47 0) (< i@@47 (|l#Vec_63611| v@@32))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_84020 v@@32 i@@47))
)))
(assert (forall ((v@@33 T@Vec_20558) (i@@48 Int) ) (! (= (InRangeVec_12164 v@@33 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_20558| v@@33))))
 :qid |XUSbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_12164 v@@33 i@@48))
)))
(assert (forall ((v@@34 T@Vec_20558) (e@@9 Int) ) (! (let ((i@@49 (IndexOfVec_20558 v@@34 e@@9)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_12164 v@@34 i@@50) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@34) i@@50) e@@9))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_12164 v@@34 i@@49) (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@34) i@@49) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@49)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20558| v@@34) j@@9) e@@9)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_20558 v@@34 e@@9))
)))
(assert (forall ((v@@35 T@Vec_63350) (e@@10 T@$1_ValidatorConfig_Config) ) (! (let ((i@@51 (IndexOfVec_63350 v@@35 e@@10)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_57212 v@@35 i@@52) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@35) i@@52) e@@10))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_57212 v@@35 i@@51) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@35) i@@51) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@51)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_63350| v@@35) j@@10) e@@10)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63350 v@@35 e@@10))
)))
(assert (forall ((v@@36 T@Vec_63389) (e@@11 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@53 (IndexOfVec_63389 v@@36 e@@11)))
(ite  (not (exists ((i@@54 Int) ) (!  (and (InRangeVec_56207 v@@36 i@@54) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@36) i@@54) e@@11))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@53 (- 0 1))  (and (and (InRangeVec_56207 v@@36 i@@53) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@36) i@@53) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@53)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_63389| v@@36) j@@11) e@@11)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63389 v@@36 e@@11))
)))
(assert (forall ((v@@37 T@Vec_63428) (e@@12 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@55 (IndexOfVec_63428 v@@37 e@@12)))
(ite  (not (exists ((i@@56 Int) ) (!  (and (InRangeVec_56408 v@@37 i@@56) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@37) i@@56) e@@12))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@55 (- 0 1))  (and (and (InRangeVec_56408 v@@37 i@@55) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@37) i@@55) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@55)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_63428| v@@37) j@@12) e@@12)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63428 v@@37 e@@12))
)))
(assert (forall ((v@@38 T@Vec_63554) (e@@13 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@57 (IndexOfVec_63554 v@@38 e@@13)))
(ite  (not (exists ((i@@58 Int) ) (!  (and (InRangeVec_56609 v@@38 i@@58) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@38) i@@58) e@@13))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@57 (- 0 1))  (and (and (InRangeVec_56609 v@@38 i@@57) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@38) i@@57) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@57)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_63554| v@@38) j@@13) e@@13)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63554 v@@38 e@@13))
)))
(assert (forall ((v@@39 T@Vec_63611) (e@@14 T@Vec_20558) ) (! (let ((i@@59 (IndexOfVec_63611 v@@39 e@@14)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_84020 v@@39 i@@60) (= (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@39) i@@60) e@@14))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_84020 v@@39 i@@59) (= (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@39) i@@59) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@59)) (not (= (|Select__T@[Int]Vec_20558_| (|v#Vec_63611| v@@39) j@@14) e@@14)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63611 v@@39 e@@14))
)))
(assert (forall ((v@@40 T@Vec_63776) (e@@15 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@61 (IndexOfVec_63776 v@@40 e@@15)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_57011 v@@40 i@@62) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@40) i@@62) e@@15))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_57011 v@@40 i@@61) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@40) i@@61) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@61)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_63776| v@@40) j@@15) e@@15)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63776 v@@40 e@@15))
)))
(assert (forall ((v@@41 T@Vec_63815) (e@@16 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@63 (IndexOfVec_63815 v@@41 e@@16)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_56810 v@@41 i@@64) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@41) i@@64) e@@16))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_56810 v@@41 i@@63) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@41) i@@63) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@63)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_63815| v@@41) j@@16) e@@16)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63815 v@@41 e@@16))
)))
(assert (forall ((v@@42 T@Vec_65083) (e@@17 |T@#0|) ) (! (let ((i@@65 (IndexOfVec_65083 v@@42 e@@17)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_56006 v@@42 i@@66) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@42) i@@66) e@@17))
 :qid |XUSbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_56006 v@@42 i@@65) (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@42) i@@65) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@65)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65083| v@@42) j@@17) e@@17)))
 :qid |XUSbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_65083 v@@42 e@@17))
)))
(assert (forall ((|l#0| Bool) (i@@67 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67) |l#0|)
 :qid |XUSbaselinebpl.275:54|
 :skolemid |283|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_63264|) (|l#1| |T@[$1_Event_EventHandle]Multiset_63264|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_63264_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_63264| (|Select__T@[$1_Event_EventHandle]Multiset_63264_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_63264| (|Select__T@[$1_Event_EventHandle]Multiset_63264_| |l#1| handle@@0))))
(Multiset_63264 (|lambda#30| (|v#Multiset_63264| (|Select__T@[$1_Event_EventHandle]Multiset_63264_| |l#0@@0| handle@@0)) (|v#Multiset_63264| (|Select__T@[$1_Event_EventHandle]Multiset_63264_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XUSbaselinebpl.2588:13|
 :skolemid |284|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_63264_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@68 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68) (ite  (and (>= i@@68 |l#0@@1|) (< i@@68 |l#1@@0|)) (ite (< i@@68 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@68) (|Select__T@[Int]#0_| |l#4| (- i@@68 |l#5|))) |l#6|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@69 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69) (ite  (and (<= |l#0@@2| i@@69) (< i@@69 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@69) |l#4@@0|)) |l#5@@0|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@18 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18) (ite  (and (>= j@@18 |l#0@@3|) (< j@@18 |l#1@@2|)) (ite (< j@@18 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@18) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@18 |l#5@@1|))) |l#6@@0|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@70 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70) (ite  (and (>= i@@70 |l#0@@4|) (< i@@70 |l#1@@3|)) (ite (< i@@70 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@70) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@70 |l#5@@2|))) |l#6@@1|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@71 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71) (ite  (and (<= |l#0@@5| i@@71) (< i@@71 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@71) |l#4@@3|)) |l#5@@3|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |289|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19) (ite  (and (>= j@@19 |l#0@@6|) (< j@@19 |l#1@@5|)) (ite (< j@@19 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@19) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@19 |l#5@@4|))) |l#6@@2|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |290|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72) (ite  (and (>= i@@72 |l#0@@7|) (< i@@72 |l#1@@6|)) (ite (< i@@72 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@72) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@72 |l#5@@5|))) |l#6@@3|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |291|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@73 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73) (ite  (and (<= |l#0@@8| i@@73) (< i@@73 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@73) |l#4@@6|)) |l#5@@6|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20) (ite  (and (>= j@@20 |l#0@@9|) (< j@@20 |l#1@@8|)) (ite (< j@@20 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@20) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@20 |l#5@@7|))) |l#6@@4|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@74 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74) (ite  (and (>= i@@74 |l#0@@10|) (< i@@74 |l#1@@9|)) (ite (< i@@74 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@74) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@74 |l#5@@8|))) |l#6@@5|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@75 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75) (ite  (and (<= |l#0@@11| i@@75) (< i@@75 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@75) |l#4@@9|)) |l#5@@9|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21) (ite  (and (>= j@@21 |l#0@@12|) (< j@@21 |l#1@@11|)) (ite (< j@@21 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@21) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@21 |l#5@@10|))) |l#6@@6|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@76 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76) (ite  (and (>= i@@76 |l#0@@13|) (< i@@76 |l#1@@12|)) (ite (< i@@76 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@11| i@@76) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@11| (- i@@76 |l#5@@11|))) |l#6@@7|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@77 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77) (ite  (and (<= |l#0@@14| i@@77) (< i@@77 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@12| (- (- |l#3@@12| i@@77) |l#4@@12|)) |l#5@@12|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@22 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22) (ite  (and (>= j@@22 |l#0@@15|) (< j@@22 |l#1@@14|)) (ite (< j@@22 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@13| j@@22) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@13| (+ j@@22 |l#5@@13|))) |l#6@@8|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@78 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78) (ite  (and (>= i@@78 |l#0@@16|) (< i@@78 |l#1@@15|)) (ite (< i@@78 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@14| i@@78) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@14| (- i@@78 |l#5@@14|))) |l#6@@9|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |300|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@79 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79) (ite  (and (<= |l#0@@17| i@@79) (< i@@79 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@15| (- (- |l#3@@15| i@@79) |l#4@@15|)) |l#5@@15|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23) (ite  (and (>= j@@23 |l#0@@18|) (< j@@23 |l#1@@17|)) (ite (< j@@23 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@16| j@@23) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@16| (+ j@@23 |l#5@@16|))) |l#6@@10|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |302|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@17| Int) (|l#6@@11| T@$1_ValidatorConfig_Config) (i@@80 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80) (ite  (and (>= i@@80 |l#0@@19|) (< i@@80 |l#1@@18|)) (ite (< i@@80 |l#2@@17|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@17| i@@80) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@17| (- i@@80 |l#5@@17|))) |l#6@@11|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@$1_ValidatorConfig_Config) (i@@81 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81) (ite  (and (<= |l#0@@20| i@@81) (< i@@81 |l#1@@19|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@18| (- (- |l#3@@18| i@@81) |l#4@@18|)) |l#5@@18|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@19| Int) (|l#6@@12| T@$1_ValidatorConfig_Config) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24) (ite  (and (>= j@@24 |l#0@@21|) (< j@@24 |l#1@@20|)) (ite (< j@@24 |l#2@@19|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@19| j@@24) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@19| (+ j@@24 |l#5@@19|))) |l#6@@12|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Vec_20558|) (|l#4@@20| |T@[Int]Vec_20558|) (|l#5@@20| Int) (|l#6@@13| T@Vec_20558) (i@@82 Int) ) (! (= (|Select__T@[Int]Vec_20558_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82) (ite  (and (>= i@@82 |l#0@@22|) (< i@@82 |l#1@@21|)) (ite (< i@@82 |l#2@@20|) (|Select__T@[Int]Vec_20558_| |l#3@@20| i@@82) (|Select__T@[Int]Vec_20558_| |l#4@@20| (- i@@82 |l#5@@20|))) |l#6@@13|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]Vec_20558_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Vec_20558|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@Vec_20558) (i@@83 Int) ) (! (= (|Select__T@[Int]Vec_20558_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83) (ite  (and (<= |l#0@@23| i@@83) (< i@@83 |l#1@@22|)) (|Select__T@[Int]Vec_20558_| |l#2@@21| (- (- |l#3@@21| i@@83) |l#4@@21|)) |l#5@@21|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |307|
 :pattern ( (|Select__T@[Int]Vec_20558_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Vec_20558|) (|l#4@@22| |T@[Int]Vec_20558|) (|l#5@@22| Int) (|l#6@@14| T@Vec_20558) (j@@25 Int) ) (! (= (|Select__T@[Int]Vec_20558_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25) (ite  (and (>= j@@25 |l#0@@24|) (< j@@25 |l#1@@23|)) (ite (< j@@25 |l#2@@22|) (|Select__T@[Int]Vec_20558_| |l#3@@22| j@@25) (|Select__T@[Int]Vec_20558_| |l#4@@22| (+ j@@25 |l#5@@22|))) |l#6@@14|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |308|
 :pattern ( (|Select__T@[Int]Vec_20558_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]Int|) (|l#4@@23| |T@[Int]Int|) (|l#5@@23| Int) (|l#6@@15| Int) (i@@84 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84) (ite  (and (>= i@@84 |l#0@@25|) (< i@@84 |l#1@@24|)) (ite (< i@@84 |l#2@@23|) (|Select__T@[Int]Int_| |l#3@@23| i@@84) (|Select__T@[Int]Int_| |l#4@@23| (- i@@84 |l#5@@23|))) |l#6@@15|))
 :qid |XUSbaselinebpl.73:19|
 :skolemid |309|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]Int|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| Int) (i@@85 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85) (ite  (and (<= |l#0@@26| i@@85) (< i@@85 |l#1@@25|)) (|Select__T@[Int]Int_| |l#2@@24| (- (- |l#3@@24| i@@85) |l#4@@24|)) |l#5@@24|))
 :qid |XUSbaselinebpl.82:30|
 :skolemid |310|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]Int|) (|l#4@@25| |T@[Int]Int|) (|l#5@@25| Int) (|l#6@@16| Int) (j@@26 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26) (ite  (and (>= j@@26 |l#0@@27|) (< j@@26 |l#1@@26|)) (ite (< j@@26 |l#2@@25|) (|Select__T@[Int]Int_| |l#3@@25| j@@26) (|Select__T@[Int]Int_| |l#4@@25| (+ j@@26 |l#5@@25|))) |l#6@@16|))
 :qid |XUSbaselinebpl.63:20|
 :skolemid |311|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26))
)))
(assert (forall ((|l#0@@28| |T@[$EventRep]Int|) (|l#1@@27| |T@[$EventRep]Int|) (v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43) (- (|Select__T@[$EventRep]Int_| |l#0@@28| v@@43) (|Select__T@[$EventRep]Int_| |l#1@@27| v@@43)))
 :qid |XUSbaselinebpl.154:29|
 :skolemid |312|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 220322) true)
))
(check-sat)
(pop 1)
; Valid
