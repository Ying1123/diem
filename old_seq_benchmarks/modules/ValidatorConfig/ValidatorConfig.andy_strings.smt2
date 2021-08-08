(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_88736 0)) ((($Memory_88736 (|domain#$Memory_88736| |T@[Int]Bool|) (|contents#$Memory_88736| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_138094 0)) ((($Memory_138094 (|domain#$Memory_138094| |T@[Int]Bool|) (|contents#$Memory_138094| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_134996 0)) ((($Memory_134996 (|domain#$Memory_134996| |T@[Int]Bool|) (|contents#$Memory_134996| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_133001 0)) ((($Memory_133001 (|domain#$Memory_133001| |T@[Int]Bool|) (|contents#$Memory_133001| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_133281 0)) ((($Memory_133281 (|domain#$Memory_133281| |T@[Int]Bool|) (|contents#$Memory_133281| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_132968 0)) ((($Memory_132968 (|domain#$Memory_132968| |T@[Int]Bool|) (|contents#$Memory_132968| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_132753 0)) ((($Memory_132753 (|domain#$Memory_132753| |T@[Int]Bool|) (|contents#$Memory_132753| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_130263 0)) ((($Memory_130263 (|domain#$Memory_130263| |T@[Int]Bool|) (|contents#$Memory_130263| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_130199 0)) ((($Memory_130199 (|domain#$Memory_130199| |T@[Int]Bool|) (|contents#$Memory_130199| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_128821 0)) ((($Memory_128821 (|domain#$Memory_128821| |T@[Int]Bool|) (|contents#$Memory_128821| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_125700 0)) ((($Memory_125700 (|domain#$Memory_125700| |T@[Int]Bool|) (|contents#$Memory_125700| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_125481 0)) ((($Memory_125481 (|domain#$Memory_125481| |T@[Int]Bool|) (|contents#$Memory_125481| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_134785 0)) ((($Memory_134785 (|domain#$Memory_134785| |T@[Int]Bool|) (|contents#$Memory_134785| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_118436 0)) ((($Memory_118436 (|domain#$Memory_118436| |T@[Int]Bool|) (|contents#$Memory_118436| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_118349 0)) ((($Memory_118349 (|domain#$Memory_118349| |T@[Int]Bool|) (|contents#$Memory_118349| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_115146 0)) ((($Memory_115146 (|domain#$Memory_115146| |T@[Int]Bool|) (|contents#$Memory_115146| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_115059 0)) ((($Memory_115059 (|domain#$Memory_115059| |T@[Int]Bool|) (|contents#$Memory_115059| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_118700 0)) ((($Memory_118700 (|domain#$Memory_118700| |T@[Int]Bool|) (|contents#$Memory_118700| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_127533 0)) ((($Memory_127533 (|domain#$Memory_127533| |T@[Int]Bool|) (|contents#$Memory_127533| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_119026 0)) ((($Memory_119026 (|domain#$Memory_119026| |T@[Int]Bool|) (|contents#$Memory_119026| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_118609 0)) ((($Memory_118609 (|domain#$Memory_118609| |T@[Int]Bool|) (|contents#$Memory_118609| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_129133 0)) ((($Memory_129133 (|domain#$Memory_129133| |T@[Int]Bool|) (|contents#$Memory_129133| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_118927 0)) ((($Memory_118927 (|domain#$Memory_118927| |T@[Int]Bool|) (|contents#$Memory_118927| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114761 0)) ((($Memory_114761 (|domain#$Memory_114761| |T@[Int]Bool|) (|contents#$Memory_114761| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114697 0)) ((($Memory_114697 (|domain#$Memory_114697| |T@[Int]Bool|) (|contents#$Memory_114697| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_110770 0)) ((($Memory_110770 (|domain#$Memory_110770| |T@[Int]Bool|) (|contents#$Memory_110770| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_110683 0)) ((($Memory_110683 (|domain#$Memory_110683| |T@[Int]Bool|) (|contents#$Memory_110683| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_110596 0)) ((($Memory_110596 (|domain#$Memory_110596| |T@[Int]Bool|) (|contents#$Memory_110596| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_110509 0)) ((($Memory_110509 (|domain#$Memory_110509| |T@[Int]Bool|) (|contents#$Memory_110509| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_110422 0)) ((($Memory_110422 (|domain#$Memory_110422| |T@[Int]Bool|) (|contents#$Memory_110422| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_111035 0)) ((($Memory_111035 (|domain#$Memory_111035| |T@[Int]Bool|) (|contents#$Memory_111035| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_109548 0)) ((($Memory_109548 (|domain#$Memory_109548| |T@[Int]Bool|) (|contents#$Memory_109548| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_109614 0)) ((($Memory_109614 (|domain#$Memory_109614| |T@[Int]Bool|) (|contents#$Memory_109614| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_109467 0)) ((($Memory_109467 (|domain#$Memory_109467| |T@[Int]Bool|) (|contents#$Memory_109467| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_109386 0)) ((($Memory_109386 (|domain#$Memory_109386| |T@[Int]Bool|) (|contents#$Memory_109386| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_109305 0)) ((($Memory_109305 (|domain#$Memory_109305| |T@[Int]Bool|) (|contents#$Memory_109305| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_109224 0)) ((($Memory_109224 (|domain#$Memory_109224| |T@[Int]Bool|) (|contents#$Memory_109224| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_109110 0)) ((($Memory_109110 (|domain#$Memory_109110| |T@[Int]Bool|) (|contents#$Memory_109110| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_133922 0)) ((($Memory_133922 (|domain#$Memory_133922| |T@[Int]Bool|) (|contents#$Memory_133922| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_109143 0)) ((($Memory_109143 (|domain#$Memory_109143| |T@[Int]Bool|) (|contents#$Memory_109143| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_96523 0)) ((($Memory_96523 (|domain#$Memory_96523| |T@[Int]Bool|) (|contents#$Memory_96523| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_97123 0)) ((($Memory_97123 (|domain#$Memory_97123| |T@[Int]Bool|) (|contents#$Memory_97123| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_95957 0)) ((($Memory_95957 (|domain#$Memory_95957| |T@[Int]Bool|) (|contents#$Memory_95957| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_95488 0)) ((($Memory_95488 (|domain#$Memory_95488| |T@[Int]Bool|) (|contents#$Memory_95488| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| (Seq Int)) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| (Seq Int)) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| (Seq Int)) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| (Seq Int)) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| (Seq Int)) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| (Seq Int)) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| (Seq Int)) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_66674 0)) (((Multiset_66674 (|v#Multiset_66674| |T@[$EventRep]Int|) (|l#Multiset_66674| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_66674| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_66674|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_135823 0)) ((($Mutation_135823 (|l#$Mutation_135823| T@$Location) (|p#$Mutation_135823| (Seq Int)) (|v#$Mutation_135823| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_135779 0)) ((($Mutation_135779 (|l#$Mutation_135779| T@$Location) (|p#$Mutation_135779| (Seq Int)) (|v#$Mutation_135779| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_39169 0)) ((($Mutation_39169 (|l#$Mutation_39169| T@$Location) (|p#$Mutation_39169| (Seq Int)) (|v#$Mutation_39169| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_124215 0)) ((($Mutation_124215 (|l#$Mutation_124215| T@$Location) (|p#$Mutation_124215| (Seq Int)) (|v#$Mutation_124215| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_113450 0)) ((($Mutation_113450 (|l#$Mutation_113450| T@$Location) (|p#$Mutation_113450| (Seq Int)) (|v#$Mutation_113450| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_105252 0)) ((($Mutation_105252 (|l#$Mutation_105252| T@$Location) (|p#$Mutation_105252| (Seq Int)) (|v#$Mutation_105252| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) ) ))
(declare-datatypes ((T@$Mutation_103634 0)) ((($Mutation_103634 (|l#$Mutation_103634| T@$Location) (|p#$Mutation_103634| (Seq Int)) (|v#$Mutation_103634| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_103594 0)) ((($Mutation_103594 (|l#$Mutation_103594| T@$Location) (|p#$Mutation_103594| (Seq Int)) (|v#$Mutation_103594| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_89364 0)) ((($Mutation_89364 (|l#$Mutation_89364| T@$Location) (|p#$Mutation_89364| (Seq Int)) (|v#$Mutation_89364| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_84732 0)) ((($Mutation_84732 (|l#$Mutation_84732| T@$Location) (|p#$Mutation_84732| (Seq Int)) (|v#$Mutation_84732| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_83986 0)) ((($Mutation_83986 (|l#$Mutation_83986| T@$Location) (|p#$Mutation_83986| (Seq Int)) (|v#$Mutation_83986| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_82546 0)) ((($Mutation_82546 (|l#$Mutation_82546| T@$Location) (|p#$Mutation_82546| (Seq Int)) (|v#$Mutation_82546| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_81800 0)) ((($Mutation_81800 (|l#$Mutation_81800| T@$Location) (|p#$Mutation_81800| (Seq Int)) (|v#$Mutation_81800| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_80360 0)) ((($Mutation_80360 (|l#$Mutation_80360| T@$Location) (|p#$Mutation_80360| (Seq Int)) (|v#$Mutation_80360| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_79614 0)) ((($Mutation_79614 (|l#$Mutation_79614| T@$Location) (|p#$Mutation_79614| (Seq Int)) (|v#$Mutation_79614| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_78174 0)) ((($Mutation_78174 (|l#$Mutation_78174| T@$Location) (|p#$Mutation_78174| (Seq Int)) (|v#$Mutation_78174| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_77428 0)) ((($Mutation_77428 (|l#$Mutation_77428| T@$Location) (|p#$Mutation_77428| (Seq Int)) (|v#$Mutation_77428| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_75988 0)) ((($Mutation_75988 (|l#$Mutation_75988| T@$Location) (|p#$Mutation_75988| (Seq Int)) (|v#$Mutation_75988| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_75242 0)) ((($Mutation_75242 (|l#$Mutation_75242| T@$Location) (|p#$Mutation_75242| (Seq Int)) (|v#$Mutation_75242| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_73802 0)) ((($Mutation_73802 (|l#$Mutation_73802| T@$Location) (|p#$Mutation_73802| (Seq Int)) (|v#$Mutation_73802| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_73056 0)) ((($Mutation_73056 (|l#$Mutation_73056| T@$Location) (|p#$Mutation_73056| (Seq Int)) (|v#$Mutation_73056| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_71616 0)) ((($Mutation_71616 (|l#$Mutation_71616| T@$Location) (|p#$Mutation_71616| (Seq Int)) (|v#$Mutation_71616| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_70870 0)) ((($Mutation_70870 (|l#$Mutation_70870| T@$Location) (|p#$Mutation_70870| (Seq Int)) (|v#$Mutation_70870| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_69392 0)) ((($Mutation_69392 (|l#$Mutation_69392| T@$Location) (|p#$Mutation_69392| (Seq Int)) (|v#$Mutation_69392| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_68646 0)) ((($Mutation_68646 (|l#$Mutation_68646| T@$Location) (|p#$Mutation_68646| (Seq Int)) (|v#$Mutation_68646| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| ((Seq T@$1_ValidatorConfig_Config)) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| ((Seq T@$1_ValidatorConfig_Config) T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsValid'vec'vec'u8'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u8''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_66674_| (|T@[$1_Event_EventHandle]Multiset_66674| T@$1_Event_EventHandle) T@Multiset_66674)
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
(declare-fun ReverseVec_12182 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_60518 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_59533 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_59730 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_59927 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_60715 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_60321 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_60124 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_59336 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_66674| |T@[$1_Event_EventHandle]Multiset_66674|) |T@[$1_Event_EventHandle]Multiset_66674|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorConfigandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorConfigandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorConfigandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorConfigandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorConfigandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorConfigandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorConfigandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorConfigandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |ValidatorConfigandybpl.590:13|
 :skolemid |15|
))))
 :qid |ValidatorConfigandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ValidatorConfigandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ValidatorConfigandybpl.603:17|
 :skolemid |18|
)))))
 :qid |ValidatorConfigandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |ValidatorConfigandybpl.770:13|
 :skolemid |20|
))))
 :qid |ValidatorConfigandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |ValidatorConfigandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |ValidatorConfigandybpl.783:17|
 :skolemid |23|
)))))
 :qid |ValidatorConfigandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |ValidatorConfigandybpl.950:13|
 :skolemid |25|
))))
 :qid |ValidatorConfigandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |ValidatorConfigandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |ValidatorConfigandybpl.963:17|
 :skolemid |28|
)))))
 :qid |ValidatorConfigandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |ValidatorConfigandybpl.1130:13|
 :skolemid |30|
))))
 :qid |ValidatorConfigandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |ValidatorConfigandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |ValidatorConfigandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |ValidatorConfigandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |ValidatorConfigandybpl.1310:13|
 :skolemid |35|
))))
 :qid |ValidatorConfigandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |ValidatorConfigandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |ValidatorConfigandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |ValidatorConfigandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |ValidatorConfigandybpl.1490:13|
 :skolemid |40|
))))
 :qid |ValidatorConfigandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |ValidatorConfigandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |ValidatorConfigandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |ValidatorConfigandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |ValidatorConfigandybpl.1670:13|
 :skolemid |45|
))))
 :qid |ValidatorConfigandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |ValidatorConfigandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |ValidatorConfigandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |ValidatorConfigandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |ValidatorConfigandybpl.1850:13|
 :skolemid |50|
))))
 :qid |ValidatorConfigandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |ValidatorConfigandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |ValidatorConfigandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |ValidatorConfigandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |ValidatorConfigandybpl.2030:13|
 :skolemid |55|
))))
 :qid |ValidatorConfigandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |ValidatorConfigandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |ValidatorConfigandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |ValidatorConfigandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |ValidatorConfigandybpl.2210:13|
 :skolemid |60|
))))
 :qid |ValidatorConfigandybpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |ValidatorConfigandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |ValidatorConfigandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |ValidatorConfigandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ValidatorConfigandybpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ValidatorConfigandybpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorConfigandybpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorConfigandybpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_66674| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66674| stream) v@@24) 0)
 :qid |ValidatorConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigandybpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |ValidatorConfigandybpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |ValidatorConfigandybpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |ValidatorConfigandybpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |ValidatorConfigandybpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |ValidatorConfigandybpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |ValidatorConfigandybpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |ValidatorConfigandybpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |ValidatorConfigandybpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |ValidatorConfigandybpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |ValidatorConfigandybpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |ValidatorConfigandybpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |ValidatorConfigandybpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |ValidatorConfigandybpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |ValidatorConfigandybpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |ValidatorConfigandybpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |ValidatorConfigandybpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |ValidatorConfigandybpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |ValidatorConfigandybpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |ValidatorConfigandybpl.3083:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |ValidatorConfigandybpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |ValidatorConfigandybpl.3139:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |ValidatorConfigandybpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |ValidatorConfigandybpl.3195:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |ValidatorConfigandybpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |ValidatorConfigandybpl.3251:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |ValidatorConfigandybpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |ValidatorConfigandybpl.3307:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |ValidatorConfigandybpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |ValidatorConfigandybpl.3363:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |ValidatorConfigandybpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |ValidatorConfigandybpl.3419:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |ValidatorConfigandybpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |ValidatorConfigandybpl.3475:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |ValidatorConfigandybpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |ValidatorConfigandybpl.3560:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |ValidatorConfigandybpl.3727:36|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |ValidatorConfigandybpl.3970:71|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |ValidatorConfigandybpl.4116:46|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |ValidatorConfigandybpl.4129:64|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |ValidatorConfigandybpl.4142:75|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |ValidatorConfigandybpl.4155:72|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |ValidatorConfigandybpl.4204:55|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |ValidatorConfigandybpl.4226:46|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |ValidatorConfigandybpl.6929:49|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |ValidatorConfigandybpl.7004:71|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |ValidatorConfigandybpl.7018:91|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |ValidatorConfigandybpl.7032:113|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |ValidatorConfigandybpl.7046:75|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |ValidatorConfigandybpl.7060:73|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |ValidatorConfigandybpl.7080:48|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |ValidatorConfigandybpl.7096:57|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |ValidatorConfigandybpl.7110:83|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |ValidatorConfigandybpl.7124:103|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |ValidatorConfigandybpl.7138:125|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |ValidatorConfigandybpl.7152:87|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |ValidatorConfigandybpl.7166:85|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |ValidatorConfigandybpl.7180:48|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |ValidatorConfigandybpl.7201:45|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |ValidatorConfigandybpl.7215:51|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |ValidatorConfigandybpl.7238:48|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |ValidatorConfigandybpl.7544:49|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |ValidatorConfigandybpl.7557:65|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |ValidatorConfigandybpl.8061:45|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |ValidatorConfigandybpl.8074:45|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29) true)
 :qid |ValidatorConfigandybpl.8087:55|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30) true)
 :qid |ValidatorConfigandybpl.8101:55|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@31))))
 :qid |ValidatorConfigandybpl.8121:38|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@32))))
 :qid |ValidatorConfigandybpl.8142:44|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))))
 :qid |ValidatorConfigandybpl.8193:53|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))))
 :qid |ValidatorConfigandybpl.8255:53|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35) true)
 :qid |ValidatorConfigandybpl.8281:55|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36) true)
 :qid |ValidatorConfigandybpl.8295:55|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@37)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@37))))
 :qid |ValidatorConfigandybpl.8312:38|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@38)))
 :qid |ValidatorConfigandybpl.8326:48|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@39)))
 :qid |ValidatorConfigandybpl.8340:48|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@40)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@40))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@40))))
 :qid |ValidatorConfigandybpl.8360:41|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@41)))
 :qid |ValidatorConfigandybpl.8375:53|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@42)))
 :qid |ValidatorConfigandybpl.8389:53|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43))))
 :qid |ValidatorConfigandybpl.8406:60|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44))))
 :qid |ValidatorConfigandybpl.8423:60|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45))))
 :qid |ValidatorConfigandybpl.8440:57|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46) true)
 :qid |ValidatorConfigandybpl.10641:68|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))))
 :qid |ValidatorConfigandybpl.10663:66|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))))
 :qid |ValidatorConfigandybpl.10689:66|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@49) true)
 :qid |ValidatorConfigandybpl.11022:31|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@50) true)
 :qid |ValidatorConfigandybpl.11366:31|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@51)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@51)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@51))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@51))))
 :qid |ValidatorConfigandybpl.11385:35|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@51))
)))
(assert (forall ((s@@52 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@52)))
 :qid |ValidatorConfigandybpl.11806:45|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@53))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@53))))
 :qid |ValidatorConfigandybpl.11825:50|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@54)))
 :qid |ValidatorConfigandybpl.11840:52|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55))))
 :qid |ValidatorConfigandybpl.11867:65|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@56)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@56))))
 :qid |ValidatorConfigandybpl.12252:60|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57))))
 :qid |ValidatorConfigandybpl.12269:66|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@58)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@58)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@58))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@58))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@58))))
 :qid |ValidatorConfigandybpl.12298:50|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@59) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@59)))
 :qid |ValidatorConfigandybpl.12317:45|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@60)) true))
 :qid |ValidatorConfigandybpl.12636:87|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@61)))
 :qid |ValidatorConfigandybpl.12848:47|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@62)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@62))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@62))))
 :qid |ValidatorConfigandybpl.12868:58|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@63) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@63)))
 :qid |ValidatorConfigandybpl.12883:39|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@64))))
 :qid |ValidatorConfigandybpl.12905:58|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65))))
 :qid |ValidatorConfigandybpl.12922:58|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66) true)
 :qid |ValidatorConfigandybpl.12937:51|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67))))
 :qid |ValidatorConfigandybpl.12954:60|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@68)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@68))))
 :qid |ValidatorConfigandybpl.13252:47|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@69)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@69))))
 :qid |ValidatorConfigandybpl.13274:63|
 :skolemid |253|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@70)))
 :qid |ValidatorConfigandybpl.13289:57|
 :skolemid |254|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@71)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@71))))
 :qid |ValidatorConfigandybpl.13305:54|
 :skolemid |255|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@72)))
 :qid |ValidatorConfigandybpl.13319:55|
 :skolemid |256|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@73)))
 :qid |ValidatorConfigandybpl.13333:57|
 :skolemid |257|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@74)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@74))))
 :qid |ValidatorConfigandybpl.13355:56|
 :skolemid |258|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@75)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@75))))
 :qid |ValidatorConfigandybpl.13380:52|
 :skolemid |259|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@76)))
 :qid |ValidatorConfigandybpl.13396:54|
 :skolemid |260|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |ValidatorConfigandybpl.14267:47|
 :skolemid |261|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |ValidatorConfigandybpl.14291:47|
 :skolemid |262|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |ValidatorConfigandybpl.14532:49|
 :skolemid |263|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |ValidatorConfigandybpl.14575:49|
 :skolemid |264|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |ValidatorConfigandybpl.14604:48|
 :skolemid |265|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |ValidatorConfigandybpl.14899:47|
 :skolemid |266|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |ValidatorConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |ValidatorConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_60518 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |ValidatorConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |ValidatorConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60518 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_59533 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |ValidatorConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |ValidatorConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59533 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_59730 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |ValidatorConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |ValidatorConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59730 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_59927 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |ValidatorConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |ValidatorConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59927 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_60715 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |ValidatorConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |ValidatorConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60715 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_60321 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |ValidatorConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |ValidatorConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60321 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_60124 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |ValidatorConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |ValidatorConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60124 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_59336 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |ValidatorConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |ValidatorConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59336 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |ValidatorConfigandybpl.245:54|
 :skolemid |321|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_66674|) (|l#1| |T@[$1_Event_EventHandle]Multiset_66674|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_66674| (|Select__T@[$1_Event_EventHandle]Multiset_66674_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_66674| (|Select__T@[$1_Event_EventHandle]Multiset_66674_| |l#1| handle@@0))))
(Multiset_66674 (|lambda#3| (|v#Multiset_66674| (|Select__T@[$1_Event_EventHandle]Multiset_66674_| |l#0@@0| handle@@0)) (|v#Multiset_66674| (|Select__T@[$1_Event_EventHandle]Multiset_66674_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorConfigandybpl.2548:13|
 :skolemid |322|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |ValidatorConfigandybpl.124:29|
 :skolemid |323|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_96523)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_95957)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_95957)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_95957)
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
(declare-fun $t4 () Int)
(declare-fun $t5 () Int)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 207577) (let ((anon12_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 152480) (- 0 208032)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory@1) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory@1) addr)) 3))))
 :qid |ValidatorConfigandybpl.3903:15|
 :skolemid |111|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory@1) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory@1) addr@@0)) 3))))
 :qid |ValidatorConfigandybpl.3903:15|
 :skolemid |111|
)) (and (=> (= (ControlFlow 0 152480) (- 0 208057)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory@1) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory@1) addr@@1)) 3))))
 :qid |ValidatorConfigandybpl.3909:15|
 :skolemid |112|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory@1) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory@1) addr@@2)) 3))))
 :qid |ValidatorConfigandybpl.3909:15|
 :skolemid |112|
)) (and (=> (= (ControlFlow 0 152480) (- 0 208082)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@3)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory@1) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory@1) addr@@3)) 3))))
 :qid |ValidatorConfigandybpl.3915:15|
 :skolemid |113|
))) (=> (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@4) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@4)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory@1) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory@1) addr@@4)) 3))))
 :qid |ValidatorConfigandybpl.3915:15|
 :skolemid |113|
)) (and (=> (= (ControlFlow 0 152480) (- 0 208110)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0)) (and (=> (= (ControlFlow 0 152480) (- 0 208121)) (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory@1) _$t0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory@1) _$t0) (=> (= (ControlFlow 0 152480) (- 0 208130)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory@1) _$t0)) _$t1)))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 152252) (- 0 208002)) (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0) (=> (= (ControlFlow 0 152252) (- 0 208008)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0) (= 6 $t10@0)))))))
(let ((anon12_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t10@0 $abort_code@1) (= (ControlFlow 0 152494) 152252))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 152544) 152494) anon12_Then_correct) (=> (= (ControlFlow 0 152544) 152480) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0) (= (ControlFlow 0 152542) 152544)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0)) (=> (and (and (= $1_Roles_RoleId_$memory@0 ($Memory_95957 (|Store__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) _$t0 $t11@0))) (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 152357) 152494) anon12_Then_correct) (=> (= (ControlFlow 0 152357) 152480) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0 ($1_Roles_RoleId _$t1))) (and (=> (= (ControlFlow 0 152339) (- 0 207821)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@5)) 3))))
 :qid |ValidatorConfigandybpl.3875:20|
 :skolemid |108|
)) (=> (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@6)) 3))))
 :qid |ValidatorConfigandybpl.3879:20|
 :skolemid |109|
)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@7) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@7)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@7)) 3))))
 :qid |ValidatorConfigandybpl.3883:20|
 :skolemid |110|
))) (and (=> (= (ControlFlow 0 152339) 152542) anon11_Then_correct) (=> (= (ControlFlow 0 152339) 152357) anon11_Else_correct)))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9 $t9)) (and (= $t10@0 $t9) (= (ControlFlow 0 152220) 152252))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9) (= $t9 6)) (and (= $t9 $t9) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 152204) 152339) anon10_Then_correct) (=> (= (ControlFlow 0 152204) 152220) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 152168) 152204)) anon0$2_correct)))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (|$IsValid'u64'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |ValidatorConfigandybpl.3771:20|
 :skolemid |107|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $a_0))
))) (and (= $t4 _$t0) (=> (= _$t1 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (|$IsValid'address'| $t5) (= $t5 _$t0)) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t5)) (= (ControlFlow 0 152174) 152168)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_66674| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66674| stream@@0) v@@35) 0)
 :qid |ValidatorConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 152006) 152174)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 207577) 152006) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))
))
(check-sat)
(pop 1)
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
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_get_human_name$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 208317) (let ((anon12_Else_correct@@0  (=> (and (and (not $abort_flag@0@@0) (= $t8@1 $t8@1)) (and (= $t9@0 (|$human_name#$1_ValidatorConfig_ValidatorConfig| $t8@1)) (= $t9@0 $t9@0))) (and (=> (= (ControlFlow 0 152975) (- 0 208710)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@0))) (and (=> (= (ControlFlow 0 152975) (- 0 208721)) (= $t9@0 (let ((t_ref (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@0)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref)))) (=> (= $t9@0 (let ((t_ref@@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@0)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@0))) (=> (= (ControlFlow 0 152975) (- 0 208732)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1)))))
 :qid |ValidatorConfigandybpl.4376:15|
 :skolemid |125|
))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 152866) (- 0 208655)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@0)) (=> (= (ControlFlow 0 152866) (- 0 208661)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@0)) (= 5 $t7@0)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t7@0 $abort_code@1@@0) (= (ControlFlow 0 152989) 152866))) L3_correct@@0)))
(let ((anon11_Then$1_correct@@0  (=> (= $t8@1 $t8) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 153041) 152989) anon12_Then_correct@@0) (=> (= (ControlFlow 0 153041) 152975) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@0)) (= (ControlFlow 0 153039) 153041)) anon11_Then$1_correct@@0)))
(let ((anon11_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@0) (=> (and (and (= $t8@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@0)) (= $t8@1 $t8@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 152884) 152989) anon12_Then_correct@@0) (=> (= (ControlFlow 0 152884) 152975) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct@@0  (=> $t4@0 (and (=> (= (ControlFlow 0 152870) 153039) anon11_Then_correct@@0) (=> (= (ControlFlow 0 152870) 152884) anon11_Else_correct@@0)))))
(let ((anon10_Else_correct@@0  (=> (and (and (not $t4@0) (= $t6 $t6)) (and (= $t7@0 $t6) (= (ControlFlow 0 152834) 152866))) L3_correct@@0)))
(let ((anon0$1_correct@@0  (=> (and (and (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@8)) 3))))
 :qid |ValidatorConfigandybpl.4264:20|
 :skolemid |121|
)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@9)) 3))))
 :qid |ValidatorConfigandybpl.4268:20|
 :skolemid |122|
))) (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@10) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@10)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@10)) 3))))
 :qid |ValidatorConfigandybpl.4272:20|
 :skolemid |123|
)) (|$IsValid'address'| _$t0@@0))) (=> (and (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@0)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@0) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@0))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@0))) 1))))
 :qid |ValidatorConfigandybpl.4279:20|
 :skolemid |124|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@0))
)) (= _$t0@@0 _$t0@@0)) (and (= $t4@0 (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@0)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t6) (= $t6 5)) (and (= $t6 $t6) (= $t4@0 $t4@0)))) (and (=> (= (ControlFlow 0 152818) 152870) anon10_Then_correct@@0) (=> (= (ControlFlow 0 152818) 152834) anon10_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_66674| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66674| stream@@1) v@@36) 0)
 :qid |ValidatorConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 152633) 152818)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 208317) 152633) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@1 () T@$Memory_96523)
(declare-fun _$t0@@1 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_95488)
(declare-fun $t5@@0 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $t7@0@@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0 () T@$Memory_96523)
(declare-fun |Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int T@$1_ValidatorConfig_ValidatorConfig) |T@[Int]$1_ValidatorConfig_ValidatorConfig|)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun $t18@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t16 () |T@$1_Option_Option'$1_ValidatorConfig_Config'|)
(declare-fun $t17 () |T@$1_Option_Option'address'|)
(declare-fun _$t2 () (Seq Int))
(declare-fun $t15 () Int)
(declare-fun $t12@0 () Bool)
(declare-fun $t10 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t7 () Int)
(declare-fun $t9@@0 () Bool)
(declare-fun $t8@@0 () Int)
(declare-fun $t6@@0 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_97123)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_publish$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 208777) (let ((anon21_Else_correct  (=> (not $abort_flag@0@@1) (and (=> (= (ControlFlow 0 154211) (- 0 209867)) (forall ((validator Int) ) (!  (=> (|$IsValid'address'| validator) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) validator) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) validator)))) 0)))))
 :qid |ValidatorConfigandybpl.4723:15|
 :skolemid |133|
))) (=> (forall ((validator@@0 Int) ) (!  (=> (|$IsValid'address'| validator@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@0) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@0)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) validator@@0) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) validator@@0)))) 0)))))
 :qid |ValidatorConfigandybpl.4723:15|
 :skolemid |133|
)) (and (=> (= (ControlFlow 0 154211) (- 0 209891)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@11) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@11)) 3))))
 :qid |ValidatorConfigandybpl.4729:15|
 :skolemid |134|
))) (=> (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@12)) 3))))
 :qid |ValidatorConfigandybpl.4729:15|
 :skolemid |134|
)) (and (=> (= (ControlFlow 0 154211) (- 0 209916)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@13)) 3))))
 :qid |ValidatorConfigandybpl.4735:15|
 :skolemid |135|
))) (=> (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@14)) 3))))
 :qid |ValidatorConfigandybpl.4735:15|
 :skolemid |135|
)) (and (=> (= (ControlFlow 0 154211) (- 0 209941)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@15) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@15)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@15)) 3))))
 :qid |ValidatorConfigandybpl.4741:15|
 :skolemid |136|
))) (=> (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@16) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@16)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@16)) 3))))
 :qid |ValidatorConfigandybpl.4741:15|
 :skolemid |136|
)) (and (=> (= (ControlFlow 0 154211) (- 0 209969)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@1)) (and (=> (= (ControlFlow 0 154211) (- 0 209980)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95488| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95488| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 154211) (- 0 209990)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t5@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t5@@0))) (and (=> (= (ControlFlow 0 154211) (- 0 210002)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t5@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t5@@0)) 0))) (and (=> (= (ControlFlow 0 154211) (- 0 210020)) (not (not (= _$t1@@0 173345816)))) (=> (not (not (= _$t1@@0 173345816))) (and (=> (= (ControlFlow 0 154211) (- 0 210034)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1))) (and (=> (= (ControlFlow 0 154211) (- 0 210047)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1)) 3))) (and (=> (= (ControlFlow 0 154211) (- 0 210066)) (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) _$t0@@1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) _$t0@@1) (=> (= (ControlFlow 0 154211) (- 0 210075)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@0) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr1@@0)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@0)))))
 :qid |ValidatorConfigandybpl.4790:15|
 :skolemid |137|
))))))))))))))))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 153868) (- 0 209659)) (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95488| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t5@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t5@@0)) 0))) (not (= _$t1@@0 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1)) 3)))) (=> (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95488| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t5@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t5@@0)) 0))) (not (= _$t1@@0 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1)) 3))) (=> (= (ControlFlow 0 153868) (- 0 209733)) (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@1) (= 6 $t7@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95488| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t7@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t5@@0)) (= 5 $t7@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t5@@0)) 0)) (= 3 $t7@0@@0))) (and (not (= _$t1@@0 173345816)) (= 2 $t7@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1)) (= 5 $t7@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1)) 3)) (= 3 $t7@0@@0))))))))
(let ((anon21_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t7@0@@0 $abort_code@1@@1) (= (ControlFlow 0 154225) 153868))) L3_correct@@1)))
(let ((anon20_Then$1_correct  (=> (= $1_ValidatorConfig_ValidatorConfig_$memory@1 $1_ValidatorConfig_ValidatorConfig_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 154275) 154225) anon21_Then_correct) (=> (= (ControlFlow 0 154275) 154211) anon21_Else_correct))))))
(let ((anon20_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@1) (= (ControlFlow 0 154273) 154275)) anon20_Then$1_correct)))
(let ((anon20_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@1)) (=> (and (and (= $1_ValidatorConfig_ValidatorConfig_$memory@0 ($Memory_96523 (|Store__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@1 true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@1 $t18@0))) (= $1_ValidatorConfig_ValidatorConfig_$memory@1 $1_ValidatorConfig_ValidatorConfig_$memory@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 153954) 154225) anon21_Then_correct) (=> (= (ControlFlow 0 153954) 154211) anon21_Else_correct))))))
(let ((anon19_Then_correct  (=> inline$$Not$0$dst@1@@0 (=> (and (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| $t16) (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t16)) 1)) (= $t16 (|$1_Option_Option'$1_ValidatorConfig_Config'| (as seq.empty (Seq T@$1_ValidatorConfig_Config))))) (and (and (|$IsValid'$1_Option_Option'address''| $t17) (<= (seq.len (|$vec#$1_Option_Option'address'| $t17)) 1)) (and (= $t17 (|$1_Option_Option'address'| (as seq.empty (Seq Int)))) (= $t18@0 ($1_ValidatorConfig_ValidatorConfig $t16 $t17 _$t2))))) (and (=> (= (ControlFlow 0 153936) 154273) anon20_Then_correct) (=> (= (ControlFlow 0 153936) 153954) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t15 $t15)) (and (= $t7@0@@0 $t15) (= (ControlFlow 0 153636) 153868))) L3_correct@@1)))
(let ((anon18_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t15) (= $t15 6)) (and (= $t15 $t15) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 153620) 153936) anon19_Then_correct) (=> (= (ControlFlow 0 153620) 153636) anon19_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t12@0)) (= (ControlFlow 0 153580) 153620)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (not $t10) (=> (and (and (|$IsValid'address'| $t11) (= $t11 _$t0@@1)) (and (= $t12@0 (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t11)) (= (ControlFlow 0 153586) 153580))) inline$$Not$0$anon0_correct@@0))))
(let ((anon18_Then_correct  (=> $t10 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1)) (= 5 $t7)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1)) 3)) (= 3 $t7))) (= $t7 $t7)) (and (= $t7@0@@0 $t7) (= (ControlFlow 0 154331) 153868))) L3_correct@@1))))
(let ((anon17_Else_correct  (=> (and (not $t9@@0) (= $t10  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@1)) 3))))) (and (=> (= (ControlFlow 0 153524) 154331) anon18_Then_correct) (=> (= (ControlFlow 0 153524) 153586) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> $t9@@0 (=> (and (and (or (or (or (and (not (= _$t1@@0 173345816)) (= 2 $t7)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@0)) (= 5 $t7))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@0)) 0)) (= 3 $t7))) (and (not (= _$t1@@0 173345816)) (= 2 $t7))) (= $t7 $t7)) (and (= $t7@0@@0 $t7) (= (ControlFlow 0 154423) 153868))) L3_correct@@1))))
(let ((anon16_Else_correct  (=> (not $t6@@0) (=> (and (= $t8@@0 _$t1@@0) (= $t9@@0  (or (or (or (not (= _$t1@@0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@0)) 0))) (not (= _$t1@@0 173345816))))) (and (=> (= (ControlFlow 0 153484) 154423) anon17_Then_correct) (=> (= (ControlFlow 0 153484) 153524) anon17_Else_correct))))))
(let ((anon16_Then_correct  (=> $t6@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95488| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t7)) (= $t7 $t7)) (and (= $t7@0@@0 $t7) (= (ControlFlow 0 154449) 153868))) L3_correct@@1))))
(let ((anon0$1_correct@@1  (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95488| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95488| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@17) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@17)) 4))))
 :qid |ValidatorConfigandybpl.4448:20|
 :skolemid |126|
))) (and (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@18) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@18)) 3))))
 :qid |ValidatorConfigandybpl.4452:20|
 :skolemid |127|
)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@19) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@19)) 3))))
 :qid |ValidatorConfigandybpl.4456:20|
 :skolemid |128|
)))) (and (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@20) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@20)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@20)) 3))))
 :qid |ValidatorConfigandybpl.4460:20|
 :skolemid |129|
)) (|$IsValid'address'| _$t0@@1)) (and (|$IsValid'address'| _$t1@@0) (|$IsValid'vec'u8''| _$t2)))) (and (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95488| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@1)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@1))
 :qid |ValidatorConfigandybpl.4472:20|
 :skolemid |130|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95488| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $a_0@@2)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@2))
 :qid |ValidatorConfigandybpl.4476:20|
 :skolemid |131|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $a_0@@2))
))) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@3)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@3) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@3))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@3))) 1))))
 :qid |ValidatorConfigandybpl.4480:20|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@3))
)) (= $t5@@0 _$t1@@0))) (and (and (= _$t0@@1 _$t0@@1) (= _$t1@@0 _$t1@@0)) (and (= _$t2 _$t2) (= $t6@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_95488| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 153412) 154449) anon16_Then_correct) (=> (= (ControlFlow 0 153412) 153484) anon16_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_66674| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66674| stream@@2) v@@37) 0)
 :qid |ValidatorConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 153140) 153412)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 208777) 153140) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@2 () Int)
(declare-fun $t1@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_exists_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 210112) (let ((anon0$1_correct@@2  (=> (and (and (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@21) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@21)) 3))))
 :qid |ValidatorConfigandybpl.4865:20|
 :skolemid |138|
)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@22) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@22)) 3))))
 :qid |ValidatorConfigandybpl.4869:20|
 :skolemid |139|
))) (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@23) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@23)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@23)) 3))))
 :qid |ValidatorConfigandybpl.4873:20|
 :skolemid |140|
)) (|$IsValid'address'| _$t0@@2))) (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@4)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@4) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@4))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@4))) 1))))
 :qid |ValidatorConfigandybpl.4879:20|
 :skolemid |141|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@4))
)) (= _$t0@@2 _$t0@@2)) (and (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@2)) (= $t1@0 $t1@0)))) (and (=> (= (ControlFlow 0 154810) (- 0 210301)) (not false)) (=> (not false) (=> (= (ControlFlow 0 154810) (- 0 210308)) (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@1) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@1)))))
 :qid |ValidatorConfigandybpl.4906:15|
 :skolemid |142|
))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_66674| stream@@3) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66674| stream@@3) v@@38) 0)
 :qid |ValidatorConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 154606) 154810)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 210112) 154606) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t16@@0 () Bool)
(declare-fun $t15@@0 () T@$1_ValidatorConfig_Config)
(declare-fun $t11@0@@0 () |T@$1_Option_Option'$1_ValidatorConfig_Config'|)
(declare-fun _$t0@@3 () Int)
(declare-fun $t7@0@@1 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $t14 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t10@1 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t10@@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t10@0@@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1 () Bool)
(declare-fun $t9@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_get_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 210352) (let ((anon22_Else_correct  (=> (and (and (not $t16@@0) (|$IsValid'$1_ValidatorConfig_Config'| $t15@@0)) (and (= $t15@@0 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t11@0@@0) 0)) (= $t15@@0 $t15@@0))) (and (=> (= (ControlFlow 0 155462) (- 0 210953)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3))) (and (=> (= (ControlFlow 0 155462) (- 0 210964)) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3)))) 0)) (and (=> (= (ControlFlow 0 155462) (- 0 210977)) (= $t15@@0 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3))) 0))) (=> (= $t15@@0 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3))) 0)) (=> (= (ControlFlow 0 155462) (- 0 210989)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@2) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@2)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@2)))))
 :qid |ValidatorConfigandybpl.5166:15|
 :skolemid |147|
))))))))))))
(let ((L5_correct  (and (=> (= (ControlFlow 0 155253) (- 0 210874)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3)) (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3)))) 0))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3)) (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3)))) 0)) (=> (= (ControlFlow 0 155253) (- 0 210890)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3)) (= 5 $t7@0@@1)) (and (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3)))) 0) (= 7 $t7@0@@1))))))))
(let ((anon22_Then_correct  (=> $t16@@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t11@0@@0)) 0) (= 7 $t7@@0)) (= $t7@@0 $t7@@0)) (and (= $t7@0@@1 $t7@@0) (= (ControlFlow 0 155486) 155253))) L5_correct))))
(let ((anon21_Then_correct@@0  (=> (and $t12 (= $t16@@0 (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t11@0@@0)) 0))) (and (=> (= (ControlFlow 0 155359) 155486) anon22_Then_correct) (=> (= (ControlFlow 0 155359) 155462) anon22_Else_correct)))))
(let ((anon21_Else_correct@@0  (=> (and (and (not $t12) (= $t14 $t14)) (and (= $t7@0@@1 $t14) (= (ControlFlow 0 155347) 155253))) L5_correct)))
(let ((anon20_Else_correct@@0  (=> (not $abort_flag@0@@2) (=> (and (and (and (= $t11@0@@0 (|$config#$1_ValidatorConfig_ValidatorConfig| $t10@1)) (= $t11@0@@0 $t11@0@@0)) (and (= $t12  (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t11@0@@0)) 0))) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14) (= $t14 7)) (and (= $t14 $t14) (= $t12 $t12)))) (and (=> (= (ControlFlow 0 155331) 155359) anon21_Then_correct@@0) (=> (= (ControlFlow 0 155331) 155347) anon21_Else_correct@@0))))))
(let ((anon20_Then_correct@@0  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t7@0@@1 $abort_code@1@@2) (= (ControlFlow 0 155500) 155253))) L5_correct)))
(let ((anon19_Then$1_correct  (=> (= $t10@1 $t10@@0) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 155552) 155500) anon20_Then_correct@@0) (=> (= (ControlFlow 0 155552) 155331) anon20_Else_correct@@0))))))
(let ((anon19_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3)) (= (ControlFlow 0 155550) 155552)) anon19_Then$1_correct)))
(let ((anon19_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3) (=> (and (and (= $t10@0@@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3)) (= $t10@1 $t10@0@@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 155271) 155500) anon20_Then_correct@@0) (=> (= (ControlFlow 0 155271) 155331) anon20_Else_correct@@0))))))
(let ((anon18_Then_correct@@0  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1 (and (=> (= (ControlFlow 0 155257) 155550) anon19_Then_correct@@0) (=> (= (ControlFlow 0 155257) 155271) anon19_Else_correct@@0)))))
(let ((anon18_Else_correct@@0  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1) (= $t9@@1 $t9@@1)) (and (= $t7@0@@1 $t9@@1) (= (ControlFlow 0 155189) 155253))) L5_correct)))
(let ((anon17_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t9@@1) (= $t9@@1 5)) (and (= $t9@@1 $t9@@1) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1))) (and (=> (= (ControlFlow 0 155173) 155257) anon18_Then_correct@@0) (=> (= (ControlFlow 0 155173) 155189) anon18_Else_correct@@0))))))
(let ((anon17_Then_correct@@0 true))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct  (=> (= _$t0@@3 _$t0@@3) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@3)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1)) (and (=> (= (ControlFlow 0 155131) 155566) anon17_Then_correct@@0) (=> (= (ControlFlow 0 155131) 155173) anon17_Else_correct@@0))))))
(let ((anon0$1_correct@@3  (=> (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@24) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@24)) 3))))
 :qid |ValidatorConfigandybpl.4950:20|
 :skolemid |143|
)) (=> (and (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@25) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@25)) 3))))
 :qid |ValidatorConfigandybpl.4954:20|
 :skolemid |144|
)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@26) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@26)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@26)) 3))))
 :qid |ValidatorConfigandybpl.4958:20|
 :skolemid |145|
))) (=> (and (and (|$IsValid'address'| _$t0@@3) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@5)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@5) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@5))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@5))) 1))))
 :qid |ValidatorConfigandybpl.4965:20|
 :skolemid |146|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@5))
))) (and (= _$t0@@3 _$t0@@3) (= (ControlFlow 0 155137) 155131))) inline$$1_ValidatorConfig_exists_config$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_66674| stream@@4) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66674| stream@@4) v@@39) 0)
 :qid |ValidatorConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 154883) 155137)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 210352) 154883) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@4 () T@$1_ValidatorConfig_Config)
(declare-fun $t1@0@@0 () (Seq Int))
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_get_consensus_pubkey$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 211031) (let ((anon0$1_correct@@4  (=> (and (and (|$IsValid'$1_ValidatorConfig_Config'| _$t0@@4) (= _$t0@@4 _$t0@@4)) (and (= $t1@0@@0 (|$consensus_pubkey#$1_ValidatorConfig_Config| _$t0@@4)) (= $t1@0@@0 $t1@0@@0))) (and (=> (= (ControlFlow 0 155754) (- 0 211099)) (not false)) (=> (not false) (=> (= (ControlFlow 0 155754) (- 0 211106)) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@3) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@3)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@3)))))
 :qid |ValidatorConfigandybpl.5235:15|
 :skolemid |148|
))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_66674| stream@@5) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66674| stream@@5) v@@40) 0)
 :qid |ValidatorConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 155671) 155754)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 211031) 155671) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t17@@0 () Bool)
(declare-fun $t16@@1 () Int)
(declare-fun $t15@0 () |T@$1_Option_Option'address'|)
(declare-fun _$t0@@5 () Int)
(declare-fun $t9@0@@0 () Int)
(declare-fun $t9@@2 () Int)
(declare-fun $t12@@0 () Bool)
(declare-fun $t10@1@@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t14@@0 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $t11@0@@1 () |T@$1_Option_Option'address'|)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t10@@1 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t10@0@@1 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t6@0@@0 () Bool)
(declare-fun $t8@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_get_operator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 211150) (let ((anon19_Else_correct@@1  (=> (and (and (not $t17@@0) (|$IsValid'address'| $t16@@1)) (and (= $t16@@1 (seq.nth (|$vec#$1_Option_Option'address'| $t15@0) 0)) (= $t16@@1 $t16@@1))) (and (=> (= (ControlFlow 0 156303) (- 0 211695)) (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5)))) 0))))) (=> (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5)))) 0)))) (and (=> (= (ControlFlow 0 156303) (- 0 211706)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5))) (and (=> (= (ControlFlow 0 156303) (- 0 211717)) (= $t16@@1 (let ((t_ref@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@1)) 0)))) (=> (= $t16@@1 (let ((t_ref@@2 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@2)) 0))) (=> (= (ControlFlow 0 156303) (- 0 211729)) (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@4) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@4)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@4)))))
 :qid |ValidatorConfigandybpl.5492:15|
 :skolemid |153|
))))))))))))
(let ((L5_correct@@0  (and (=> (= (ControlFlow 0 156092) (- 0 211620)) (or (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5)))) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5)))) (=> (or (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5)))) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5))) (=> (= (ControlFlow 0 156092) (- 0 211634)) (or (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5)))) 0))) (= 7 $t9@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5)) (= 5 $t9@0@@0))))))))
(let ((anon19_Then_correct@@1  (=> $t17@@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'address'| $t15@0)) 0) (= 7 $t9@@2)) (= $t9@@2 $t9@@2)) (and (= $t9@0@@0 $t9@@2) (= (ControlFlow 0 156327) 156092))) L5_correct@@0))))
(let ((anon18_Then_correct@@1  (=> $t12@@0 (=> (and (= $t15@0 (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $t10@1@@0)) (= $t17@@0 (= (seq.len (|$vec#$1_Option_Option'address'| $t15@0)) 0))) (and (=> (= (ControlFlow 0 156202) 156327) anon19_Then_correct@@1) (=> (= (ControlFlow 0 156202) 156303) anon19_Else_correct@@1))))))
(let ((anon18_Else_correct@@1  (=> (and (and (not $t12@@0) (= $t14@@0 $t14@@0)) (and (= $t9@0@@0 $t14@@0) (= (ControlFlow 0 156186) 156092))) L5_correct@@0)))
(let ((anon17_Else_correct@@1  (=> (not $abort_flag@0@@3) (=> (and (and (and (= $t10@1@@0 $t10@1@@0) (= $t11@0@@1 (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $t10@1@@0))) (and (= $t12@@0  (not (= (seq.len (|$vec#$1_Option_Option'address'| $t11@0@@1)) 0))) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14@@0) (= $t14@@0 7)) (and (= $t14@@0 $t14@@0) (= $t12@@0 $t12@@0)))) (and (=> (= (ControlFlow 0 156170) 156202) anon18_Then_correct@@1) (=> (= (ControlFlow 0 156170) 156186) anon18_Else_correct@@1))))))
(let ((anon17_Then_correct@@1  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t9@0@@0 $abort_code@1@@3) (= (ControlFlow 0 156341) 156092))) L5_correct@@0)))
(let ((anon16_Then$1_correct  (=> (= $t10@1@@0 $t10@@1) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 156393) 156341) anon17_Then_correct@@1) (=> (= (ControlFlow 0 156393) 156170) anon17_Else_correct@@1))))))
(let ((anon16_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5)) (= (ControlFlow 0 156391) 156393)) anon16_Then$1_correct)))
(let ((anon16_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5) (=> (and (and (= $t10@0@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5)) (= $t10@1@@0 $t10@0@@1)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 156110) 156341) anon17_Then_correct@@1) (=> (= (ControlFlow 0 156110) 156170) anon17_Else_correct@@1))))))
(let ((anon15_Then_correct  (=> $t6@0@@0 (and (=> (= (ControlFlow 0 156096) 156391) anon16_Then_correct@@0) (=> (= (ControlFlow 0 156096) 156110) anon16_Else_correct@@0)))))
(let ((anon15_Else_correct  (=> (and (and (not $t6@0@@0) (= $t8@@1 $t8@@1)) (and (= $t9@0@@0 $t8@@1) (= (ControlFlow 0 156032) 156092))) L5_correct@@0)))
(let ((anon0$1_correct@@5  (=> (and (and (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@27) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@27)) 3))))
 :qid |ValidatorConfigandybpl.5279:20|
 :skolemid |149|
)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@28) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@28)) 3))))
 :qid |ValidatorConfigandybpl.5283:20|
 :skolemid |150|
))) (and (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@29) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@29)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@29)) 3))))
 :qid |ValidatorConfigandybpl.5287:20|
 :skolemid |151|
)) (|$IsValid'address'| _$t0@@5))) (=> (and (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@6)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@6) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@6))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@6))) 1))))
 :qid |ValidatorConfigandybpl.5294:20|
 :skolemid |152|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@6))
)) (= _$t0@@5 _$t0@@5)) (and (= $t6@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@5)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t8@@1) (= $t8@@1 5)) (and (= $t8@@1 $t8@@1) (= $t6@0@@0 $t6@0@@0)))) (and (=> (= (ControlFlow 0 156016) 156096) anon15_Then_correct) (=> (= (ControlFlow 0 156016) 156032) anon15_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_66674| stream@@6) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66674| stream@@6) v@@41) 0)
 :qid |ValidatorConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 155831) 156016)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 211150) 155831) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@6 () T@$1_ValidatorConfig_Config)
(declare-fun $t1@0@@1 () (Seq Int))
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_get_validator_network_addresses$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 211770) (let ((anon0$1_correct@@6  (=> (and (and (|$IsValid'$1_ValidatorConfig_Config'| _$t0@@6) (= _$t0@@6 _$t0@@6)) (and (= $t1@0@@1 (|$validator_network_addresses#$1_ValidatorConfig_Config| _$t0@@6)) (= $t1@0@@1 $t1@0@@1))) (and (=> (= (ControlFlow 0 156574) (- 0 211838)) (not false)) (=> (not false) (=> (= (ControlFlow 0 156574) (- 0 211845)) (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@5) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@5)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@5)))))
 :qid |ValidatorConfigandybpl.5561:15|
 :skolemid |154|
))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_66674| stream@@7) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66674| stream@@7) v@@42) 0)
 :qid |ValidatorConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 156491) 156574)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 211770) 156491) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))
))
(check-sat)
(pop 1)
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
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_is_valid$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 211889) (let ((anon11_Then_correct@@1  (=> $abort_flag@0@@4 (=> (and (= $abort_code@1@@4 $abort_code@1@@4) (= (ControlFlow 0 156967) (- 0 212192))) false))))
(let ((L3_correct@@2  (=> (= $t1@0@@2 $t1@0@@2) (and (=> (= (ControlFlow 0 156895) (- 0 212252)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 156895) (- 0 212259)) (= $t1@0@@2  (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7)))) 0))))) (=> (= $t1@0@@2  (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7)))) 0)))) (=> (= (ControlFlow 0 156895) (- 0 212270)) (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@6) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@6)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@6)))))
 :qid |ValidatorConfigandybpl.5708:15|
 :skolemid |159|
))))))))))
(let ((anon11_Else_correct@@1  (=> (and (not $abort_flag@0@@4) (= $t5@0 (|$config#$1_ValidatorConfig_ValidatorConfig| $t3@1))) (=> (and (and (= $t6@@1  (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t5@0)) 0))) (= $t6@@1 $t6@@1)) (and (= $t1@0@@2 $t6@@1) (= (ControlFlow 0 156945) 156895))) L3_correct@@2))))
(let ((anon10_Then$1_correct  (=> (= $t3@1 $t3) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 157019) 156967) anon11_Then_correct@@1) (=> (= (ControlFlow 0 157019) 156945) anon11_Else_correct@@1))))))
(let ((anon10_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7)) (= (ControlFlow 0 157017) 157019)) anon10_Then$1_correct)))
(let ((anon10_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7) (=> (and (and (= $t3@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7)) (= $t3@1 $t3@0)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 156913) 156967) anon11_Then_correct@@1) (=> (= (ControlFlow 0 156913) 156945) anon11_Else_correct@@1))))))
(let ((anon9_Then_correct  (=> $t2@0 (and (=> (= (ControlFlow 0 156899) 157017) anon10_Then_correct@@1) (=> (= (ControlFlow 0 156899) 156913) anon10_Else_correct@@1)))))
(let ((anon9_Else_correct  (=> (and (and (not $t2@0) (= false false)) (and (= $t1@0@@2 false) (= (ControlFlow 0 156828) 156895))) L3_correct@@2)))
(let ((anon0$1_correct@@7  (=> (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@30) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@30)) 3))))
 :qid |ValidatorConfigandybpl.5593:20|
 :skolemid |155|
)) (=> (and (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@31) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@31)) 3))))
 :qid |ValidatorConfigandybpl.5597:20|
 :skolemid |156|
)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@32) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@32)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@32)) 3))))
 :qid |ValidatorConfigandybpl.5601:20|
 :skolemid |157|
))) (=> (and (and (|$IsValid'address'| _$t0@@7) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@7)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@7) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@7))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@7))) 1))))
 :qid |ValidatorConfigandybpl.5608:20|
 :skolemid |158|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@7))
))) (and (= _$t0@@7 _$t0@@7) (= $t2@0 (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7)))) (and (=> (= (ControlFlow 0 156808) 156899) anon9_Then_correct) (=> (= (ControlFlow 0 156808) 156828) anon9_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_66674| stream@@8) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66674| stream@@8) v@@43) 0)
 :qid |ValidatorConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 156651) 156808)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 211889) 156651) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $t13@0 () T@$Mutation_103634)
(declare-fun $t12@1 () T@$Mutation_103594)
(declare-fun $t13@1 () T@$Mutation_103634)
(declare-fun $t11@@0 () |T@$1_Option_Option'address'|)
(declare-fun $t12@2 () T@$Mutation_103594)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@0 () T@$Memory_96523)
(declare-fun $t4@@0 () Int)
(declare-fun _$t0@@8 () Int)
(declare-fun $t6@0@@1 () Int)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $t12@@1 () T@$Mutation_103594)
(declare-fun $t7@@1 () Int)
(declare-fun $t12@0@@0 () T@$Mutation_103594)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 () Bool)
(declare-fun $t10@@2 () Int)
(declare-fun $t5@@1 () Bool)
(declare-fun $t6@@2 () Int)
(declare-fun $t13 () T@$Mutation_103634)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_remove_operator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 212314) (let ((anon18_Else_correct@@2  (=> (and (and (not $abort_flag@0@@5) (= $t13@0 ($Mutation_103634 (|l#$Mutation_103594| $t12@1) (seq.++ (|p#$Mutation_103594| $t12@1) (seq.unit 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t12@1))))) (and (= $t13@1 ($Mutation_103634 (|l#$Mutation_103634| $t13@0) (|p#$Mutation_103634| $t13@0) $t11@@0)) (= $t12@2 ($Mutation_103594 (|l#$Mutation_103594| $t12@1) (|p#$Mutation_103594| $t12@1) ($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t12@1)) (|v#$Mutation_103634| $t13@1) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t12@1))))))) (and (=> (= (ControlFlow 0 157966) (- 0 213078)) (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t12@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t12@2)))) 1) (and (=> (= (ControlFlow 0 157966) (- 0 213091)) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t12@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t12@2)))) 1) (=> (= $1_ValidatorConfig_ValidatorConfig_$memory@0@@0 ($Memory_96523 (|Store__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_103594| $t12@2)) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_103594| $t12@2)) (|v#$Mutation_103594| $t12@2)))) (and (=> (= (ControlFlow 0 157966) (- 0 213132)) (forall ((validator@@1 Int) ) (!  (=> (|$IsValid'address'| validator@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@1)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) validator@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) validator@@1)))) 0)))))
 :qid |ValidatorConfigandybpl.5964:15|
 :skolemid |166|
))) (=> (forall ((validator@@2 Int) ) (!  (=> (|$IsValid'address'| validator@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@2) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@2)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) validator@@2) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) validator@@2)))) 0)))))
 :qid |ValidatorConfigandybpl.5964:15|
 :skolemid |166|
)) (and (=> (= (ControlFlow 0 157966) (- 0 213156)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@33) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@33)) 3))))
 :qid |ValidatorConfigandybpl.5970:15|
 :skolemid |167|
))) (=> (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@34) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@34)) 3))))
 :qid |ValidatorConfigandybpl.5970:15|
 :skolemid |167|
)) (and (=> (= (ControlFlow 0 157966) (- 0 213181)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@35) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@35)) 3))))
 :qid |ValidatorConfigandybpl.5976:15|
 :skolemid |168|
))) (=> (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@36) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@36)) 3))))
 :qid |ValidatorConfigandybpl.5976:15|
 :skolemid |168|
)) (and (=> (= (ControlFlow 0 157966) (- 0 213206)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@37) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@37)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@37)) 3))))
 :qid |ValidatorConfigandybpl.5982:15|
 :skolemid |169|
))) (=> (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@38) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@38)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@38)) 3))))
 :qid |ValidatorConfigandybpl.5982:15|
 :skolemid |169|
)) (and (=> (= (ControlFlow 0 157966) (- 0 213234)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t4@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t4@@0))) (and (=> (= (ControlFlow 0 157966) (- 0 213246)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t4@@0)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t4@@0)) 3))) (and (=> (= (ControlFlow 0 157966) (- 0 213264)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@0))) (and (=> (= (ControlFlow 0 157966) (- 0 213276)) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) _$t0@@8)))) 0)))) (=> (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) _$t0@@8)))) 0))) (=> (= (ControlFlow 0 157966) (- 0 213287)) (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (not (= addr@@39 $t4@@0)) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@39)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@39)))))
 :qid |ValidatorConfigandybpl.6011:15|
 :skolemid |170|
)))))))))))))))))))))))))))
(let ((L3_correct@@3  (and (=> (= (ControlFlow 0 157635) (- 0 212940)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t4@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t4@@0)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@0)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t4@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t4@@0)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@0))) (=> (= (ControlFlow 0 157635) (- 0 212971)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t4@@0)) (= 5 $t6@0@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t4@@0)) 3)) (= 3 $t6@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@0)) (= 5 $t6@0@@1))))))))
(let ((anon18_Then_correct@@2  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t6@0@@1 $abort_code@1@@5) (= (ControlFlow 0 157980) 157635))) L3_correct@@3)))
(let ((anon17_Then$1_correct  (=> (= $t12@1 $t12@@1) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 158032) 157980) anon18_Then_correct@@2) (=> (= (ControlFlow 0 158032) 157966) anon18_Else_correct@@2))))))
(let ((anon17_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@1)) (= (ControlFlow 0 158030) 158032)) anon17_Then$1_correct)))
(let ((anon17_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@1) (=> (and (and (= $t12@0@@0 ($Mutation_103594 ($Global $t7@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@1))) (= $t12@1 $t12@0@@0)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 157683) 157980) anon18_Then_correct@@2) (=> (= (ControlFlow 0 157683) 157966) anon18_Else_correct@@2))))))
(let ((anon16_Then_correct@@1  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 (=> (and (and (|$IsValid'$1_Option_Option'address''| $t11@@0) (<= (seq.len (|$vec#$1_Option_Option'address'| $t11@@0)) 1)) (= $t11@@0 (|$1_Option_Option'address'| (as seq.empty (Seq Int))))) (and (=> (= (ControlFlow 0 157661) 158030) anon17_Then_correct@@2) (=> (= (ControlFlow 0 157661) 157683) anon17_Else_correct@@2))))))
(let ((anon16_Else_correct@@1  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0) (= $t10@@2 $t10@@2)) (and (= $t6@0@@1 $t10@@2) (= (ControlFlow 0 157535) 157635))) L3_correct@@3)))
(let ((anon15_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t10@@2) (= $t10@@2 5)) (and (= $t10@@2 $t10@@2) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 157519) 157661) anon16_Then_correct@@1) (=> (= (ControlFlow 0 157519) 157535) anon16_Else_correct@@1))))))
(let ((anon14_Then_correct  (=> $t5@@1 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@8)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@8)) 3)) (= 3 $t6@@2))) (= $t6@@2 $t6@@2)) (and (= $t6@0@@1 $t6@@2) (= (ControlFlow 0 158102) 157635))) L3_correct@@3))))
(let ((anon15_Then_correct@@0 true))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@0  (=> (= $t7@@1 $t7@@1) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@1)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 157477) 158046) anon15_Then_correct@@0) (=> (= (ControlFlow 0 157477) 157519) anon15_Else_correct@@0))))))
(let ((anon14_Else_correct  (=> (not $t5@@1) (=> (and (and (|$IsValid'address'| $t7@@1) (= $t7@@1 _$t0@@8)) (and (= $t7@@1 $t7@@1) (= (ControlFlow 0 157483) 157477))) inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@0))))
(let ((anon0$1_correct@@8  (=> (and (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@40) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@40)) 4))))
 :qid |ValidatorConfigandybpl.5765:20|
 :skolemid |160|
)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@41) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@41)) 3))))
 :qid |ValidatorConfigandybpl.5769:20|
 :skolemid |161|
))) (=> (and (and (and (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@42) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@42)) 3))))
 :qid |ValidatorConfigandybpl.5773:20|
 :skolemid |162|
)) (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@43) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@43)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@43)) 3))))
 :qid |ValidatorConfigandybpl.5777:20|
 :skolemid |163|
))) (and (|$IsValid'address'| _$t0@@8) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |ValidatorConfigandybpl.5783:20|
 :skolemid |164|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $a_0@@8))
)))) (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@9)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@9) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@9))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@9))) 1))))
 :qid |ValidatorConfigandybpl.5787:20|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@9))
)) (= $t4@@0 _$t0@@8)) (and (= _$t0@@8 _$t0@@8) (= $t5@@1  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@8)) 3))))))) (and (=> (= (ControlFlow 0 157352) 158102) anon14_Then_correct) (=> (= (ControlFlow 0 157352) 157483) anon14_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_66674| stream@@9) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66674| stream@@9) v@@44) 0)
 :qid |ValidatorConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 157114) 157352)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (seq.len (|p#$Mutation_103594| $t12@@1)) 0) (=> (and (= (seq.len (|p#$Mutation_103634| $t13)) 0) (= (ControlFlow 0 157124) 157114)) inline$$InitEventStore$0$anon0_correct@@8))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 212314) 157124) anon0_correct@@8)))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t25@1 () T@$Mutation_103594)
(declare-fun $t26@0 () T@$1_ValidatorConfig_Config)
(declare-fun _$t2@@0 () (Seq Int))
(declare-fun _$t3 () (Seq Int))
(declare-fun _$t4 () (Seq Int))
(declare-fun $t27 () |T@$1_Option_Option'$1_ValidatorConfig_Config'|)
(declare-fun $t28@0 () T@$Mutation_105252)
(declare-fun $t28@1 () T@$Mutation_105252)
(declare-fun $t25@2 () T@$Mutation_103594)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@1 () T@$Memory_96523)
(declare-fun _$t0@@9 () Int)
(declare-fun _$t1@@1 () Int)
(declare-fun $t15@0@@0 () Int)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun $t25 () T@$Mutation_103594)
(declare-fun $t25@0 () T@$Mutation_103594)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1 () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$modifies () |T@[Int]Bool|)
(declare-fun $t24 () Int)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun $t21 () Int)
(declare-fun $t16@0 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t14@@1 () Bool)
(declare-fun $t13@@0 () Int)
(declare-fun $t12@@2 () Int)
(declare-fun $t15@@1 () Int)
(declare-fun $t5@@2 () T@$Mutation_103594)
(declare-fun $t28 () T@$Mutation_105252)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_set_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 213335) (let ((anon29_Else_correct  (=> (and (not $abort_flag@0@@6) (= |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| (|v#$Mutation_103594| $t25@1))) (=> (and (and (and (= |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0|) (= $t26@0 ($1_ValidatorConfig_Config _$t2@@0 _$t3 _$t4))) (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| $t27) (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t27)) 1))) (and (and (= $t27 (|$1_Option_Option'$1_ValidatorConfig_Config'| (seq.unit $t26@0))) (= $t28@0 ($Mutation_105252 (|l#$Mutation_103594| $t25@1) (seq.++ (|p#$Mutation_103594| $t25@1) (seq.unit 0)) (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t25@1))))) (and (= $t28@1 ($Mutation_105252 (|l#$Mutation_105252| $t28@0) (|p#$Mutation_105252| $t28@0) $t27)) (= $t25@2 ($Mutation_103594 (|l#$Mutation_103594| $t25@1) (|p#$Mutation_103594| $t25@1) ($1_ValidatorConfig_ValidatorConfig (|v#$Mutation_105252| $t28@1) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t25@1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t25@1)))))))) (and (=> (= (ControlFlow 0 159337) (- 0 214302)) (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t25@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t25@2)))) 1) (and (=> (= (ControlFlow 0 159337) (- 0 214315)) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t25@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t25@2)))) 1) (=> (= $1_ValidatorConfig_ValidatorConfig_$memory@0@@1 ($Memory_96523 (|Store__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_103594| $t25@2)) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_103594| $t25@2)) (|v#$Mutation_103594| $t25@2)))) (and (=> (= (ControlFlow 0 159337) (- 0 214356)) (forall ((validator@@3 Int) ) (!  (=> (|$IsValid'address'| validator@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@3)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) validator@@3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) validator@@3)))) 0)))))
 :qid |ValidatorConfigandybpl.6420:15|
 :skolemid |175|
))) (=> (forall ((validator@@4 Int) ) (!  (=> (|$IsValid'address'| validator@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@4) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@4)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) validator@@4) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) validator@@4)))) 0)))))
 :qid |ValidatorConfigandybpl.6420:15|
 :skolemid |175|
)) (and (=> (= (ControlFlow 0 159337) (- 0 214380)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) addr@@44) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@44)) 3))))
 :qid |ValidatorConfigandybpl.6426:15|
 :skolemid |176|
))) (=> (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) addr@@45) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@45)) 3))))
 :qid |ValidatorConfigandybpl.6426:15|
 :skolemid |176|
)) (and (=> (= (ControlFlow 0 159337) (- 0 214405)) (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) addr@@46) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@46)) 3))))
 :qid |ValidatorConfigandybpl.6432:15|
 :skolemid |177|
))) (=> (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) addr@@47) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@47)) 3))))
 :qid |ValidatorConfigandybpl.6432:15|
 :skolemid |177|
)) (and (=> (= (ControlFlow 0 159337) (- 0 214430)) (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) addr@@48) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) addr@@48)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@48)) 3))))
 :qid |ValidatorConfigandybpl.6438:15|
 :skolemid |178|
))) (=> (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) addr@@49) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) addr@@49)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@49)) 3))))
 :qid |ValidatorConfigandybpl.6438:15|
 :skolemid |178|
)) (and (=> (= (ControlFlow 0 159337) (- 0 214458)) (not (not (= _$t0@@9 (let ((t_ref@@3 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@3)) 0)))))) (=> (not (not (= _$t0@@9 (let ((t_ref@@4 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@4)) 0))))) (and (=> (= (ControlFlow 0 159337) (- 0 214474)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0))) (and (=> (= (ControlFlow 0 159337) (- 0 214484)) (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0))))) (=> (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0)))) (and (=> (= (ControlFlow 0 159337) (- 0 214495)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1))) (and (=> (= (ControlFlow 0 159337) (- 0 214506)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) _$t1@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) _$t1@@1)))) 0)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) _$t1@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) _$t1@@1)))) 0))) (and (=> (= (ControlFlow 0 159337) (- 0 214513)) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) _$t1@@1) ($1_ValidatorConfig_ValidatorConfig (|$1_Option_Option'$1_ValidatorConfig_Config'| (seq.unit ($1_ValidatorConfig_Config _$t2@@0 _$t3 _$t4))) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1))))) (=> (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) _$t1@@1) ($1_ValidatorConfig_ValidatorConfig (|$1_Option_Option'$1_ValidatorConfig_Config'| (seq.unit ($1_ValidatorConfig_Config _$t2@@0 _$t3 _$t4))) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) (=> (= (ControlFlow 0 159337) (- 0 214535)) (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@7) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) addr1@@7)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@7)))))
 :qid |ValidatorConfigandybpl.6477:15|
 :skolemid |179|
))))))))))))))))))))))))))))))))
(let ((anon26_Then_correct true))
(let ((anon24_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 158691) (- 0 214100)) (or (or (or (not (= _$t0@@9 (let ((t_ref@@5 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@5)) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0))) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) (=> (or (or (or (not (= _$t0@@9 (let ((t_ref@@6 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@6)) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0))) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1))) (=> (= (ControlFlow 0 158691) (- 0 214134)) (or (or (or (and (not (= _$t0@@9 (let ((t_ref@@7 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@7)) 0)))) (= 7 $t15@0@@0)) (and (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0)) (= 7 $t15@0@@0))) (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0))) (= 7 $t15@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)) (= 5 $t15@0@@0))))))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t15@0@@0 $abort_code@1@@6) (= (ControlFlow 0 159351) 158691))) L7_correct)))
(let ((anon28_Then$1_correct  (=> (= $t25@1 $t25) (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 159403) 159351) anon29_Then_correct) (=> (= (ControlFlow 0 159403) 159337) anon29_Else_correct))))))
(let ((anon28_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)) (= (ControlFlow 0 159401) 159403)) anon28_Then$1_correct)))
(let ((anon28_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1) (=> (and (and (= $t25@0 ($Mutation_103594 ($Global _$t1@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1))) (= $t25@1 $t25@0)) (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6))) (and (=> (= (ControlFlow 0 158978) 159351) anon29_Then_correct) (=> (= (ControlFlow 0 158978) 159337) anon29_Else_correct))))))
(let ((anon27_Then_correct  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1 (and (=> (= (ControlFlow 0 158956) (- 0 213972)) (|Select__T@[Int]Bool_| $1_ValidatorConfig_ValidatorConfig_$modifies _$t1@@1)) (=> (|Select__T@[Int]Bool_| $1_ValidatorConfig_ValidatorConfig_$modifies _$t1@@1) (and (=> (= (ControlFlow 0 158956) 159401) anon28_Then_correct) (=> (= (ControlFlow 0 158956) 158978) anon28_Else_correct)))))))
(let ((anon27_Else_correct  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1) (= $t24 $t24)) (and (= $t15@0@@0 $t24) (= (ControlFlow 0 158946) 158691))) L7_correct)))
(let ((anon26_Else_correct  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t24) (= $t24 5)) (and (= $t24 $t24) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1))) (and (=> (= (ControlFlow 0 158930) 158956) anon27_Then_correct) (=> (= (ControlFlow 0 158930) 158946) anon27_Else_correct))))))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@1  (=> (= _$t1@@1 _$t1@@1) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1)) (and (=> (= (ControlFlow 0 158888) 159417) anon26_Then_correct) (=> (= (ControlFlow 0 158888) 158930) anon26_Else_correct))))))
(let ((anon25_Then_correct  (=> (and inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (= (ControlFlow 0 158894) 158888)) inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@1)))
(let ((anon25_Else_correct  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= $t21 $t21)) (and (= $t15@0@@0 $t21) (= (ControlFlow 0 158787) 158691))) L7_correct)))
(let ((anon24_Else_correct  (=> (and (not false) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t21) (= $t21 7)) (and (= $t21 $t21) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 158771) 158894) anon25_Then_correct) (=> (= (ControlFlow 0 158771) 158787) anon25_Else_correct))))))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t2@@0)) (and (=> (= (ControlFlow 0 158725) 159431) anon24_Then_correct) (=> (= (ControlFlow 0 158725) 158771) anon24_Else_correct)))))
(let ((anon23_Then_correct  (=> (and $t16@0 (= (ControlFlow 0 158731) 158725)) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (and (and (not $t16@0) (= $t18 $t18)) (and (= $t15@0@@0 $t18) (= (ControlFlow 0 158567) 158691))) L7_correct)))
(let ((anon22_Else_correct@@0  (=> (not $t14@@1) (=> (and (and (and (|$IsValid'address'| $t13@@0) (= $t13@@0 (let ((t_ref@@8 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@8)) 0)))) (and (= $t16@0 (= $t12@@2 $t13@@0)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t18) (= $t18 7)) (and (= $t18 $t18) (= $t16@0 $t16@0)))) (and (=> (= (ControlFlow 0 158551) 158731) anon23_Then_correct) (=> (= (ControlFlow 0 158551) 158567) anon23_Else_correct))))))
(let ((anon22_Then_correct@@0  (=> $t14@@1 (=> (and (and (or (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0))) (= 7 $t15@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)) (= 5 $t15@@1))) (= $t15@@1 $t15@@1)) (and (= $t15@0@@0 $t15@@1) (= (ControlFlow 0 159477) 158691))) L7_correct))))
(let ((anon0$1_correct@@9  (=> (and (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@50) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@50)) 3))))
 :qid |ValidatorConfigandybpl.6093:20|
 :skolemid |171|
)) (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@51) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@51)) 3))))
 :qid |ValidatorConfigandybpl.6097:20|
 :skolemid |172|
))) (=> (and (and (and (and (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@52) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@52)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@52)) 3))))
 :qid |ValidatorConfigandybpl.6101:20|
 :skolemid |173|
)) (|$IsValid'address'| _$t0@@9)) (and (|$IsValid'address'| _$t1@@1) (|$IsValid'vec'u8''| _$t2@@0))) (and (and (|$IsValid'vec'u8''| _$t3) (|$IsValid'vec'u8''| _$t4)) (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@10)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@10) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@10))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@10))) 1))))
 :qid |ValidatorConfigandybpl.6119:20|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@10))
)) (|Select__T@[Int]Bool_| $1_ValidatorConfig_ValidatorConfig_$modifies _$t1@@1)))) (and (and (and (= _$t0@@9 _$t0@@9) (= _$t1@@1 _$t1@@1)) (and (= _$t2@@0 _$t2@@0) (= _$t3 _$t3))) (and (and (= _$t4 _$t4) (|$IsValid'address'| $t12@@2)) (and (= $t12@@2 _$t0@@9) (= $t14@@1  (or (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))))))) (and (=> (= (ControlFlow 0 158493) 159477) anon22_Then_correct@@0) (=> (= (ControlFlow 0 158493) 158551) anon22_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_66674| stream@@10) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66674| stream@@10) v@@45) 0)
 :qid |ValidatorConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 158262) 158493)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (and (and (= (seq.len (|p#$Mutation_103594| $t5@@2)) 0) (= (seq.len (|p#$Mutation_103594| $t25)) 0)) (and (= (seq.len (|p#$Mutation_105252| $t28)) 0) (= (ControlFlow 0 158272) 158262))) inline$$InitEventStore$0$anon0_correct@@9)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 213335) 158272) anon0_correct@@9)))
PreconditionGeneratedEntry_correct@@0)))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $t21@0 () T@$Mutation_103634)
(declare-fun $t20@1 () T@$Mutation_103594)
(declare-fun $t21@1 () T@$Mutation_103634)
(declare-fun $t19 () |T@$1_Option_Option'address'|)
(declare-fun $t20@2 () T@$Mutation_103594)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@2 () T@$Memory_96523)
(declare-fun $t7@@2 () Int)
(declare-fun _$t1@@2 () Int)
(declare-fun $t8@@2 () Int)
(declare-fun $t9@@3 () Int)
(declare-fun $t11@0@@2 () Int)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $t20 () T@$Mutation_103594)
(declare-fun $t15@@2 () Int)
(declare-fun $t20@0 () T@$Mutation_103594)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1@@2 () Bool)
(declare-fun $t18@@0 () Int)
(declare-fun inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 () Bool)
(declare-fun _$t0@@10 () Int)
(declare-fun $t14@@2 () Int)
(declare-fun $t10@@3 () Bool)
(declare-fun $t11@@1 () Int)
(declare-fun |Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| Int) T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun $t21@@0 () T@$Mutation_103634)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_set_operator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 214578) (let ((anon25_Else_correct@@0  (=> (and (and (not $abort_flag@0@@7) (= $t21@0 ($Mutation_103634 (|l#$Mutation_103594| $t20@1) (seq.++ (|p#$Mutation_103594| $t20@1) (seq.unit 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t20@1))))) (and (= $t21@1 ($Mutation_103634 (|l#$Mutation_103634| $t21@0) (|p#$Mutation_103634| $t21@0) $t19)) (= $t20@2 ($Mutation_103594 (|l#$Mutation_103594| $t20@1) (|p#$Mutation_103594| $t20@1) ($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t20@1)) (|v#$Mutation_103634| $t21@1) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t20@1))))))) (and (=> (= (ControlFlow 0 160928) (- 0 215645)) (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t20@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t20@2)))) 1) (and (=> (= (ControlFlow 0 160928) (- 0 215658)) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t20@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_103594| $t20@2)))) 1) (=> (= $1_ValidatorConfig_ValidatorConfig_$memory@0@@2 ($Memory_96523 (|Store__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_103594| $t20@2)) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_103594| $t20@2)) (|v#$Mutation_103594| $t20@2)))) (and (=> (= (ControlFlow 0 160928) (- 0 215699)) (forall ((validator@@5 Int) ) (!  (=> (|$IsValid'address'| validator@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@5) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@5)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) validator@@5) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) validator@@5)))) 0)))))
 :qid |ValidatorConfigandybpl.6823:15|
 :skolemid |187|
))) (=> (forall ((validator@@6 Int) ) (!  (=> (|$IsValid'address'| validator@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@6) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@6)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) validator@@6) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) validator@@6)))) 0)))))
 :qid |ValidatorConfigandybpl.6823:15|
 :skolemid |187|
)) (and (=> (= (ControlFlow 0 160928) (- 0 215723)) (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) addr@@53) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@53)) 3))))
 :qid |ValidatorConfigandybpl.6829:15|
 :skolemid |188|
))) (=> (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) addr@@54) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@54)) 3))))
 :qid |ValidatorConfigandybpl.6829:15|
 :skolemid |188|
)) (and (=> (= (ControlFlow 0 160928) (- 0 215748)) (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) addr@@55) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@55)) 3))))
 :qid |ValidatorConfigandybpl.6835:15|
 :skolemid |189|
))) (=> (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) addr@@56) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@56)) 3))))
 :qid |ValidatorConfigandybpl.6835:15|
 :skolemid |189|
)) (and (=> (= (ControlFlow 0 160928) (- 0 215773)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) addr@@57) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) addr@@57)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@57)) 3))))
 :qid |ValidatorConfigandybpl.6841:15|
 :skolemid |190|
))) (=> (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) addr@@58) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) addr@@58)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@58)) 3))))
 :qid |ValidatorConfigandybpl.6841:15|
 :skolemid |190|
)) (and (=> (= (ControlFlow 0 160928) (- 0 215801)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t7@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t7@@2))) (and (=> (= (ControlFlow 0 160928) (- 0 215813)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t7@@2)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t7@@2)) 3))) (and (=> (= (ControlFlow 0 160928) (- 0 215831)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@2))) (and (=> (= (ControlFlow 0 160928) (- 0 215842)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@2))) (and (=> (= (ControlFlow 0 160928) (- 0 215853)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@2))) (and (=> (= (ControlFlow 0 160928) (- 0 215865)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@2)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@2)) 3))) (and (=> (= (ControlFlow 0 160928) (- 0 215883)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@2))) (and (=> (= (ControlFlow 0 160928) (- 0 215895)) (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) $t9@@3)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) $t9@@3)))) 0)) (and (=> (= (ControlFlow 0 160928) (- 0 215903)) (= (let ((t_ref@@9 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) $t9@@3)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@9)) 0)) _$t1@@2)) (=> (= (let ((t_ref@@10 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) $t9@@3)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@10)) 0)) _$t1@@2) (=> (= (ControlFlow 0 160928) (- 0 215914)) (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (not (= addr@@59 $t9@@3)) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) addr@@59)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@59)))))
 :qid |ValidatorConfigandybpl.6895:15|
 :skolemid |191|
)))))))))))))))))))))))))))))))))))))
(let ((anon22_Then_correct@@1 true))
(let ((L5_correct@@1  (and (=> (= (ControlFlow 0 160354) (- 0 215399)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t7@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t7@@2)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@2)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@2)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t7@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t7@@2)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@2)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@2))) (=> (= (ControlFlow 0 160354) (- 0 215470)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t7@@2)) (= 5 $t11@0@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t7@@2)) 3)) (= 3 $t11@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@2)) (= 7 $t11@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@2)) (= 5 $t11@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@2)) (= 5 $t11@0@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $t8@@2)) 3)) (= 3 $t11@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@2)) (= 5 $t11@0@@2))))))))
(let ((anon25_Then_correct@@0  (=> (and (and $abort_flag@0@@7 (= $abort_code@1@@7 $abort_code@1@@7)) (and (= $t11@0@@2 $abort_code@1@@7) (= (ControlFlow 0 160942) 160354))) L5_correct@@1)))
(let ((anon24_Then$1_correct  (=> (= $t20@1 $t20) (=> (and (= $abort_flag@0@@7 true) (= $abort_code@1@@7 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 160994) 160942) anon25_Then_correct@@0) (=> (= (ControlFlow 0 160994) 160928) anon25_Else_correct@@0))))))
(let ((anon24_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t15@@2)) (= (ControlFlow 0 160992) 160994)) anon24_Then$1_correct)))
(let ((anon24_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t15@@2) (=> (and (and (= $t20@0 ($Mutation_103594 ($Global $t15@@2) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t15@@2))) (= $t20@1 $t20@0)) (and (= $abort_flag@0@@7 false) (= $abort_code@1@@7 $abort_code@0@@7))) (and (=> (= (ControlFlow 0 160583) 160942) anon25_Then_correct@@0) (=> (= (ControlFlow 0 160583) 160928) anon25_Else_correct@@0))))))
(let ((anon23_Then_correct@@0  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1@@2 (=> (and (and (|$IsValid'$1_Option_Option'address''| $t19) (<= (seq.len (|$vec#$1_Option_Option'address'| $t19)) 1)) (= $t19 (|$1_Option_Option'address'| (seq.unit _$t1@@2)))) (and (=> (= (ControlFlow 0 160561) 160992) anon24_Then_correct@@0) (=> (= (ControlFlow 0 160561) 160583) anon24_Else_correct@@0))))))
(let ((anon23_Else_correct@@0  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1@@2) (= $t18@@0 $t18@@0)) (and (= $t11@0@@2 $t18@@0) (= (ControlFlow 0 160533) 160354))) L5_correct@@1)))
(let ((anon22_Else_correct@@1  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t18@@0) (= $t18@@0 5)) (and (= $t18@@0 $t18@@0) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@2 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@2))) (and (=> (= (ControlFlow 0 160517) 160561) anon23_Then_correct@@0) (=> (= (ControlFlow 0 160517) 160533) anon23_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@2  (=> (= $t15@@2 $t15@@2) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $t15@@2)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@2 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@2)) (and (=> (= (ControlFlow 0 160475) 161008) anon22_Then_correct@@1) (=> (= (ControlFlow 0 160475) 160517) anon22_Else_correct@@1))))))
(let ((anon21_Then_correct@@1  (=> inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 (=> (and (and (|$IsValid'address'| $t15@@2) (= $t15@@2 _$t0@@10)) (and (= $t15@@2 $t15@@2) (= (ControlFlow 0 160481) 160475))) inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@2))))
(let ((anon21_Else_correct@@1  (=> (and (and (not inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1) (= $t14@@2 $t14@@2)) (and (= $t11@0@@2 $t14@@2) (= (ControlFlow 0 160130) 160354))) L5_correct@@1)))
(let ((anon20_Else_correct@@1  (=> (and (not false) (|$IsValid'u64'| 3)) (=> (and (and (|$IsValid'u64'| $t14@@2) (= $t14@@2 7)) (and (= $t14@@2 $t14@@2) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1))) (and (=> (= (ControlFlow 0 160114) 160481) anon21_Then_correct@@1) (=> (= (ControlFlow 0 160114) 160130) anon21_Else_correct@@1))))))
(let ((anon19_Then_correct@@2  (=> $t10@@3 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@10)) (= 5 $t11@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@10)) 3)) (= 3 $t11@@1))) (= $t11@@1 $t11@@1)) (and (= $t11@0@@2 $t11@@1) (= (ControlFlow 0 161078) 160354))) L5_correct@@1))))
(let ((anon20_Then_correct@@1 true))
(let ((inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct  (=> (= _$t1@@2 _$t1@@2) (=> (and (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@2)) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1)) (and (=> (= (ControlFlow 0 160068) 161022) anon20_Then_correct@@1) (=> (= (ControlFlow 0 160068) 160114) anon20_Else_correct@@1))))))
(let ((anon19_Else_correct@@2  (=> (and (not $t10@@3) (= (ControlFlow 0 160074) 160068)) inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct)))
(let ((anon0$1_correct@@10  (=> (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@60) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@60)) 4))))
 :qid |ValidatorConfigandybpl.6547:20|
 :skolemid |180|
)) (=> (and (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@61) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@61)) 3))))
 :qid |ValidatorConfigandybpl.6551:20|
 :skolemid |181|
)) (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@62) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@62)) 3))))
 :qid |ValidatorConfigandybpl.6555:20|
 :skolemid |182|
))) (=> (and (and (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@63) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@63)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) addr@@63)) 3))))
 :qid |ValidatorConfigandybpl.6559:20|
 :skolemid |183|
)) (|$IsValid'address'| _$t0@@10)) (and (|$IsValid'address'| _$t1@@2) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $a_0@@11)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@11))
 :qid |ValidatorConfigandybpl.6568:20|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) $a_0@@11))
)))) (=> (and (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@12)))
(|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| $rsc@@12))
 :qid |ValidatorConfigandybpl.6572:20|
 :skolemid |185|
 :pattern ( (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_97123| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@13)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@13) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@13))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@13))) 1))))
 :qid |ValidatorConfigandybpl.6576:20|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_96523| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@13))
))) (and (= $t7@@2 _$t0@@10) (= $t8@@2 _$t0@@10))) (and (and (= $t9@@3 _$t0@@10) (= _$t0@@10 _$t0@@10)) (and (= _$t1@@2 _$t1@@2) (= $t10@@3  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@10)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95957| $1_Roles_RoleId_$memory) _$t0@@10)) 3))))))) (and (=> (= (ControlFlow 0 159963) 161078) anon19_Then_correct@@2) (=> (= (ControlFlow 0 159963) 160074) anon19_Else_correct@@2))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_66674_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_66674| stream@@11) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66674| stream@@11) v@@46) 0)
 :qid |ValidatorConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 159671) 159963)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (seq.len (|p#$Mutation_103594| $t20)) 0) (=> (and (= (seq.len (|p#$Mutation_103634| $t21@@0)) 0) (= (ControlFlow 0 159681) 159671)) inline$$InitEventStore$0$anon0_correct@@10))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 214578) 159681) anon0_correct@@10)))
PreconditionGeneratedEntry_correct@@1)))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 215968) true)
))
(check-sat)
(pop 1)
; Valid
