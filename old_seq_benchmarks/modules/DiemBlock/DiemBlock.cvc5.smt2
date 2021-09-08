(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_121037 0)) ((($Memory_121037 (|domain#$Memory_121037| |T@[Int]Bool|) (|contents#$Memory_121037| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_91228 0)) (((Vec_91228 (|v#Vec_91228| |T@[Int]#0|) (|l#Vec_91228| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_199883 0)) ((($Memory_199883 (|domain#$Memory_199883| |T@[Int]Bool|) (|contents#$Memory_199883| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_196705 0)) ((($Memory_196705 (|domain#$Memory_196705| |T@[Int]Bool|) (|contents#$Memory_196705| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_194302 0)) ((($Memory_194302 (|domain#$Memory_194302| |T@[Int]Bool|) (|contents#$Memory_194302| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_194614 0)) ((($Memory_194614 (|domain#$Memory_194614| |T@[Int]Bool|) (|contents#$Memory_194614| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_194269 0)) ((($Memory_194269 (|domain#$Memory_194269| |T@[Int]Bool|) (|contents#$Memory_194269| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_161495 0)) ((($Memory_161495 (|domain#$Memory_161495| |T@[Int]Bool|) (|contents#$Memory_161495| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_158785 0)) ((($Memory_158785 (|domain#$Memory_158785| |T@[Int]Bool|) (|contents#$Memory_158785| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_157431 0)) ((($Memory_157431 (|domain#$Memory_157431| |T@[Int]Bool|) (|contents#$Memory_157431| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_157367 0)) ((($Memory_157367 (|domain#$Memory_157367| |T@[Int]Bool|) (|contents#$Memory_157367| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_157051 0)) ((($Memory_157051 (|domain#$Memory_157051| |T@[Int]Bool|) (|contents#$Memory_157051| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_153783 0)) ((($Memory_153783 (|domain#$Memory_153783| |T@[Int]Bool|) (|contents#$Memory_153783| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_153496 0)) ((($Memory_153496 (|domain#$Memory_153496| |T@[Int]Bool|) (|contents#$Memory_153496| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_153209 0)) ((($Memory_153209 (|domain#$Memory_153209| |T@[Int]Bool|) (|contents#$Memory_153209| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_152990 0)) ((($Memory_152990 (|domain#$Memory_152990| |T@[Int]Bool|) (|contents#$Memory_152990| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_196301 0)) ((($Memory_196301 (|domain#$Memory_196301| |T@[Int]Bool|) (|contents#$Memory_196301| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_142949 0)) ((($Memory_142949 (|domain#$Memory_142949| |T@[Int]Bool|) (|contents#$Memory_142949| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_142862 0)) ((($Memory_142862 (|domain#$Memory_142862| |T@[Int]Bool|) (|contents#$Memory_142862| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_142775 0)) ((($Memory_142775 (|domain#$Memory_142775| |T@[Int]Bool|) (|contents#$Memory_142775| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_137364 0)) ((($Memory_137364 (|domain#$Memory_137364| |T@[Int]Bool|) (|contents#$Memory_137364| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_137277 0)) ((($Memory_137277 (|domain#$Memory_137277| |T@[Int]Bool|) (|contents#$Memory_137277| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_143278 0)) ((($Memory_143278 (|domain#$Memory_143278| |T@[Int]Bool|) (|contents#$Memory_143278| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_196527 0)) ((($Memory_196527 (|domain#$Memory_196527| |T@[Int]Bool|) (|contents#$Memory_196527| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_143197 0)) ((($Memory_143197 (|domain#$Memory_143197| |T@[Int]Bool|) (|contents#$Memory_143197| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_155713 0)) ((($Memory_155713 (|domain#$Memory_155713| |T@[Int]Bool|) (|contents#$Memory_155713| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_196436 0)) ((($Memory_196436 (|domain#$Memory_196436| |T@[Int]Bool|) (|contents#$Memory_196436| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_143116 0)) ((($Memory_143116 (|domain#$Memory_143116| |T@[Int]Bool|) (|contents#$Memory_143116| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_157611 0)) ((($Memory_157611 (|domain#$Memory_157611| |T@[Int]Bool|) (|contents#$Memory_157611| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_132481 0)) ((($Memory_132481 (|domain#$Memory_132481| |T@[Int]Bool|) (|contents#$Memory_132481| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_132394 0)) ((($Memory_132394 (|domain#$Memory_132394| |T@[Int]Bool|) (|contents#$Memory_132394| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_132307 0)) ((($Memory_132307 (|domain#$Memory_132307| |T@[Int]Bool|) (|contents#$Memory_132307| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_132220 0)) ((($Memory_132220 (|domain#$Memory_132220| |T@[Int]Bool|) (|contents#$Memory_132220| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_132133 0)) ((($Memory_132133 (|domain#$Memory_132133| |T@[Int]Bool|) (|contents#$Memory_132133| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_132736 0)) ((($Memory_132736 (|domain#$Memory_132736| |T@[Int]Bool|) (|contents#$Memory_132736| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_130953 0)) ((($Memory_130953 (|domain#$Memory_130953| |T@[Int]Bool|) (|contents#$Memory_130953| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_131019 0)) ((($Memory_131019 (|domain#$Memory_131019| |T@[Int]Bool|) (|contents#$Memory_131019| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_130872 0)) ((($Memory_130872 (|domain#$Memory_130872| |T@[Int]Bool|) (|contents#$Memory_130872| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_130515 0)) ((($Memory_130515 (|domain#$Memory_130515| |T@[Int]Bool|) (|contents#$Memory_130515| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_89425 0)) (((Vec_89425 (|v#Vec_89425| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_89425| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_89425) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_89386 0)) (((Vec_89386 (|v#Vec_89386| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_89386| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_89386) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_22116 0)) (((Vec_22116 (|v#Vec_22116| |T@[Int]Int|) (|l#Vec_22116| Int) ) ) ))
(declare-sort |T@[Int]Vec_22116| 0)
(declare-datatypes ((T@Vec_89608 0)) (((Vec_89608 (|v#Vec_89608| |T@[Int]Vec_22116|) (|l#Vec_89608| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_89608) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_130710 0)) ((($Memory_130710 (|domain#$Memory_130710| |T@[Int]Bool|) (|contents#$Memory_130710| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_89608) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_130629 0)) ((($Memory_130629 (|domain#$Memory_130629| |T@[Int]Bool|) (|contents#$Memory_130629| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22116) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22116) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_130791 0)) ((($Memory_130791 (|domain#$Memory_130791| |T@[Int]Bool|) (|contents#$Memory_130791| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_22116) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_195284 0)) ((($Memory_195284 (|domain#$Memory_195284| |T@[Int]Bool|) (|contents#$Memory_195284| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| T@Vec_22116) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_162297 0)) ((($Memory_162297 (|domain#$Memory_162297| |T@[Int]Bool|) (|contents#$Memory_162297| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| T@Vec_22116) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_162074 0)) ((($Memory_162074 (|domain#$Memory_162074| |T@[Int]Bool|) (|contents#$Memory_162074| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| T@Vec_22116) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_161851 0)) ((($Memory_161851 (|domain#$Memory_161851| |T@[Int]Bool|) (|contents#$Memory_161851| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_22116) (|$base_url#$1_DualAttestation_Credential| T@Vec_22116) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_22116) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_158721 0)) ((($Memory_158721 (|domain#$Memory_158721| |T@[Int]Bool|) (|contents#$Memory_158721| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_22116) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_22116) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_89893 0)) (((Vec_89893 (|v#Vec_89893| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_89893| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_89893) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_143762 0)) ((($Memory_143762 (|domain#$Memory_143762| |T@[Int]Bool|) (|contents#$Memory_143762| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_22116) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_89854 0)) (((Vec_89854 (|v#Vec_89854| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_89854| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_89854) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_143645 0)) ((($Memory_143645 (|domain#$Memory_143645| |T@[Int]Bool|) (|contents#$Memory_143645| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_22116) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_89815 0)) (((Vec_89815 (|v#Vec_89815| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_89815| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_89815) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_143528 0)) ((($Memory_143528 (|domain#$Memory_143528| |T@[Int]Bool|) (|contents#$Memory_143528| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_22116) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_136763 0)) ((($Memory_136763 (|domain#$Memory_136763| |T@[Int]Bool|) (|contents#$Memory_136763| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_22116) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_136577 0)) ((($Memory_136577 (|domain#$Memory_136577| |T@[Int]Bool|) (|contents#$Memory_136577| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_22116) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_136513 0)) ((($Memory_136513 (|domain#$Memory_136513| |T@[Int]Bool|) (|contents#$Memory_136513| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_22116) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_22116) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_22116) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_89347 0)) (((Vec_89347 (|v#Vec_89347| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_89347| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_89347) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_89551 0)) (((Vec_89551 (|v#Vec_89551| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_89551| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_89551) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_130548 0)) ((($Memory_130548 (|domain#$Memory_130548| |T@[Int]Bool|) (|contents#$Memory_130548| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_22116) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_22116) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_129929 0)) ((($Memory_129929 (|domain#$Memory_129929| |T@[Int]Bool|) (|contents#$Memory_129929| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_22116) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_129286 0)) ((($Memory_129286 (|domain#$Memory_129286| |T@[Int]Bool|) (|contents#$Memory_129286| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_128959 0)) ((($Memory_128959 (|domain#$Memory_128959| |T@[Int]Bool|) (|contents#$Memory_128959| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_128465 0)) ((($Memory_128465 (|domain#$Memory_128465| |T@[Int]Bool|) (|contents#$Memory_128465| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_22116) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_22116) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_22116) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_22116) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_22116) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_22116) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_22116) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_22116) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_22116) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_22116) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22116) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22116) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_22116) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_89261 0)) (((Multiset_89261 (|v#Multiset_89261| |T@[$EventRep]Int|) (|l#Multiset_89261| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_89261| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_89261|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_197558 0)) ((($Mutation_197558 (|l#$Mutation_197558| T@$Location) (|p#$Mutation_197558| T@Vec_22116) (|v#$Mutation_197558| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_197513 0)) ((($Mutation_197513 (|l#$Mutation_197513| T@$Location) (|p#$Mutation_197513| T@Vec_22116) (|v#$Mutation_197513| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_185301 0)) ((($Mutation_185301 (|l#$Mutation_185301| T@$Location) (|p#$Mutation_185301| T@Vec_22116) (|v#$Mutation_185301| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_37997 0)) ((($Mutation_37997 (|l#$Mutation_37997| T@$Location) (|p#$Mutation_37997| T@Vec_22116) (|v#$Mutation_37997| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_151700 0)) ((($Mutation_151700 (|l#$Mutation_151700| T@$Location) (|p#$Mutation_151700| T@Vec_22116) (|v#$Mutation_151700| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_135215 0)) ((($Mutation_135215 (|l#$Mutation_135215| T@$Location) (|p#$Mutation_135215| T@Vec_22116) (|v#$Mutation_135215| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_121668 0)) ((($Mutation_121668 (|l#$Mutation_121668| T@$Location) (|p#$Mutation_121668| T@Vec_22116) (|v#$Mutation_121668| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13929 0)) ((($Mutation_13929 (|l#$Mutation_13929| T@$Location) (|p#$Mutation_13929| T@Vec_22116) (|v#$Mutation_13929| Int) ) ) ))
(declare-datatypes ((T@$Mutation_114526 0)) ((($Mutation_114526 (|l#$Mutation_114526| T@$Location) (|p#$Mutation_114526| T@Vec_22116) (|v#$Mutation_114526| T@Vec_22116) ) ) ))
(declare-datatypes ((T@$Mutation_113438 0)) ((($Mutation_113438 (|l#$Mutation_113438| T@$Location) (|p#$Mutation_113438| T@Vec_22116) (|v#$Mutation_113438| T@Vec_89608) ) ) ))
(declare-datatypes ((T@$Mutation_111729 0)) ((($Mutation_111729 (|l#$Mutation_111729| T@$Location) (|p#$Mutation_111729| T@Vec_22116) (|v#$Mutation_111729| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_110742 0)) ((($Mutation_110742 (|l#$Mutation_110742| T@$Location) (|p#$Mutation_110742| T@Vec_22116) (|v#$Mutation_110742| T@Vec_89347) ) ) ))
(declare-datatypes ((T@$Mutation_109087 0)) ((($Mutation_109087 (|l#$Mutation_109087| T@$Location) (|p#$Mutation_109087| T@Vec_22116) (|v#$Mutation_109087| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_108100 0)) ((($Mutation_108100 (|l#$Mutation_108100| T@$Location) (|p#$Mutation_108100| T@Vec_22116) (|v#$Mutation_108100| T@Vec_89815) ) ) ))
(declare-datatypes ((T@$Mutation_106391 0)) ((($Mutation_106391 (|l#$Mutation_106391| T@$Location) (|p#$Mutation_106391| T@Vec_22116) (|v#$Mutation_106391| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_105404 0)) ((($Mutation_105404 (|l#$Mutation_105404| T@$Location) (|p#$Mutation_105404| T@Vec_22116) (|v#$Mutation_105404| T@Vec_89854) ) ) ))
(declare-datatypes ((T@$Mutation_103695 0)) ((($Mutation_103695 (|l#$Mutation_103695| T@$Location) (|p#$Mutation_103695| T@Vec_22116) (|v#$Mutation_103695| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_102708 0)) ((($Mutation_102708 (|l#$Mutation_102708| T@$Location) (|p#$Mutation_102708| T@Vec_22116) (|v#$Mutation_102708| T@Vec_89893) ) ) ))
(declare-datatypes ((T@$Mutation_100999 0)) ((($Mutation_100999 (|l#$Mutation_100999| T@$Location) (|p#$Mutation_100999| T@Vec_22116) (|v#$Mutation_100999| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_100012 0)) ((($Mutation_100012 (|l#$Mutation_100012| T@$Location) (|p#$Mutation_100012| T@Vec_22116) (|v#$Mutation_100012| T@Vec_89551) ) ) ))
(declare-datatypes ((T@$Mutation_98212 0)) ((($Mutation_98212 (|l#$Mutation_98212| T@$Location) (|p#$Mutation_98212| T@Vec_22116) (|v#$Mutation_98212| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_97225 0)) ((($Mutation_97225 (|l#$Mutation_97225| T@$Location) (|p#$Mutation_97225| T@Vec_22116) (|v#$Mutation_97225| T@Vec_89425) ) ) ))
(declare-datatypes ((T@$Mutation_95560 0)) ((($Mutation_95560 (|l#$Mutation_95560| T@$Location) (|p#$Mutation_95560| T@Vec_22116) (|v#$Mutation_95560| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_94573 0)) ((($Mutation_94573 (|l#$Mutation_94573| T@$Location) (|p#$Mutation_94573| T@Vec_22116) (|v#$Mutation_94573| T@Vec_89386) ) ) ))
(declare-datatypes ((T@$Mutation_92860 0)) ((($Mutation_92860 (|l#$Mutation_92860| T@$Location) (|p#$Mutation_92860| T@Vec_22116) (|v#$Mutation_92860| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_91873 0)) ((($Mutation_91873 (|l#$Mutation_91873| T@$Location) (|p#$Mutation_91873| T@Vec_22116) (|v#$Mutation_91873| T@Vec_91228) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_91228 T@Vec_91228) Bool)
(declare-fun InRangeVec_78986 (T@Vec_91228 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_91228) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_91228 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_89386 T@Vec_89386) Bool)
(declare-fun InRangeVec_79187 (T@Vec_89386 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_89386) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_89386 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_89425 T@Vec_89425) Bool)
(declare-fun InRangeVec_79388 (T@Vec_89425 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_89425) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_89425 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_89551 T@Vec_89551) Bool)
(declare-fun InRangeVec_79589 (T@Vec_89551 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_22116 T@Vec_22116) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_89551) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_89551 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_89893 T@Vec_89893) Bool)
(declare-fun InRangeVec_79790 (T@Vec_89893 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_89893) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_89893 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_89854 T@Vec_89854) Bool)
(declare-fun InRangeVec_79991 (T@Vec_89854 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_89854) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_89854 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_89815 T@Vec_89815) Bool)
(declare-fun InRangeVec_80192 (T@Vec_89815 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_89815) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_89815 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_89347 T@Vec_89347) Bool)
(declare-fun InRangeVec_80393 (T@Vec_89347 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_89347) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_89347 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_89608 T@Vec_89608) Bool)
(declare-fun InRangeVec_112861 (T@Vec_89608 Int) Bool)
(declare-fun |Select__T@[Int]Vec_22116_| (|T@[Int]Vec_22116| Int) T@Vec_22116)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_89608) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_22116) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_89608 T@Vec_22116) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_22116 T@Vec_22116) Bool)
(declare-fun InRangeVec_13305 (T@Vec_22116 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_22116) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_22116 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_22116 T@Vec_22116) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_22116) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_22116 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_22116 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_22116) T@Vec_22116)
(declare-fun $1_Hash_sha3 (T@Vec_22116) T@Vec_22116)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_22116) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_22116 T@Vec_22116 T@Vec_22116) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_89261_| (|T@[$1_Event_EventHandle]Multiset_89261| T@$1_Event_EventHandle) T@Multiset_89261)
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
(declare-fun |$IsValid'$1_Diem_Diem'#0''| (|T@$1_Diem_Diem'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| (|T@$1_Diem_BurnCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnEvent'| (T@$1_Diem_BurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CancelBurnEvent'| (T@$1_Diem_CancelBurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| (|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| (|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'#0''| (|T@$1_Diem_CurrencyInfo'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| (|T@$1_Diem_MintCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|T@$1_Diem_MintCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'#0''| (|T@$1_Diem_MintCapability'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintEvent'| (T@$1_Diem_MintEvent) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|T@$1_Diem_Preburn'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|T@$1_Diem_Preburn'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'#0''| (|T@$1_Diem_Preburn'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnEvent'| (T@$1_Diem_PreburnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| (|T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| (|T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'#0''| (|T@$1_Diem_PreburnQueue'#0'|) Bool)
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
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| (|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| (|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'#0''| (|T@$1_DesignatedDealer_TierInfo'#0'|) Bool)
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
(declare-fun IndexOfVec_22116 (T@Vec_22116 Int) Int)
(declare-fun IndexOfVec_89347 (T@Vec_89347 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_89386 (T@Vec_89386 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_89425 (T@Vec_89425 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_89551 (T@Vec_89551 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_89608 (T@Vec_89608 T@Vec_22116) Int)
(declare-fun IndexOfVec_89815 (T@Vec_89815 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_89854 (T@Vec_89854 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_89893 (T@Vec_89893 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_91228 (T@Vec_91228 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_89261| |T@[$1_Event_EventHandle]Multiset_89261|) |T@[$1_Event_EventHandle]Multiset_89261|)
(declare-fun |lambda#33| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#25| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]Vec_22116| |T@[Int]Vec_22116| Int T@Vec_22116) |T@[Int]Vec_22116|)
(declare-fun |lambda#28| (Int Int |T@[Int]Vec_22116| Int Int T@Vec_22116) |T@[Int]Vec_22116|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]Vec_22116| |T@[Int]Vec_22116| Int T@Vec_22116) |T@[Int]Vec_22116|)
(declare-fun |lambda#30| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#31| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#32| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemBlockcvc5bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemBlockcvc5bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemBlockcvc5bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemBlockcvc5bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemBlockcvc5bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemBlockcvc5bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemBlockcvc5bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemBlockcvc5bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_91228) (v2 T@Vec_91228) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_91228| v1) (|l#Vec_91228| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_78986 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_91228| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_91228| v2) i@@0)))
 :qid |DiemBlockcvc5bpl.615:13|
 :skolemid |17|
))))
 :qid |DiemBlockcvc5bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_91228) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_91228| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_78986 v@@4 i@@1) true)
 :qid |DiemBlockcvc5bpl.621:13|
 :skolemid |19|
))))
 :qid |DiemBlockcvc5bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_91228) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_78986 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_91228| v@@5) i@@3) e))
 :qid |DiemBlockcvc5bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_78986 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_91228| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_91228| v@@5) j) e)))
 :qid |DiemBlockcvc5bpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemBlockcvc5bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_89386) (v2@@0 T@Vec_89386) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_89386| v1@@0) (|l#Vec_89386| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_79187 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_89386| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_89386| v2@@0) i@@4)))
 :qid |DiemBlockcvc5bpl.796:13|
 :skolemid |24|
))))
 :qid |DiemBlockcvc5bpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_89386) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_89386| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_79187 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_89386| v@@6) i@@5)))
 :qid |DiemBlockcvc5bpl.802:13|
 :skolemid |26|
))))
 :qid |DiemBlockcvc5bpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_89386) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_79187 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_89386| v@@7) i@@7) e@@0))
 :qid |DiemBlockcvc5bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_79187 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_89386| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_89386| v@@7) j@@0) e@@0)))
 :qid |DiemBlockcvc5bpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemBlockcvc5bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_89425) (v2@@1 T@Vec_89425) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_89425| v1@@1) (|l#Vec_89425| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_79388 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_89425| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_89425| v2@@1) i@@8)))
 :qid |DiemBlockcvc5bpl.977:13|
 :skolemid |31|
))))
 :qid |DiemBlockcvc5bpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_89425) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_89425| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_79388 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_89425| v@@8) i@@9)))
 :qid |DiemBlockcvc5bpl.983:13|
 :skolemid |33|
))))
 :qid |DiemBlockcvc5bpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_89425) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_79388 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_89425| v@@9) i@@11) e@@1))
 :qid |DiemBlockcvc5bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_79388 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_89425| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_89425| v@@9) j@@1) e@@1)))
 :qid |DiemBlockcvc5bpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemBlockcvc5bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_89551) (v2@@2 T@Vec_89551) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_89551| v1@@2) (|l#Vec_89551| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_79589 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v2@@2) i@@12)))))
 :qid |DiemBlockcvc5bpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemBlockcvc5bpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_89551) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_89551| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_79589 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@10) i@@13)))
 :qid |DiemBlockcvc5bpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemBlockcvc5bpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_89551) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_79589 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemBlockcvc5bpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_79589 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemBlockcvc5bpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemBlockcvc5bpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_89893) (v2@@3 T@Vec_89893) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_89893| v1@@3) (|l#Vec_89893| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_79790 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v2@@3) i@@16)))))
 :qid |DiemBlockcvc5bpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemBlockcvc5bpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_89893) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_89893| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_79790 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v@@12) i@@17)))
 :qid |DiemBlockcvc5bpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemBlockcvc5bpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_89893) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_79790 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |DiemBlockcvc5bpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_79790 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |DiemBlockcvc5bpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemBlockcvc5bpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_89854) (v2@@4 T@Vec_89854) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_89854| v1@@4) (|l#Vec_89854| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_79991 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v2@@4) i@@20)))))
 :qid |DiemBlockcvc5bpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemBlockcvc5bpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_89854) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_89854| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_79991 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v@@14) i@@21)))
 :qid |DiemBlockcvc5bpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemBlockcvc5bpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_89854) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_79991 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |DiemBlockcvc5bpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_79991 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |DiemBlockcvc5bpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemBlockcvc5bpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_89815) (v2@@5 T@Vec_89815) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_89815| v1@@5) (|l#Vec_89815| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_80192 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v2@@5) i@@24)))))
 :qid |DiemBlockcvc5bpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemBlockcvc5bpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_89815) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_89815| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_80192 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v@@16) i@@25)))
 :qid |DiemBlockcvc5bpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemBlockcvc5bpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_89815) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_80192 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |DiemBlockcvc5bpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_80192 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |DiemBlockcvc5bpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemBlockcvc5bpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_89347) (v2@@6 T@Vec_89347) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@6 v2@@6)  (and (= (|l#Vec_89347| v1@@6) (|l#Vec_89347| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_80393 v1@@6 i@@28) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v1@@6) i@@28)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v2@@6) i@@28))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v1@@6) i@@28)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v2@@6) i@@28)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v1@@6) i@@28)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v2@@6) i@@28)))))
 :qid |DiemBlockcvc5bpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemBlockcvc5bpl.1880:51|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_89347) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_89347| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_80393 v@@18 i@@29) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v@@18) i@@29)))
 :qid |DiemBlockcvc5bpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemBlockcvc5bpl.1886:51|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_89347) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@30 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_80393 v@@19 i@@31)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v@@19) i@@31)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@6)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v@@19) i@@31)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@6))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v@@19) i@@31)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@6))))
 :qid |DiemBlockcvc5bpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_80393 v@@19 i@@30)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v@@19) i@@30)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@6)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v@@19) i@@30)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@6))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v@@19) i@@30)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@6)))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v@@19) j@@6)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@6)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v@@19) j@@6)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@6))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v@@19) j@@6)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@6)))))
 :qid |DiemBlockcvc5bpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemBlockcvc5bpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_89608) (v2@@7 T@Vec_89608) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@7 v2@@7)  (and (= (|l#Vec_89608| v1@@7) (|l#Vec_89608| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_112861 v1@@7 i@@32) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22116_| (|v#Vec_89608| v1@@7) i@@32) (|Select__T@[Int]Vec_22116_| (|v#Vec_89608| v2@@7) i@@32)))
 :qid |DiemBlockcvc5bpl.2063:13|
 :skolemid |73|
))))
 :qid |DiemBlockcvc5bpl.2061:33|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_89608) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_89608| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_112861 v@@20 i@@33) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_22116_| (|v#Vec_89608| v@@20) i@@33)))
 :qid |DiemBlockcvc5bpl.2069:13|
 :skolemid |75|
))))
 :qid |DiemBlockcvc5bpl.2067:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_89608) (e@@7 T@Vec_22116) ) (! (let ((i@@34 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_112861 v@@21 i@@35)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22116_| (|v#Vec_89608| v@@21) i@@35) e@@7))
 :qid |DiemBlockcvc5bpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_112861 v@@21 i@@34)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22116_| (|v#Vec_89608| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22116_| (|v#Vec_89608| v@@21) j@@7) e@@7)))
 :qid |DiemBlockcvc5bpl.2082:17|
 :skolemid |78|
)))))
 :qid |DiemBlockcvc5bpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_22116) (v2@@8 T@Vec_22116) ) (! (= (|$IsEqual'vec'address''| v1@@8 v2@@8)  (and (= (|l#Vec_22116| v1@@8) (|l#Vec_22116| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_13305 v1@@8 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_22116| v1@@8) i@@36) (|Select__T@[Int]Int_| (|v#Vec_22116| v2@@8) i@@36)))
 :qid |DiemBlockcvc5bpl.2244:13|
 :skolemid |80|
))))
 :qid |DiemBlockcvc5bpl.2242:33|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'address''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_22116) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_22116| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_13305 v@@22 i@@37) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_22116| v@@22) i@@37)))
 :qid |DiemBlockcvc5bpl.2250:13|
 :skolemid |82|
))))
 :qid |DiemBlockcvc5bpl.2248:33|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_22116) (e@@8 Int) ) (! (let ((i@@38 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_13305 v@@23 i@@39)) (= (|Select__T@[Int]Int_| (|v#Vec_22116| v@@23) i@@39) e@@8))
 :qid |DiemBlockcvc5bpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_13305 v@@23 i@@38)) (= (|Select__T@[Int]Int_| (|v#Vec_22116| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22116| v@@23) j@@8) e@@8)))
 :qid |DiemBlockcvc5bpl.2263:17|
 :skolemid |85|
)))))
 :qid |DiemBlockcvc5bpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_22116) (v2@@9 T@Vec_22116) ) (! (= (|$IsEqual'vec'u64''| v1@@9 v2@@9)  (and (= (|l#Vec_22116| v1@@9) (|l#Vec_22116| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_13305 v1@@9 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_22116| v1@@9) i@@40) (|Select__T@[Int]Int_| (|v#Vec_22116| v2@@9) i@@40)))
 :qid |DiemBlockcvc5bpl.2425:13|
 :skolemid |87|
))))
 :qid |DiemBlockcvc5bpl.2423:29|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'u64''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_22116) ) (! (= (|$IsValid'vec'u64''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_22116| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_13305 v@@24 i@@41) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_22116| v@@24) i@@41)))
 :qid |DiemBlockcvc5bpl.2431:13|
 :skolemid |89|
))))
 :qid |DiemBlockcvc5bpl.2429:29|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'u64''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_22116) (e@@9 Int) ) (! (let ((i@@42 (|$IndexOfVec'u64'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_13305 v@@25 i@@43)) (= (|Select__T@[Int]Int_| (|v#Vec_22116| v@@25) i@@43) e@@9))
 :qid |DiemBlockcvc5bpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_13305 v@@25 i@@42)) (= (|Select__T@[Int]Int_| (|v#Vec_22116| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22116| v@@25) j@@9) e@@9)))
 :qid |DiemBlockcvc5bpl.2444:17|
 :skolemid |92|
)))))
 :qid |DiemBlockcvc5bpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'u64'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_22116) (v2@@10 T@Vec_22116) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10)  (and (= (|l#Vec_22116| v1@@10) (|l#Vec_22116| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_13305 v1@@10 i@@44) (= (|Select__T@[Int]Int_| (|v#Vec_22116| v1@@10) i@@44) (|Select__T@[Int]Int_| (|v#Vec_22116| v2@@10) i@@44)))
 :qid |DiemBlockcvc5bpl.2606:13|
 :skolemid |94|
))))
 :qid |DiemBlockcvc5bpl.2604:28|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'u8''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_22116) ) (! (= (|$IsValid'vec'u8''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_22116| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_13305 v@@26 i@@45) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_22116| v@@26) i@@45)))
 :qid |DiemBlockcvc5bpl.2612:13|
 :skolemid |96|
))))
 :qid |DiemBlockcvc5bpl.2610:28|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'u8''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_22116) (e@@10 Int) ) (! (let ((i@@46 (|$IndexOfVec'u8'| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_13305 v@@27 i@@47)) (= (|Select__T@[Int]Int_| (|v#Vec_22116| v@@27) i@@47) e@@10))
 :qid |DiemBlockcvc5bpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_13305 v@@27 i@@46)) (= (|Select__T@[Int]Int_| (|v#Vec_22116| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22116| v@@27) j@@10) e@@10)))
 :qid |DiemBlockcvc5bpl.2625:17|
 :skolemid |99|
)))))
 :qid |DiemBlockcvc5bpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'u8'| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_22116) (v2@@11 T@Vec_22116) ) (! (= (|$IsEqual'vec'u8''| v1@@11 v2@@11) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11)))
 :qid |DiemBlockcvc5bpl.2798:15|
 :skolemid |101|
 :pattern ( ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11))
)))
(assert (forall ((v1@@12 T@Vec_22116) (v2@@12 T@Vec_22116) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12)))
 :qid |DiemBlockcvc5bpl.2814:15|
 :skolemid |102|
 :pattern ( ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12))
)))
(assert (forall ((k1 T@Vec_22116) (k2 T@Vec_22116) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemBlockcvc5bpl.2881:15|
 :skolemid |103|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_22116) (s2 T@Vec_22116) (k1@@0 T@Vec_22116) (k2@@0 T@Vec_22116) (m1 T@Vec_22116) (m2 T@Vec_22116) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemBlockcvc5bpl.2884:15|
 :skolemid |104|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_89261| stream) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream) v@@28) 0)
 :qid |DiemBlockcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemBlockcvc5bpl.2945:13|
 :skolemid |105|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemBlockcvc5bpl.2986:80|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@13 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@13 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13)))
 :qid |DiemBlockcvc5bpl.2992:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemBlockcvc5bpl.3042:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14)))
 :qid |DiemBlockcvc5bpl.3048:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemBlockcvc5bpl.3098:80|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@15 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@15 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@15)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15)))
 :qid |DiemBlockcvc5bpl.3104:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemBlockcvc5bpl.3154:79|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_AdminTransactionEvent) (v2@@16 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16)))
 :qid |DiemBlockcvc5bpl.3160:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemBlockcvc5bpl.3210:76|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_CreateAccountEvent) (v2@@17 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17)))
 :qid |DiemBlockcvc5bpl.3216:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemBlockcvc5bpl.3266:78|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@18 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18)))
 :qid |DiemBlockcvc5bpl.3272:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemBlockcvc5bpl.3322:74|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_SentPaymentEvent) (v2@@19 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@19))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19)))
 :qid |DiemBlockcvc5bpl.3328:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemBlockcvc5bpl.3378:69|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@20 T@$1_DiemBlock_NewBlockEvent) (v2@@20 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@20) (|$round#$1_DiemBlock_NewBlockEvent| v2@@20)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@20) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@20))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@20) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@20) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20)))
 :qid |DiemBlockcvc5bpl.3384:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemBlockcvc5bpl.3434:70|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@21 T@$1_DiemConfig_NewEpochEvent) (v2@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@21 v2@@21) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21)))
 :qid |DiemBlockcvc5bpl.3440:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemBlockcvc5bpl.3490:60|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@22 T@$1_Diem_BurnEvent) (v2@@22 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@22) (|$amount#$1_Diem_BurnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@22) (|$currency_code#$1_Diem_BurnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@22) (|$preburn_address#$1_Diem_BurnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22)))
 :qid |DiemBlockcvc5bpl.3496:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemBlockcvc5bpl.3546:66|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@23 T@$1_Diem_CancelBurnEvent) (v2@@23 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@23) (|$amount#$1_Diem_CancelBurnEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@23) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@23) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23)))
 :qid |DiemBlockcvc5bpl.3552:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemBlockcvc5bpl.3602:60|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@24 T@$1_Diem_MintEvent) (v2@@24 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@24) (|$amount#$1_Diem_MintEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@24) (|$currency_code#$1_Diem_MintEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24)))
 :qid |DiemBlockcvc5bpl.3608:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemBlockcvc5bpl.3658:63|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@25 T@$1_Diem_PreburnEvent) (v2@@25 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@25) (|$amount#$1_Diem_PreburnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@25) (|$currency_code#$1_Diem_PreburnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@25) (|$preburn_address#$1_Diem_PreburnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25)))
 :qid |DiemBlockcvc5bpl.3664:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemBlockcvc5bpl.3714:79|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26)))
 :qid |DiemBlockcvc5bpl.3720:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemBlockcvc5bpl.3770:82|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@27 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@27 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@27)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@27))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27)))
 :qid |DiemBlockcvc5bpl.3776:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemBlockcvc5bpl.3826:88|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28)))
 :qid |DiemBlockcvc5bpl.3832:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemBlockcvc5bpl.3882:72|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@29 T@$1_VASPDomain_VASPDomainEvent) (v2@@29 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@29)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@29)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@29)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@29))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29)))
 :qid |DiemBlockcvc5bpl.3888:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |DiemBlockcvc5bpl.3942:15|
 :skolemid |141|
)))
(assert (forall ((addr Int) ) (! true
 :qid |DiemBlockcvc5bpl.3951:15|
 :skolemid |142|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |DiemBlockcvc5bpl.3976:61|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DiemBlockcvc5bpl.4153:36|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |DiemBlockcvc5bpl.4172:71|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |DiemBlockcvc5bpl.4235:46|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |DiemBlockcvc5bpl.4247:64|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |DiemBlockcvc5bpl.4259:75|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |DiemBlockcvc5bpl.4271:72|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |DiemBlockcvc5bpl.4299:55|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |DiemBlockcvc5bpl.4322:46|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |DiemBlockcvc5bpl.4341:49|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |DiemBlockcvc5bpl.4416:71|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |DiemBlockcvc5bpl.4429:91|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |DiemBlockcvc5bpl.4442:113|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemBlockcvc5bpl.4455:75|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemBlockcvc5bpl.4468:73|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |DiemBlockcvc5bpl.4488:48|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |DiemBlockcvc5bpl.4505:57|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |DiemBlockcvc5bpl.4519:83|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |DiemBlockcvc5bpl.4533:103|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |DiemBlockcvc5bpl.4547:125|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |DiemBlockcvc5bpl.4561:87|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |DiemBlockcvc5bpl.4575:85|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |DiemBlockcvc5bpl.4589:48|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |DiemBlockcvc5bpl.4610:45|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |DiemBlockcvc5bpl.4624:51|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |DiemBlockcvc5bpl.4647:48|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |DiemBlockcvc5bpl.4955:49|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |DiemBlockcvc5bpl.4968:65|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |DiemBlockcvc5bpl.5521:45|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |DiemBlockcvc5bpl.5534:45|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@30)))
 :qid |DiemBlockcvc5bpl.5547:37|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |DiemBlockcvc5bpl.5560:55|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |DiemBlockcvc5bpl.5574:55|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |DiemBlockcvc5bpl.5594:38|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |DiemBlockcvc5bpl.5616:44|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |DiemBlockcvc5bpl.5668:53|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |DiemBlockcvc5bpl.5741:53|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@37))))
 :qid |DiemBlockcvc5bpl.5814:45|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38) true)
 :qid |DiemBlockcvc5bpl.5851:55|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39) true)
 :qid |DiemBlockcvc5bpl.5865:55|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@40) true)
 :qid |DiemBlockcvc5bpl.5879:47|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@41)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@41))))
 :qid |DiemBlockcvc5bpl.5896:38|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@42)))
 :qid |DiemBlockcvc5bpl.5910:48|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@43)))
 :qid |DiemBlockcvc5bpl.5924:48|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@44) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@44)))
 :qid |DiemBlockcvc5bpl.5938:40|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@45)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@45)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@45))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@45))))
 :qid |DiemBlockcvc5bpl.5958:41|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@46)))
 :qid |DiemBlockcvc5bpl.5974:53|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@47)))
 :qid |DiemBlockcvc5bpl.5987:53|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@48)))
 :qid |DiemBlockcvc5bpl.6000:45|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@49))))
 :qid |DiemBlockcvc5bpl.6016:60|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@50))))
 :qid |DiemBlockcvc5bpl.6033:60|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@51))))
 :qid |DiemBlockcvc5bpl.6050:52|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@51))
)))
(assert (forall ((s@@52 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@52)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@52)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@52))))
 :qid |DiemBlockcvc5bpl.6067:57|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@52))
)))
(assert (forall ((s@@53 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@53) true)
 :qid |DiemBlockcvc5bpl.8979:68|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@54)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))))
 :qid |DiemBlockcvc5bpl.9001:66|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))))
 :qid |DiemBlockcvc5bpl.9027:66|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@56)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@56)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@56))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@56))))
 :qid |DiemBlockcvc5bpl.9056:56|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@57)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@57)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@57))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@57))))
 :qid |DiemBlockcvc5bpl.9086:56|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@57))
)))
(assert (forall ((s@@58 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@58) true)
 :qid |DiemBlockcvc5bpl.9420:31|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@58))
)))
(assert (forall ((s@@59 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@59) true)
 :qid |DiemBlockcvc5bpl.9764:31|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@59))
)))
(assert (forall ((s@@60 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@60)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@60)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@60))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@60))))
 :qid |DiemBlockcvc5bpl.9783:35|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@61) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@61)))
 :qid |DiemBlockcvc5bpl.10204:45|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@62)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@62))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@62))))
 :qid |DiemBlockcvc5bpl.10222:50|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@63) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@63)))
 :qid |DiemBlockcvc5bpl.10238:52|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@64) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@64)))
 :qid |DiemBlockcvc5bpl.10261:38|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@65) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@65)))
 :qid |DiemBlockcvc5bpl.10275:39|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@65))
)))
(assert (forall ((s@@66 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@66)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@66)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@66))))
 :qid |DiemBlockcvc5bpl.10302:65|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@66))
)))
(assert (forall ((s@@67 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@67))))
 :qid |DiemBlockcvc5bpl.10687:60|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68))))
 :qid |DiemBlockcvc5bpl.10704:66|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@69)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@69)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@69))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@69))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@69))))
 :qid |DiemBlockcvc5bpl.10733:50|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@70) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@70)))
 :qid |DiemBlockcvc5bpl.10756:45|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@71)) true))
 :qid |DiemBlockcvc5bpl.11075:87|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@72)))
 :qid |DiemBlockcvc5bpl.11287:47|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@73)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@73))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@73))))
 :qid |DiemBlockcvc5bpl.11306:58|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73))
)))
(assert (forall ((s@@74 |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@74)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@74)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@74))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@74))))
 :qid |DiemBlockcvc5bpl.11328:61|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@74))
)))
(assert (forall ((s@@75 |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@75)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@75)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@75))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@75))))
 :qid |DiemBlockcvc5bpl.11351:61|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@75))
)))
(assert (forall ((s@@76 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@76)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@76)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@76))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@76))))
 :qid |DiemBlockcvc5bpl.11374:53|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@76))
)))
(assert (forall ((s@@77 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@77) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@77)))
 :qid |DiemBlockcvc5bpl.16364:39|
 :skolemid |449|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@78)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@78))))
 :qid |DiemBlockcvc5bpl.16386:58|
 :skolemid |450|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@79)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@79)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@79))))
 :qid |DiemBlockcvc5bpl.16403:58|
 :skolemid |451|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@80) true)
 :qid |DiemBlockcvc5bpl.16418:51|
 :skolemid |452|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@81)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@81)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@81))))
 :qid |DiemBlockcvc5bpl.16435:60|
 :skolemid |453|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@82)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@82)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@82))))
 :qid |DiemBlockcvc5bpl.16733:47|
 :skolemid |454|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@83)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@83)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@83))))
 :qid |DiemBlockcvc5bpl.16759:63|
 :skolemid |455|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@84) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@84)))
 :qid |DiemBlockcvc5bpl.16774:57|
 :skolemid |456|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@84))
)))
(assert (forall ((s@@85 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@85) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@85)))
 :qid |DiemBlockcvc5bpl.16787:55|
 :skolemid |457|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@85))
)))
(assert (forall ((s@@86 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@86) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@86)))
 :qid |DiemBlockcvc5bpl.16801:55|
 :skolemid |458|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@87)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@87))))
 :qid |DiemBlockcvc5bpl.16818:54|
 :skolemid |459|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@88)))
 :qid |DiemBlockcvc5bpl.16832:55|
 :skolemid |460|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@89)))
 :qid |DiemBlockcvc5bpl.16845:57|
 :skolemid |461|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@90)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@90))))
 :qid |DiemBlockcvc5bpl.16867:56|
 :skolemid |462|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@91)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@91))))
 :qid |DiemBlockcvc5bpl.16894:52|
 :skolemid |463|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@92)))
 :qid |DiemBlockcvc5bpl.16912:54|
 :skolemid |464|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@93)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@93)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@93))))
 :qid |DiemBlockcvc5bpl.17784:47|
 :skolemid |465|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@94)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@94)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@94))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@94))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@94))))
 :qid |DiemBlockcvc5bpl.17808:47|
 :skolemid |466|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@95) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@95)))
 :qid |DiemBlockcvc5bpl.18051:49|
 :skolemid |467|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@96)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@96)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@96))))
 :qid |DiemBlockcvc5bpl.18093:49|
 :skolemid |468|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@97)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@97)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@97))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@97))))
 :qid |DiemBlockcvc5bpl.18122:48|
 :skolemid |469|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@98) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@98)))
 :qid |DiemBlockcvc5bpl.18418:47|
 :skolemid |470|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@98))
)))
(assert (forall ((v@@29 T@Vec_91228) (i@@48 Int) ) (! (= (InRangeVec_78986 v@@29 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_91228| v@@29))))
 :qid |DiemBlockcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_78986 v@@29 i@@48))
)))
(assert (forall ((v@@30 T@Vec_89386) (i@@49 Int) ) (! (= (InRangeVec_79187 v@@30 i@@49)  (and (>= i@@49 0) (< i@@49 (|l#Vec_89386| v@@30))))
 :qid |DiemBlockcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_79187 v@@30 i@@49))
)))
(assert (forall ((v@@31 T@Vec_89425) (i@@50 Int) ) (! (= (InRangeVec_79388 v@@31 i@@50)  (and (>= i@@50 0) (< i@@50 (|l#Vec_89425| v@@31))))
 :qid |DiemBlockcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_79388 v@@31 i@@50))
)))
(assert (forall ((v@@32 T@Vec_89551) (i@@51 Int) ) (! (= (InRangeVec_79589 v@@32 i@@51)  (and (>= i@@51 0) (< i@@51 (|l#Vec_89551| v@@32))))
 :qid |DiemBlockcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_79589 v@@32 i@@51))
)))
(assert (forall ((v@@33 T@Vec_89893) (i@@52 Int) ) (! (= (InRangeVec_79790 v@@33 i@@52)  (and (>= i@@52 0) (< i@@52 (|l#Vec_89893| v@@33))))
 :qid |DiemBlockcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_79790 v@@33 i@@52))
)))
(assert (forall ((v@@34 T@Vec_89854) (i@@53 Int) ) (! (= (InRangeVec_79991 v@@34 i@@53)  (and (>= i@@53 0) (< i@@53 (|l#Vec_89854| v@@34))))
 :qid |DiemBlockcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_79991 v@@34 i@@53))
)))
(assert (forall ((v@@35 T@Vec_89815) (i@@54 Int) ) (! (= (InRangeVec_80192 v@@35 i@@54)  (and (>= i@@54 0) (< i@@54 (|l#Vec_89815| v@@35))))
 :qid |DiemBlockcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_80192 v@@35 i@@54))
)))
(assert (forall ((v@@36 T@Vec_89347) (i@@55 Int) ) (! (= (InRangeVec_80393 v@@36 i@@55)  (and (>= i@@55 0) (< i@@55 (|l#Vec_89347| v@@36))))
 :qid |DiemBlockcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_80393 v@@36 i@@55))
)))
(assert (forall ((v@@37 T@Vec_89608) (i@@56 Int) ) (! (= (InRangeVec_112861 v@@37 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_89608| v@@37))))
 :qid |DiemBlockcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_112861 v@@37 i@@56))
)))
(assert (forall ((v@@38 T@Vec_22116) (i@@57 Int) ) (! (= (InRangeVec_13305 v@@38 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_22116| v@@38))))
 :qid |DiemBlockcvc5bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_13305 v@@38 i@@57))
)))
(assert (forall ((v@@39 T@Vec_22116) (e@@11 Int) ) (! (let ((i@@58 (IndexOfVec_22116 v@@39 e@@11)))
(ite  (not (exists ((i@@59 Int) ) (!  (and (InRangeVec_13305 v@@39 i@@59) (= (|Select__T@[Int]Int_| (|v#Vec_22116| v@@39) i@@59) e@@11))
 :qid |DiemBlockcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@58 (- 0 1))  (and (and (InRangeVec_13305 v@@39 i@@58) (= (|Select__T@[Int]Int_| (|v#Vec_22116| v@@39) i@@58) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@58)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22116| v@@39) j@@11) e@@11)))
 :qid |DiemBlockcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemBlockcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22116 v@@39 e@@11))
)))
(assert (forall ((v@@40 T@Vec_89347) (e@@12 T@$1_ValidatorConfig_Config) ) (! (let ((i@@60 (IndexOfVec_89347 v@@40 e@@12)))
(ite  (not (exists ((i@@61 Int) ) (!  (and (InRangeVec_80393 v@@40 i@@61) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v@@40) i@@61) e@@12))
 :qid |DiemBlockcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@60 (- 0 1))  (and (and (InRangeVec_80393 v@@40 i@@60) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v@@40) i@@60) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@60)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_89347| v@@40) j@@12) e@@12)))
 :qid |DiemBlockcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemBlockcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_89347 v@@40 e@@12))
)))
(assert (forall ((v@@41 T@Vec_89386) (e@@13 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@62 (IndexOfVec_89386 v@@41 e@@13)))
(ite  (not (exists ((i@@63 Int) ) (!  (and (InRangeVec_79187 v@@41 i@@63) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_89386| v@@41) i@@63) e@@13))
 :qid |DiemBlockcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@62 (- 0 1))  (and (and (InRangeVec_79187 v@@41 i@@62) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_89386| v@@41) i@@62) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@62)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_89386| v@@41) j@@13) e@@13)))
 :qid |DiemBlockcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemBlockcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_89386 v@@41 e@@13))
)))
(assert (forall ((v@@42 T@Vec_89425) (e@@14 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@64 (IndexOfVec_89425 v@@42 e@@14)))
(ite  (not (exists ((i@@65 Int) ) (!  (and (InRangeVec_79388 v@@42 i@@65) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_89425| v@@42) i@@65) e@@14))
 :qid |DiemBlockcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@64 (- 0 1))  (and (and (InRangeVec_79388 v@@42 i@@64) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_89425| v@@42) i@@64) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@64)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_89425| v@@42) j@@14) e@@14)))
 :qid |DiemBlockcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemBlockcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_89425 v@@42 e@@14))
)))
(assert (forall ((v@@43 T@Vec_89551) (e@@15 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@66 (IndexOfVec_89551 v@@43 e@@15)))
(ite  (not (exists ((i@@67 Int) ) (!  (and (InRangeVec_79589 v@@43 i@@67) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@43) i@@67) e@@15))
 :qid |DiemBlockcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@66 (- 0 1))  (and (and (InRangeVec_79589 v@@43 i@@66) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@43) i@@66) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@66)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_89551| v@@43) j@@15) e@@15)))
 :qid |DiemBlockcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemBlockcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_89551 v@@43 e@@15))
)))
(assert (forall ((v@@44 T@Vec_89608) (e@@16 T@Vec_22116) ) (! (let ((i@@68 (IndexOfVec_89608 v@@44 e@@16)))
(ite  (not (exists ((i@@69 Int) ) (!  (and (InRangeVec_112861 v@@44 i@@69) (= (|Select__T@[Int]Vec_22116_| (|v#Vec_89608| v@@44) i@@69) e@@16))
 :qid |DiemBlockcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@68 (- 0 1))  (and (and (InRangeVec_112861 v@@44 i@@68) (= (|Select__T@[Int]Vec_22116_| (|v#Vec_89608| v@@44) i@@68) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@68)) (not (= (|Select__T@[Int]Vec_22116_| (|v#Vec_89608| v@@44) j@@16) e@@16)))
 :qid |DiemBlockcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemBlockcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_89608 v@@44 e@@16))
)))
(assert (forall ((v@@45 T@Vec_89815) (e@@17 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@70 (IndexOfVec_89815 v@@45 e@@17)))
(ite  (not (exists ((i@@71 Int) ) (!  (and (InRangeVec_80192 v@@45 i@@71) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v@@45) i@@71) e@@17))
 :qid |DiemBlockcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@70 (- 0 1))  (and (and (InRangeVec_80192 v@@45 i@@70) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v@@45) i@@70) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@70)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| v@@45) j@@17) e@@17)))
 :qid |DiemBlockcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemBlockcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_89815 v@@45 e@@17))
)))
(assert (forall ((v@@46 T@Vec_89854) (e@@18 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@72 (IndexOfVec_89854 v@@46 e@@18)))
(ite  (not (exists ((i@@73 Int) ) (!  (and (InRangeVec_79991 v@@46 i@@73) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v@@46) i@@73) e@@18))
 :qid |DiemBlockcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@72 (- 0 1))  (and (and (InRangeVec_79991 v@@46 i@@72) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v@@46) i@@72) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@72)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| v@@46) j@@18) e@@18)))
 :qid |DiemBlockcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemBlockcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_89854 v@@46 e@@18))
)))
(assert (forall ((v@@47 T@Vec_89893) (e@@19 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@74 (IndexOfVec_89893 v@@47 e@@19)))
(ite  (not (exists ((i@@75 Int) ) (!  (and (InRangeVec_79790 v@@47 i@@75) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v@@47) i@@75) e@@19))
 :qid |DiemBlockcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@74 (- 0 1))  (and (and (InRangeVec_79790 v@@47 i@@74) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v@@47) i@@74) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@74)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| v@@47) j@@19) e@@19)))
 :qid |DiemBlockcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemBlockcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_89893 v@@47 e@@19))
)))
(assert (forall ((v@@48 T@Vec_91228) (e@@20 |T@#0|) ) (! (let ((i@@76 (IndexOfVec_91228 v@@48 e@@20)))
(ite  (not (exists ((i@@77 Int) ) (!  (and (InRangeVec_78986 v@@48 i@@77) (= (|Select__T@[Int]#0_| (|v#Vec_91228| v@@48) i@@77) e@@20))
 :qid |DiemBlockcvc5bpl.109:13|
 :skolemid |0|
))) (= i@@76 (- 0 1))  (and (and (InRangeVec_78986 v@@48 i@@76) (= (|Select__T@[Int]#0_| (|v#Vec_91228| v@@48) i@@76) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@76)) (not (= (|Select__T@[Int]#0_| (|v#Vec_91228| v@@48) j@@20) e@@20)))
 :qid |DiemBlockcvc5bpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemBlockcvc5bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_91228 v@@48 e@@20))
)))
(assert (forall ((|l#0| Bool) (i@@78 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@78) |l#0|)
 :qid |DiemBlockcvc5bpl.275:54|
 :skolemid |550|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@78))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_89261|) (|l#1| |T@[$1_Event_EventHandle]Multiset_89261|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| |l#1| handle@@0))))
(Multiset_89261 (|lambda#33| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| |l#0@@0| handle@@0)) (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemBlockcvc5bpl.2955:13|
 :skolemid |551|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@79 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@79) (ite  (and (>= i@@79 |l#0@@1|) (< i@@79 |l#1@@0|)) (ite (< i@@79 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@79) (|Select__T@[Int]#0_| |l#4| (- i@@79 |l#5|))) |l#6|))
 :qid |DiemBlockcvc5bpl.73:19|
 :skolemid |552|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@79))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@80 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@80) (ite  (and (<= |l#0@@2| i@@80) (< i@@80 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@80) |l#4@@0|)) |l#5@@0|))
 :qid |DiemBlockcvc5bpl.82:30|
 :skolemid |553|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@80))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@21 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@21) (ite  (and (>= j@@21 |l#0@@3|) (< j@@21 |l#1@@2|)) (ite (< j@@21 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@21) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@21 |l#5@@1|))) |l#6@@0|))
 :qid |DiemBlockcvc5bpl.63:20|
 :skolemid |554|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@81 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@81) (ite  (and (>= i@@81 |l#0@@4|) (< i@@81 |l#1@@3|)) (ite (< i@@81 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@81) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@81 |l#5@@2|))) |l#6@@1|))
 :qid |DiemBlockcvc5bpl.73:19|
 :skolemid |555|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@81))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@82 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@82) (ite  (and (<= |l#0@@5| i@@82) (< i@@82 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@82) |l#4@@3|)) |l#5@@3|))
 :qid |DiemBlockcvc5bpl.82:30|
 :skolemid |556|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@82))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@22 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@22) (ite  (and (>= j@@22 |l#0@@6|) (< j@@22 |l#1@@5|)) (ite (< j@@22 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@22) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@22 |l#5@@4|))) |l#6@@2|))
 :qid |DiemBlockcvc5bpl.63:20|
 :skolemid |557|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@22))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@83 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@83) (ite  (and (>= i@@83 |l#0@@7|) (< i@@83 |l#1@@6|)) (ite (< i@@83 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@83) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@83 |l#5@@5|))) |l#6@@3|))
 :qid |DiemBlockcvc5bpl.73:19|
 :skolemid |558|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@83))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@84 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@84) (ite  (and (<= |l#0@@8| i@@84) (< i@@84 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@84) |l#4@@6|)) |l#5@@6|))
 :qid |DiemBlockcvc5bpl.82:30|
 :skolemid |559|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@84))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@23) (ite  (and (>= j@@23 |l#0@@9|) (< j@@23 |l#1@@8|)) (ite (< j@@23 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@23) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@23 |l#5@@7|))) |l#6@@4|))
 :qid |DiemBlockcvc5bpl.63:20|
 :skolemid |560|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@23))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@85 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@85) (ite  (and (>= i@@85 |l#0@@10|) (< i@@85 |l#1@@9|)) (ite (< i@@85 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@85) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@85 |l#5@@8|))) |l#6@@5|))
 :qid |DiemBlockcvc5bpl.73:19|
 :skolemid |561|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@85))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@86 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@86) (ite  (and (<= |l#0@@11| i@@86) (< i@@86 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@86) |l#4@@9|)) |l#5@@9|))
 :qid |DiemBlockcvc5bpl.82:30|
 :skolemid |562|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@86))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@24) (ite  (and (>= j@@24 |l#0@@12|) (< j@@24 |l#1@@11|)) (ite (< j@@24 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@24) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@24 |l#5@@10|))) |l#6@@6|))
 :qid |DiemBlockcvc5bpl.63:20|
 :skolemid |563|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@24))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@87 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@87) (ite  (and (>= i@@87 |l#0@@13|) (< i@@87 |l#1@@12|)) (ite (< i@@87 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@87) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@87 |l#5@@11|))) |l#6@@7|))
 :qid |DiemBlockcvc5bpl.73:19|
 :skolemid |564|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@87))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@88 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@88) (ite  (and (<= |l#0@@14| i@@88) (< i@@88 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@88) |l#4@@12|)) |l#5@@12|))
 :qid |DiemBlockcvc5bpl.82:30|
 :skolemid |565|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@88))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@25 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@25) (ite  (and (>= j@@25 |l#0@@15|) (< j@@25 |l#1@@14|)) (ite (< j@@25 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@25) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@25 |l#5@@13|))) |l#6@@8|))
 :qid |DiemBlockcvc5bpl.63:20|
 :skolemid |566|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@25))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@89 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@89) (ite  (and (>= i@@89 |l#0@@16|) (< i@@89 |l#1@@15|)) (ite (< i@@89 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@89) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@89 |l#5@@14|))) |l#6@@9|))
 :qid |DiemBlockcvc5bpl.73:19|
 :skolemid |567|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@89))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@90 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@90) (ite  (and (<= |l#0@@17| i@@90) (< i@@90 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@90) |l#4@@15|)) |l#5@@15|))
 :qid |DiemBlockcvc5bpl.82:30|
 :skolemid |568|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@90))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@26 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@26) (ite  (and (>= j@@26 |l#0@@18|) (< j@@26 |l#1@@17|)) (ite (< j@@26 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@26) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@26 |l#5@@16|))) |l#6@@10|))
 :qid |DiemBlockcvc5bpl.63:20|
 :skolemid |569|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@26))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@91 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@91) (ite  (and (>= i@@91 |l#0@@19|) (< i@@91 |l#1@@18|)) (ite (< i@@91 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@91) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@91 |l#5@@17|))) |l#6@@11|))
 :qid |DiemBlockcvc5bpl.73:19|
 :skolemid |570|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@91))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@92 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@92) (ite  (and (<= |l#0@@20| i@@92) (< i@@92 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@92) |l#4@@18|)) |l#5@@18|))
 :qid |DiemBlockcvc5bpl.82:30|
 :skolemid |571|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@92))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@27) (ite  (and (>= j@@27 |l#0@@21|) (< j@@27 |l#1@@20|)) (ite (< j@@27 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@27) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@27 |l#5@@19|))) |l#6@@12|))
 :qid |DiemBlockcvc5bpl.63:20|
 :skolemid |572|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@27))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@20| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@20| Int) (|l#6@@13| T@$1_ValidatorConfig_Config) (i@@93 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@93) (ite  (and (>= i@@93 |l#0@@22|) (< i@@93 |l#1@@21|)) (ite (< i@@93 |l#2@@20|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@20| i@@93) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@20| (- i@@93 |l#5@@20|))) |l#6@@13|))
 :qid |DiemBlockcvc5bpl.73:19|
 :skolemid |573|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@93))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_ValidatorConfig_Config) (i@@94 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@94) (ite  (and (<= |l#0@@23| i@@94) (< i@@94 |l#1@@22|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@21| (- (- |l#3@@21| i@@94) |l#4@@21|)) |l#5@@21|))
 :qid |DiemBlockcvc5bpl.82:30|
 :skolemid |574|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@94))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@22| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@22| Int) (|l#6@@14| T@$1_ValidatorConfig_Config) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@28) (ite  (and (>= j@@28 |l#0@@24|) (< j@@28 |l#1@@23|)) (ite (< j@@28 |l#2@@22|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@22| j@@28) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@22| (+ j@@28 |l#5@@22|))) |l#6@@14|))
 :qid |DiemBlockcvc5bpl.63:20|
 :skolemid |575|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@28))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]Vec_22116|) (|l#4@@23| |T@[Int]Vec_22116|) (|l#5@@23| Int) (|l#6@@15| T@Vec_22116) (i@@95 Int) ) (! (= (|Select__T@[Int]Vec_22116_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@95) (ite  (and (>= i@@95 |l#0@@25|) (< i@@95 |l#1@@24|)) (ite (< i@@95 |l#2@@23|) (|Select__T@[Int]Vec_22116_| |l#3@@23| i@@95) (|Select__T@[Int]Vec_22116_| |l#4@@23| (- i@@95 |l#5@@23|))) |l#6@@15|))
 :qid |DiemBlockcvc5bpl.73:19|
 :skolemid |576|
 :pattern ( (|Select__T@[Int]Vec_22116_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@95))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]Vec_22116|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@Vec_22116) (i@@96 Int) ) (! (= (|Select__T@[Int]Vec_22116_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@96) (ite  (and (<= |l#0@@26| i@@96) (< i@@96 |l#1@@25|)) (|Select__T@[Int]Vec_22116_| |l#2@@24| (- (- |l#3@@24| i@@96) |l#4@@24|)) |l#5@@24|))
 :qid |DiemBlockcvc5bpl.82:30|
 :skolemid |577|
 :pattern ( (|Select__T@[Int]Vec_22116_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@96))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]Vec_22116|) (|l#4@@25| |T@[Int]Vec_22116|) (|l#5@@25| Int) (|l#6@@16| T@Vec_22116) (j@@29 Int) ) (! (= (|Select__T@[Int]Vec_22116_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@29) (ite  (and (>= j@@29 |l#0@@27|) (< j@@29 |l#1@@26|)) (ite (< j@@29 |l#2@@25|) (|Select__T@[Int]Vec_22116_| |l#3@@25| j@@29) (|Select__T@[Int]Vec_22116_| |l#4@@25| (+ j@@29 |l#5@@25|))) |l#6@@16|))
 :qid |DiemBlockcvc5bpl.63:20|
 :skolemid |578|
 :pattern ( (|Select__T@[Int]Vec_22116_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@29))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]Int|) (|l#4@@26| |T@[Int]Int|) (|l#5@@26| Int) (|l#6@@17| Int) (i@@97 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@97) (ite  (and (>= i@@97 |l#0@@28|) (< i@@97 |l#1@@27|)) (ite (< i@@97 |l#2@@26|) (|Select__T@[Int]Int_| |l#3@@26| i@@97) (|Select__T@[Int]Int_| |l#4@@26| (- i@@97 |l#5@@26|))) |l#6@@17|))
 :qid |DiemBlockcvc5bpl.73:19|
 :skolemid |579|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@97))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]Int|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| Int) (i@@98 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@98) (ite  (and (<= |l#0@@29| i@@98) (< i@@98 |l#1@@28|)) (|Select__T@[Int]Int_| |l#2@@27| (- (- |l#3@@27| i@@98) |l#4@@27|)) |l#5@@27|))
 :qid |DiemBlockcvc5bpl.82:30|
 :skolemid |580|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@98))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]Int|) (|l#4@@28| |T@[Int]Int|) (|l#5@@28| Int) (|l#6@@18| Int) (j@@30 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@30) (ite  (and (>= j@@30 |l#0@@30|) (< j@@30 |l#1@@29|)) (ite (< j@@30 |l#2@@28|) (|Select__T@[Int]Int_| |l#3@@28| j@@30) (|Select__T@[Int]Int_| |l#4@@28| (+ j@@30 |l#5@@28|))) |l#6@@18|))
 :qid |DiemBlockcvc5bpl.63:20|
 :skolemid |581|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@30))
)))
(assert (forall ((|l#0@@31| |T@[$EventRep]Int|) (|l#1@@30| |T@[$EventRep]Int|) (v@@49 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#33| |l#0@@31| |l#1@@30|) v@@49) (- (|Select__T@[$EventRep]Int_| |l#0@@31| v@@49) (|Select__T@[$EventRep]Int_| |l#1@@30| v@@49)))
 :qid |DiemBlockcvc5bpl.154:29|
 :skolemid |582|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#33| |l#0@@31| |l#1@@30|) v@@49))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@2| () T@$Memory_143762)
(declare-fun $t18 () Int)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_143278)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int) |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t15 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_128959)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t1 () T@$signer)
(declare-fun $t7 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_161495)
(declare-fun $t5 () Int)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_136763)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_143762)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1| () T@$Memory_143762)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0| () T@$Memory_143762)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int |T@$1_Diem_PreburnQueue'#0'|) |T@[Int]$1_Diem_PreburnQueue'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'#0''@0| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t21 () Bool)
(declare-fun $t10@0 () Int)
(declare-fun $t16 () Int)
(declare-fun $t10 () Int)
(declare-fun $t17 () Int)
(declare-fun $t19 () Int)
(declare-fun $t12 () Bool)
(declare-fun _$t0 () T@$signer)
(declare-fun $t20 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14 () Int)
(declare-fun $t9 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t8 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_142775)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_142862)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_142949)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_137277)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_137364)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_143528)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_143116)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_143645)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_143197)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| Int) |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| Int) |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'#0'_| (|T@[Int]$1_Diem_Preburn'#0'| Int) |T@$1_Diem_Preburn'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_136513)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_136577)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int) T@$1_DesignatedDealer_Dealer)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_add_currency$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 300160) (let ((anon10_correct  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory@2|) $t18) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t18))) (and (= (|l#Vec_89893| (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory@2|) $t18))) 0) (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory@2|) $t15))) (and (=> (= (ControlFlow 0 217646) (- 0 302048)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 217646) (- 0 302060)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 217646) (- 0 302078)) (not (not (= (|$addr#$signer| _$t1) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1) 186537453))) (and (=> (= (ControlFlow 0 217646) (- 0 302092)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 217646) (- 0 302104)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7)) 2))) (and (=> (= (ControlFlow 0 217646) (- 0 302122)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5))) (and (=> (= (ControlFlow 0 217646) (- 0 302134)) (not (let ((addr@@0 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@0) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@0)))))) (=> (not (let ((addr@@1 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@1) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@1))))) (and (=> (= (ControlFlow 0 217646) (- 0 302142)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t5))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t5)) (and (=> (= (ControlFlow 0 217646) (- 0 302152)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t5))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t5)) (=> (= (ControlFlow 0 217646) (- 0 302162)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))))))))))))))))))))))
(let ((anon15_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= |$1_Diem_PreburnQueue'#0'_$memory@1| ($Memory_143762 (|Store__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t15 false) (|contents#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|)))) (and (= |$1_Diem_PreburnQueue'#0'_$memory@2| |$1_Diem_PreburnQueue'#0'_$memory@1|) (= (ControlFlow 0 217484) 217646))) anon10_correct)))
(let ((anon15_Then_correct  (=> (and (and |$temp_0'bool'@0| (= |$1_Diem_PreburnQueue'#0'_$memory@0| ($Memory_143762 (|Store__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t15 true) (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t15 |$temp_0'$1_Diem_PreburnQueue'#0''@0|)))) (and (= |$1_Diem_PreburnQueue'#0'_$memory@2| |$1_Diem_PreburnQueue'#0'_$memory@0|) (= (ControlFlow 0 217658) 217646))) anon10_correct)))
(let ((anon14_Else_correct  (=> (not $t21) (and (=> (= (ControlFlow 0 217472) 217658) anon15_Then_correct) (=> (= (ControlFlow 0 217472) 217484) anon15_Else_correct)))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 217266) (- 0 301704)) (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5))) (let ((addr@@2 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@2) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@2))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5))) (let ((addr@@3 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@3) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@3))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 217266) (- 0 301796)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6)) (= 5 $t10@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t10@0))) (and (not (= (|$addr#$signer| _$t1) 186537453)) (= 2 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7)) 2)) (= 3 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5)) (= 5 $t10@0))) (and (let ((addr@@4 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@4) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@4)))) (= 7 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t5) (= 6 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t5) (= 1 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10@0))))))))
(let ((anon14_Then_correct  (=> $t21 (=> (and (and (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t16)) (= 5 $t10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t16)) 2)) (= 3 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t17)) (= 5 $t10))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t17)) 2)) (= 3 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t19)) (= 5 $t10))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t19)) 1)) (= 3 $t10))) (and (not (= (|$addr#$signer| _$t1) 186537453)) (= 2 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10))) (and (let ((addr@@5 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@5)))) (= 7 $t10))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t15) (= 6 $t10))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t15) (= 1 $t10))) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 217892) 217266))) L3_correct))))
(let ((anon13_Then_correct  (=> $t12 (=> (and (= $t15 (|$addr#$signer| _$t0)) (= $t16 (|$addr#$signer| _$t0))) (=> (and (and (= $t17 (|$addr#$signer| _$t0)) (= $t18 (|$addr#$signer| _$t0))) (and (= $t19 (|$addr#$signer| _$t1)) (= $t20 (|$addr#$signer| _$t0)))) (and (=> (= (ControlFlow 0 217466) (- 0 301302)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t15)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t15) (=> (= $t21  (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t16)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t16)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t17))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t17)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t19))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t19)) 1))) (not (= (|$addr#$signer| _$t1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (let ((addr@@6 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@6))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t15)) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t15))) (and (=> (= (ControlFlow 0 217466) 217892) anon14_Then_correct) (=> (= (ControlFlow 0 217466) 217472) anon14_Else_correct))))))))))
(let ((anon13_Else_correct  (=> (and (and (not $t12) (= $t14 $t14)) (and (= $t10@0 $t14) (= (ControlFlow 0 216974) 217266))) L3_correct)))
(let ((anon12_Else_correct  (=> (and (not $t9) (|$IsValid'address'| $t11)) (=> (and (and (and (= $t11 (|$addr#$signer| _$t0)) (= $t11 $t11)) (and (= $t12 (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t11)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14) (= $t14 5)) (and (= $t14 $t14) (= $t12 $t12)))) (and (=> (= (ControlFlow 0 216958) 217466) anon13_Then_correct) (=> (= (ControlFlow 0 216958) 216974) anon13_Else_correct))))))
(let ((anon12_Then_correct  (=> $t9 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t8)) (= 5 $t10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t8)) 1)) (= 3 $t10))) (and (not (= (|$addr#$signer| _$t1) 186537453)) (= 2 $t10))) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 217964) 217266))) L3_correct))))
(let ((anon0$1_correct  (=> (and (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |DiemBlockcvc5bpl.11432:22|
 :skolemid |220|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |DiemBlockcvc5bpl.11432:269|
 :skolemid |221|
))) (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |DiemBlockcvc5bpl.11432:517|
 :skolemid |222|
))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137277| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |DiemBlockcvc5bpl.11440:21|
 :skolemid |223|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137364| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |DiemBlockcvc5bpl.11440:231|
 :skolemid |224|
)))) (=> (and (and (and (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |DiemBlockcvc5bpl.11444:22|
 :skolemid |225|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |DiemBlockcvc5bpl.11444:293|
 :skolemid |226|
))) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr1@@3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@3)) 2))))
 :qid |DiemBlockcvc5bpl.11444:565|
 :skolemid |227|
))) (and (and (forall ((dd_addr Int) ) (!  (=> (|$IsValid'address'| dd_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr)))))
 :qid |DiemBlockcvc5bpl.11448:22|
 :skolemid |228|
)) (forall ((dd_addr@@0 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@0) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@0))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@0)))))
 :qid |DiemBlockcvc5bpl.11448:375|
 :skolemid |229|
))) (forall ((dd_addr@@1 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@1) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@1))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@1)))))
 :qid |DiemBlockcvc5bpl.11448:729|
 :skolemid |230|
)))) (and (and (and (forall ((dd_addr@@2 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@2))))
 :qid |DiemBlockcvc5bpl.11452:22|
 :skolemid |231|
)) (forall ((dd_addr@@3 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@3) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@3))))
 :qid |DiemBlockcvc5bpl.11452:220|
 :skolemid |232|
))) (forall ((dd_addr@@4 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@4) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@4))))
 :qid |DiemBlockcvc5bpl.11452:419|
 :skolemid |233|
))) (and (and (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.11456:22|
 :skolemid |234|
)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.11456:222|
 :skolemid |235|
))) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.11456:423|
 :skolemid |236|
))))) (=> (and (and (and (and (and (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.11460:22|
 :skolemid |237|
)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.11460:227|
 :skolemid |238|
))) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.11460:433|
 :skolemid |239|
))) (|$IsValid'address'| (|$addr#$signer| _$t0))) (and (|$IsValid'address'| (|$addr#$signer| _$t1)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |DiemBlockcvc5bpl.11473:20|
 :skolemid |240|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0))
)))) (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@0)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@0) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@0)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@0) 10000000000))))
 :qid |DiemBlockcvc5bpl.11477:20|
 :skolemid |241|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $a_0@@1)))
(|$IsValid'$1_Diem_Preburn'#0''| $rsc@@1))
 :qid |DiemBlockcvc5bpl.11481:20|
 :skolemid |242|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@2)))
 (and (|$IsValid'$1_Diem_PreburnQueue'#0''| $rsc@@2) (and (<= (|l#Vec_89893| (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@2)) 256) (let (($range_1 ($Range 0 (|l#Vec_89893| (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@2)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@99 $i_2))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@2)) i@@99)))) 0)))
 :qid |DiemBlockcvc5bpl.11486:199|
 :skolemid |243|
))))))
 :qid |DiemBlockcvc5bpl.11485:20|
 :skolemid |244|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@3)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@3))
 :qid |DiemBlockcvc5bpl.11490:20|
 :skolemid |245|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@3))
))))) (and (and (and (= $t5 (|$addr#$signer| _$t0)) (= $t6 (|$addr#$signer| _$t1))) (and (= $t7 (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t5))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t8 (|$addr#$signer| _$t1)) (= $t9  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t8)) 1))) (not (= (|$addr#$signer| _$t1) 186537453)))))))) (and (=> (= (ControlFlow 0 216888) 217964) anon12_Then_correct) (=> (= (ControlFlow 0 216888) 216958) anon12_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_89261| stream@@0) 0) (forall ((v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@0) v@@50) 0)
 :qid |DiemBlockcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemBlockcvc5bpl.2945:13|
 :skolemid |105|
))) (= (ControlFlow 0 215999) 216888)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 300160) 215999) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2| () T@$Memory_143528)
(declare-fun $t18@@0 () Int)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t15@@0 () Int)
(declare-fun $t6@@0 () Int)
(declare-fun _$t1@@0 () T@$signer)
(declare-fun $t7@@0 () Int)
(declare-fun $t5@@0 () Int)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| () T@$Memory_143528)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| () T@$Memory_143528)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t21@@0 () Bool)
(declare-fun $t10@0@@0 () Int)
(declare-fun $t16@@0 () Int)
(declare-fun $t10@@0 () Int)
(declare-fun $t17@@0 () Int)
(declare-fun $t19@@0 () Int)
(declare-fun $t12@@0 () Bool)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $t20@@0 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@0 () Int)
(declare-fun $t9@@0 () Bool)
(declare-fun $t11@@0 () Int)
(declare-fun $t8@@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_128465)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_add_currency$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 302384) (let ((anon10_correct@@0  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2|) $t18@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t18@@0))) (and (= (|l#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2|) $t18@@0))) 0) (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2|) $t15@@0))) (and (=> (= (ControlFlow 0 219867) (- 0 304282)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@0))) (and (=> (= (ControlFlow 0 219867) (- 0 304294)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@0)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (and (=> (= (ControlFlow 0 219867) (- 0 304312)) (not (not (= (|$addr#$signer| _$t1@@0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@0) 186537453))) (and (=> (= (ControlFlow 0 219867) (- 0 304326)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@0))) (and (=> (= (ControlFlow 0 219867) (- 0 304338)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@0)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@0)) 2))) (and (=> (= (ControlFlow 0 219867) (- 0 304356)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@0))) (and (=> (= (ControlFlow 0 219867) (- 0 304368)) (not (let ((addr@@13 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@13) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@13)))))) (=> (not (let ((addr@@14 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@14) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@14))))) (and (=> (= (ControlFlow 0 219867) (- 0 304376)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0)) (and (=> (= (ControlFlow 0 219867) (- 0 304386)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0)) (=> (= (ControlFlow 0 219867) (- 0 304396)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))))))))))))))))))))))))
(let ((anon15_Else_correct@@0  (=> (and (and (not |$temp_0'bool'@0@@0|) (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| ($Memory_143528 (|Store__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t15@@0 false) (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|)))) (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 219705) 219867))) anon10_correct@@0)))
(let ((anon15_Then_correct@@0  (=> (and (and |$temp_0'bool'@0@@0| (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| ($Memory_143528 (|Store__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t15@@0 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t15@@0 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0|)))) (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0|) (= (ControlFlow 0 219879) 219867))) anon10_correct@@0)))
(let ((anon14_Else_correct@@0  (=> (not $t21@@0) (and (=> (= (ControlFlow 0 219693) 219879) anon15_Then_correct@@0) (=> (= (ControlFlow 0 219693) 219705) anon15_Else_correct@@0)))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 219487) (- 0 303938)) (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@0))) (let ((addr@@15 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@15) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@15))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0)) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@0))) (let ((addr@@16 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@16) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@16))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0)) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (= (ControlFlow 0 219487) (- 0 304030)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t10@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@0)) 1)) (= 3 $t10@0@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 186537453)) (= 2 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@0)) (= 5 $t10@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@0)) 2)) (= 3 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@0)) (= 5 $t10@0@@0))) (and (let ((addr@@17 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@17) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@17)))) (= 7 $t10@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0) (= 6 $t10@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0) (= 1 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@0@@0))))))))
(let ((anon14_Then_correct@@0  (=> $t21@@0 (=> (and (and (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t16@@0)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t16@@0)) 2)) (= 3 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t17@@0)) (= 5 $t10@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t17@@0)) 2)) (= 3 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t19@@0)) (= 5 $t10@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t19@@0)) 1)) (= 3 $t10@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 186537453)) (= 2 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@0))) (and (let ((addr@@18 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@18) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@18)))) (= 7 $t10@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t15@@0) (= 6 $t10@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t15@@0) (= 1 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0@@0 $t10@@0) (= (ControlFlow 0 220113) 219487))) L3_correct@@0))))
(let ((anon13_Then_correct@@0  (=> $t12@@0 (=> (and (= $t15@@0 (|$addr#$signer| _$t0@@0)) (= $t16@@0 (|$addr#$signer| _$t0@@0))) (=> (and (and (= $t17@@0 (|$addr#$signer| _$t0@@0)) (= $t18@@0 (|$addr#$signer| _$t0@@0))) (and (= $t19@@0 (|$addr#$signer| _$t1@@0)) (= $t20@@0 (|$addr#$signer| _$t0@@0)))) (and (=> (= (ControlFlow 0 219687) (- 0 303536)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t15@@0)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t15@@0) (=> (= $t21@@0  (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t16@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t16@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t17@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t17@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t19@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t19@@0)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (let ((addr@@19 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@19) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@19))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t15@@0)) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t15@@0))) (and (=> (= (ControlFlow 0 219687) 220113) anon14_Then_correct@@0) (=> (= (ControlFlow 0 219687) 219693) anon14_Else_correct@@0))))))))))
(let ((anon13_Else_correct@@0  (=> (and (and (not $t12@@0) (= $t14@@0 $t14@@0)) (and (= $t10@0@@0 $t14@@0) (= (ControlFlow 0 219195) 219487))) L3_correct@@0)))
(let ((anon12_Else_correct@@0  (=> (and (not $t9@@0) (|$IsValid'address'| $t11@@0)) (=> (and (and (and (= $t11@@0 (|$addr#$signer| _$t0@@0)) (= $t11@@0 $t11@@0)) (and (= $t12@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t11@@0)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14@@0) (= $t14@@0 5)) (and (= $t14@@0 $t14@@0) (= $t12@@0 $t12@@0)))) (and (=> (= (ControlFlow 0 219179) 219687) anon13_Then_correct@@0) (=> (= (ControlFlow 0 219179) 219195) anon13_Else_correct@@0))))))
(let ((anon12_Then_correct@@0  (=> $t9@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@0)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@0)) 1)) (= 3 $t10@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 186537453)) (= 2 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0@@0 $t10@@0) (= (ControlFlow 0 220185) 219487))) L3_correct@@0))))
(let ((anon0$1_correct@@0  (=> (and (and (and (and (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |DiemBlockcvc5bpl.11849:22|
 :skolemid |246|
)) (forall ((mint_cap_owner@@3 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@3)) 1))))
 :qid |DiemBlockcvc5bpl.11849:269|
 :skolemid |247|
))) (forall ((mint_cap_owner@@4 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@4)) 1))))
 :qid |DiemBlockcvc5bpl.11849:517|
 :skolemid |248|
))) (and (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137277| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@4)) 1))))
 :qid |DiemBlockcvc5bpl.11857:21|
 :skolemid |249|
)) (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137364| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@5)) 1))))
 :qid |DiemBlockcvc5bpl.11857:231|
 :skolemid |250|
)))) (and (and (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@6)) 2))))
 :qid |DiemBlockcvc5bpl.11861:22|
 :skolemid |251|
)) (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@7)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@7)) 2))))
 :qid |DiemBlockcvc5bpl.11861:293|
 :skolemid |252|
))) (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr1@@8)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@8)) 2))))
 :qid |DiemBlockcvc5bpl.11861:565|
 :skolemid |253|
)))) (=> (and (and (and (and (and (forall ((dd_addr@@5 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@5) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@5))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@5)))))
 :qid |DiemBlockcvc5bpl.11865:22|
 :skolemid |254|
)) (forall ((dd_addr@@6 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@6) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@6))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@6)))))
 :qid |DiemBlockcvc5bpl.11865:375|
 :skolemid |255|
))) (forall ((dd_addr@@7 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@7) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@7))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@7)))))
 :qid |DiemBlockcvc5bpl.11865:729|
 :skolemid |256|
))) (and (and (forall ((dd_addr@@8 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@8) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@8))))
 :qid |DiemBlockcvc5bpl.11869:22|
 :skolemid |257|
)) (forall ((dd_addr@@9 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@9) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@9))))
 :qid |DiemBlockcvc5bpl.11869:220|
 :skolemid |258|
))) (forall ((dd_addr@@10 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@10) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@10))))
 :qid |DiemBlockcvc5bpl.11869:419|
 :skolemid |259|
)))) (and (and (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.11873:22|
 :skolemid |260|
)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.11873:222|
 :skolemid |261|
))) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.11873:423|
 :skolemid |262|
))) (and (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.11877:22|
 :skolemid |263|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@24) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.11877:227|
 :skolemid |264|
))) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@25) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.11877:433|
 :skolemid |265|
))))) (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128465| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@0))) (and (|$IsValid'address'| (|$addr#$signer| _$t1@@0)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |DiemBlockcvc5bpl.11894:20|
 :skolemid |266|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@4))
)))) (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@5)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@5) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@5)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@5) 10000000000))))
 :qid |DiemBlockcvc5bpl.11898:20|
 :skolemid |267|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@6)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@6))
 :qid |DiemBlockcvc5bpl.11902:20|
 :skolemid |268|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@6))
))) (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@7)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@7) (and (<= (|l#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@7)) 256) (let (($range_1@@0 ($Range 0 (|l#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@7)))))
(forall (($i_2@@0 Int) ) (!  (=> ($InRange $range_1@@0 $i_2@@0) (let ((i@@100 $i_2@@0))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@7)) i@@100)))) 0)))
 :qid |DiemBlockcvc5bpl.11907:223|
 :skolemid |269|
))))))
 :qid |DiemBlockcvc5bpl.11906:20|
 :skolemid |270|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@8)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@8))
 :qid |DiemBlockcvc5bpl.11911:20|
 :skolemid |271|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@8))
))))) (and (and (and (= $t5@@0 (|$addr#$signer| _$t0@@0)) (= $t6@@0 (|$addr#$signer| _$t1@@0))) (and (= $t7@@0 (|$addr#$signer| _$t0@@0)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t5@@0))) (and (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0)) (and (= $t8@@0 (|$addr#$signer| _$t1@@0)) (= $t9@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@0)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))))))))) (and (=> (= (ControlFlow 0 219109) 220185) anon12_Then_correct@@0) (=> (= (ControlFlow 0 219109) 219179) anon12_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_89261| stream@@1) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@1) v@@51) 0)
 :qid |DiemBlockcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemBlockcvc5bpl.2945:13|
 :skolemid |105|
))) (= (ControlFlow 0 218210) 219109)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 302384) 218210) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2| () T@$Memory_143645)
(declare-fun $t18@@1 () Int)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(declare-fun $t15@@1 () Int)
(declare-fun $t6@@1 () Int)
(declare-fun _$t1@@1 () T@$signer)
(declare-fun $t7@@1 () Int)
(declare-fun $t5@@1 () Int)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1| () T@$Memory_143645)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0| () T@$Memory_143645)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| Int |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX''@0| () |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(declare-fun $t21@@1 () Bool)
(declare-fun $t10@0@@1 () Int)
(declare-fun $t16@@1 () Int)
(declare-fun $t10@@1 () Int)
(declare-fun $t17@@1 () Int)
(declare-fun $t19@@1 () Int)
(declare-fun $t12@@1 () Bool)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $t20@@1 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@1 () Int)
(declare-fun $t9@@1 () Bool)
(declare-fun $t11@@1 () Int)
(declare-fun $t8@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_add_currency$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 304412) (let ((anon10_correct@@1  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2|) $t18@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t18@@1))) (and (= (|l#Vec_89854| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2|) $t18@@1))) 0) (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2|) $t15@@1))) (and (=> (= (ControlFlow 0 222080) (- 0 306300)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@1))) (and (=> (= (ControlFlow 0 222080) (- 0 306312)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@1)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@1)) 1))) (and (=> (= (ControlFlow 0 222080) (- 0 306330)) (not (not (= (|$addr#$signer| _$t1@@1) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@1) 186537453))) (and (=> (= (ControlFlow 0 222080) (- 0 306344)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@1))) (and (=> (= (ControlFlow 0 222080) (- 0 306356)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@1)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@1)) 2))) (and (=> (= (ControlFlow 0 222080) (- 0 306374)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@1))) (and (=> (= (ControlFlow 0 222080) (- 0 306386)) (not (let ((addr@@26 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@26) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@26)))))) (=> (not (let ((addr@@27 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@27) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@27))))) (and (=> (= (ControlFlow 0 222080) (- 0 306394)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@1)) (and (=> (= (ControlFlow 0 222080) (- 0 306404)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@1)) (=> (= (ControlFlow 0 222080) (- 0 306414)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))))))))))))))))))))))))
(let ((anon15_Else_correct@@1  (=> (and (and (not |$temp_0'bool'@0@@1|) (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1| ($Memory_143645 (|Store__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t15@@1 false) (|contents#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|)))) (and (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 221918) 222080))) anon10_correct@@1)))
(let ((anon15_Then_correct@@1  (=> (and (and |$temp_0'bool'@0@@1| (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0| ($Memory_143645 (|Store__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t15@@1 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t15@@1 |$temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX''@0|)))) (and (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0|) (= (ControlFlow 0 222092) 222080))) anon10_correct@@1)))
(let ((anon14_Else_correct@@1  (=> (not $t21@@1) (and (=> (= (ControlFlow 0 221906) 222092) anon15_Then_correct@@1) (=> (= (ControlFlow 0 221906) 221918) anon15_Else_correct@@1)))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 221700) (- 0 305956)) (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@1)) 1))) (not (= (|$addr#$signer| _$t1@@1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@1)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@1))) (let ((addr@@28 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@28) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@28))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@1)) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@1)) 1))) (not (= (|$addr#$signer| _$t1@@1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@1)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@1))) (let ((addr@@29 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@29) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@29))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@1)) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (= (ControlFlow 0 221700) (- 0 306048)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@1)) (= 5 $t10@0@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@1)) 1)) (= 3 $t10@0@@1))) (and (not (= (|$addr#$signer| _$t1@@1) 186537453)) (= 2 $t10@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@1)) (= 5 $t10@0@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@1)) 2)) (= 3 $t10@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@1)) (= 5 $t10@0@@1))) (and (let ((addr@@30 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@30) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@30)))) (= 7 $t10@0@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@1) (= 6 $t10@0@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@1) (= 1 $t10@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t10@0@@1))))))))
(let ((anon14_Then_correct@@1  (=> $t21@@1 (=> (and (and (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t16@@1)) (= 5 $t10@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t16@@1)) 2)) (= 3 $t10@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t17@@1)) (= 5 $t10@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t17@@1)) 2)) (= 3 $t10@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t10@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t19@@1)) (= 5 $t10@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t19@@1)) 1)) (= 3 $t10@@1))) (and (not (= (|$addr#$signer| _$t1@@1) 186537453)) (= 2 $t10@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t10@@1))) (and (let ((addr@@31 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@31) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@31)))) (= 7 $t10@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t15@@1) (= 6 $t10@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t15@@1) (= 1 $t10@@1))) (= $t10@@1 $t10@@1)) (and (= $t10@0@@1 $t10@@1) (= (ControlFlow 0 222326) 221700))) L3_correct@@1))))
(let ((anon13_Then_correct@@1  (=> $t12@@1 (=> (and (= $t15@@1 (|$addr#$signer| _$t0@@1)) (= $t16@@1 (|$addr#$signer| _$t0@@1))) (=> (and (and (= $t17@@1 (|$addr#$signer| _$t0@@1)) (= $t18@@1 (|$addr#$signer| _$t0@@1))) (and (= $t19@@1 (|$addr#$signer| _$t1@@1)) (= $t20@@1 (|$addr#$signer| _$t0@@1)))) (and (=> (= (ControlFlow 0 221900) (- 0 305554)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies| $t15@@1)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies| $t15@@1) (=> (= $t21@@1  (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t16@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t16@@1)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t17@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t17@@1)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t19@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t19@@1)) 1))) (not (= (|$addr#$signer| _$t1@@1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (let ((addr@@32 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@32))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t15@@1)) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t15@@1))) (and (=> (= (ControlFlow 0 221900) 222326) anon14_Then_correct@@1) (=> (= (ControlFlow 0 221900) 221906) anon14_Else_correct@@1))))))))))
(let ((anon13_Else_correct@@1  (=> (and (and (not $t12@@1) (= $t14@@1 $t14@@1)) (and (= $t10@0@@1 $t14@@1) (= (ControlFlow 0 221408) 221700))) L3_correct@@1)))
(let ((anon12_Else_correct@@1  (=> (and (not $t9@@1) (|$IsValid'address'| $t11@@1)) (=> (and (and (and (= $t11@@1 (|$addr#$signer| _$t0@@1)) (= $t11@@1 $t11@@1)) (and (= $t12@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t11@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14@@1) (= $t14@@1 5)) (and (= $t14@@1 $t14@@1) (= $t12@@1 $t12@@1)))) (and (=> (= (ControlFlow 0 221392) 221900) anon13_Then_correct@@1) (=> (= (ControlFlow 0 221392) 221408) anon13_Else_correct@@1))))))
(let ((anon12_Then_correct@@1  (=> $t9@@1 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@1)) (= 5 $t10@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@1)) 1)) (= 3 $t10@@1))) (and (not (= (|$addr#$signer| _$t1@@1) 186537453)) (= 2 $t10@@1))) (= $t10@@1 $t10@@1)) (and (= $t10@0@@1 $t10@@1) (= (ControlFlow 0 222398) 221700))) L3_correct@@1))))
(let ((anon0$1_correct@@1  (=> (and (and (and (forall ((mint_cap_owner@@5 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@5)) 1))))
 :qid |DiemBlockcvc5bpl.12270:22|
 :skolemid |272|
)) (forall ((mint_cap_owner@@6 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@6)) 1))))
 :qid |DiemBlockcvc5bpl.12270:269|
 :skolemid |273|
))) (forall ((mint_cap_owner@@7 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@7)) 1))))
 :qid |DiemBlockcvc5bpl.12270:517|
 :skolemid |274|
))) (and (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137277| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@9)) 1))))
 :qid |DiemBlockcvc5bpl.12278:21|
 :skolemid |275|
)) (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137364| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@10)) 1))))
 :qid |DiemBlockcvc5bpl.12278:231|
 :skolemid |276|
)))) (=> (and (and (and (and (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@11)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@11)) 2))))
 :qid |DiemBlockcvc5bpl.12282:22|
 :skolemid |277|
)) (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@12)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@12)) 2))))
 :qid |DiemBlockcvc5bpl.12282:293|
 :skolemid |278|
))) (forall ((addr1@@13 Int) ) (!  (=> (|$IsValid'address'| addr1@@13) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr1@@13)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@13)) 2))))
 :qid |DiemBlockcvc5bpl.12282:565|
 :skolemid |279|
))) (and (and (forall ((dd_addr@@11 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@11) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@11))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@11)))))
 :qid |DiemBlockcvc5bpl.12286:22|
 :skolemid |280|
)) (forall ((dd_addr@@12 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@12) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@12))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@12)))))
 :qid |DiemBlockcvc5bpl.12286:375|
 :skolemid |281|
))) (forall ((dd_addr@@13 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@13) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@13))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@13)))))
 :qid |DiemBlockcvc5bpl.12286:729|
 :skolemid |282|
)))) (and (and (and (forall ((dd_addr@@14 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@14) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@14))))
 :qid |DiemBlockcvc5bpl.12290:22|
 :skolemid |283|
)) (forall ((dd_addr@@15 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@15) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@15))))
 :qid |DiemBlockcvc5bpl.12290:220|
 :skolemid |284|
))) (forall ((dd_addr@@16 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@16) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@16))))
 :qid |DiemBlockcvc5bpl.12290:419|
 :skolemid |285|
))) (and (and (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@33) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.12294:22|
 :skolemid |286|
)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@34) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.12294:222|
 :skolemid |287|
))) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr@@35) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.12294:423|
 :skolemid |288|
))))) (=> (and (and (and (and (and (and (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@36) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.12298:22|
 :skolemid |289|
)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@37) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.12298:227|
 :skolemid |290|
))) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@38) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.12298:433|
 :skolemid |291|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@1))) (and (|$IsValid'address'| (|$addr#$signer| _$t1@@1)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |DiemBlockcvc5bpl.12311:20|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@9))
)))) (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@10)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@10) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@10)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@10) 10000000000))))
 :qid |DiemBlockcvc5bpl.12315:20|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $a_0@@11)))
(|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| $rsc@@11))
 :qid |DiemBlockcvc5bpl.12319:20|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $a_0@@11))
))) (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $a_0@@12)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| $rsc@@12) (and (<= (|l#Vec_89854| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@12)) 256) (let (($range_1@@1 ($Range 0 (|l#Vec_89854| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@12)))))
(forall (($i_2@@1 Int) ) (!  (=> ($InRange $range_1@@1 $i_2@@1) (let ((i@@101 $i_2@@1))
(> (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@12)) i@@101)))) 0)))
 :qid |DiemBlockcvc5bpl.12324:223|
 :skolemid |295|
))))))
 :qid |DiemBlockcvc5bpl.12323:20|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@13)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@13))
 :qid |DiemBlockcvc5bpl.12328:20|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@13))
))))) (and (and (and (= $t5@@1 (|$addr#$signer| _$t0@@1)) (= $t6@@1 (|$addr#$signer| _$t1@@1))) (and (= $t7@@1 (|$addr#$signer| _$t0@@1)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies| $t5@@1))) (and (and (= _$t0@@1 _$t0@@1) (= _$t1@@1 _$t1@@1)) (and (= $t8@@1 (|$addr#$signer| _$t1@@1)) (= $t9@@1  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@1)) 1))) (not (= (|$addr#$signer| _$t1@@1) 186537453)))))))) (and (=> (= (ControlFlow 0 221322) 222398) anon12_Then_correct@@1) (=> (= (ControlFlow 0 221322) 221392) anon12_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_89261| stream@@2) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@2) v@@52) 0)
 :qid |DiemBlockcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemBlockcvc5bpl.2945:13|
 :skolemid |105|
))) (= (ControlFlow 0 220433) 221322)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 304412) 220433) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@2 () Int)
(declare-fun $t1@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_exists_at$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 306426) (let ((anon0$1_correct@@2  (=> (|$IsValid'address'| _$t0@@2) (=> (and (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@14)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@14))
 :qid |DiemBlockcvc5bpl.12656:20|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@14))
)) (= _$t0@@2 _$t0@@2)) (and (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t0@@2)) (= $t1@0 $t1@0))) (and (=> (= (ControlFlow 0 222726) (- 0 306519)) (not false)) (=> (not false) (=> (= (ControlFlow 0 222726) (- 0 306526)) (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t0@@2)))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_89261| stream@@3) 0) (forall ((v@@53 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@3) v@@53) 0)
 :qid |DiemBlockcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemBlockcvc5bpl.2945:13|
 :skolemid |105|
))) (= (ControlFlow 0 222642) 222726)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 306426) 222642) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t6@@2 () Int)
(declare-fun _$t1@@2 () T@$signer)
(declare-fun $t7@@2 () Int)
(declare-fun $t5@@2 () Int)
(declare-fun _$t2 () Bool)
(declare-fun $1_DesignatedDealer_Dealer_$memory@1 () T@$Memory_161495)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1@@0| () T@$Memory_143528)
(declare-fun $t20@@2 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0@@0| () T@$Memory_143528)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0@@0| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t23 () Bool)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1@@0| () T@$Memory_143762)
(declare-fun $t24 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0@@0| () T@$Memory_143762)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'#0''@0@@0| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t27 () Bool)
(declare-fun $t10@0@@2 () Int)
(declare-fun $t21@@2 () Int)
(declare-fun $t10@@2 () Int)
(declare-fun $t22 () Int)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $t25 () Int)
(declare-fun $t26 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory@0 () T@$Memory_161495)
(declare-fun |Store__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int T@$1_DesignatedDealer_Dealer) |T@[Int]$1_DesignatedDealer_Dealer|)
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?y1))) :weight 0)))
(declare-fun $t19@0 () T@$1_DesignatedDealer_Dealer)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DesignatedDealer_Dealer_$modifies () |T@[Int]Bool|)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t17@@2 () Int)
(declare-fun $t14@0 () Bool)
(declare-fun $t12@@2 () Bool)
(declare-fun $t13 () Int)
(declare-fun $t11@@2 () Int)
(declare-fun $t9@@2 () Bool)
(declare-fun $t8@@2 () Int)
(declare-fun $1_Event_EventHandleGenerator_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_publish_designated_dealer_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 306546) (let ((L5_correct  (and (=> (= (ControlFlow 0 225033) (- 0 309364)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@2))) (and (=> (= (ControlFlow 0 225033) (- 0 309376)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@2)) 1))) (and (=> (= (ControlFlow 0 225033) (- 0 309394)) (not (not (= (|$addr#$signer| _$t1@@2) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@2) 186537453))) (and (=> (= (ControlFlow 0 225033) (- 0 309408)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@2))) (and (=> (= (ControlFlow 0 225033) (- 0 309420)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@2)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@2)) 2))) (and (=> (= (ControlFlow 0 225033) (- 0 309438)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@2)) (and (=> (= (ControlFlow 0 225033) (- 0 309448)) (not (and _$t2 (let ((addr@@39 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@39) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@39))))))) (=> (not (and _$t2 (let ((addr@@40 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@40) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@40)))))) (and (=> (= (ControlFlow 0 225033) (- 0 309459)) (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@2)))) (=> (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@2))) (and (=> (= (ControlFlow 0 225033) (- 0 309472)) (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@2)))) (=> (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@2))) (and (=> (= (ControlFlow 0 225033) (- 0 309485)) (not (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 225033) (- 0 309498)) (not (and (not _$t2) (let ((addr@@41 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@41) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@41))))))) (=> (not (and (not _$t2) (let ((addr@@42 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@42) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@42)))))) (and (=> (= (ControlFlow 0 225033) (- 0 309511)) (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@2)))) (=> (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@2))) (and (=> (= (ControlFlow 0 225033) (- 0 309526)) (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t5@@2)))) (=> (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t5@@2))) (and (=> (= (ControlFlow 0 225033) (- 0 309541)) (not (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= (ControlFlow 0 225033) (- 0 309556)) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1) $t5@@2))))))))))))))))))))))))))))))))
(let ((anon38_Else_correct  (=> (not |$temp_0'bool'@1|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1@@0| ($Memory_143528 (|Store__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@2 false) (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 225405) 225033)) L5_correct))))
(let ((anon38_Then_correct  (=> |$temp_0'bool'@1| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0@@0| ($Memory_143528 (|Store__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@2 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@2 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0@@0|))) (= (ControlFlow 0 225419) 225033)) L5_correct))))
(let ((anon37_Else_correct  (=> (not $t23) (and (=> (= (ControlFlow 0 225393) 225419) anon38_Then_correct) (=> (= (ControlFlow 0 225393) 225405) anon38_Else_correct)))))
(let ((anon28_correct  (=> (= (ControlFlow 0 224821) 225033) L5_correct)))
(let ((anon40_Else_correct  (=> (not |$temp_0'bool'@0@@2|) (=> (and (= |$1_Diem_PreburnQueue'#0'_$memory@1@@0| ($Memory_143762 (|Store__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t24 false) (|contents#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|))) (= (ControlFlow 0 224817) 224821)) anon28_correct))))
(let ((anon40_Then_correct  (=> |$temp_0'bool'@0@@2| (=> (and (= |$1_Diem_PreburnQueue'#0'_$memory@0@@0| ($Memory_143762 (|Store__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t24 true) (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t24 |$temp_0'$1_Diem_PreburnQueue'#0''@0@@0|))) (= (ControlFlow 0 225045) 224821)) anon28_correct))))
(let ((anon39_Else_correct  (=> (not $t27) (and (=> (= (ControlFlow 0 224805) 225045) anon40_Then_correct) (=> (= (ControlFlow 0 224805) 224817) anon40_Else_correct)))))
(let ((anon33_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 224490) (- 0 308920)) (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@2)) 1))) (not (= (|$addr#$signer| _$t1@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@2)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@2)) (and _$t2 (let ((addr@@43 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@43) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@43)))))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@2))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@2))) (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2) (let ((addr@@44 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@44) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@44)))))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@2))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t5@@2))) (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@2)) 1))) (not (= (|$addr#$signer| _$t1@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@2)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@2)) (and _$t2 (let ((addr@@45 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@45) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@45)))))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@2))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@2))) (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2) (let ((addr@@46 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@46) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@46)))))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@2))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t5@@2))) (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= (ControlFlow 0 224490) (- 0 309068)) (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@2)) (= 5 $t10@0@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@2)) 1)) (= 3 $t10@0@@2))) (and (not (= (|$addr#$signer| _$t1@@2) 186537453)) (= 2 $t10@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@2)) (= 5 $t10@0@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@2)) 2)) (= 3 $t10@0@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@2) (= 6 $t10@0@@2))) (and (and _$t2 (let ((addr@@47 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@47) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@47))))) (= 7 $t10@0@@2))) (and (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@2)) (= 6 $t10@0@@2))) (and (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@2)) (= 1 $t10@0@@2))) (and (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t10@0@@2))) (and (and (not _$t2) (let ((addr@@48 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@48) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@48))))) (= 7 $t10@0@@2))) (and (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@2)) (= 6 $t10@0@@2))) (and (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t5@@2)) (= 1 $t10@0@@2))) (and (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 5 $t10@0@@2))))))))
(let ((anon37_Then_correct  (=> $t23 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t21@@2)) (= 5 $t10@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t21@@2)) 1)) (= 3 $t10@@2))) (and (not (= (|$addr#$signer| _$t1@@2) 186537453)) (= 2 $t10@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t22)) (= 5 $t10@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t22)) 2)) (= 3 $t10@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1) $t20@@2)) (= 5 $t10@@2))) (and (let ((addr@@49 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@49) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@49)))) (= 7 $t10@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@2) (= 6 $t10@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@2) (= 1 $t10@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@2))) (= $t10@@2 $t10@@2)) (and (= $t10@0@@2 $t10@@2) (= (ControlFlow 0 225613) 224490))) L7_correct))))
(let ((anon36_Then_correct  (=> (and (and _$t2 (= $t20@@2 (|$addr#$signer| _$t0@@3))) (and (= $t21@@2 (|$addr#$signer| _$t1@@2)) (= $t22 (|$addr#$signer| _$t0@@3)))) (and (=> (= (ControlFlow 0 225387) (- 0 308207)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@0| $t20@@2)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@0| $t20@@2) (=> (= $t23  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t21@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t21@@2)) 1))) (not (= (|$addr#$signer| _$t1@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t22))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t22)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1) $t20@@2))) (let ((addr@@50 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@50) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@50))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@2)) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 225387) 225613) anon37_Then_correct) (=> (= (ControlFlow 0 225387) 225393) anon37_Else_correct))))))))
(let ((anon39_Then_correct  (=> $t27 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t25)) (= 5 $t10@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t25)) 1)) (= 3 $t10@@2))) (and (not (= (|$addr#$signer| _$t1@@2) 186537453)) (= 2 $t10@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t26)) (= 5 $t10@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t26)) 2)) (= 3 $t10@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1) $t24)) (= 5 $t10@@2))) (and (let ((addr@@51 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@51) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@51)))) (= 7 $t10@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t24) (= 6 $t10@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t24) (= 1 $t10@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10@@2))) (= $t10@@2 $t10@@2)) (and (= $t10@0@@2 $t10@@2) (= (ControlFlow 0 225239) 224490))) L7_correct))))
(let ((anon36_Else_correct  (=> (and (and (not _$t2) (= $t24 (|$addr#$signer| _$t0@@3))) (and (= $t25 (|$addr#$signer| _$t1@@2)) (= $t26 (|$addr#$signer| _$t0@@3)))) (and (=> (= (ControlFlow 0 224799) (- 0 308353)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies@@0| $t24)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies@@0| $t24) (=> (= $t27  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t25)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t25)) 1))) (not (= (|$addr#$signer| _$t1@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t26))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t26)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1) $t24))) (let ((addr@@52 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@52) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@52))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $t24)) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $t24)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 224799) 225239) anon39_Then_correct) (=> (= (ControlFlow 0 224799) 224805) anon39_Else_correct))))))))
(let ((anon35_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 224649) (- 0 308149)) (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) addr@@53) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1) addr@@53)))
 :qid |DiemBlockcvc5bpl.13070:15|
 :skolemid |329|
))) (=> (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) addr@@54) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1) addr@@54)))
 :qid |DiemBlockcvc5bpl.13070:15|
 :skolemid |329|
)) (and (=> (= (ControlFlow 0 224649) 225387) anon36_Then_correct) (=> (= (ControlFlow 0 224649) 224799) anon36_Else_correct)))))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t10@0@@2 $abort_code@1) (= (ControlFlow 0 225627) 224490))) L7_correct)))
(let ((anon34_Then$1_correct  (=> (= $1_DesignatedDealer_Dealer_$memory@1 $1_DesignatedDealer_Dealer_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 225679) 225627) anon35_Then_correct) (=> (= (ControlFlow 0 225679) 224649) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@3)) (= (ControlFlow 0 225677) 225679)) anon34_Then$1_correct)))
(let ((anon34_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@3))) (=> (and (and (= $1_DesignatedDealer_Dealer_$memory@0 ($Memory_161495 (|Store__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@3) true) (|Store__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@3) $t19@0))) (= $1_DesignatedDealer_Dealer_$memory@1 $1_DesignatedDealer_Dealer_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 224614) 225627) anon35_Then_correct) (=> (= (ControlFlow 0 224614) 224649) anon35_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (not false) (= $t19@0 ($1_DesignatedDealer_Dealer |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 224592) (- 0 308048)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies (|$addr#$signer| _$t0@@3))) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies (|$addr#$signer| _$t0@@3)) (and (=> (= (ControlFlow 0 224592) 225677) anon34_Then_correct) (=> (= (ControlFlow 0 224592) 224614) anon34_Else_correct)))))))
(let ((|inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 224560) 225693) anon33_Then_correct) (=> (= (ControlFlow 0 224560) 224592) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 224566) 224560)) |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|)))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t17@@2 $t17@@2)) (and (= $t10@0@@2 $t17@@2) (= (ControlFlow 0 224030) 224490))) L7_correct)))
(let ((anon31_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t17@@2) (= $t17@@2 6)) (and (= $t17@@2 $t17@@2) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 224014) 224566) anon32_Then_correct) (=> (= (ControlFlow 0 224014) 224030) anon32_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t14@0)) (= (ControlFlow 0 223978) 224014)) anon31_Else$1_correct)))
(let ((anon31_Else_correct  (=> (not $t12@@2) (=> (and (and (|$IsValid'address'| $t13) (= $t13 (|$addr#$signer| _$t0@@3))) (and (= $t14@0 (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t13)) (= (ControlFlow 0 223984) 223978))) inline$$Not$0$anon0_correct))))
(let ((anon31_Then_correct  (=> $t12@@2 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t11@@2)) (= 5 $t10@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t11@@2)) 2)) (= 3 $t10@@2))) (= $t10@@2 $t10@@2)) (and (= $t10@0@@2 $t10@@2) (= (ControlFlow 0 225745) 224490))) L7_correct))))
(let ((anon30_Else_correct  (=> (not $t9@@2) (=> (and (= $t11@@2 (|$addr#$signer| _$t0@@3)) (= $t12@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t11@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t11@@2)) 2))))) (and (=> (= (ControlFlow 0 223922) 225745) anon31_Then_correct) (=> (= (ControlFlow 0 223922) 223984) anon31_Else_correct))))))
(let ((anon30_Then_correct  (=> $t9@@2 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@2)) (= 5 $t10@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@2)) 1)) (= 3 $t10@@2))) (and (not (= (|$addr#$signer| _$t1@@2) 186537453)) (= 2 $t10@@2))) (= $t10@@2 $t10@@2)) (and (= $t10@0@@2 $t10@@2) (= (ControlFlow 0 225817) 224490))) L7_correct))))
(let ((anon0$1_correct@@3  (=> (and (and (and (forall ((mint_cap_owner@@8 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@8)) 1))))
 :qid |DiemBlockcvc5bpl.12751:22|
 :skolemid |299|
)) (forall ((mint_cap_owner@@9 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@9)) 1))))
 :qid |DiemBlockcvc5bpl.12751:269|
 :skolemid |300|
))) (forall ((mint_cap_owner@@10 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@10)) 1))))
 :qid |DiemBlockcvc5bpl.12751:517|
 :skolemid |301|
))) (and (forall ((addr1@@14 Int) ) (!  (=> (|$IsValid'address'| addr1@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137277| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@14)) 1))))
 :qid |DiemBlockcvc5bpl.12759:21|
 :skolemid |302|
)) (forall ((addr1@@15 Int) ) (!  (=> (|$IsValid'address'| addr1@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137364| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@15) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@15)) 1))))
 :qid |DiemBlockcvc5bpl.12759:231|
 :skolemid |303|
)))) (=> (and (and (and (and (forall ((addr1@@16 Int) ) (!  (=> (|$IsValid'address'| addr1@@16) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@16)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@16)) 2))))
 :qid |DiemBlockcvc5bpl.12763:22|
 :skolemid |304|
)) (forall ((addr1@@17 Int) ) (!  (=> (|$IsValid'address'| addr1@@17) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@17) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@17)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@17)) 2))))
 :qid |DiemBlockcvc5bpl.12763:293|
 :skolemid |305|
))) (forall ((addr1@@18 Int) ) (!  (=> (|$IsValid'address'| addr1@@18) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr1@@18)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@18)) 2))))
 :qid |DiemBlockcvc5bpl.12763:565|
 :skolemid |306|
))) (and (and (forall ((dd_addr@@17 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@17) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@17))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@17)))))
 :qid |DiemBlockcvc5bpl.12767:22|
 :skolemid |307|
)) (forall ((dd_addr@@18 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@18) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@18))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@18)))))
 :qid |DiemBlockcvc5bpl.12767:375|
 :skolemid |308|
))) (forall ((dd_addr@@19 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@19) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@19))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@19)))))
 :qid |DiemBlockcvc5bpl.12767:729|
 :skolemid |309|
)))) (and (and (and (forall ((dd_addr@@20 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@20) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@20))))
 :qid |DiemBlockcvc5bpl.12771:22|
 :skolemid |310|
)) (forall ((dd_addr@@21 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@21) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@21))))
 :qid |DiemBlockcvc5bpl.12771:220|
 :skolemid |311|
))) (forall ((dd_addr@@22 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@22) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@22))))
 :qid |DiemBlockcvc5bpl.12771:419|
 :skolemid |312|
))) (and (and (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@55) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.12775:22|
 :skolemid |313|
)) (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@56) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.12775:222|
 :skolemid |314|
))) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr@@57) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.12775:423|
 :skolemid |315|
))))) (=> (and (and (and (and (and (and (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@58) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.12779:22|
 :skolemid |316|
)) (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@59) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.12779:227|
 :skolemid |317|
))) (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@60) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.12779:433|
 :skolemid |318|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128465| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (|$IsValid'address'| (|$addr#$signer| _$t1@@2)))) (and (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@15)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@15))
 :qid |DiemBlockcvc5bpl.12799:20|
 :skolemid |319|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@15))
)) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@16)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@16) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@16)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@16) 10000000000))))
 :qid |DiemBlockcvc5bpl.12803:20|
 :skolemid |320|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@16))
))) (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@17)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@17))
 :qid |DiemBlockcvc5bpl.12807:20|
 :skolemid |321|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@17))
)) (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@18)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@18) (and (<= (|l#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@18)) 256) (let (($range_1@@2 ($Range 0 (|l#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@18)))))
(forall (($i_2@@2 Int) ) (!  (=> ($InRange $range_1@@2 $i_2@@2) (let ((i@@102 $i_2@@2))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@18)) i@@102)))) 0)))
 :qid |DiemBlockcvc5bpl.12812:223|
 :skolemid |322|
))))))
 :qid |DiemBlockcvc5bpl.12811:20|
 :skolemid |323|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@18))
))))) (and (and (and (and (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@19)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@19) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@19)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@19) 10000000000))))
 :qid |DiemBlockcvc5bpl.12816:20|
 :skolemid |324|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@19))
)) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $a_0@@20)))
(|$IsValid'$1_Diem_Preburn'#0''| $rsc@@20))
 :qid |DiemBlockcvc5bpl.12820:20|
 :skolemid |325|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) $a_0@@20))
))) (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@21)))
 (and (|$IsValid'$1_Diem_PreburnQueue'#0''| $rsc@@21) (and (<= (|l#Vec_89893| (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@21)) 256) (let (($range_1@@3 ($Range 0 (|l#Vec_89893| (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@21)))))
(forall (($i_2@@3 Int) ) (!  (=> ($InRange $range_1@@3 $i_2@@3) (let ((i@@103 $i_2@@3))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_89893| (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@21)) i@@103)))) 0)))
 :qid |DiemBlockcvc5bpl.12825:199|
 :skolemid |326|
))))))
 :qid |DiemBlockcvc5bpl.12824:20|
 :skolemid |327|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@21))
)) (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@22)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@22))
 :qid |DiemBlockcvc5bpl.12829:20|
 :skolemid |328|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@22))
)))) (and (and (= $t5@@2 (|$addr#$signer| _$t0@@3)) (= $t6@@2 (|$addr#$signer| _$t1@@2))) (and (= $t7@@2 (|$addr#$signer| _$t0@@3)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies $t5@@2)))) (and (and (and (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies $t5@@2) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies@@0| $t5@@2)) (and (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@0| $t5@@2) (= _$t0@@3 _$t0@@3))) (and (and (= _$t1@@2 _$t1@@2) (= _$t2 _$t2)) (and (= $t8@@2 (|$addr#$signer| _$t1@@2)) (= $t9@@2  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@2)) 1))) (not (= (|$addr#$signer| _$t1@@2) 186537453))))))))) (and (=> (= (ControlFlow 0 223874) 225817) anon30_Then_correct) (=> (= (ControlFlow 0 223874) 223922) anon30_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_89261| stream@@4) 0) (forall ((v@@54 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@4) v@@54) 0)
 :qid |DiemBlockcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemBlockcvc5bpl.2945:13|
 :skolemid |105|
))) (= (ControlFlow 0 222790) 223874)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 306546) 222790) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3)))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t6@@3 () Int)
(declare-fun _$t1@@3 () T@$signer)
(declare-fun $t7@@3 () Int)
(declare-fun $t5@@3 () Int)
(declare-fun _$t2@@0 () Bool)
(declare-fun $1_DesignatedDealer_Dealer_$memory@1@@0 () T@$Memory_161495)
(declare-fun |$temp_0'bool'@1@@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@3| () T@$Memory_143528)
(declare-fun $t20@@3 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2@@0| () T@$Memory_143528)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@1| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t23@@0 () Bool)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1@@1| () T@$Memory_143528)
(declare-fun $t24@@0 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0@@1| () T@$Memory_143528)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0@@1| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t27@@0 () Bool)
(declare-fun $t10@0@@3 () Int)
(declare-fun $t21@@3 () Int)
(declare-fun $t10@@3 () Int)
(declare-fun $t22@@0 () Int)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| () |T@[Int]Bool|)
(declare-fun $t25@@0 () Int)
(declare-fun $t26@@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory@0@@0 () T@$Memory_161495)
(declare-fun $t19@0@@0 () T@$1_DesignatedDealer_Dealer)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@0| () T@$1_Event_EventHandle)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $1_Event_EventHandles@0@@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t17@@3 () Int)
(declare-fun $t14@0@@0 () Bool)
(declare-fun $t12@@3 () Bool)
(declare-fun $t13@@0 () Int)
(declare-fun $t11@@3 () Int)
(declare-fun $t9@@3 () Bool)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Event_EventHandleGenerator_$modifies@@0 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_publish_designated_dealer_credential$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 309572) (let ((L5_correct@@0  (and (=> (= (ControlFlow 0 228422) (- 0 312390)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@3))) (and (=> (= (ControlFlow 0 228422) (- 0 312402)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@3)) 1))) (and (=> (= (ControlFlow 0 228422) (- 0 312420)) (not (not (= (|$addr#$signer| _$t1@@3) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@3) 186537453))) (and (=> (= (ControlFlow 0 228422) (- 0 312434)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@3))) (and (=> (= (ControlFlow 0 228422) (- 0 312446)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@3)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@3)) 2))) (and (=> (= (ControlFlow 0 228422) (- 0 312464)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@3))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@3)) (and (=> (= (ControlFlow 0 228422) (- 0 312474)) (not (and _$t2@@0 (let ((addr@@61 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@61) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@61))))))) (=> (not (and _$t2@@0 (let ((addr@@62 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@62) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@62)))))) (and (=> (= (ControlFlow 0 228422) (- 0 312485)) (not (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3)))) (=> (not (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3))) (and (=> (= (ControlFlow 0 228422) (- 0 312498)) (not (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3)))) (=> (not (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3))) (and (=> (= (ControlFlow 0 228422) (- 0 312511)) (not (and _$t2@@0 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and _$t2@@0 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 228422) (- 0 312524)) (not (and (not _$t2@@0) (let ((addr@@63 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@63) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@63))))))) (=> (not (and (not _$t2@@0) (let ((addr@@64 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@64) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@64)))))) (and (=> (= (ControlFlow 0 228422) (- 0 312537)) (not (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3)))) (=> (not (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3))) (and (=> (= (ControlFlow 0 228422) (- 0 312552)) (not (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3)))) (=> (not (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3))) (and (=> (= (ControlFlow 0 228422) (- 0 312567)) (not (and (not _$t2@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and (not _$t2@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (= (ControlFlow 0 228422) (- 0 312582)) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@0) $t5@@3))))))))))))))))))))))))))))))))
(let ((anon38_Else_correct@@0  (=> (not |$temp_0'bool'@1@@0|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@3| ($Memory_143528 (|Store__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3 false) (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 228794) 228422)) L5_correct@@0))))
(let ((anon38_Then_correct@@0  (=> |$temp_0'bool'@1@@0| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2@@0| ($Memory_143528 (|Store__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@1|))) (= (ControlFlow 0 228808) 228422)) L5_correct@@0))))
(let ((anon37_Else_correct@@0  (=> (not $t23@@0) (and (=> (= (ControlFlow 0 228782) 228808) anon38_Then_correct@@0) (=> (= (ControlFlow 0 228782) 228794) anon38_Else_correct@@0)))))
(let ((anon28_correct@@0  (=> (= (ControlFlow 0 228210) 228422) L5_correct@@0)))
(let ((anon40_Else_correct@@0  (=> (not |$temp_0'bool'@0@@3|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1@@1| ($Memory_143528 (|Store__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t24@@0 false) (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 228206) 228210)) anon28_correct@@0))))
(let ((anon40_Then_correct@@0  (=> |$temp_0'bool'@0@@3| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0@@1| ($Memory_143528 (|Store__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t24@@0 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t24@@0 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0@@1|))) (= (ControlFlow 0 228434) 228210)) anon28_correct@@0))))
(let ((anon39_Else_correct@@0  (=> (not $t27@@0) (and (=> (= (ControlFlow 0 228194) 228434) anon40_Then_correct@@0) (=> (= (ControlFlow 0 228194) 228206) anon40_Else_correct@@0)))))
(let ((anon33_Then_correct@@0 true))
(let ((L7_correct@@0  (and (=> (= (ControlFlow 0 227879) (- 0 311946)) (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@3)) 1))) (not (= (|$addr#$signer| _$t1@@3) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@3)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@3)) (and _$t2@@0 (let ((addr@@65 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@65) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@65)))))) (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3))) (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3))) (and _$t2@@0 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2@@0) (let ((addr@@66 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@66) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@66)))))) (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3))) (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3))) (and (not _$t2@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@3)) 1))) (not (= (|$addr#$signer| _$t1@@3) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@3)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@3)) (and _$t2@@0 (let ((addr@@67 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@67) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@67)))))) (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3))) (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3))) (and _$t2@@0 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2@@0) (let ((addr@@68 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@68) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@68)))))) (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3))) (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3))) (and (not _$t2@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (= (ControlFlow 0 227879) (- 0 312094)) (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@3)) (= 5 $t10@0@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@3)) 1)) (= 3 $t10@0@@3))) (and (not (= (|$addr#$signer| _$t1@@3) 186537453)) (= 2 $t10@0@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@3)) (= 5 $t10@0@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@3)) 2)) (= 3 $t10@0@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@3) (= 6 $t10@0@@3))) (and (and _$t2@@0 (let ((addr@@69 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@69) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@69))))) (= 7 $t10@0@@3))) (and (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3)) (= 6 $t10@0@@3))) (and (and _$t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3)) (= 1 $t10@0@@3))) (and (and _$t2@@0 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t10@0@@3))) (and (and (not _$t2@@0) (let ((addr@@70 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@70) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@70))))) (= 7 $t10@0@@3))) (and (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@3)) (= 6 $t10@0@@3))) (and (and (not _$t2@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@3)) (= 1 $t10@0@@3))) (and (and (not _$t2@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t10@0@@3))))))))
(let ((anon37_Then_correct@@0  (=> $t23@@0 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t21@@3)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t21@@3)) 1)) (= 3 $t10@@3))) (and (not (= (|$addr#$signer| _$t1@@3) 186537453)) (= 2 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t22@@0)) (= 5 $t10@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t22@@0)) 2)) (= 3 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@0) $t20@@3)) (= 5 $t10@@3))) (and (let ((addr@@71 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@71) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@71)))) (= 7 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3) (= 6 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@3) (= 1 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@3 $t10@@3) (= (ControlFlow 0 229002) 227879))) L7_correct@@0))))
(let ((anon36_Then_correct@@0  (=> (and (and _$t2@@0 (= $t20@@3 (|$addr#$signer| _$t0@@4))) (and (= $t21@@3 (|$addr#$signer| _$t1@@3)) (= $t22@@0 (|$addr#$signer| _$t0@@4)))) (and (=> (= (ControlFlow 0 228776) (- 0 311233)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| $t20@@3)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| $t20@@3) (=> (= $t23@@0  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t21@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t21@@3)) 1))) (not (= (|$addr#$signer| _$t1@@3) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t22@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t22@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@0) $t20@@3))) (let ((addr@@72 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@72) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@72))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3)) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 228776) 229002) anon37_Then_correct@@0) (=> (= (ControlFlow 0 228776) 228782) anon37_Else_correct@@0))))))))
(let ((anon39_Then_correct@@0  (=> $t27@@0 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t25@@0)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t25@@0)) 1)) (= 3 $t10@@3))) (and (not (= (|$addr#$signer| _$t1@@3) 186537453)) (= 2 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t26@@0)) (= 5 $t10@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t26@@0)) 2)) (= 3 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@0) $t24@@0)) (= 5 $t10@@3))) (and (let ((addr@@73 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@73) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@73)))) (= 7 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t24@@0) (= 6 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t24@@0) (= 1 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@3 $t10@@3) (= (ControlFlow 0 228628) 227879))) L7_correct@@0))))
(let ((anon36_Else_correct@@0  (=> (and (and (not _$t2@@0) (= $t24@@0 (|$addr#$signer| _$t0@@4))) (and (= $t25@@0 (|$addr#$signer| _$t1@@3)) (= $t26@@0 (|$addr#$signer| _$t0@@4)))) (and (=> (= (ControlFlow 0 228188) (- 0 311379)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| $t24@@0)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| $t24@@0) (=> (= $t27@@0  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t25@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t25@@0)) 1))) (not (= (|$addr#$signer| _$t1@@3) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t26@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t26@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@0) $t24@@0))) (let ((addr@@74 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@74) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@74))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t24@@0)) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t24@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 228188) 228628) anon39_Then_correct@@0) (=> (= (ControlFlow 0 228188) 228194) anon39_Else_correct@@0))))))))
(let ((anon35_Else_correct@@0  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 228038) (- 0 311175)) (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) addr@@75) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@0) addr@@75)))
 :qid |DiemBlockcvc5bpl.13690:15|
 :skolemid |360|
))) (=> (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) addr@@76) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@0) addr@@76)))
 :qid |DiemBlockcvc5bpl.13690:15|
 :skolemid |360|
)) (and (=> (= (ControlFlow 0 228038) 228776) anon36_Then_correct@@0) (=> (= (ControlFlow 0 228038) 228188) anon36_Else_correct@@0)))))))
(let ((anon35_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t10@0@@3 $abort_code@1@@0) (= (ControlFlow 0 229016) 227879))) L7_correct@@0)))
(let ((anon34_Then$1_correct@@0  (=> (= $1_DesignatedDealer_Dealer_$memory@1@@0 $1_DesignatedDealer_Dealer_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 229068) 229016) anon35_Then_correct@@0) (=> (= (ControlFlow 0 229068) 228038) anon35_Else_correct@@0))))))
(let ((anon34_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@4)) (= (ControlFlow 0 229066) 229068)) anon34_Then$1_correct@@0)))
(let ((anon34_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@4))) (=> (and (and (= $1_DesignatedDealer_Dealer_$memory@0@@0 ($Memory_161495 (|Store__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@4) true) (|Store__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@4) $t19@0@@0))) (= $1_DesignatedDealer_Dealer_$memory@1@@0 $1_DesignatedDealer_Dealer_$memory@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 228003) 229016) anon35_Then_correct@@0) (=> (= (ControlFlow 0 228003) 228038) anon35_Else_correct@@0))))))
(let ((anon33_Else_correct@@0  (=> (and (not false) (= $t19@0@@0 ($1_DesignatedDealer_Dealer |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@0|))) (and (=> (= (ControlFlow 0 227981) (- 0 311074)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 (|$addr#$signer| _$t0@@4))) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 (|$addr#$signer| _$t0@@4)) (and (=> (= (ControlFlow 0 227981) 229066) anon34_Then_correct@@0) (=> (= (ControlFlow 0 227981) 228003) anon34_Else_correct@@0)))))))
(let ((|inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@0|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@0|) false) (= $1_Event_EventHandles@0@@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@0| true))) (and (=> (= (ControlFlow 0 227949) 229082) anon33_Then_correct@@0) (=> (= (ControlFlow 0 227949) 227981) anon33_Else_correct@@0)))))
(let ((anon32_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@0 (= (ControlFlow 0 227955) 227949)) |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@0|)))
(let ((anon32_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t17@@3 $t17@@3)) (and (= $t10@0@@3 $t17@@3) (= (ControlFlow 0 227419) 227879))) L7_correct@@0)))
(let ((anon31_Else$1_correct@@0  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t17@@3) (= $t17@@3 6)) (and (= $t17@@3 $t17@@3) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 227403) 227955) anon32_Then_correct@@0) (=> (= (ControlFlow 0 227403) 227419) anon32_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t14@0@@0)) (= (ControlFlow 0 227367) 227403)) anon31_Else$1_correct@@0)))
(let ((anon31_Else_correct@@0  (=> (not $t12@@3) (=> (and (and (|$IsValid'address'| $t13@@0) (= $t13@@0 (|$addr#$signer| _$t0@@4))) (and (= $t14@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t13@@0)) (= (ControlFlow 0 227373) 227367))) inline$$Not$0$anon0_correct@@0))))
(let ((anon31_Then_correct@@0  (=> $t12@@3 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t11@@3)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t11@@3)) 2)) (= 3 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@3 $t10@@3) (= (ControlFlow 0 229134) 227879))) L7_correct@@0))))
(let ((anon30_Else_correct@@0  (=> (not $t9@@3) (=> (and (= $t11@@3 (|$addr#$signer| _$t0@@4)) (= $t12@@3  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t11@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t11@@3)) 2))))) (and (=> (= (ControlFlow 0 227311) 229134) anon31_Then_correct@@0) (=> (= (ControlFlow 0 227311) 227373) anon31_Else_correct@@0))))))
(let ((anon30_Then_correct@@0  (=> $t9@@3 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@3)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@3)) 1)) (= 3 $t10@@3))) (and (not (= (|$addr#$signer| _$t1@@3) 186537453)) (= 2 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@3 $t10@@3) (= (ControlFlow 0 229206) 227879))) L7_correct@@0))))
(let ((anon0$1_correct@@4  (=> (and (and (and (forall ((mint_cap_owner@@11 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@11) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@11)) 1))))
 :qid |DiemBlockcvc5bpl.13371:22|
 :skolemid |330|
)) (forall ((mint_cap_owner@@12 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@12)) 1))))
 :qid |DiemBlockcvc5bpl.13371:269|
 :skolemid |331|
))) (forall ((mint_cap_owner@@13 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@13)) 1))))
 :qid |DiemBlockcvc5bpl.13371:517|
 :skolemid |332|
))) (and (forall ((addr1@@19 Int) ) (!  (=> (|$IsValid'address'| addr1@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137277| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@19) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@19)) 1))))
 :qid |DiemBlockcvc5bpl.13379:21|
 :skolemid |333|
)) (forall ((addr1@@20 Int) ) (!  (=> (|$IsValid'address'| addr1@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137364| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@20) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@20)) 1))))
 :qid |DiemBlockcvc5bpl.13379:231|
 :skolemid |334|
)))) (=> (and (and (and (and (forall ((addr1@@21 Int) ) (!  (=> (|$IsValid'address'| addr1@@21) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@21)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@21)) 2))))
 :qid |DiemBlockcvc5bpl.13383:22|
 :skolemid |335|
)) (forall ((addr1@@22 Int) ) (!  (=> (|$IsValid'address'| addr1@@22) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@22)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@22)) 2))))
 :qid |DiemBlockcvc5bpl.13383:293|
 :skolemid |336|
))) (forall ((addr1@@23 Int) ) (!  (=> (|$IsValid'address'| addr1@@23) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr1@@23)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@23)) 2))))
 :qid |DiemBlockcvc5bpl.13383:565|
 :skolemid |337|
))) (and (and (forall ((dd_addr@@23 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@23) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@23))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@23)))))
 :qid |DiemBlockcvc5bpl.13387:22|
 :skolemid |338|
)) (forall ((dd_addr@@24 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@24) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@24))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@24)))))
 :qid |DiemBlockcvc5bpl.13387:375|
 :skolemid |339|
))) (forall ((dd_addr@@25 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@25) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@25))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@25)))))
 :qid |DiemBlockcvc5bpl.13387:729|
 :skolemid |340|
)))) (and (and (and (forall ((dd_addr@@26 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@26) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@26))))
 :qid |DiemBlockcvc5bpl.13391:22|
 :skolemid |341|
)) (forall ((dd_addr@@27 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@27) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@27))))
 :qid |DiemBlockcvc5bpl.13391:220|
 :skolemid |342|
))) (forall ((dd_addr@@28 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@28) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@28))))
 :qid |DiemBlockcvc5bpl.13391:419|
 :skolemid |343|
))) (and (and (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@77) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.13395:22|
 :skolemid |344|
)) (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@78) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.13395:222|
 :skolemid |345|
))) (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr@@79) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.13395:423|
 :skolemid |346|
))))) (=> (and (and (and (and (and (and (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@80) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.13399:22|
 :skolemid |347|
)) (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@81) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.13399:227|
 :skolemid |348|
))) (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@82) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.13399:433|
 :skolemid |349|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128465| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@4)) (|$IsValid'address'| (|$addr#$signer| _$t1@@3)))) (and (and (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@23)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@23))
 :qid |DiemBlockcvc5bpl.13419:20|
 :skolemid |350|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@23))
)) (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@24)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@24) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@24)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@24) 10000000000))))
 :qid |DiemBlockcvc5bpl.13423:20|
 :skolemid |351|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@24))
))) (and (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@25)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@25))
 :qid |DiemBlockcvc5bpl.13427:20|
 :skolemid |352|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@25))
)) (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@26)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@26) (and (<= (|l#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@26)) 256) (let (($range_1@@4 ($Range 0 (|l#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@26)))))
(forall (($i_2@@4 Int) ) (!  (=> ($InRange $range_1@@4 $i_2@@4) (let ((i@@104 $i_2@@4))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@26)) i@@104)))) 0)))
 :qid |DiemBlockcvc5bpl.13432:223|
 :skolemid |353|
))))))
 :qid |DiemBlockcvc5bpl.13431:20|
 :skolemid |354|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@26))
))))) (and (and (and (and (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@27)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@27) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@27)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@27) 10000000000))))
 :qid |DiemBlockcvc5bpl.13436:20|
 :skolemid |355|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@27))
)) (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@28)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@28))
 :qid |DiemBlockcvc5bpl.13440:20|
 :skolemid |356|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@28))
))) (and (forall (($a_0@@29 Int) ) (! (let (($rsc@@29 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@29)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@29) (and (<= (|l#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@29)) 256) (let (($range_1@@5 ($Range 0 (|l#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@29)))))
(forall (($i_2@@5 Int) ) (!  (=> ($InRange $range_1@@5 $i_2@@5) (let ((i@@105 $i_2@@5))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@29)) i@@105)))) 0)))
 :qid |DiemBlockcvc5bpl.13445:223|
 :skolemid |357|
))))))
 :qid |DiemBlockcvc5bpl.13444:20|
 :skolemid |358|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@29))
)) (forall (($a_0@@30 Int) ) (! (let (($rsc@@30 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@30)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@30))
 :qid |DiemBlockcvc5bpl.13449:20|
 :skolemid |359|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@30))
)))) (and (and (= $t5@@3 (|$addr#$signer| _$t0@@4)) (= $t6@@3 (|$addr#$signer| _$t1@@3))) (and (= $t7@@3 (|$addr#$signer| _$t0@@4)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 $t5@@3)))) (and (and (and (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies@@0 $t5@@3) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| $t5@@3)) (and (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@1| $t5@@3) (= _$t0@@4 _$t0@@4))) (and (and (= _$t1@@3 _$t1@@3) (= _$t2@@0 _$t2@@0)) (and (= $t8@@3 (|$addr#$signer| _$t1@@3)) (= $t9@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@3)) 1))) (not (= (|$addr#$signer| _$t1@@3) 186537453))))))))) (and (=> (= (ControlFlow 0 227263) 229206) anon30_Then_correct@@0) (=> (= (ControlFlow 0 227263) 227311) anon30_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_89261| stream@@5) 0) (forall ((v@@55 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@5) v@@55) 0)
 :qid |DiemBlockcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemBlockcvc5bpl.2945:13|
 :skolemid |105|
))) (= (ControlFlow 0 226179) 227263)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 309572) 226179) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t6@@4 () Int)
(declare-fun _$t1@@4 () T@$signer)
(declare-fun $t7@@4 () Int)
(declare-fun $t5@@4 () Int)
(declare-fun _$t2@@1 () Bool)
(declare-fun $1_DesignatedDealer_Dealer_$memory@1@@1 () T@$Memory_161495)
(declare-fun |$temp_0'bool'@1@@1| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1@@2| () T@$Memory_143528)
(declare-fun $t20@@4 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0@@2| () T@$Memory_143528)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0@@2| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t23@@1 () Bool)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1@@0| () T@$Memory_143645)
(declare-fun $t24@@1 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0@@0| () T@$Memory_143645)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX''@0@@0| () |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(declare-fun $t27@@1 () Bool)
(declare-fun $t10@0@@4 () Int)
(declare-fun $t21@@4 () Int)
(declare-fun $t10@@4 () Int)
(declare-fun $t22@@1 () Int)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@2| () |T@[Int]Bool|)
(declare-fun $t25@@1 () Int)
(declare-fun $t26@@1 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory@0@@1 () T@$Memory_161495)
(declare-fun $t19@0@@1 () T@$1_DesignatedDealer_Dealer)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@1| () T@$1_Event_EventHandle)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@1 () |T@[Int]Bool|)
(declare-fun $1_Event_EventHandles@0@@1 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun $t17@@4 () Int)
(declare-fun $t14@0@@1 () Bool)
(declare-fun $t12@@4 () Bool)
(declare-fun $t13@@1 () Int)
(declare-fun $t11@@4 () Int)
(declare-fun $t9@@4 () Bool)
(declare-fun $t8@@4 () Int)
(declare-fun $1_Event_EventHandleGenerator_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_publish_designated_dealer_credential$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 312598) (let ((L5_correct@@1  (and (=> (= (ControlFlow 0 231809) (- 0 315416)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@4))) (and (=> (= (ControlFlow 0 231809) (- 0 315428)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@4)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@4)) 1))) (and (=> (= (ControlFlow 0 231809) (- 0 315446)) (not (not (= (|$addr#$signer| _$t1@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@4) 186537453))) (and (=> (= (ControlFlow 0 231809) (- 0 315460)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@4))) (and (=> (= (ControlFlow 0 231809) (- 0 315472)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@4)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@4)) 2))) (and (=> (= (ControlFlow 0 231809) (- 0 315490)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@4))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@4)) (and (=> (= (ControlFlow 0 231809) (- 0 315500)) (not (and _$t2@@1 (let ((addr@@83 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@83) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@83))))))) (=> (not (and _$t2@@1 (let ((addr@@84 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@84) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@84)))))) (and (=> (= (ControlFlow 0 231809) (- 0 315511)) (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@4)))) (=> (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@4))) (and (=> (= (ControlFlow 0 231809) (- 0 315524)) (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@4)))) (=> (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@4))) (and (=> (= (ControlFlow 0 231809) (- 0 315537)) (not (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 231809) (- 0 315550)) (not (and (not _$t2@@1) (let ((addr@@85 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@85) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@85))))))) (=> (not (and (not _$t2@@1) (let ((addr@@86 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@86) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@86)))))) (and (=> (= (ControlFlow 0 231809) (- 0 315563)) (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@4)))) (=> (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@4))) (and (=> (= (ControlFlow 0 231809) (- 0 315578)) (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@4)))) (=> (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@4))) (and (=> (= (ControlFlow 0 231809) (- 0 315593)) (not (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (= (ControlFlow 0 231809) (- 0 315608)) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@1) $t5@@4))))))))))))))))))))))))))))))))
(let ((anon38_Else_correct@@1  (=> (not |$temp_0'bool'@1@@1|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1@@2| ($Memory_143528 (|Store__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@4 false) (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 232181) 231809)) L5_correct@@1))))
(let ((anon38_Then_correct@@1  (=> |$temp_0'bool'@1@@1| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0@@2| ($Memory_143528 (|Store__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@4 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@4 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0@@2|))) (= (ControlFlow 0 232195) 231809)) L5_correct@@1))))
(let ((anon37_Else_correct@@1  (=> (not $t23@@1) (and (=> (= (ControlFlow 0 232169) 232195) anon38_Then_correct@@1) (=> (= (ControlFlow 0 232169) 232181) anon38_Else_correct@@1)))))
(let ((anon28_correct@@1  (=> (= (ControlFlow 0 231597) 231809) L5_correct@@1)))
(let ((anon40_Else_correct@@1  (=> (not |$temp_0'bool'@0@@4|) (=> (and (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1@@0| ($Memory_143645 (|Store__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t24@@1 false) (|contents#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|))) (= (ControlFlow 0 231593) 231597)) anon28_correct@@1))))
(let ((anon40_Then_correct@@1  (=> |$temp_0'bool'@0@@4| (=> (and (= |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0@@0| ($Memory_143645 (|Store__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t24@@1 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t24@@1 |$temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX''@0@@0|))) (= (ControlFlow 0 231821) 231597)) anon28_correct@@1))))
(let ((anon39_Else_correct@@1  (=> (not $t27@@1) (and (=> (= (ControlFlow 0 231581) 231821) anon40_Then_correct@@1) (=> (= (ControlFlow 0 231581) 231593) anon40_Else_correct@@1)))))
(let ((anon33_Then_correct@@1 true))
(let ((L7_correct@@1  (and (=> (= (ControlFlow 0 231266) (- 0 314972)) (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@4)) 1))) (not (= (|$addr#$signer| _$t1@@4) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@4)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@4)) (and _$t2@@1 (let ((addr@@87 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@87) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@87)))))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@4))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@4))) (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2@@1) (let ((addr@@88 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@88) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@88)))))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@4))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@4))) (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@4)) 1))) (not (= (|$addr#$signer| _$t1@@4) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@4)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@4)) (and _$t2@@1 (let ((addr@@89 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@89) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@89)))))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@4))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@4))) (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2@@1) (let ((addr@@90 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@90) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@90)))))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@4))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@4))) (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (= (ControlFlow 0 231266) (- 0 315120)) (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@4)) (= 5 $t10@0@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t6@@4)) 1)) (= 3 $t10@0@@4))) (and (not (= (|$addr#$signer| _$t1@@4) 186537453)) (= 2 $t10@0@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@4)) (= 5 $t10@0@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t7@@4)) 2)) (= 3 $t10@0@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t5@@4) (= 6 $t10@0@@4))) (and (and _$t2@@1 (let ((addr@@91 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@91) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@91))))) (= 7 $t10@0@@4))) (and (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@4)) (= 6 $t10@0@@4))) (and (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@4)) (= 1 $t10@0@@4))) (and (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t10@0@@4))) (and (and (not _$t2@@1) (let ((addr@@92 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@92) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@92))))) (= 7 $t10@0@@4))) (and (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t5@@4)) (= 6 $t10@0@@4))) (and (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t5@@4)) (= 1 $t10@0@@4))) (and (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t10@0@@4))))))))
(let ((anon37_Then_correct@@1  (=> $t23@@1 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t21@@4)) (= 5 $t10@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t21@@4)) 1)) (= 3 $t10@@4))) (and (not (= (|$addr#$signer| _$t1@@4) 186537453)) (= 2 $t10@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t22@@1)) (= 5 $t10@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t22@@1)) 2)) (= 3 $t10@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@1) $t20@@4)) (= 5 $t10@@4))) (and (let ((addr@@93 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@93) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@93)))) (= 7 $t10@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@4) (= 6 $t10@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@4) (= 1 $t10@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@4))) (= $t10@@4 $t10@@4)) (and (= $t10@0@@4 $t10@@4) (= (ControlFlow 0 232389) 231266))) L7_correct@@1))))
(let ((anon36_Then_correct@@1  (=> (and (and _$t2@@1 (= $t20@@4 (|$addr#$signer| _$t0@@5))) (and (= $t21@@4 (|$addr#$signer| _$t1@@4)) (= $t22@@1 (|$addr#$signer| _$t0@@5)))) (and (=> (= (ControlFlow 0 232163) (- 0 314259)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@2| $t20@@4)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@2| $t20@@4) (=> (= $t23@@1  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t21@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t21@@4)) 1))) (not (= (|$addr#$signer| _$t1@@4) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t22@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t22@@1)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@1) $t20@@4))) (let ((addr@@94 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@94) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@94))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@4)) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 232163) 232389) anon37_Then_correct@@1) (=> (= (ControlFlow 0 232163) 232169) anon37_Else_correct@@1))))))))
(let ((anon39_Then_correct@@1  (=> $t27@@1 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t25@@1)) (= 5 $t10@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t25@@1)) 1)) (= 3 $t10@@4))) (and (not (= (|$addr#$signer| _$t1@@4) 186537453)) (= 2 $t10@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t26@@1)) (= 5 $t10@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t26@@1)) 2)) (= 3 $t10@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@1) $t24@@1)) (= 5 $t10@@4))) (and (let ((addr@@95 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@95) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@95)))) (= 7 $t10@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t24@@1) (= 6 $t10@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t24@@1) (= 1 $t10@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t10@@4))) (= $t10@@4 $t10@@4)) (and (= $t10@0@@4 $t10@@4) (= (ControlFlow 0 232015) 231266))) L7_correct@@1))))
(let ((anon36_Else_correct@@1  (=> (and (and (not _$t2@@1) (= $t24@@1 (|$addr#$signer| _$t0@@5))) (and (= $t25@@1 (|$addr#$signer| _$t1@@4)) (= $t26@@1 (|$addr#$signer| _$t0@@5)))) (and (=> (= (ControlFlow 0 231575) (- 0 314405)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies@@0| $t24@@1)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies@@0| $t24@@1) (=> (= $t27@@1  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t25@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t25@@1)) 1))) (not (= (|$addr#$signer| _$t1@@4) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t26@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t26@@1)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@1) $t24@@1))) (let ((addr@@96 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@96) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) addr@@96))))) (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $t24@@1)) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $t24@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 231575) 232015) anon39_Then_correct@@1) (=> (= (ControlFlow 0 231575) 231581) anon39_Else_correct@@1))))))))
(let ((anon35_Else_correct@@1  (=> (not $abort_flag@0@@1) (and (=> (= (ControlFlow 0 231425) (- 0 314201)) (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) addr@@97) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@1) addr@@97)))
 :qid |DiemBlockcvc5bpl.14312:15|
 :skolemid |391|
))) (=> (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) addr@@98) (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory@1@@1) addr@@98)))
 :qid |DiemBlockcvc5bpl.14312:15|
 :skolemid |391|
)) (and (=> (= (ControlFlow 0 231425) 232163) anon36_Then_correct@@1) (=> (= (ControlFlow 0 231425) 231575) anon36_Else_correct@@1)))))))
(let ((anon35_Then_correct@@1  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t10@0@@4 $abort_code@1@@1) (= (ControlFlow 0 232403) 231266))) L7_correct@@1)))
(let ((anon34_Then$1_correct@@1  (=> (= $1_DesignatedDealer_Dealer_$memory@1@@1 $1_DesignatedDealer_Dealer_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 232455) 232403) anon35_Then_correct@@1) (=> (= (ControlFlow 0 232455) 231425) anon35_Else_correct@@1))))))
(let ((anon34_Then_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@5)) (= (ControlFlow 0 232453) 232455)) anon34_Then$1_correct@@1)))
(let ((anon34_Else_correct@@1  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@5))) (=> (and (and (= $1_DesignatedDealer_Dealer_$memory@0@@1 ($Memory_161495 (|Store__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@5) true) (|Store__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) (|$addr#$signer| _$t0@@5) $t19@0@@1))) (= $1_DesignatedDealer_Dealer_$memory@1@@1 $1_DesignatedDealer_Dealer_$memory@0@@1)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 231390) 232403) anon35_Then_correct@@1) (=> (= (ControlFlow 0 231390) 231425) anon35_Else_correct@@1))))))
(let ((anon33_Else_correct@@1  (=> (and (not false) (= $t19@0@@1 ($1_DesignatedDealer_Dealer |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@1|))) (and (=> (= (ControlFlow 0 231368) (- 0 314100)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@1 (|$addr#$signer| _$t0@@5))) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@1 (|$addr#$signer| _$t0@@5)) (and (=> (= (ControlFlow 0 231368) 232453) anon34_Then_correct@@1) (=> (= (ControlFlow 0 231368) 231390) anon34_Else_correct@@1)))))))
(let ((|inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@1|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@1|) false) (= $1_Event_EventHandles@0@@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0@@1| true))) (and (=> (= (ControlFlow 0 231336) 232469) anon33_Then_correct@@1) (=> (= (ControlFlow 0 231336) 231368) anon33_Else_correct@@1)))))
(let ((anon32_Then_correct@@1  (=> (and inline$$Not$0$dst@1@@1 (= (ControlFlow 0 231342) 231336)) |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@1|)))
(let ((anon32_Else_correct@@1  (=> (and (and (not inline$$Not$0$dst@1@@1) (= $t17@@4 $t17@@4)) (and (= $t10@0@@4 $t17@@4) (= (ControlFlow 0 230806) 231266))) L7_correct@@1)))
(let ((anon31_Else$1_correct@@1  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t17@@4) (= $t17@@4 6)) (and (= $t17@@4 $t17@@4) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 230790) 231342) anon32_Then_correct@@1) (=> (= (ControlFlow 0 230790) 230806) anon32_Else_correct@@1))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not $t14@0@@1)) (= (ControlFlow 0 230754) 230790)) anon31_Else$1_correct@@1)))
(let ((anon31_Else_correct@@1  (=> (not $t12@@4) (=> (and (and (|$IsValid'address'| $t13@@1) (= $t13@@1 (|$addr#$signer| _$t0@@5))) (and (= $t14@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $t13@@1)) (= (ControlFlow 0 230760) 230754))) inline$$Not$0$anon0_correct@@1))))
(let ((anon31_Then_correct@@1  (=> $t12@@4 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t11@@4)) (= 5 $t10@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t11@@4)) 2)) (= 3 $t10@@4))) (= $t10@@4 $t10@@4)) (and (= $t10@0@@4 $t10@@4) (= (ControlFlow 0 232521) 231266))) L7_correct@@1))))
(let ((anon30_Else_correct@@1  (=> (not $t9@@4) (=> (and (= $t11@@4 (|$addr#$signer| _$t0@@5)) (= $t12@@4  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t11@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t11@@4)) 2))))) (and (=> (= (ControlFlow 0 230698) 232521) anon31_Then_correct@@1) (=> (= (ControlFlow 0 230698) 230760) anon31_Else_correct@@1))))))
(let ((anon30_Then_correct@@1  (=> $t9@@4 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@4)) (= 5 $t10@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@4)) 1)) (= 3 $t10@@4))) (and (not (= (|$addr#$signer| _$t1@@4) 186537453)) (= 2 $t10@@4))) (= $t10@@4 $t10@@4)) (and (= $t10@0@@4 $t10@@4) (= (ControlFlow 0 232593) 231266))) L7_correct@@1))))
(let ((anon0$1_correct@@5  (=> (and (and (and (forall ((mint_cap_owner@@14 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@14)) 1))))
 :qid |DiemBlockcvc5bpl.13993:22|
 :skolemid |361|
)) (forall ((mint_cap_owner@@15 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@15) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@15)) 1))))
 :qid |DiemBlockcvc5bpl.13993:269|
 :skolemid |362|
))) (forall ((mint_cap_owner@@16 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@16) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@16)) 1))))
 :qid |DiemBlockcvc5bpl.13993:517|
 :skolemid |363|
))) (and (forall ((addr1@@24 Int) ) (!  (=> (|$IsValid'address'| addr1@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137277| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@24) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@24)) 1))))
 :qid |DiemBlockcvc5bpl.14001:21|
 :skolemid |364|
)) (forall ((addr1@@25 Int) ) (!  (=> (|$IsValid'address'| addr1@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137364| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@25) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@25)) 1))))
 :qid |DiemBlockcvc5bpl.14001:231|
 :skolemid |365|
)))) (=> (and (and (and (and (forall ((addr1@@26 Int) ) (!  (=> (|$IsValid'address'| addr1@@26) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@26) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@26)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@26)) 2))))
 :qid |DiemBlockcvc5bpl.14005:22|
 :skolemid |366|
)) (forall ((addr1@@27 Int) ) (!  (=> (|$IsValid'address'| addr1@@27) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@27) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@27)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@27)) 2))))
 :qid |DiemBlockcvc5bpl.14005:293|
 :skolemid |367|
))) (forall ((addr1@@28 Int) ) (!  (=> (|$IsValid'address'| addr1@@28) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr1@@28)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@28)) 2))))
 :qid |DiemBlockcvc5bpl.14005:565|
 :skolemid |368|
))) (and (and (forall ((dd_addr@@29 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@29) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@29))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@29)))))
 :qid |DiemBlockcvc5bpl.14009:22|
 :skolemid |369|
)) (forall ((dd_addr@@30 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@30) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@30))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@30)))))
 :qid |DiemBlockcvc5bpl.14009:375|
 :skolemid |370|
))) (forall ((dd_addr@@31 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@31) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@31))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@31)))))
 :qid |DiemBlockcvc5bpl.14009:729|
 :skolemid |371|
)))) (and (and (and (forall ((dd_addr@@32 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@32) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@32))))
 :qid |DiemBlockcvc5bpl.14013:22|
 :skolemid |372|
)) (forall ((dd_addr@@33 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@33) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@33))))
 :qid |DiemBlockcvc5bpl.14013:220|
 :skolemid |373|
))) (forall ((dd_addr@@34 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@34) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@34))))
 :qid |DiemBlockcvc5bpl.14013:419|
 :skolemid |374|
))) (and (and (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@99) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.14017:22|
 :skolemid |375|
)) (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@100) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.14017:222|
 :skolemid |376|
))) (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr@@101) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.14017:423|
 :skolemid |377|
))))) (=> (and (and (and (and (and (and (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@102) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.14021:22|
 :skolemid |378|
)) (forall ((addr@@103 Int) ) (!  (=> (|$IsValid'address'| addr@@103) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@103) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.14021:227|
 :skolemid |379|
))) (forall ((addr@@104 Int) ) (!  (=> (|$IsValid'address'| addr@@104) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@104) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.14021:433|
 :skolemid |380|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128465| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) (|$IsValid'address'| (|$addr#$signer| _$t1@@4)))) (and (and (forall (($a_0@@31 Int) ) (! (let (($rsc@@31 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@31)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@31))
 :qid |DiemBlockcvc5bpl.14041:20|
 :skolemid |381|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@31))
)) (forall (($a_0@@32 Int) ) (! (let (($rsc@@32 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@32)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@32) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@32)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@32) 10000000000))))
 :qid |DiemBlockcvc5bpl.14045:20|
 :skolemid |382|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@32))
))) (and (forall (($a_0@@33 Int) ) (! (let (($rsc@@33 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@33)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@33))
 :qid |DiemBlockcvc5bpl.14049:20|
 :skolemid |383|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@33))
)) (forall (($a_0@@34 Int) ) (! (let (($rsc@@34 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@34)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@34) (and (<= (|l#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@34)) 256) (let (($range_1@@6 ($Range 0 (|l#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@34)))))
(forall (($i_2@@6 Int) ) (!  (=> ($InRange $range_1@@6 $i_2@@6) (let ((i@@106 $i_2@@6))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_89815| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@34)) i@@106)))) 0)))
 :qid |DiemBlockcvc5bpl.14054:223|
 :skolemid |384|
))))))
 :qid |DiemBlockcvc5bpl.14053:20|
 :skolemid |385|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@34))
))))) (and (and (and (and (forall (($a_0@@35 Int) ) (! (let (($rsc@@35 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@35)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@35) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@35)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@35) 10000000000))))
 :qid |DiemBlockcvc5bpl.14058:20|
 :skolemid |386|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@35))
)) (forall (($a_0@@36 Int) ) (! (let (($rsc@@36 (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $a_0@@36)))
(|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| $rsc@@36))
 :qid |DiemBlockcvc5bpl.14062:20|
 :skolemid |387|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) $a_0@@36))
))) (and (forall (($a_0@@37 Int) ) (! (let (($rsc@@37 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $a_0@@37)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| $rsc@@37) (and (<= (|l#Vec_89854| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@37)) 256) (let (($range_1@@7 ($Range 0 (|l#Vec_89854| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@37)))))
(forall (($i_2@@7 Int) ) (!  (=> ($InRange $range_1@@7 $i_2@@7) (let ((i@@107 $i_2@@7))
(> (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_89854| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| $rsc@@37)) i@@107)))) 0)))
 :qid |DiemBlockcvc5bpl.14067:223|
 :skolemid |388|
))))))
 :qid |DiemBlockcvc5bpl.14066:20|
 :skolemid |389|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|contents#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) $a_0@@37))
)) (forall (($a_0@@38 Int) ) (! (let (($rsc@@38 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@38)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@38))
 :qid |DiemBlockcvc5bpl.14071:20|
 :skolemid |390|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@38))
)))) (and (and (= $t5@@4 (|$addr#$signer| _$t0@@5)) (= $t6@@4 (|$addr#$signer| _$t1@@4))) (and (= $t7@@4 (|$addr#$signer| _$t0@@5)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@1 $t5@@4)))) (and (and (and (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies@@1 $t5@@4) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies@@0| $t5@@4)) (and (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies@@2| $t5@@4) (= _$t0@@5 _$t0@@5))) (and (and (= _$t1@@4 _$t1@@4) (= _$t2@@1 _$t2@@1)) (and (= $t8@@4 (|$addr#$signer| _$t1@@4)) (= $t9@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t8@@4)) 1))) (not (= (|$addr#$signer| _$t1@@4) 186537453))))))))) (and (=> (= (ControlFlow 0 230650) 232593) anon30_Then_correct@@1) (=> (= (ControlFlow 0 230650) 230698) anon30_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_89261| stream@@6) 0) (forall ((v@@56 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@6) v@@56) 0)
 :qid |DiemBlockcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemBlockcvc5bpl.2945:13|
 :skolemid |105|
))) (= (ControlFlow 0 229566) 230650)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 312598) 229566) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5)))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@4 () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$ret0@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t37 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@3| () T@$Memory_136763)
(declare-fun _$t1@@5 () Int)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun $t9@@5 () Int)
(declare-fun _$t2@@2 () Int)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@2| () T@$Memory_162297)
(declare-fun $t8@@5 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $es@2 () T@$EventStore)
(declare-fun $t10@@5 () T@$1_Event_EventHandle)
(declare-fun $t11@@5 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_89261_| (|T@[$1_Event_EventHandle]Multiset_89261| T@$1_Event_EventHandle T@Multiset_89261) |T@[$1_Event_EventHandle]Multiset_89261|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_89261|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_89261)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|Store__T@[$1_Event_EventHandle]Multiset_89261_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_89261|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_89261)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|Store__T@[$1_Event_EventHandle]Multiset_89261_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_89261_| ?x0 ?y1))) :weight 0)))
(declare-fun $t12@@5 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t13@@2 () T@$1_Event_EventHandle)
(declare-fun $t14@@2 () T@$1_Diem_MintEvent)
(declare-fun $t17@0 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t16@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t18@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2| () T@$Memory_136763)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t19@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t15@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t20@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t13@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1| () T@$Memory_136763)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0| () T@$Memory_136763)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int |T@$1_Diem_CurrencyInfo'#0'|) |T@[Int]$1_Diem_CurrencyInfo'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_mint'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t10@1| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$ret0@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t10@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t6@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t11@1| () |T@$1_Diem_MintCapability'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_MintCapability'#0'_| (|T@[Int]$1_Diem_MintCapability'#0'| Int) |T@$1_Diem_MintCapability'#0'|)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t7@1| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t9@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t5@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t35 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t31@0 () T@$Mutation_121668)
(declare-fun $t34@0 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t33 () Bool)
(declare-fun $t32 () T@Vec_22116)
(declare-fun $t17@@5 () Int)
(declare-fun $t30@1 () T@$Mutation_185301)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t30 () T@$Mutation_185301)
(declare-fun $t30@0 () T@$Mutation_185301)
(declare-fun MapConstVec_13534 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_13534 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@2 () |T@[Int]Bool|)
(declare-fun $t27@0 () Int)
(declare-fun $t26@@2 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun $t28@0 () Int)
(declare-fun $t29@0 () T@Vec_22116)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@1| () T@$Memory_162297)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory| () T@$Memory_162297)
(declare-fun $t26@0 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|T@[Int]$1_DesignatedDealer_TierInfo'#0'| Int) |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@0| () T@$Memory_162297)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t25@0 () Bool)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t22@@2 () Bool)
(declare-fun $t24@@2 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t21@@5 () Int)
(declare-fun $t16@@2 () Bool)
(declare-fun $t15@@2 () Int)
(declare-fun _$t3 () Int)
(declare-fun $t31 () T@$Mutation_121668)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_tiered_mint$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 315626) (let ((anon40_Else_correct@@2  (=> (not $abort_flag@4) (=> (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@1|) (= $t37 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816))) (and (=> (= (ControlFlow 0 235811) (- 0 318058)) (not (= _$t1@@5 0))) (=> (not (= _$t1@@5 0)) (and (=> (= (ControlFlow 0 235811) (- 0 318068)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@6))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@6)))) (and (=> (= (ControlFlow 0 235811) (- 0 318081)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@5))) (and (=> (= (ControlFlow 0 235811) (- 0 318093)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@5)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@5)) 1))) (and (=> (= (ControlFlow 0 235811) (- 0 318111)) (not (not (= (|$addr#$signer| _$t0@@6) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 186537453))) (and (=> (= (ControlFlow 0 235811) (- 0 318125)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (and (=> (= (ControlFlow 0 235811) (- 0 318136)) (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 235811) (- 0 318148)) (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128))) (=> (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (and (=> (= (ControlFlow 0 235811) (- 0 318165)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 235811) (- 0 318175)) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 235811) (- 0 318183)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_162297| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_162297| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@2)) (and (=> (= (ControlFlow 0 235811) (- 0 318192)) (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@5)) (=> (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@5) (and (=> (= (ControlFlow 0 235811) (- 0 318201)) (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'#0'| $t37) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t37) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t37) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t37) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t37) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t37) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t37) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t37) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$mint_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$burn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5)))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'#0'| $t37) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t37) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t37) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t37) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t37) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t37) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t37) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t37) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$mint_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$burn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@5) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@5))))) (and (=> (= (ControlFlow 0 235811) (- 0 318219)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new (let ((len (|l#Multiset_89261| stream@@7)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@7) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@7) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@8 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected) handle@@8)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual) handle@@8))) (forall ((v@@57 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected) handle@@8)) v@@57) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual) handle@@8)) v@@57))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_89261| stream@@8)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@9 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@0) handle@@9)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@0) handle@@9))) (forall ((v@@58 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@0) handle@@9)) v@@58) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@0) handle@@9)) v@@58))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
))))) (and (=> (= (ControlFlow 0 235811) (- 0 318244)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t12@@5)) (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_89261| stream@@10)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@1))))) $t13@@2)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_89261| stream@@9)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@9) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@2))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@9) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@2) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_89261| stream@@10)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@1))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_89261| stream@@10)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@1))))) $t13@@2 stream_new@@2)))) (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_89261| stream@@10)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@1)))))))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@10 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@1) handle@@10)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@1) handle@@10))) (forall ((v@@59 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@1) handle@@10)) v@@59) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@1) handle@@10)) v@@59))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
)))))) (=> (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@2 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t12@@5)) (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_89261| stream@@12)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@3))))) $t13@@2)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_89261| stream@@11)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@11) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@2))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@11) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@2) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_89261| stream@@12)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@3))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_89261| stream@@12)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@3))))) $t13@@2 stream_new@@4)))) (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_89261| stream@@12)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@3)))))))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@11 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@2) handle@@11)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@2) handle@@11))) (forall ((v@@60 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@2) handle@@11)) v@@60) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@2) handle@@11)) v@@60))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
))))) (=> (= (ControlFlow 0 235811) (- 0 318281)) (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@3 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t12@@5)) (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_89261| stream@@14)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@5))))) $t13@@2)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_89261| stream@@13)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@13) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@2))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@13) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@2) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_89261| stream@@14)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@5))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_89261| stream@@14)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@5))))) $t13@@2 stream_new@@6)))) (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_89261| stream@@14)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@14) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@5) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@5)))))))
 (and (<= (|counter#$EventStore| actual@@3) (|counter#$EventStore| expected@@3)) (forall ((handle@@12 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@3) handle@@12)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@3) handle@@12))) (forall ((v@@61 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@3) handle@@12)) v@@61) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@3) handle@@12)) v@@61))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
))))))))))))))))))))))))))))))))))))))))
(let ((L8_correct  (and (=> (= (ControlFlow 0 234073) (- 0 317788)) (or (or (or (or (or (or (or (or (= _$t1@@5 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@6)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@5)) 1))) (not (= (|$addr#$signer| _$t0@@6) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (= _$t1@@5 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@6)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@5)) 1))) (not (= (|$addr#$signer| _$t0@@6) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 234073) (- 0 317876)) (or (or (or (or (or (or (or (or (and (= _$t1@@5 0) (= 7 $t17@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@6))) (= 4 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@5)) (= 5 $t17@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@5)) 1)) (= 3 $t17@0))) (and (not (= (|$addr#$signer| _$t0@@6) 186537453)) (= 2 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)) (= 5 $t17@0))) (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 $t17@0))) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128) (= 8 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t17@0))))))))
(let ((anon35_Then_correct@@2  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t17@0 $abort_code@1@@2) (= (ControlFlow 0 235997) 234073))) L8_correct)))
(let ((anon40_Then_correct@@2  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t17@0 $abort_code@5) (= (ControlFlow 0 235825) 234073))) L8_correct)))
(let ((|inline$$1_Diem_mint'#0'$0$anon13_correct|  (=> (and (and (|$IsValid'$1_Diem_Diem'#0''| |inline$$1_Diem_mint'#0'$0$$t16@0|) (= |inline$$1_Diem_mint'#0'$0$$t18@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t18@0|) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t18@0|) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t18@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t18@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t18@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t18@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t18@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))))) (= (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t18@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))))) (= (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t18@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))))) (= (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t18@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t18@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t18@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t18@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))))) (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$t16@0|) _$t1@@5)) (and (= |inline$$1_Diem_mint'#0'$0$$t19@0| |inline$$1_Diem_mint'#0'$0$$t15@0|) (= |inline$$1_Diem_mint'#0'$0$$t20@0| |inline$$1_Diem_mint'#0'$0$$t14@0|))) (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t21@0|  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (= $es@1 (ite |inline$$1_Diem_mint'#0'$0$$t21@0| (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es@0) |inline$$1_Diem_mint'#0'$0$$t20@0|)))
(let ((stream_new@@7 (let ((len@@7 (|l#Multiset_89261| stream@@15)))
(let ((cnt@@7 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@15) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@15) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|) (+ cnt@@7 1)) (+ len@@7 1))))))
($EventStore (+ (|counter#$EventStore| $es@0) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es@0) |inline$$1_Diem_mint'#0'$0$$t20@0| stream_new@@7)))) $es@0))) (and (= |inline$$1_Diem_mint'#0'$0$$t16@0| |inline$$1_Diem_mint'#0'$0$$t16@0|) (= $abort_code@5 $abort_code@4))) (and (and (= $es@2 $es@1) (= $abort_flag@4 $abort_flag@3)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$t16@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory@2|))))) (and (=> (= (ControlFlow 0 235355) 235825) anon40_Then_correct@@2) (=> (= (ControlFlow 0 235355) 235811) anon40_Else_correct@@2))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1|) (= |$1_Diem_CurrencyInfo'#0'_$memory@1| ($Memory_136763 (|Store__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 false) (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@1|) (= (ControlFlow 0 235253) 235355))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Then_correct|  (=> (and (and |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| (= |$1_Diem_CurrencyInfo'#0'_$memory@0| ($Memory_136763 (|Store__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 |inline$$1_Diem_mint'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@0|) (= (ControlFlow 0 235367) 235355))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_mint'#0'$0$$t17@0|) (and (=> (= (ControlFlow 0 235241) 235367) |inline$$1_Diem_mint'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 235241) 235253) |inline$$1_Diem_mint'#0'$0$anon18_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$L3_correct|  (=> (= $abort_code@5 |inline$$1_Diem_mint'#0'$0$$t10@1|) (=> (and (and (= $es@2 $es@0) (= $abort_flag@4 true)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory|))) (and (=> (= (ControlFlow 0 235119) 235825) anon40_Then_correct@@2) (=> (= (ControlFlow 0 235119) 235811) anon40_Else_correct@@2))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t17@0| (=> (and (and (or (or (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128) (= 8 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (= |inline$$1_Diem_mint'#0'$0$$t10@0| |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t10@0|) (= (ControlFlow 0 235435) 235119))) |inline$$1_Diem_mint'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Else_correct|  (=> (and (not $abort_flag@3) (= |inline$$1_Diem_mint'#0'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t13@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= |inline$$1_Diem_mint'#0'$0$$t14@0| (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (and (= |inline$$1_Diem_mint'#0'$0$$t15@0| ($1_Diem_MintEvent _$t1@@5 (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (= |inline$$1_Diem_mint'#0'$0$$t17@0|  (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 235235) 235435) |inline$$1_Diem_mint'#0'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 235235) 235241) |inline$$1_Diem_mint'#0'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Then_correct|  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| $abort_code@4) (= (ControlFlow 0 235449) 235119))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|  (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 235501) 235449) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 235501) 235235) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (= (ControlFlow 0 235499) 235501)) |inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Else_correct|  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|) (= |inline$$1_Diem_mint'#0'$0$$t11@1| (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|))) (and (= $abort_flag@3 $abort_flag@2) (= $abort_code@4 $abort_code@3))) (and (=> (= (ControlFlow 0 235139) 235449) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 235139) 235235) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t7@1| (and (=> (= (ControlFlow 0 235125) 235499) |inline$$1_Diem_mint'#0'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 235125) 235139) |inline$$1_Diem_mint'#0'$0$anon15_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$t7@1|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= (ControlFlow 0 235113) 235119))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t5@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= _$t0@@6 _$t0@@6)) (and (= _$t1@@5 _$t1@@5) (|$IsValid'address'| |inline$$1_Diem_mint'#0'$0$$t6@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t6@0| (|$addr#$signer| _$t0@@6)) (= |inline$$1_Diem_mint'#0'$0$$t6@0| |inline$$1_Diem_mint'#0'$0$$t6@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| 4)) (and (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t7@1| |inline$$1_Diem_mint'#0'$0$$t7@1|)))) (and (=> (= (ControlFlow 0 235097) 235125) |inline$$1_Diem_mint'#0'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 235097) 235113) |inline$$1_Diem_mint'#0'$0$anon14_Else_correct|))))))
(let ((anon39_Else_correct@@2  (=> (and (not $abort_flag@2) (= $t35 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 235507) (- 0 317147)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (=> (= (ControlFlow 0 235507) 235097) |inline$$1_Diem_mint'#0'$0$anon0_correct|))))))
(let ((anon39_Then_correct@@2  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 235839) 234073))) L8_correct)))
(let ((|inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| (|v#$Mutation_121668| $t31@0)) (= $es@0 (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1|)))
(let ((stream_new@@8 (let ((len@@8 (|l#Multiset_89261| stream@@16)))
(let ((cnt@@8 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@16) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@16) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0) (+ cnt@@8 1)) (+ len@@8 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| stream_new@@8)))))) (and (=> (= (ControlFlow 0 234312) 235839) anon39_Then_correct@@2) (=> (= (ControlFlow 0 234312) 235507) anon39_Else_correct@@2)))))
(let ((anon38_Else_correct@@2  (=> (not $t33) (=> (and (and (|$IsValid'vec'u8''| $t32) (|$IsEqual'vec'u8''| $t32 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= $t34@0 ($1_DesignatedDealer_ReceivedMintEvent $t32 _$t2@@2 _$t1@@5)) (= (ControlFlow 0 234318) 234312))) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|))))
(let ((anon38_Then_correct@@2  (=> $t33 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t17@@5)) (= $t17@@5 $t17@@5)) (and (= $t17@0 $t17@@5) (= (ControlFlow 0 235865) 234073))) L8_correct))))
(let ((anon37_Else_correct@@2  (=> (not $abort_flag@2) (=> (and (= $t31@0 ($Mutation_121668 (|l#$Mutation_185301| $t30@1) (let ((l (|l#Vec_22116| (|p#$Mutation_185301| $t30@1))))
(Vec_22116 (|Store__T@[Int]Int_| (|v#Vec_22116| (|p#$Mutation_185301| $t30@1)) l 0) (+ l 1))) (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|v#$Mutation_185301| $t30@1)))) (= $t33  (not (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 234213) 235865) anon38_Then_correct@@2) (=> (= (ControlFlow 0 234213) 234318) anon38_Else_correct@@2))))))
(let ((anon37_Then_correct@@2  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 235879) 234073))) L8_correct)))
(let ((anon36_Then$1_correct  (=> (= $t30@1 $t30) (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 235931) 235879) anon37_Then_correct@@2) (=> (= (ControlFlow 0 235931) 234213) anon37_Else_correct@@2))))))
(let ((anon36_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)) (= (ControlFlow 0 235929) 235931)) anon36_Then$1_correct)))
(let ((anon36_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@2) (=> (and (and (= $t30@0 ($Mutation_185301 ($Global _$t2@@2) (Vec_22116 (MapConstVec_13534 DefaultVecElem_13534) 0) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (= $t30@1 $t30@0)) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 234181) 235879) anon37_Then_correct@@2) (=> (= (ControlFlow 0 234181) 234213) anon37_Else_correct@@2))))))
(let ((L6_correct  (and (=> (= (ControlFlow 0 234159) (- 0 316903)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@2 _$t2@@2)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@2 _$t2@@2) (and (=> (= (ControlFlow 0 234159) 235929) anon36_Then_correct@@2) (=> (= (ControlFlow 0 234159) 234181) anon36_Else_correct@@2))))))
(let ((anon35_Else_correct@@2  (=> (and (and (and (not $abort_flag@0@@2) (= $t27@0 (|$window_start#$1_DesignatedDealer_TierInfo'#0'| $t26@@2))) (and (= $t28@0 (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| $t26@@2)) (= $t29@0 (|$tiers#$1_DesignatedDealer_TierInfo'#0'| $t26@@2)))) (and (and (= $abort_flag@1 $abort_flag@0@@2) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory@1|)) (and (= $abort_code@2 $abort_code@1@@2) (= (ControlFlow 0 235983) 234159)))) L6_correct)))
(let ((anon34_Then$1_correct@@2  (=> (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory|) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 236049) 235997) anon35_Then_correct@@2) (=> (= (ControlFlow 0 236049) 235983) anon35_Else_correct@@2))))))
(let ((anon34_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_162297| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2)) (= (ControlFlow 0 236047) 236049)) anon34_Then$1_correct@@2)))
(let ((anon34_Else_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_162297| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2) (= $t26@0 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_162297| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2))) (=> (and (and (= |$1_DesignatedDealer_TierInfo'#0'_$memory@0| ($Memory_162297 (|Store__T@[Int]Bool_| (|domain#$Memory_162297| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2 false) (|contents#$Memory_162297| |$1_DesignatedDealer_TierInfo'#0'_$memory|))) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory@0|)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 235961) 235997) anon35_Then_correct@@2) (=> (= (ControlFlow 0 235961) 235983) anon35_Else_correct@@2))))))
(let ((anon33_Then_correct@@2  (=> $t25@0 (and (=> (= (ControlFlow 0 235941) (- 0 316748)) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@2)) (=> (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@2) (and (=> (= (ControlFlow 0 235941) 236047) anon34_Then_correct@@2) (=> (= (ControlFlow 0 235941) 235961) anon34_Else_correct@@2)))))))
(let ((anon33_Else_correct@@2  (=> (not $t25@0) (=> (and (and (= $abort_flag@1 false) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory|)) (and (= $abort_code@2 $abort_code@0@@2) (= (ControlFlow 0 234151) 234159))) L6_correct))))
(let ((anon32_Then_correct@@2  (=> (and $t22@@2 (= $t25@0 (|Select__T@[Int]Bool_| (|domain#$Memory_162297| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2))) (and (=> (= (ControlFlow 0 234145) 235941) anon33_Then_correct@@2) (=> (= (ControlFlow 0 234145) 234151) anon33_Else_correct@@2)))))
(let ((anon32_Else_correct@@2  (=> (and (and (not $t22@@2) (= $t24@@2 $t24@@2)) (and (= $t17@0 $t24@@2) (= (ControlFlow 0 234135) 234073))) L8_correct)))
(let ((anon31_Then_correct@@2  (=> inline$$Gt$0$dst@1 (=> (and (= $t22@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t24@@2) (= $t24@@2 5)) (and (= $t24@@2 $t24@@2) (= $t22@@2 $t22@@2))) (and (=> (= (ControlFlow 0 234119) 234145) anon32_Then_correct@@2) (=> (= (ControlFlow 0 234119) 234135) anon32_Else_correct@@2)))))))
(let ((anon31_Else_correct@@2  (=> (and (and (not inline$$Gt$0$dst@1) (= $t21@@5 $t21@@5)) (and (= $t17@0 $t21@@5) (= (ControlFlow 0 233793) 234073))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t21@@5) (= $t21@@5 7)) (and (= $t21@@5 $t21@@5) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 233777) 234119) anon31_Then_correct@@2) (=> (= (ControlFlow 0 233777) 233793) anon31_Else_correct@@2))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t1@@5 0)) (= (ControlFlow 0 233741) 233777)) anon30_Else$1_correct)))
(let ((anon30_Else_correct@@2  (=> (not $t16@@2) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 233747) 233741)) inline$$Gt$0$anon0_correct))))
(let ((anon30_Then_correct@@2  (=> $t16@@2 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t15@@2)) (= 5 $t17@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t15@@2)) 1)) (= 3 $t17@@5))) (and (not (= (|$addr#$signer| _$t0@@6) 186537453)) (= 2 $t17@@5))) (= $t17@@5 $t17@@5)) (and (= $t17@0 $t17@@5) (= (ControlFlow 0 236121) 234073))) L8_correct))))
(let ((anon0$1_correct@@6  (=> (and (and (and (and (forall ((mint_cap_owner@@17 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@17) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@17)) 1))))
 :qid |DiemBlockcvc5bpl.14619:22|
 :skolemid |392|
)) (forall ((mint_cap_owner@@18 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@18) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@18)) 1))))
 :qid |DiemBlockcvc5bpl.14619:269|
 :skolemid |393|
))) (forall ((mint_cap_owner@@19 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@19) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@19)) 1))))
 :qid |DiemBlockcvc5bpl.14619:517|
 :skolemid |394|
))) (and (forall ((addr1@@29 Int) ) (!  (=> (|$IsValid'address'| addr1@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137277| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@29) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@29)) 1))))
 :qid |DiemBlockcvc5bpl.14627:21|
 :skolemid |395|
)) (forall ((addr1@@30 Int) ) (!  (=> (|$IsValid'address'| addr1@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137364| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@30) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@30)) 1))))
 :qid |DiemBlockcvc5bpl.14627:231|
 :skolemid |396|
)))) (and (and (and (forall ((addr1@@31 Int) ) (!  (=> (|$IsValid'address'| addr1@@31) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@31) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@31)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@31)) 2))))
 :qid |DiemBlockcvc5bpl.14631:22|
 :skolemid |397|
)) (forall ((addr1@@32 Int) ) (!  (=> (|$IsValid'address'| addr1@@32) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@32) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@32)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@32)) 2))))
 :qid |DiemBlockcvc5bpl.14631:293|
 :skolemid |398|
))) (forall ((addr1@@33 Int) ) (!  (=> (|$IsValid'address'| addr1@@33) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@33) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr1@@33)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@33)) 2))))
 :qid |DiemBlockcvc5bpl.14631:565|
 :skolemid |399|
))) (and (and (forall ((addr@@105 Int) ) (!  (=> (|$IsValid'address'| addr@@105) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@105) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.14635:22|
 :skolemid |400|
)) (forall ((addr@@106 Int) ) (!  (=> (|$IsValid'address'| addr@@106) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@106) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.14635:222|
 :skolemid |401|
))) (forall ((addr@@107 Int) ) (!  (=> (|$IsValid'address'| addr@@107) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr@@107) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.14635:423|
 :skolemid |402|
))))) (=> (and (and (and (and (and (forall ((addr@@108 Int) ) (!  (=> (|$IsValid'address'| addr@@108) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@108) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.14639:22|
 :skolemid |403|
)) (forall ((addr@@109 Int) ) (!  (=> (|$IsValid'address'| addr@@109) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@109) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.14639:227|
 :skolemid |404|
))) (forall ((addr@@110 Int) ) (!  (=> (|$IsValid'address'| addr@@110) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@110) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.14639:433|
 :skolemid |405|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@6))) (and (and (and (|$IsValid'u64'| _$t1@@5) (|$IsValid'address'| _$t2@@2)) (and (|$IsValid'u64'| _$t3) (forall (($a_0@@39 Int) ) (! (let (($rsc@@39 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@39)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@39))
 :qid |DiemBlockcvc5bpl.14659:20|
 :skolemid |406|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@39))
)))) (and (and (forall (($a_0@@40 Int) ) (! (let (($rsc@@40 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@40)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@40) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@40)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@40) 10000000000))))
 :qid |DiemBlockcvc5bpl.14663:20|
 :skolemid |407|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@40))
)) (forall (($a_0@@41 Int) ) (! (let (($rsc@@41 (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@41)))
(|$IsValid'$1_Diem_MintCapability'#0''| $rsc@@41))
 :qid |DiemBlockcvc5bpl.14667:20|
 :skolemid |408|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@41))
))) (and (forall (($a_0@@42 Int) ) (! (let (($rsc@@42 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@42)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@42))
 :qid |DiemBlockcvc5bpl.14671:20|
 :skolemid |409|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@42))
)) (forall (($a_0@@43 Int) ) (! (let (($rsc@@43 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_162297| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@43)))
(|$IsValid'$1_DesignatedDealer_TierInfo'#0''| $rsc@@43))
 :qid |DiemBlockcvc5bpl.14675:20|
 :skolemid |410|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_162297| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@43))
)))))) (and (and (and (and (= $t8@@5 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= $t9@@5 (|$addr#$signer| _$t0@@6))) (and (= $t10@@5 (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (= $t11@@5 ($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t2@@2 _$t1@@5)))) (and (and (= $t12@@5 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= $t13@@2 (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t12@@5))) (and (= $t14@@2 ($1_Diem_MintEvent _$t1@@5 (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t12@@5))) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@2 _$t2@@2)))) (and (and (and (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@2)) (and (= _$t0@@6 _$t0@@6) (= _$t1@@5 _$t1@@5))) (and (and (= _$t2@@2 _$t2@@2) (= _$t3 _$t3)) (and (= $t15@@2 (|$addr#$signer| _$t0@@6)) (= $t16@@2  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t15@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t15@@2)) 1))) (not (= (|$addr#$signer| _$t0@@6) 186537453))))))))) (and (=> (= (ControlFlow 0 233687) 236121) anon30_Then_correct@@2) (=> (= (ControlFlow 0 233687) 233747) anon30_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_89261| stream@@17) 0) (forall ((v@@62 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@17) v@@62) 0)
 :qid |DiemBlockcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemBlockcvc5bpl.2945:13|
 :skolemid |105|
))) (= (ControlFlow 0 232969) 233687)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (|l#Vec_22116| (|p#$Mutation_185301| $t30)) 0) (=> (and (= (|l#Vec_22116| (|p#$Mutation_121668| $t31)) 0) (= (ControlFlow 0 232979) 232969)) inline$$InitEventStore$0$anon0_correct@@6))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 315626) 232979) anon0_correct@@6)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@4@@0 () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t37@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| () T@$Memory_136513)
(declare-fun _$t1@@6 () Int)
(declare-fun _$t0@@7 () T@$signer)
(declare-fun $t9@@6 () Int)
(declare-fun _$t2@@3 () Int)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2| () T@$Memory_161851)
(declare-fun $t8@@6 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $es@2@@0 () T@$EventStore)
(declare-fun $t10@@6 () T@$1_Event_EventHandle)
(declare-fun $t11@@6 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t12@@6 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t13@@3 () T@$1_Event_EventHandle)
(declare-fun $t14@@3 () T@$1_Diem_MintEvent)
(declare-fun $t17@0@@0 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $abort_code@5@@0 () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| () T@$Memory_136513)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t19@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t15@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t20@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $es@1@@0 () T@$EventStore)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $abort_code@4@@0 () Int)
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| () T@$Memory_136513)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0| () T@$Memory_136513)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@1| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t11@1| () |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| Int) |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t5@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t35@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t31@0@@0 () T@$Mutation_121668)
(declare-fun $t34@0@@0 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t33@@0 () Bool)
(declare-fun $t32@@0 () T@Vec_22116)
(declare-fun $t17@@6 () Int)
(declare-fun $t30@1@@0 () T@$Mutation_185301)
(declare-fun $t30@@0 () T@$Mutation_185301)
(declare-fun $t30@0@@0 () T@$Mutation_185301)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@3 () |T@[Int]Bool|)
(declare-fun $t27@0@@0 () Int)
(declare-fun $t26@@3 () |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|)
(declare-fun $t28@0@@0 () Int)
(declare-fun $t29@0@@0 () T@Vec_22116)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@1| () T@$Memory_161851)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory| () T@$Memory_161851)
(declare-fun $t26@0@@0 () |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_| (|T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@0| () T@$Memory_161851)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t25@0@@0 () Bool)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun $t22@@3 () Bool)
(declare-fun $t24@@3 () Int)
(declare-fun inline$$Gt$0$dst@1@@0 () Bool)
(declare-fun $t21@@6 () Int)
(declare-fun $t16@@3 () Bool)
(declare-fun $t15@@3 () Int)
(declare-fun _$t3@@0 () Int)
(declare-fun $t31@@0 () T@$Mutation_121668)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_tiered_mint$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 318329) (let ((anon40_Else_correct@@3  (=> (not $abort_flag@4@@0) (=> (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1|) (= $t37@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816))) (and (=> (= (ControlFlow 0 239382) (- 0 320771)) (not (= _$t1@@6 0))) (=> (not (= _$t1@@6 0)) (and (=> (= (ControlFlow 0 239382) (- 0 320781)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@7))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@7)))) (and (=> (= (ControlFlow 0 239382) (- 0 320794)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@6))) (and (=> (= (ControlFlow 0 239382) (- 0 320806)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@6)) 1))) (and (=> (= (ControlFlow 0 239382) (- 0 320824)) (not (not (= (|$addr#$signer| _$t0@@7) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 186537453))) (and (=> (= (ControlFlow 0 239382) (- 0 320838)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@3))) (and (=> (= (ControlFlow 0 239382) (- 0 320849)) (not (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 239382) (- 0 320861)) (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128))) (=> (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128)) (and (=> (= (ControlFlow 0 239382) (- 0 320878)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 239382) (- 0 320888)) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 239382) (- 0 320896)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161851| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2|) _$t2@@3))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_161851| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2|) _$t2@@3)) (and (=> (= (ControlFlow 0 239382) (- 0 320905)) (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1|) _$t1@@6)) (=> (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1|) _$t1@@6) (and (=> (= (ControlFlow 0 239382) (- 0 320914)) (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6)))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37@@0) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8@@6))))) (and (=> (= (ControlFlow 0 239382) (- 0 320932)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@2@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@9 (let ((len@@9 (|l#Multiset_89261| stream@@18)))
(let ((cnt@@9 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@18) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@18) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@9 1)) (+ len@@9 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@9))))))
 (and (<= (|counter#$EventStore| expected@@4) (|counter#$EventStore| actual@@4)) (forall ((handle@@14 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@4) handle@@14)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@4) handle@@14))) (forall ((v@@63 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@4) handle@@14)) v@@63) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@4) handle@@14)) v@@63))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
)))))) (=> (let ((actual@@5 ($EventStore (- (|counter#$EventStore| $es@2@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@0) (|streams#$EventStore| $es)))))
(let ((expected@@5 (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@10 (let ((len@@10 (|l#Multiset_89261| stream@@19)))
(let ((cnt@@10 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@19) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@19) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@10 1)) (+ len@@10 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@10))))))
 (and (<= (|counter#$EventStore| expected@@5) (|counter#$EventStore| actual@@5)) (forall ((handle@@15 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@5) handle@@15)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@5) handle@@15))) (forall ((v@@64 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@5) handle@@15)) v@@64) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@5) handle@@15)) v@@64))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
))))) (and (=> (= (ControlFlow 0 239382) (- 0 320957)) (let ((actual@@6 ($EventStore (- (|counter#$EventStore| $es@2@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@0) (|streams#$EventStore| $es)))))
(let ((expected@@6 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12@@6)) (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@11 (let ((len@@11 (|l#Multiset_89261| stream@@21)))
(let ((cnt@@11 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@11 1)) (+ len@@11 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@11))))) $t13@@3)))
(let ((stream_new@@12 (let ((len@@12 (|l#Multiset_89261| stream@@20)))
(let ((cnt@@12 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@20) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@3))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@20) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@3) (+ cnt@@12 1)) (+ len@@12 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@11 (let ((len@@11 (|l#Multiset_89261| stream@@21)))
(let ((cnt@@11 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@11 1)) (+ len@@11 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@11))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@11 (let ((len@@11 (|l#Multiset_89261| stream@@21)))
(let ((cnt@@11 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@11 1)) (+ len@@11 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@11))))) $t13@@3 stream_new@@12)))) (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@11 (let ((len@@11 (|l#Multiset_89261| stream@@21)))
(let ((cnt@@11 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@21) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@11 1)) (+ len@@11 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@11)))))))
 (and (<= (|counter#$EventStore| expected@@6) (|counter#$EventStore| actual@@6)) (forall ((handle@@16 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@6) handle@@16)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@6) handle@@16))) (forall ((v@@65 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@6) handle@@16)) v@@65) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@6) handle@@16)) v@@65))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
)))))) (=> (let ((actual@@7 ($EventStore (- (|counter#$EventStore| $es@2@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@0) (|streams#$EventStore| $es)))))
(let ((expected@@7 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12@@6)) (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@13 (let ((len@@13 (|l#Multiset_89261| stream@@23)))
(let ((cnt@@13 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@13 1)) (+ len@@13 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@13))))) $t13@@3)))
(let ((stream_new@@14 (let ((len@@14 (|l#Multiset_89261| stream@@22)))
(let ((cnt@@14 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@22) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@3))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@22) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@3) (+ cnt@@14 1)) (+ len@@14 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@13 (let ((len@@13 (|l#Multiset_89261| stream@@23)))
(let ((cnt@@13 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@13 1)) (+ len@@13 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@13))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@13 (let ((len@@13 (|l#Multiset_89261| stream@@23)))
(let ((cnt@@13 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@13 1)) (+ len@@13 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@13))))) $t13@@3 stream_new@@14)))) (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@13 (let ((len@@13 (|l#Multiset_89261| stream@@23)))
(let ((cnt@@13 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@23) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@13 1)) (+ len@@13 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@13)))))))
 (and (<= (|counter#$EventStore| expected@@7) (|counter#$EventStore| actual@@7)) (forall ((handle@@17 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@7) handle@@17)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@7) handle@@17))) (forall ((v@@66 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@7) handle@@17)) v@@66) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@7) handle@@17)) v@@66))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
))))) (=> (= (ControlFlow 0 239382) (- 0 320994)) (let ((actual@@8 ($EventStore (- (|counter#$EventStore| $es@2@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@0) (|streams#$EventStore| $es)))))
(let ((expected@@8 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12@@6)) (let ((stream@@24 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@15 (let ((len@@15 (|l#Multiset_89261| stream@@25)))
(let ((cnt@@15 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@15 1)) (+ len@@15 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@15))))) $t13@@3)))
(let ((stream_new@@16 (let ((len@@16 (|l#Multiset_89261| stream@@24)))
(let ((cnt@@16 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@24) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@3))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@24) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@3) (+ cnt@@16 1)) (+ len@@16 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@15 (let ((len@@15 (|l#Multiset_89261| stream@@25)))
(let ((cnt@@15 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@15 1)) (+ len@@15 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@15))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@15 (let ((len@@15 (|l#Multiset_89261| stream@@25)))
(let ((cnt@@15 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@15 1)) (+ len@@15 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@15))))) $t13@@3 stream_new@@16)))) (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6)))
(let ((stream_new@@15 (let ((len@@15 (|l#Multiset_89261| stream@@25)))
(let ((cnt@@15 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@25) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@6) (+ cnt@@15 1)) (+ len@@15 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@6 stream_new@@15)))))))
 (and (<= (|counter#$EventStore| actual@@8) (|counter#$EventStore| expected@@8)) (forall ((handle@@18 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@8) handle@@18)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@8) handle@@18))) (forall ((v@@67 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@8) handle@@18)) v@@67) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@8) handle@@18)) v@@67))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
))))))))))))))))))))))))))))))))))))))))
(let ((L8_correct@@0  (and (=> (= (ControlFlow 0 237644) (- 0 320501)) (or (or (or (or (or (or (or (or (= _$t1@@6 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@7)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@6)) 1))) (not (= (|$addr#$signer| _$t0@@7) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@3))) (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (= _$t1@@6 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@7)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@6)) 1))) (not (= (|$addr#$signer| _$t0@@7) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@3))) (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (= (ControlFlow 0 237644) (- 0 320589)) (or (or (or (or (or (or (or (or (and (= _$t1@@6 0) (= 7 $t17@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@7))) (= 4 $t17@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@6)) (= 5 $t17@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@6)) 1)) (= 3 $t17@0@@0))) (and (not (= (|$addr#$signer| _$t0@@7) 186537453)) (= 2 $t17@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@3)) (= 5 $t17@0@@0))) (and (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 1 $t17@0@@0))) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128) (= 8 $t17@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t17@0@@0))))))))
(let ((anon35_Then_correct@@3  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t17@0@@0 $abort_code@1@@3) (= (ControlFlow 0 239568) 237644))) L8_correct@@0)))
(let ((anon40_Then_correct@@3  (=> (and (and $abort_flag@4@@0 (= $abort_code@5@@0 $abort_code@5@@0)) (and (= $t17@0@@0 $abort_code@5@@0) (= (ControlFlow 0 239396) 237644))) L8_correct@@0)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon13_correct|  (=> (and (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1@@6) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0|) _$t1@@6)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t19@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t15@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t20@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t14@0|))) (and (and (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t21@0|  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0|))) (= $es@1@@0 (ite |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t21@0| (let ((stream@@26 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es@0@@0) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t20@0|)))
(let ((stream_new@@17 (let ((len@@17 (|l#Multiset_89261| stream@@26)))
(let ((cnt@@17 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@26) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t19@0|))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@26) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t19@0|) (+ cnt@@17 1)) (+ len@@17 1))))))
($EventStore (+ (|counter#$EventStore| $es@0@@0) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es@0@@0) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t20@0| stream_new@@17)))) $es@0@@0))) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0|) (= $abort_code@5@@0 $abort_code@4@@0))) (and (and (= $es@2@@0 $es@1@@0) (= $abort_flag@4@@0 $abort_flag@3@@0)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0|) (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|))))) (and (=> (= (ControlFlow 0 238926) 239396) anon40_Then_correct@@3) (=> (= (ControlFlow 0 238926) 239382) anon40_Else_correct@@3))))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'bool'@1|) (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| ($Memory_136513 (|Store__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816 false) (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|)))) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 238824) 238926))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon18_Then_correct|  (=> (and (and |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'bool'@1| (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0| ($Memory_136513 (|Store__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@1|)))) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) (= (ControlFlow 0 238938) 238926))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t17@0|) (and (=> (= (ControlFlow 0 238812) 238938) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 238812) 238824) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon18_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$L3_correct|  (=> (= $abort_code@5@@0 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1|) (=> (and (and (= $es@2@@0 $es@0@@0) (= $abort_flag@4@@0 true)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|))) (and (=> (= (ControlFlow 0 238690) 239396) anon40_Then_correct@@3) (=> (= (ControlFlow 0 238690) 239382) anon40_Else_correct@@3))))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon17_Then_correct|  (=> |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t17@0| (=> (and (and (or (or (and (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 1 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|)) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128) (= 8 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|))) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|) (= (ControlFlow 0 239006) 238690))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Else_correct|  (=> (and (not $abort_flag@3@@0) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t14@0| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0|))) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t15@0| ($1_Diem_MintEvent _$t1@@6 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0|))) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t17@0|  (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1@@6) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 238806) 239006) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 238806) 238812) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Then_correct|  (=> (and (and $abort_flag@3@@0 (= $abort_code@4@@0 $abort_code@4@@0)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1| $abort_code@4@@0) (= (ControlFlow 0 239020) 238690))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Then$1_correct|  (=> (and (= $abort_flag@3@@0 true) (= $abort_code@4@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 239072) 239020) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 239072) 238806) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|)) (= (ControlFlow 0 239070) 239072)) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Then$1_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Else_correct|  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t11@1| (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|))) (and (= $abort_flag@3@@0 $abort_flag@2@@0) (= $abort_code@4@@0 $abort_code@3@@0))) (and (=> (= (ControlFlow 0 238710) 239020) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 238710) 238806) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon14_Then_correct|  (=> |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1| (and (=> (= (ControlFlow 0 238696) 239070) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 238696) 238710) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon14_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0|)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0|) (= (ControlFlow 0 238684) 238690))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t5@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= _$t0@@7 _$t0@@7)) (and (= _$t1@@6 _$t1@@6) (|$IsValid'address'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0| (|$addr#$signer| _$t0@@7)) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0| 4)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1|)))) (and (=> (= (ControlFlow 0 238668) 238696) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 238668) 238684) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon14_Else_correct|))))))
(let ((anon39_Else_correct@@3  (=> (and (not $abort_flag@2@@0) (= $t35@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 239078) (- 0 319860)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies| 173345816) (=> (= (ControlFlow 0 239078) 238668) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon0_correct|))))))
(let ((anon39_Then_correct@@3  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t17@0@@0 $abort_code@3@@0) (= (ControlFlow 0 239410) 237644))) L8_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@0|  (=> (and (= |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@0| (|v#$Mutation_121668| $t31@0@@0)) (= $es@0@@0 (let ((stream@@27 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@0|)))
(let ((stream_new@@18 (let ((len@@18 (|l#Multiset_89261| stream@@27)))
(let ((cnt@@18 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@27) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0@@0))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@27) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0@@0) (+ cnt@@18 1)) (+ len@@18 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@0| stream_new@@18)))))) (and (=> (= (ControlFlow 0 237883) 239410) anon39_Then_correct@@3) (=> (= (ControlFlow 0 237883) 239078) anon39_Else_correct@@3)))))
(let ((anon38_Else_correct@@3  (=> (not $t33@@0) (=> (and (and (|$IsValid'vec'u8''| $t32@@0) (|$IsEqual'vec'u8''| $t32@@0 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (= $t34@0@@0 ($1_DesignatedDealer_ReceivedMintEvent $t32@@0 _$t2@@3 _$t1@@6)) (= (ControlFlow 0 237889) 237883))) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@0|))))
(let ((anon38_Then_correct@@3  (=> $t33@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t17@@6)) (= $t17@@6 $t17@@6)) (and (= $t17@0@@0 $t17@@6) (= (ControlFlow 0 239436) 237644))) L8_correct@@0))))
(let ((anon37_Else_correct@@3  (=> (not $abort_flag@2@@0) (=> (and (= $t31@0@@0 ($Mutation_121668 (|l#$Mutation_185301| $t30@1@@0) (let ((l@@0 (|l#Vec_22116| (|p#$Mutation_185301| $t30@1@@0))))
(Vec_22116 (|Store__T@[Int]Int_| (|v#Vec_22116| (|p#$Mutation_185301| $t30@1@@0)) l@@0 0) (+ l@@0 1))) (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|v#$Mutation_185301| $t30@1@@0)))) (= $t33@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 237784) 239436) anon38_Then_correct@@3) (=> (= (ControlFlow 0 237784) 237889) anon38_Else_correct@@3))))))
(let ((anon37_Then_correct@@3  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t17@0@@0 $abort_code@3@@0) (= (ControlFlow 0 239450) 237644))) L8_correct@@0)))
(let ((anon36_Then$1_correct@@0  (=> (= $t30@1@@0 $t30@@0) (=> (and (= $abort_flag@2@@0 true) (= $abort_code@3@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 239502) 239450) anon37_Then_correct@@3) (=> (= (ControlFlow 0 239502) 237784) anon37_Else_correct@@3))))))
(let ((anon36_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@3)) (= (ControlFlow 0 239500) 239502)) anon36_Then$1_correct@@0)))
(let ((anon36_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@3) (=> (and (and (= $t30@0@@0 ($Mutation_185301 ($Global _$t2@@3) (Vec_22116 (MapConstVec_13534 DefaultVecElem_13534) 0) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@3))) (= $t30@1@@0 $t30@0@@0)) (and (= $abort_flag@2@@0 $abort_flag@1@@0) (= $abort_code@3@@0 $abort_code@2@@0))) (and (=> (= (ControlFlow 0 237752) 239450) anon37_Then_correct@@3) (=> (= (ControlFlow 0 237752) 237784) anon37_Else_correct@@3))))))
(let ((L6_correct@@0  (and (=> (= (ControlFlow 0 237730) (- 0 319616)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@3 _$t2@@3)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@3 _$t2@@3) (and (=> (= (ControlFlow 0 237730) 239500) anon36_Then_correct@@3) (=> (= (ControlFlow 0 237730) 237752) anon36_Else_correct@@3))))))
(let ((anon35_Else_correct@@3  (=> (and (and (and (not $abort_flag@0@@3) (= $t27@0@@0 (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| $t26@@3))) (and (= $t28@0@@0 (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| $t26@@3)) (= $t29@0@@0 (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| $t26@@3)))) (and (and (= $abort_flag@1@@0 $abort_flag@0@@3) (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@1|)) (and (= $abort_code@2@@0 $abort_code@1@@3) (= (ControlFlow 0 239554) 237730)))) L6_correct@@0)))
(let ((anon34_Then$1_correct@@3  (=> (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@1| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 239620) 239568) anon35_Then_correct@@3) (=> (= (ControlFlow 0 239620) 239554) anon35_Else_correct@@3))))))
(let ((anon34_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161851| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2@@3)) (= (ControlFlow 0 239618) 239620)) anon34_Then$1_correct@@3)))
(let ((anon34_Else_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_161851| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2@@3) (= $t26@0@@0 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_| (|contents#$Memory_161851| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2@@3))) (=> (and (and (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@0| ($Memory_161851 (|Store__T@[Int]Bool_| (|domain#$Memory_161851| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2@@3 false) (|contents#$Memory_161851| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|))) (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@1| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@0|)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 239532) 239568) anon35_Then_correct@@3) (=> (= (ControlFlow 0 239532) 239554) anon35_Else_correct@@3))))))
(let ((anon33_Then_correct@@3  (=> $t25@0@@0 (and (=> (= (ControlFlow 0 239512) (- 0 319461)) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies| _$t2@@3)) (=> (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies| _$t2@@3) (and (=> (= (ControlFlow 0 239512) 239618) anon34_Then_correct@@3) (=> (= (ControlFlow 0 239512) 239532) anon34_Else_correct@@3)))))))
(let ((anon33_Else_correct@@3  (=> (not $t25@0@@0) (=> (and (and (= $abort_flag@1@@0 false) (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|)) (and (= $abort_code@2@@0 $abort_code@0@@3) (= (ControlFlow 0 237722) 237730))) L6_correct@@0))))
(let ((anon32_Then_correct@@3  (=> (and $t22@@3 (= $t25@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_161851| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2@@3))) (and (=> (= (ControlFlow 0 237716) 239512) anon33_Then_correct@@3) (=> (= (ControlFlow 0 237716) 237722) anon33_Else_correct@@3)))))
(let ((anon32_Else_correct@@3  (=> (and (and (not $t22@@3) (= $t24@@3 $t24@@3)) (and (= $t17@0@@0 $t24@@3) (= (ControlFlow 0 237706) 237644))) L8_correct@@0)))
(let ((anon31_Then_correct@@3  (=> inline$$Gt$0$dst@1@@0 (=> (and (= $t22@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@3)) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t24@@3) (= $t24@@3 5)) (and (= $t24@@3 $t24@@3) (= $t22@@3 $t22@@3))) (and (=> (= (ControlFlow 0 237690) 237716) anon32_Then_correct@@3) (=> (= (ControlFlow 0 237690) 237706) anon32_Else_correct@@3)))))))
(let ((anon31_Else_correct@@3  (=> (and (and (not inline$$Gt$0$dst@1@@0) (= $t21@@6 $t21@@6)) (and (= $t17@0@@0 $t21@@6) (= (ControlFlow 0 237364) 237644))) L8_correct@@0)))
(let ((anon30_Else$1_correct@@0  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t21@@6) (= $t21@@6 7)) (and (= $t21@@6 $t21@@6) (= inline$$Gt$0$dst@1@@0 inline$$Gt$0$dst@1@@0))) (and (=> (= (ControlFlow 0 237348) 237690) anon31_Then_correct@@3) (=> (= (ControlFlow 0 237348) 237364) anon31_Else_correct@@3))))))
(let ((inline$$Gt$0$anon0_correct@@0  (=> (and (= inline$$Gt$0$dst@1@@0 (> _$t1@@6 0)) (= (ControlFlow 0 237312) 237348)) anon30_Else$1_correct@@0)))
(let ((anon30_Else_correct@@3  (=> (not $t16@@3) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 237318) 237312)) inline$$Gt$0$anon0_correct@@0))))
(let ((anon30_Then_correct@@3  (=> $t16@@3 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t15@@3)) (= 5 $t17@@6)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t15@@3)) 1)) (= 3 $t17@@6))) (and (not (= (|$addr#$signer| _$t0@@7) 186537453)) (= 2 $t17@@6))) (= $t17@@6 $t17@@6)) (and (= $t17@0@@0 $t17@@6) (= (ControlFlow 0 239692) 237644))) L8_correct@@0))))
(let ((anon0$1_correct@@7  (=> (and (and (and (and (forall ((mint_cap_owner@@20 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@20) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@20)) 1))))
 :qid |DiemBlockcvc5bpl.15221:22|
 :skolemid |411|
)) (forall ((mint_cap_owner@@21 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@21) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@21)) 1))))
 :qid |DiemBlockcvc5bpl.15221:269|
 :skolemid |412|
))) (forall ((mint_cap_owner@@22 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@22) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@22)) 1))))
 :qid |DiemBlockcvc5bpl.15221:517|
 :skolemid |413|
))) (and (forall ((addr1@@34 Int) ) (!  (=> (|$IsValid'address'| addr1@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137277| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@34) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@34)) 1))))
 :qid |DiemBlockcvc5bpl.15229:21|
 :skolemid |414|
)) (forall ((addr1@@35 Int) ) (!  (=> (|$IsValid'address'| addr1@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137364| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@35) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@35)) 1))))
 :qid |DiemBlockcvc5bpl.15229:231|
 :skolemid |415|
)))) (and (and (and (forall ((addr1@@36 Int) ) (!  (=> (|$IsValid'address'| addr1@@36) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@36) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@36)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@36)) 2))))
 :qid |DiemBlockcvc5bpl.15233:22|
 :skolemid |416|
)) (forall ((addr1@@37 Int) ) (!  (=> (|$IsValid'address'| addr1@@37) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@37) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@37)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@37)) 2))))
 :qid |DiemBlockcvc5bpl.15233:293|
 :skolemid |417|
))) (forall ((addr1@@38 Int) ) (!  (=> (|$IsValid'address'| addr1@@38) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@38) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr1@@38)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@38)) 2))))
 :qid |DiemBlockcvc5bpl.15233:565|
 :skolemid |418|
))) (and (and (forall ((addr@@111 Int) ) (!  (=> (|$IsValid'address'| addr@@111) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@111) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.15237:22|
 :skolemid |419|
)) (forall ((addr@@112 Int) ) (!  (=> (|$IsValid'address'| addr@@112) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@112) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.15237:222|
 :skolemid |420|
))) (forall ((addr@@113 Int) ) (!  (=> (|$IsValid'address'| addr@@113) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr@@113) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.15237:423|
 :skolemid |421|
))))) (=> (and (and (and (and (and (forall ((addr@@114 Int) ) (!  (=> (|$IsValid'address'| addr@@114) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@114) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.15241:22|
 :skolemid |422|
)) (forall ((addr@@115 Int) ) (!  (=> (|$IsValid'address'| addr@@115) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@115) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.15241:227|
 :skolemid |423|
))) (forall ((addr@@116 Int) ) (!  (=> (|$IsValid'address'| addr@@116) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@116) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.15241:433|
 :skolemid |424|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128465| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@7)))) (and (and (and (|$IsValid'u64'| _$t1@@6) (|$IsValid'address'| _$t2@@3)) (and (|$IsValid'u64'| _$t3@@0) (forall (($a_0@@44 Int) ) (! (let (($rsc@@44 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@44)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@44))
 :qid |DiemBlockcvc5bpl.15265:20|
 :skolemid |425|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@44))
)))) (and (and (forall (($a_0@@45 Int) ) (! (let (($rsc@@45 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@45)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@45) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@45)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@45) 10000000000))))
 :qid |DiemBlockcvc5bpl.15269:20|
 :skolemid |426|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@45))
)) (forall (($a_0@@46 Int) ) (! (let (($rsc@@46 (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) $a_0@@46)))
(|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| $rsc@@46))
 :qid |DiemBlockcvc5bpl.15273:20|
 :skolemid |427|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) $a_0@@46))
))) (and (forall (($a_0@@47 Int) ) (! (let (($rsc@@47 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@47)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@47))
 :qid |DiemBlockcvc5bpl.15277:20|
 :skolemid |428|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@47))
)) (forall (($a_0@@48 Int) ) (! (let (($rsc@@48 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_| (|contents#$Memory_161851| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) $a_0@@48)))
(|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| $rsc@@48))
 :qid |DiemBlockcvc5bpl.15281:20|
 :skolemid |429|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_| (|contents#$Memory_161851| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) $a_0@@48))
)))))) (and (and (and (and (= $t8@@6 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= $t9@@6 (|$addr#$signer| _$t0@@7))) (and (= $t10@@6 (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@3))) (= $t11@@6 ($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t2@@3 _$t1@@6)))) (and (and (= $t12@@6 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= $t13@@3 (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12@@6))) (and (= $t14@@3 ($1_Diem_MintEvent _$t1@@6 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12@@6))) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@3 _$t2@@3)))) (and (and (and (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies| 173345816) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies| _$t2@@3)) (and (= _$t0@@7 _$t0@@7) (= _$t1@@6 _$t1@@6))) (and (and (= _$t2@@3 _$t2@@3) (= _$t3@@0 _$t3@@0)) (and (= $t15@@3 (|$addr#$signer| _$t0@@7)) (= $t16@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t15@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t15@@3)) 1))) (not (= (|$addr#$signer| _$t0@@7) 186537453))))))))) (and (=> (= (ControlFlow 0 237258) 239692) anon30_Then_correct@@3) (=> (= (ControlFlow 0 237258) 237318) anon30_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@19 T@$1_Event_EventHandle) ) (! (let ((stream@@28 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) handle@@19)))
 (and (= (|l#Multiset_89261| stream@@28) 0) (forall ((v@@68 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@28) v@@68) 0)
 :qid |DiemBlockcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemBlockcvc5bpl.2945:13|
 :skolemid |105|
))) (= (ControlFlow 0 236530) 237258)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (|l#Vec_22116| (|p#$Mutation_185301| $t30@@0)) 0) (=> (and (= (|l#Vec_22116| (|p#$Mutation_121668| $t31@@0)) 0) (= (ControlFlow 0 236540) 236530)) inline$$InitEventStore$0$anon0_correct@@7))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 318329) 236540) anon0_correct@@7)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@4@@1 () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $t37@@1 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| () T@$Memory_136577)
(declare-fun _$t1@@7 () Int)
(declare-fun _$t0@@8 () T@$signer)
(declare-fun $t9@@7 () Int)
(declare-fun _$t2@@4 () Int)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@2| () T@$Memory_162074)
(declare-fun $t8@@7 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $es@2@@1 () T@$EventStore)
(declare-fun $t10@@7 () T@$1_Event_EventHandle)
(declare-fun $t11@@7 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t12@@7 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t13@@4 () T@$1_Event_EventHandle)
(declare-fun $t14@@4 () T@$1_Diem_MintEvent)
(declare-fun $t17@0@@1 () Int)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $abort_code@5@@1 () Int)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t16@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| () T@$Memory_136577)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t19@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t15@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t20@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t13@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $es@1@@1 () T@$EventStore)
(declare-fun $es@0@@1 () T@$EventStore)
(declare-fun $abort_code@4@@1 () Int)
(declare-fun $abort_flag@3@@1 () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| () T@$Memory_136577)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| () T@$Memory_136577)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@1| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t11@1| () |T@$1_Diem_MintCapability'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'_| (|T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| Int) |T@$1_Diem_MintCapability'$1_XDX_XDX'|)
(declare-fun $abort_flag@2@@1 () Bool)
(declare-fun $abort_code@3@@1 () Int)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t7@1| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t5@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t35@@1 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies| () |T@[Int]Bool|)
(declare-fun |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@1| () T@$1_Event_EventHandle)
(declare-fun $t31@0@@1 () T@$Mutation_121668)
(declare-fun $t34@0@@1 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t33@@1 () Bool)
(declare-fun $t32@@1 () T@Vec_22116)
(declare-fun $t17@@7 () Int)
(declare-fun $t30@1@@1 () T@$Mutation_185301)
(declare-fun $t30@@1 () T@$Mutation_185301)
(declare-fun $t30@0@@1 () T@$Mutation_185301)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@4 () |T@[Int]Bool|)
(declare-fun $t27@0@@1 () Int)
(declare-fun $t26@@4 () |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|)
(declare-fun $t28@0@@1 () Int)
(declare-fun $t29@0@@1 () T@Vec_22116)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@1| () T@$Memory_162074)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory| () T@$Memory_162074)
(declare-fun $t26@0@@1 () |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_| (|T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@0| () T@$Memory_162074)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t25@0@@1 () Bool)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$modifies| () |T@[Int]Bool|)
(declare-fun $t22@@4 () Bool)
(declare-fun $t24@@4 () Int)
(declare-fun inline$$Gt$0$dst@1@@1 () Bool)
(declare-fun $t21@@7 () Int)
(declare-fun $t16@@4 () Bool)
(declare-fun $t15@@4 () Int)
(declare-fun _$t3@@1 () Int)
(declare-fun $t31@@1 () T@$Mutation_121668)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_tiered_mint$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 321042) (let ((anon40_Else_correct@@4  (=> (not $abort_flag@4@@1) (=> (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1|) (= $t37@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816))) (and (=> (= (ControlFlow 0 242945) (- 0 323474)) (not (= _$t1@@7 0))) (=> (not (= _$t1@@7 0)) (and (=> (= (ControlFlow 0 242945) (- 0 323484)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@8))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@8)))) (and (=> (= (ControlFlow 0 242945) (- 0 323497)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@7))) (and (=> (= (ControlFlow 0 242945) (- 0 323509)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@7)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@7)) 1))) (and (=> (= (ControlFlow 0 242945) (- 0 323527)) (not (not (= (|$addr#$signer| _$t0@@8) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@8) 186537453))) (and (=> (= (ControlFlow 0 242945) (- 0 323541)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@4))) (and (=> (= (ControlFlow 0 242945) (- 0 323552)) (not (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 242945) (- 0 323564)) (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128))) (=> (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128)) (and (=> (= (ControlFlow 0 242945) (- 0 323581)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 242945) (- 0 323591)) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 242945) (- 0 323599)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_162074| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@2|) _$t2@@4))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_162074| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@2|) _$t2@@4)) (and (=> (= (ControlFlow 0 242945) (- 0 323608)) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1|) _$t1@@7)) (=> (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1|) _$t1@@7) (and (=> (= (ControlFlow 0 242945) (- 0 323617)) (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7)))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t37@@1) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8@@7))))) (and (=> (= (ControlFlow 0 242945) (- 0 323635)) (let ((actual@@9 ($EventStore (- (|counter#$EventStore| $es@2@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@1) (|streams#$EventStore| $es)))))
(let ((expected@@9 (let ((stream@@29 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@19 (let ((len@@19 (|l#Multiset_89261| stream@@29)))
(let ((cnt@@19 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@29) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@29) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@19 1)) (+ len@@19 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@19))))))
 (and (<= (|counter#$EventStore| expected@@9) (|counter#$EventStore| actual@@9)) (forall ((handle@@20 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@9) handle@@20)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@9) handle@@20))) (forall ((v@@69 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@9) handle@@20)) v@@69) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@9) handle@@20)) v@@69))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
)))))) (=> (let ((actual@@10 ($EventStore (- (|counter#$EventStore| $es@2@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@1) (|streams#$EventStore| $es)))))
(let ((expected@@10 (let ((stream@@30 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@20 (let ((len@@20 (|l#Multiset_89261| stream@@30)))
(let ((cnt@@20 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@30) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@30) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@20 1)) (+ len@@20 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@20))))))
 (and (<= (|counter#$EventStore| expected@@10) (|counter#$EventStore| actual@@10)) (forall ((handle@@21 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@10) handle@@21)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@10) handle@@21))) (forall ((v@@70 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@10) handle@@21)) v@@70) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@10) handle@@21)) v@@70))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
))))) (and (=> (= (ControlFlow 0 242945) (- 0 323660)) (let ((actual@@11 ($EventStore (- (|counter#$EventStore| $es@2@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@1) (|streams#$EventStore| $es)))))
(let ((expected@@11 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t12@@7)) (let ((stream@@31 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@32 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@21 (let ((len@@21 (|l#Multiset_89261| stream@@32)))
(let ((cnt@@21 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@21 1)) (+ len@@21 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@21))))) $t13@@4)))
(let ((stream_new@@22 (let ((len@@22 (|l#Multiset_89261| stream@@31)))
(let ((cnt@@22 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@31) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@4))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@31) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@4) (+ cnt@@22 1)) (+ len@@22 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@32 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@21 (let ((len@@21 (|l#Multiset_89261| stream@@32)))
(let ((cnt@@21 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@21 1)) (+ len@@21 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@21))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@32 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@21 (let ((len@@21 (|l#Multiset_89261| stream@@32)))
(let ((cnt@@21 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@21 1)) (+ len@@21 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@21))))) $t13@@4 stream_new@@22)))) (let ((stream@@32 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@21 (let ((len@@21 (|l#Multiset_89261| stream@@32)))
(let ((cnt@@21 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@32) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@21 1)) (+ len@@21 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@21)))))))
 (and (<= (|counter#$EventStore| expected@@11) (|counter#$EventStore| actual@@11)) (forall ((handle@@22 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@11) handle@@22)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@11) handle@@22))) (forall ((v@@71 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@11) handle@@22)) v@@71) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@11) handle@@22)) v@@71))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
)))))) (=> (let ((actual@@12 ($EventStore (- (|counter#$EventStore| $es@2@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@1) (|streams#$EventStore| $es)))))
(let ((expected@@12 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t12@@7)) (let ((stream@@33 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@34 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@23 (let ((len@@23 (|l#Multiset_89261| stream@@34)))
(let ((cnt@@23 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@23 1)) (+ len@@23 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@23))))) $t13@@4)))
(let ((stream_new@@24 (let ((len@@24 (|l#Multiset_89261| stream@@33)))
(let ((cnt@@24 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@33) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@4))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@33) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@4) (+ cnt@@24 1)) (+ len@@24 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@34 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@23 (let ((len@@23 (|l#Multiset_89261| stream@@34)))
(let ((cnt@@23 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@23 1)) (+ len@@23 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@23))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@34 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@23 (let ((len@@23 (|l#Multiset_89261| stream@@34)))
(let ((cnt@@23 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@23 1)) (+ len@@23 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@23))))) $t13@@4 stream_new@@24)))) (let ((stream@@34 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@23 (let ((len@@23 (|l#Multiset_89261| stream@@34)))
(let ((cnt@@23 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@34) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@23 1)) (+ len@@23 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@23)))))))
 (and (<= (|counter#$EventStore| expected@@12) (|counter#$EventStore| actual@@12)) (forall ((handle@@23 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@12) handle@@23)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@12) handle@@23))) (forall ((v@@72 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@12) handle@@23)) v@@72) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@12) handle@@23)) v@@72))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
))))) (=> (= (ControlFlow 0 242945) (- 0 323697)) (let ((actual@@13 ($EventStore (- (|counter#$EventStore| $es@2@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2@@1) (|streams#$EventStore| $es)))))
(let ((expected@@13 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t12@@7)) (let ((stream@@35 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@36 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@25 (let ((len@@25 (|l#Multiset_89261| stream@@36)))
(let ((cnt@@25 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@25 1)) (+ len@@25 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@25))))) $t13@@4)))
(let ((stream_new@@26 (let ((len@@26 (|l#Multiset_89261| stream@@35)))
(let ((cnt@@26 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@35) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@4))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@35) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@4) (+ cnt@@26 1)) (+ len@@26 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@36 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@25 (let ((len@@25 (|l#Multiset_89261| stream@@36)))
(let ((cnt@@25 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@25 1)) (+ len@@25 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@25))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| (let ((stream@@36 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@25 (let ((len@@25 (|l#Multiset_89261| stream@@36)))
(let ((cnt@@25 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@25 1)) (+ len@@25 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@25))))) $t13@@4 stream_new@@26)))) (let ((stream@@36 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7)))
(let ((stream_new@@25 (let ((len@@25 (|l#Multiset_89261| stream@@36)))
(let ((cnt@@25 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@36) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@7) (+ cnt@@25 1)) (+ len@@25 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $EmptyEventStore) $t10@@7 stream_new@@25)))))))
 (and (<= (|counter#$EventStore| actual@@13) (|counter#$EventStore| expected@@13)) (forall ((handle@@24 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@13) handle@@24)) (|l#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@13) handle@@24))) (forall ((v@@73 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| actual@@13) handle@@24)) v@@73) (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| expected@@13) handle@@24)) v@@73))
 :qid |DiemBlockcvc5bpl.164:13|
 :skolemid |5|
)))
 :qid |DiemBlockcvc5bpl.2961:13|
 :skolemid |106|
))))))))))))))))))))))))))))))))))))))))
(let ((L8_correct@@1  (and (=> (= (ControlFlow 0 241207) (- 0 323204)) (or (or (or (or (or (or (or (or (= _$t1@@7 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@8)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@7)) 1))) (not (= (|$addr#$signer| _$t0@@8) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@4))) (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (= _$t1@@7 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@8)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@7)) 1))) (not (= (|$addr#$signer| _$t0@@8) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@4))) (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (= (ControlFlow 0 241207) (- 0 323292)) (or (or (or (or (or (or (or (or (and (= _$t1@@7 0) (= 7 $t17@0@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@8))) (= 4 $t17@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@7)) (= 5 $t17@0@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t9@@7)) 1)) (= 3 $t17@0@@1))) (and (not (= (|$addr#$signer| _$t0@@8) 186537453)) (= 2 $t17@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@4)) (= 5 $t17@0@@1))) (and (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 1 $t17@0@@1))) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128) (= 8 $t17@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t17@0@@1))))))))
(let ((anon35_Then_correct@@4  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t17@0@@1 $abort_code@1@@4) (= (ControlFlow 0 243131) 241207))) L8_correct@@1)))
(let ((anon40_Then_correct@@4  (=> (and (and $abort_flag@4@@1 (= $abort_code@5@@1 $abort_code@5@@1)) (and (= $t17@0@@1 $abort_code@5@@1) (= (ControlFlow 0 242959) 241207))) L8_correct@@1)))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon13_correct|  (=> (and (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|) 173345816))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|) 173345816))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0|) (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0|) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|))))) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|))))) (= (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|))))) (= (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t18@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) _$t1@@7) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0|))))) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t16@0|) _$t1@@7)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t19@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t15@0|) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t20@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t14@0|))) (and (and (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t21@0|  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t13@0|))) (= $es@1@@1 (ite |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t21@0| (let ((stream@@37 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es@0@@1) |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t20@0|)))
(let ((stream_new@@27 (let ((len@@27 (|l#Multiset_89261| stream@@37)))
(let ((cnt@@27 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@37) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t19@0|))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@37) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t19@0|) (+ cnt@@27 1)) (+ len@@27 1))))))
($EventStore (+ (|counter#$EventStore| $es@0@@1) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es@0@@1) |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t20@0| stream_new@@27)))) $es@0@@1))) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t16@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t16@0|) (= $abort_code@5@@1 $abort_code@4@@1))) (and (and (= $es@2@@1 $es@1@@1) (= $abort_flag@4@@1 $abort_flag@3@@1)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t16@0|) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|))))) (and (=> (= (ControlFlow 0 242489) 242959) anon40_Then_correct@@4) (=> (= (ControlFlow 0 242489) 242945) anon40_Else_correct@@4))))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'$1_XDX_XDX'$0$$temp_0'bool'@1|) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| ($Memory_136577 (|Store__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816 false) (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|)))) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 242387) 242489))) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon18_Then_correct|  (=> (and (and |inline$$1_Diem_mint'$1_XDX_XDX'$0$$temp_0'bool'@1| (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| ($Memory_136577 (|Store__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816 |inline$$1_Diem_mint'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1|)))) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0|) (= (ControlFlow 0 242501) 242489))) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t17@0|) (and (=> (= (ControlFlow 0 242375) 242501) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 242375) 242387) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon18_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$L3_correct|  (=> (= $abort_code@5@@1 |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@1|) (=> (and (and (= $es@2@@1 $es@0@@1) (= $abort_flag@4@@1 true)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|))) (and (=> (= (ControlFlow 0 242253) 242959) anon40_Then_correct@@4) (=> (= (ControlFlow 0 242253) 242945) anon40_Else_correct@@4))))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon17_Then_correct|  (=> |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t17@0| (=> (and (and (or (or (and (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 1 |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0|)) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128) (= 8 |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0|))) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0|)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@1| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@0|) (= (ControlFlow 0 242569) 242253))) |inline$$1_Diem_mint'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon16_Else_correct|  (=> (and (not $abort_flag@3@@1) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t13@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t14@0| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t13@0|))) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t15@0| ($1_Diem_MintEvent _$t1@@7 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t13@0|))) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t17@0|  (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t1@@7) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 242369) 242569) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 242369) 242375) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon16_Then_correct|  (=> (and (and $abort_flag@3@@1 (= $abort_code@4@@1 $abort_code@4@@1)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@1| $abort_code@4@@1) (= (ControlFlow 0 242583) 242253))) |inline$$1_Diem_mint'$1_XDX_XDX'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon15_Then$1_correct|  (=> (and (= $abort_flag@3@@1 true) (= $abort_code@4@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 242635) 242583) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 242635) 242369) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon15_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0|)) (= (ControlFlow 0 242633) 242635)) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon15_Then$1_correct|)))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon15_Else_correct|  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0|) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t11@1| (|Select__T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'_| (|contents#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0|))) (and (= $abort_flag@3@@1 $abort_flag@2@@1) (= $abort_code@4@@1 $abort_code@3@@1))) (and (=> (= (ControlFlow 0 242273) 242583) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 242273) 242369) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon14_Then_correct|  (=> |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t7@1| (and (=> (= (ControlFlow 0 242259) 242633) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 242259) 242273) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon15_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon14_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t7@1|) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0|)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t10@1| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0|) (= (ControlFlow 0 242247) 242253))) |inline$$1_Diem_mint'$1_XDX_XDX'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'$1_XDX_XDX'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t5@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= _$t0@@8 _$t0@@8)) (and (= _$t1@@7 _$t1@@7) (|$IsValid'address'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0| (|$addr#$signer| _$t0@@8)) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0|)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t6@0|)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0| 4)) (and (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t7@1| |inline$$1_Diem_mint'$1_XDX_XDX'$0$$t7@1|)))) (and (=> (= (ControlFlow 0 242231) 242259) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 242231) 242247) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon14_Else_correct|))))))
(let ((anon39_Else_correct@@4  (=> (and (not $abort_flag@2@@1) (= $t35@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 242641) (- 0 322563)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies| 173345816) (=> (= (ControlFlow 0 242641) 242231) |inline$$1_Diem_mint'$1_XDX_XDX'$0$anon0_correct|))))))
(let ((anon39_Then_correct@@4  (=> (and (and $abort_flag@2@@1 (= $abort_code@3@@1 $abort_code@3@@1)) (and (= $t17@0@@1 $abort_code@3@@1) (= (ControlFlow 0 242973) 241207))) L8_correct@@1)))
(let ((|inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@1|  (=> (and (= |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@1| (|v#$Mutation_121668| $t31@0@@1)) (= $es@0@@1 (let ((stream@@38 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@1|)))
(let ((stream_new@@28 (let ((len@@28 (|l#Multiset_89261| stream@@38)))
(let ((cnt@@28 (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@38) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0@@1))))
(Multiset_89261 (|Store__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@38) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0@@1) (+ cnt@@28 1)) (+ len@@28 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1@@1| stream_new@@28)))))) (and (=> (= (ControlFlow 0 241446) 242973) anon39_Then_correct@@4) (=> (= (ControlFlow 0 241446) 242641) anon39_Else_correct@@4)))))
(let ((anon38_Else_correct@@4  (=> (not $t33@@1) (=> (and (and (|$IsValid'vec'u8''| $t32@@1) (|$IsEqual'vec'u8''| $t32@@1 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (= $t34@0@@1 ($1_DesignatedDealer_ReceivedMintEvent $t32@@1 _$t2@@4 _$t1@@7)) (= (ControlFlow 0 241452) 241446))) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct@@1|))))
(let ((anon38_Then_correct@@4  (=> $t33@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t17@@7)) (= $t17@@7 $t17@@7)) (and (= $t17@0@@1 $t17@@7) (= (ControlFlow 0 242999) 241207))) L8_correct@@1))))
(let ((anon37_Else_correct@@4  (=> (not $abort_flag@2@@1) (=> (and (= $t31@0@@1 ($Mutation_121668 (|l#$Mutation_185301| $t30@1@@1) (let ((l@@1 (|l#Vec_22116| (|p#$Mutation_185301| $t30@1@@1))))
(Vec_22116 (|Store__T@[Int]Int_| (|v#Vec_22116| (|p#$Mutation_185301| $t30@1@@1)) l@@1 0) (+ l@@1 1))) (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|v#$Mutation_185301| $t30@1@@1)))) (= $t33@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 241347) 242999) anon38_Then_correct@@4) (=> (= (ControlFlow 0 241347) 241452) anon38_Else_correct@@4))))))
(let ((anon37_Then_correct@@4  (=> (and (and $abort_flag@2@@1 (= $abort_code@3@@1 $abort_code@3@@1)) (and (= $t17@0@@1 $abort_code@3@@1) (= (ControlFlow 0 243013) 241207))) L8_correct@@1)))
(let ((anon36_Then$1_correct@@1  (=> (= $t30@1@@1 $t30@@1) (=> (and (= $abort_flag@2@@1 true) (= $abort_code@3@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 243065) 243013) anon37_Then_correct@@4) (=> (= (ControlFlow 0 243065) 241347) anon37_Else_correct@@4))))))
(let ((anon36_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@4)) (= (ControlFlow 0 243063) 243065)) anon36_Then$1_correct@@1)))
(let ((anon36_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@4) (=> (and (and (= $t30@0@@1 ($Mutation_185301 ($Global _$t2@@4) (Vec_22116 (MapConstVec_13534 DefaultVecElem_13534) 0) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@4))) (= $t30@1@@1 $t30@0@@1)) (and (= $abort_flag@2@@1 $abort_flag@1@@1) (= $abort_code@3@@1 $abort_code@2@@1))) (and (=> (= (ControlFlow 0 241315) 243013) anon37_Then_correct@@4) (=> (= (ControlFlow 0 241315) 241347) anon37_Else_correct@@4))))))
(let ((L6_correct@@1  (and (=> (= (ControlFlow 0 241293) (- 0 322319)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@4 _$t2@@4)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@4 _$t2@@4) (and (=> (= (ControlFlow 0 241293) 243063) anon36_Then_correct@@4) (=> (= (ControlFlow 0 241293) 241315) anon36_Else_correct@@4))))))
(let ((anon35_Else_correct@@4  (=> (and (and (and (not $abort_flag@0@@4) (= $t27@0@@1 (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| $t26@@4))) (and (= $t28@0@@1 (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| $t26@@4)) (= $t29@0@@1 (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| $t26@@4)))) (and (and (= $abort_flag@1@@1 $abort_flag@0@@4) (= |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@2| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@1|)) (and (= $abort_code@2@@1 $abort_code@1@@4) (= (ControlFlow 0 243117) 241293)))) L6_correct@@1)))
(let ((anon34_Then$1_correct@@4  (=> (= |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@1| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 243183) 243131) anon35_Then_correct@@4) (=> (= (ControlFlow 0 243183) 243117) anon35_Else_correct@@4))))))
(let ((anon34_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_162074| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) _$t2@@4)) (= (ControlFlow 0 243181) 243183)) anon34_Then$1_correct@@4)))
(let ((anon34_Else_correct@@4  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_162074| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) _$t2@@4) (= $t26@0@@1 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_| (|contents#$Memory_162074| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) _$t2@@4))) (=> (and (and (= |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@0| ($Memory_162074 (|Store__T@[Int]Bool_| (|domain#$Memory_162074| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) _$t2@@4 false) (|contents#$Memory_162074| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|))) (= |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@1| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@0|)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 243095) 243131) anon35_Then_correct@@4) (=> (= (ControlFlow 0 243095) 243117) anon35_Else_correct@@4))))))
(let ((anon33_Then_correct@@4  (=> $t25@0@@1 (and (=> (= (ControlFlow 0 243075) (- 0 322164)) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$modifies| _$t2@@4)) (=> (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$modifies| _$t2@@4) (and (=> (= (ControlFlow 0 243075) 243181) anon34_Then_correct@@4) (=> (= (ControlFlow 0 243075) 243095) anon34_Else_correct@@4)))))))
(let ((anon33_Else_correct@@4  (=> (not $t25@0@@1) (=> (and (and (= $abort_flag@1@@1 false) (= |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory@2| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|)) (and (= $abort_code@2@@1 $abort_code@0@@4) (= (ControlFlow 0 241285) 241293))) L6_correct@@1))))
(let ((anon32_Then_correct@@4  (=> (and $t22@@4 (= $t25@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_162074| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) _$t2@@4))) (and (=> (= (ControlFlow 0 241279) 243075) anon33_Then_correct@@4) (=> (= (ControlFlow 0 241279) 241285) anon33_Else_correct@@4)))))
(let ((anon32_Else_correct@@4  (=> (and (and (not $t22@@4) (= $t24@@4 $t24@@4)) (and (= $t17@0@@1 $t24@@4) (= (ControlFlow 0 241269) 241207))) L8_correct@@1)))
(let ((anon31_Then_correct@@4  (=> inline$$Gt$0$dst@1@@1 (=> (and (= $t22@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@4)) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t24@@4) (= $t24@@4 5)) (and (= $t24@@4 $t24@@4) (= $t22@@4 $t22@@4))) (and (=> (= (ControlFlow 0 241253) 241279) anon32_Then_correct@@4) (=> (= (ControlFlow 0 241253) 241269) anon32_Else_correct@@4)))))))
(let ((anon31_Else_correct@@4  (=> (and (and (not inline$$Gt$0$dst@1@@1) (= $t21@@7 $t21@@7)) (and (= $t17@0@@1 $t21@@7) (= (ControlFlow 0 240927) 241207))) L8_correct@@1)))
(let ((anon30_Else$1_correct@@1  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t21@@7) (= $t21@@7 7)) (and (= $t21@@7 $t21@@7) (= inline$$Gt$0$dst@1@@1 inline$$Gt$0$dst@1@@1))) (and (=> (= (ControlFlow 0 240911) 241253) anon31_Then_correct@@4) (=> (= (ControlFlow 0 240911) 240927) anon31_Else_correct@@4))))))
(let ((inline$$Gt$0$anon0_correct@@1  (=> (and (= inline$$Gt$0$dst@1@@1 (> _$t1@@7 0)) (= (ControlFlow 0 240875) 240911)) anon30_Else$1_correct@@1)))
(let ((anon30_Else_correct@@4  (=> (not $t16@@4) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 240881) 240875)) inline$$Gt$0$anon0_correct@@1))))
(let ((anon30_Then_correct@@4  (=> $t16@@4 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t15@@4)) (= 5 $t17@@7)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t15@@4)) 1)) (= 3 $t17@@7))) (and (not (= (|$addr#$signer| _$t0@@8) 186537453)) (= 2 $t17@@7))) (= $t17@@7 $t17@@7)) (and (= $t17@0@@1 $t17@@7) (= (ControlFlow 0 243255) 241207))) L8_correct@@1))))
(let ((anon0$1_correct@@8  (=> (and (and (and (and (forall ((mint_cap_owner@@23 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142775| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@23) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@23)) 1))))
 :qid |DiemBlockcvc5bpl.15827:22|
 :skolemid |430|
)) (forall ((mint_cap_owner@@24 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@24) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@24)) 1))))
 :qid |DiemBlockcvc5bpl.15827:269|
 :skolemid |431|
))) (forall ((mint_cap_owner@@25 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142949| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@25) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) mint_cap_owner@@25)) 1))))
 :qid |DiemBlockcvc5bpl.15827:517|
 :skolemid |432|
))) (and (forall ((addr1@@39 Int) ) (!  (=> (|$IsValid'address'| addr1@@39) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137277| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@39) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@39)) 1))))
 :qid |DiemBlockcvc5bpl.15835:21|
 :skolemid |433|
)) (forall ((addr1@@40 Int) ) (!  (=> (|$IsValid'address'| addr1@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137364| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@40) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@40)) 1))))
 :qid |DiemBlockcvc5bpl.15835:231|
 :skolemid |434|
)))) (and (and (and (forall ((addr1@@41 Int) ) (!  (=> (|$IsValid'address'| addr1@@41) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@41) (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@41)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@41)) 2))))
 :qid |DiemBlockcvc5bpl.15839:22|
 :skolemid |435|
)) (forall ((addr1@@42 Int) ) (!  (=> (|$IsValid'address'| addr1@@42) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@42) (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@42)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@42)) 2))))
 :qid |DiemBlockcvc5bpl.15839:293|
 :skolemid |436|
))) (forall ((addr1@@43 Int) ) (!  (=> (|$IsValid'address'| addr1@@43) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@43) (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr1@@43)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) addr1@@43)) 2))))
 :qid |DiemBlockcvc5bpl.15839:565|
 :skolemid |437|
))) (and (and (forall ((addr@@117 Int) ) (!  (=> (|$IsValid'address'| addr@@117) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143116| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@117) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.15843:22|
 :skolemid |438|
)) (forall ((addr@@118 Int) ) (!  (=> (|$IsValid'address'| addr@@118) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143197| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@118) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.15843:222|
 :skolemid |439|
))) (forall ((addr@@119 Int) ) (!  (=> (|$IsValid'address'| addr@@119) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143278| |$1_Diem_Preburn'#0'_$memory|) addr@@119) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.15843:423|
 :skolemid |440|
))))) (=> (and (and (and (and (and (forall ((addr@@120 Int) ) (!  (=> (|$IsValid'address'| addr@@120) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143528| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@120) (|Select__T@[Int]Bool_| (|domain#$Memory_136513| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.15847:22|
 :skolemid |441|
)) (forall ((addr@@121 Int) ) (!  (=> (|$IsValid'address'| addr@@121) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143645| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@121) (|Select__T@[Int]Bool_| (|domain#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.15847:227|
 :skolemid |442|
))) (forall ((addr@@122 Int) ) (!  (=> (|$IsValid'address'| addr@@122) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143762| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@122) (|Select__T@[Int]Bool_| (|domain#$Memory_136763| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemBlockcvc5bpl.15847:433|
 :skolemid |443|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@8))) (and (and (and (|$IsValid'u64'| _$t1@@7) (|$IsValid'address'| _$t2@@4)) (and (|$IsValid'u64'| _$t3@@1) (forall (($a_0@@49 Int) ) (! (let (($rsc@@49 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@49)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@49))
 :qid |DiemBlockcvc5bpl.15867:20|
 :skolemid |444|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $a_0@@49))
)))) (and (and (forall (($a_0@@50 Int) ) (! (let (($rsc@@50 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@50)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@50) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@50)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@50) 10000000000))))
 :qid |DiemBlockcvc5bpl.15871:20|
 :skolemid |445|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@50))
)) (forall (($a_0@@51 Int) ) (! (let (($rsc@@51 (|Select__T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'_| (|contents#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) $a_0@@51)))
(|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| $rsc@@51))
 :qid |DiemBlockcvc5bpl.15875:20|
 :skolemid |446|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'_| (|contents#$Memory_142862| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) $a_0@@51))
))) (and (forall (($a_0@@52 Int) ) (! (let (($rsc@@52 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@52)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@52))
 :qid |DiemBlockcvc5bpl.15879:20|
 :skolemid |447|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) $a_0@@52))
)) (forall (($a_0@@53 Int) ) (! (let (($rsc@@53 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_| (|contents#$Memory_162074| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) $a_0@@53)))
(|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| $rsc@@53))
 :qid |DiemBlockcvc5bpl.15883:20|
 :skolemid |448|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_| (|contents#$Memory_162074| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory|) $a_0@@53))
)))))) (and (and (and (and (= $t8@@7 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= $t9@@7 (|$addr#$signer| _$t0@@8))) (and (= $t10@@7 (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_161495| $1_DesignatedDealer_Dealer_$memory) _$t2@@4))) (= $t11@@7 ($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) _$t2@@4 _$t1@@7)))) (and (and (= $t12@@7 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136577| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= $t13@@4 (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t12@@7))) (and (= $t14@@4 ($1_Diem_MintEvent _$t1@@7 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t12@@7))) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@4 _$t2@@4)))) (and (and (and (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies| 173345816) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$modifies| _$t2@@4)) (and (= _$t0@@8 _$t0@@8) (= _$t1@@7 _$t1@@7))) (and (and (= _$t2@@4 _$t2@@4) (= _$t3@@1 _$t3@@1)) (and (= $t15@@4 (|$addr#$signer| _$t0@@8)) (= $t16@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_128959| $1_Roles_RoleId_$memory) $t15@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_128959| $1_Roles_RoleId_$memory) $t15@@4)) 1))) (not (= (|$addr#$signer| _$t0@@8) 186537453))))))))) (and (=> (= (ControlFlow 0 240821) 243255) anon30_Then_correct@@4) (=> (= (ControlFlow 0 240821) 240881) anon30_Else_correct@@4))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@25 T@$1_Event_EventHandle) ) (! (let ((stream@@39 (|Select__T@[$1_Event_EventHandle]Multiset_89261_| (|streams#$EventStore| $es) handle@@25)))
 (and (= (|l#Multiset_89261| stream@@39) 0) (forall ((v@@74 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89261| stream@@39) v@@74) 0)
 :qid |DiemBlockcvc5bpl.159:13|
 :skolemid |4|
))))
 :qid |DiemBlockcvc5bpl.2945:13|
 :skolemid |105|
))) (= (ControlFlow 0 240103) 240821)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (|l#Vec_22116| (|p#$Mutation_185301| $t30@@1)) 0) (=> (and (= (|l#Vec_22116| (|p#$Mutation_121668| $t31@@1)) 0) (= (ControlFlow 0 240113) 240103)) inline$$InitEventStore$0$anon0_correct@@8))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 321042) 240113) anon0_correct@@8)))
PreconditionGeneratedEntry_correct@@1))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 323750) true)
))
(check-sat)
(pop 1)
; Valid
