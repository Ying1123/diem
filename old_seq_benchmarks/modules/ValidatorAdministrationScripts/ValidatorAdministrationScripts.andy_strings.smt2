(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_97014 0)) ((($Memory_97014 (|domain#$Memory_97014| |T@[Int]Bool|) (|contents#$Memory_97014| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_156557 0)) ((($Memory_156557 (|domain#$Memory_156557| |T@[Int]Bool|) (|contents#$Memory_156557| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_138084 0)) ((($Memory_138084 (|domain#$Memory_138084| |T@[Int]Bool|) (|contents#$Memory_138084| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_135998 0)) ((($Memory_135998 (|domain#$Memory_135998| |T@[Int]Bool|) (|contents#$Memory_135998| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_136311 0)) ((($Memory_136311 (|domain#$Memory_136311| |T@[Int]Bool|) (|contents#$Memory_136311| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_135965 0)) ((($Memory_135965 (|domain#$Memory_135965| |T@[Int]Bool|) (|contents#$Memory_135965| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_135750 0)) ((($Memory_135750 (|domain#$Memory_135750| |T@[Int]Bool|) (|contents#$Memory_135750| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_133260 0)) ((($Memory_133260 (|domain#$Memory_133260| |T@[Int]Bool|) (|contents#$Memory_133260| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_133196 0)) ((($Memory_133196 (|domain#$Memory_133196| |T@[Int]Bool|) (|contents#$Memory_133196| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_131818 0)) ((($Memory_131818 (|domain#$Memory_131818| |T@[Int]Bool|) (|contents#$Memory_131818| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_128697 0)) ((($Memory_128697 (|domain#$Memory_128697| |T@[Int]Bool|) (|contents#$Memory_128697| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_128478 0)) ((($Memory_128478 (|domain#$Memory_128478| |T@[Int]Bool|) (|contents#$Memory_128478| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_137873 0)) ((($Memory_137873 (|domain#$Memory_137873| |T@[Int]Bool|) (|contents#$Memory_137873| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_121433 0)) ((($Memory_121433 (|domain#$Memory_121433| |T@[Int]Bool|) (|contents#$Memory_121433| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_121346 0)) ((($Memory_121346 (|domain#$Memory_121346| |T@[Int]Bool|) (|contents#$Memory_121346| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_118143 0)) ((($Memory_118143 (|domain#$Memory_118143| |T@[Int]Bool|) (|contents#$Memory_118143| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_118056 0)) ((($Memory_118056 (|domain#$Memory_118056| |T@[Int]Bool|) (|contents#$Memory_118056| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_121697 0)) ((($Memory_121697 (|domain#$Memory_121697| |T@[Int]Bool|) (|contents#$Memory_121697| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_130530 0)) ((($Memory_130530 (|domain#$Memory_130530| |T@[Int]Bool|) (|contents#$Memory_130530| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_122023 0)) ((($Memory_122023 (|domain#$Memory_122023| |T@[Int]Bool|) (|contents#$Memory_122023| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_121606 0)) ((($Memory_121606 (|domain#$Memory_121606| |T@[Int]Bool|) (|contents#$Memory_121606| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_132130 0)) ((($Memory_132130 (|domain#$Memory_132130| |T@[Int]Bool|) (|contents#$Memory_132130| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_121924 0)) ((($Memory_121924 (|domain#$Memory_121924| |T@[Int]Bool|) (|contents#$Memory_121924| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_117758 0)) ((($Memory_117758 (|domain#$Memory_117758| |T@[Int]Bool|) (|contents#$Memory_117758| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_117694 0)) ((($Memory_117694 (|domain#$Memory_117694| |T@[Int]Bool|) (|contents#$Memory_117694| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_109424 0)) ((($Memory_109424 (|domain#$Memory_109424| |T@[Int]Bool|) (|contents#$Memory_109424| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_109337 0)) ((($Memory_109337 (|domain#$Memory_109337| |T@[Int]Bool|) (|contents#$Memory_109337| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_109250 0)) ((($Memory_109250 (|domain#$Memory_109250| |T@[Int]Bool|) (|contents#$Memory_109250| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_109163 0)) ((($Memory_109163 (|domain#$Memory_109163| |T@[Int]Bool|) (|contents#$Memory_109163| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_109076 0)) ((($Memory_109076 (|domain#$Memory_109076| |T@[Int]Bool|) (|contents#$Memory_109076| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_109803 0)) ((($Memory_109803 (|domain#$Memory_109803| |T@[Int]Bool|) (|contents#$Memory_109803| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_108156 0)) ((($Memory_108156 (|domain#$Memory_108156| |T@[Int]Bool|) (|contents#$Memory_108156| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_108268 0)) ((($Memory_108268 (|domain#$Memory_108268| |T@[Int]Bool|) (|contents#$Memory_108268| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_108075 0)) ((($Memory_108075 (|domain#$Memory_108075| |T@[Int]Bool|) (|contents#$Memory_108075| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_107994 0)) ((($Memory_107994 (|domain#$Memory_107994| |T@[Int]Bool|) (|contents#$Memory_107994| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_107913 0)) ((($Memory_107913 (|domain#$Memory_107913| |T@[Int]Bool|) (|contents#$Memory_107913| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_107832 0)) ((($Memory_107832 (|domain#$Memory_107832| |T@[Int]Bool|) (|contents#$Memory_107832| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_107332 0)) ((($Memory_107332 (|domain#$Memory_107332| |T@[Int]Bool|) (|contents#$Memory_107332| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_136952 0)) ((($Memory_136952 (|domain#$Memory_136952| |T@[Int]Bool|) (|contents#$Memory_136952| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_107751 0)) ((($Memory_107751 (|domain#$Memory_107751| |T@[Int]Bool|) (|contents#$Memory_107751| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_105594 0)) ((($Memory_105594 (|domain#$Memory_105594| |T@[Int]Bool|) (|contents#$Memory_105594| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_104568 0)) ((($Memory_104568 (|domain#$Memory_104568| |T@[Int]Bool|) (|contents#$Memory_104568| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_104235 0)) ((($Memory_104235 (|domain#$Memory_104235| |T@[Int]Bool|) (|contents#$Memory_104235| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_103766 0)) ((($Memory_103766 (|domain#$Memory_103766| |T@[Int]Bool|) (|contents#$Memory_103766| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_73812 0)) (((Multiset_73812 (|v#Multiset_73812| |T@[$EventRep]Int|) (|l#Multiset_73812| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_73812| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_73812|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_138911 0)) ((($Mutation_138911 (|l#$Mutation_138911| T@$Location) (|p#$Mutation_138911| (Seq Int)) (|v#$Mutation_138911| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_138867 0)) ((($Mutation_138867 (|l#$Mutation_138867| T@$Location) (|p#$Mutation_138867| (Seq Int)) (|v#$Mutation_138867| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_36794 0)) ((($Mutation_36794 (|l#$Mutation_36794| T@$Location) (|p#$Mutation_36794| (Seq Int)) (|v#$Mutation_36794| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_127212 0)) ((($Mutation_127212 (|l#$Mutation_127212| T@$Location) (|p#$Mutation_127212| (Seq Int)) (|v#$Mutation_127212| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_116564 0)) ((($Mutation_116564 (|l#$Mutation_116564| T@$Location) (|p#$Mutation_116564| (Seq Int)) (|v#$Mutation_116564| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_110042 0)) ((($Mutation_110042 (|l#$Mutation_110042| T@$Location) (|p#$Mutation_110042| (Seq Int)) (|v#$Mutation_110042| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_106262 0)) ((($Mutation_106262 (|l#$Mutation_106262| T@$Location) (|p#$Mutation_106262| (Seq Int)) (|v#$Mutation_106262| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_106222 0)) ((($Mutation_106222 (|l#$Mutation_106222| T@$Location) (|p#$Mutation_106222| (Seq Int)) (|v#$Mutation_106222| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_97642 0)) ((($Mutation_97642 (|l#$Mutation_97642| T@$Location) (|p#$Mutation_97642| (Seq Int)) (|v#$Mutation_97642| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_91875 0)) ((($Mutation_91875 (|l#$Mutation_91875| T@$Location) (|p#$Mutation_91875| (Seq Int)) (|v#$Mutation_91875| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_91129 0)) ((($Mutation_91129 (|l#$Mutation_91129| T@$Location) (|p#$Mutation_91129| (Seq Int)) (|v#$Mutation_91129| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_89689 0)) ((($Mutation_89689 (|l#$Mutation_89689| T@$Location) (|p#$Mutation_89689| (Seq Int)) (|v#$Mutation_89689| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_88943 0)) ((($Mutation_88943 (|l#$Mutation_88943| T@$Location) (|p#$Mutation_88943| (Seq Int)) (|v#$Mutation_88943| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_87503 0)) ((($Mutation_87503 (|l#$Mutation_87503| T@$Location) (|p#$Mutation_87503| (Seq Int)) (|v#$Mutation_87503| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_86757 0)) ((($Mutation_86757 (|l#$Mutation_86757| T@$Location) (|p#$Mutation_86757| (Seq Int)) (|v#$Mutation_86757| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_85317 0)) ((($Mutation_85317 (|l#$Mutation_85317| T@$Location) (|p#$Mutation_85317| (Seq Int)) (|v#$Mutation_85317| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_84571 0)) ((($Mutation_84571 (|l#$Mutation_84571| T@$Location) (|p#$Mutation_84571| (Seq Int)) (|v#$Mutation_84571| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_83131 0)) ((($Mutation_83131 (|l#$Mutation_83131| T@$Location) (|p#$Mutation_83131| (Seq Int)) (|v#$Mutation_83131| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_82385 0)) ((($Mutation_82385 (|l#$Mutation_82385| T@$Location) (|p#$Mutation_82385| (Seq Int)) (|v#$Mutation_82385| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_80945 0)) ((($Mutation_80945 (|l#$Mutation_80945| T@$Location) (|p#$Mutation_80945| (Seq Int)) (|v#$Mutation_80945| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_80199 0)) ((($Mutation_80199 (|l#$Mutation_80199| T@$Location) (|p#$Mutation_80199| (Seq Int)) (|v#$Mutation_80199| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_78759 0)) ((($Mutation_78759 (|l#$Mutation_78759| T@$Location) (|p#$Mutation_78759| (Seq Int)) (|v#$Mutation_78759| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_78013 0)) ((($Mutation_78013 (|l#$Mutation_78013| T@$Location) (|p#$Mutation_78013| (Seq Int)) (|v#$Mutation_78013| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_76535 0)) ((($Mutation_76535 (|l#$Mutation_76535| T@$Location) (|p#$Mutation_76535| (Seq Int)) (|v#$Mutation_76535| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_75789 0)) ((($Mutation_75789 (|l#$Mutation_75789| T@$Location) (|p#$Mutation_75789| (Seq Int)) (|v#$Mutation_75789| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_73812_| (|T@[$1_Event_EventHandle]Multiset_73812| T@$1_Event_EventHandle) T@Multiset_73812)
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
(declare-fun $1_SlidingNonce_spec_try_record_nonce (Int Int) Int)
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
(declare-fun ReverseVec_66957 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_65972 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_66169 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_66366 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_67154 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_66760 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_66563 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_65775 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_73812| |T@[$1_Event_EventHandle]Multiset_73812|) |T@[$1_Event_EventHandle]Multiset_73812|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorAdministrationScriptsandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorAdministrationScriptsandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorAdministrationScriptsandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorAdministrationScriptsandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorAdministrationScriptsandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorAdministrationScriptsandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorAdministrationScriptsandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorAdministrationScriptsandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |ValidatorAdministrationScriptsandybpl.590:13|
 :skolemid |15|
))))
 :qid |ValidatorAdministrationScriptsandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ValidatorAdministrationScriptsandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ValidatorAdministrationScriptsandybpl.603:17|
 :skolemid |18|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |ValidatorAdministrationScriptsandybpl.770:13|
 :skolemid |20|
))))
 :qid |ValidatorAdministrationScriptsandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |ValidatorAdministrationScriptsandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |ValidatorAdministrationScriptsandybpl.783:17|
 :skolemid |23|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |ValidatorAdministrationScriptsandybpl.950:13|
 :skolemid |25|
))))
 :qid |ValidatorAdministrationScriptsandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |ValidatorAdministrationScriptsandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.963:17|
 :skolemid |28|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |ValidatorAdministrationScriptsandybpl.1130:13|
 :skolemid |30|
))))
 :qid |ValidatorAdministrationScriptsandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |ValidatorAdministrationScriptsandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |ValidatorAdministrationScriptsandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |ValidatorAdministrationScriptsandybpl.1310:13|
 :skolemid |35|
))))
 :qid |ValidatorAdministrationScriptsandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |ValidatorAdministrationScriptsandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |ValidatorAdministrationScriptsandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |ValidatorAdministrationScriptsandybpl.1490:13|
 :skolemid |40|
))))
 :qid |ValidatorAdministrationScriptsandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |ValidatorAdministrationScriptsandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |ValidatorAdministrationScriptsandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |ValidatorAdministrationScriptsandybpl.1670:13|
 :skolemid |45|
))))
 :qid |ValidatorAdministrationScriptsandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |ValidatorAdministrationScriptsandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |ValidatorAdministrationScriptsandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |ValidatorAdministrationScriptsandybpl.1850:13|
 :skolemid |50|
))))
 :qid |ValidatorAdministrationScriptsandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |ValidatorAdministrationScriptsandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |ValidatorAdministrationScriptsandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |ValidatorAdministrationScriptsandybpl.2030:13|
 :skolemid |55|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |ValidatorAdministrationScriptsandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |ValidatorAdministrationScriptsandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u64'| (seq.nth v@@22 i@@27)))
 :qid |ValidatorAdministrationScriptsandybpl.2210:13|
 :skolemid |60|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2208:29|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u64''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u64'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |ValidatorAdministrationScriptsandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |ValidatorAdministrationScriptsandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u64'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |ValidatorAdministrationScriptsandybpl.2390:13|
 :skolemid |65|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2388:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |ValidatorAdministrationScriptsandybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |ValidatorAdministrationScriptsandybpl.2403:17|
 :skolemid |68|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ValidatorAdministrationScriptsandybpl.2576:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ValidatorAdministrationScriptsandybpl.2592:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorAdministrationScriptsandybpl.2639:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorAdministrationScriptsandybpl.2642:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_73812| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| stream) v@@26) 0)
 :qid |ValidatorAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2718:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |ValidatorAdministrationScriptsandybpl.2759:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.2765:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |ValidatorAdministrationScriptsandybpl.2815:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |ValidatorAdministrationScriptsandybpl.2821:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |ValidatorAdministrationScriptsandybpl.2871:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |ValidatorAdministrationScriptsandybpl.2877:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |ValidatorAdministrationScriptsandybpl.2927:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |ValidatorAdministrationScriptsandybpl.2933:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |ValidatorAdministrationScriptsandybpl.2983:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |ValidatorAdministrationScriptsandybpl.2989:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |ValidatorAdministrationScriptsandybpl.3039:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |ValidatorAdministrationScriptsandybpl.3045:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |ValidatorAdministrationScriptsandybpl.3095:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |ValidatorAdministrationScriptsandybpl.3101:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |ValidatorAdministrationScriptsandybpl.3151:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |ValidatorAdministrationScriptsandybpl.3157:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |ValidatorAdministrationScriptsandybpl.3207:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |ValidatorAdministrationScriptsandybpl.3213:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |ValidatorAdministrationScriptsandybpl.3263:60|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |ValidatorAdministrationScriptsandybpl.3269:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |ValidatorAdministrationScriptsandybpl.3319:66|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |ValidatorAdministrationScriptsandybpl.3325:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |ValidatorAdministrationScriptsandybpl.3375:60|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |ValidatorAdministrationScriptsandybpl.3381:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |ValidatorAdministrationScriptsandybpl.3431:63|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |ValidatorAdministrationScriptsandybpl.3437:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |ValidatorAdministrationScriptsandybpl.3487:79|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |ValidatorAdministrationScriptsandybpl.3493:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |ValidatorAdministrationScriptsandybpl.3543:82|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |ValidatorAdministrationScriptsandybpl.3549:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |ValidatorAdministrationScriptsandybpl.3599:88|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |ValidatorAdministrationScriptsandybpl.3605:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |ValidatorAdministrationScriptsandybpl.3655:72|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |ValidatorAdministrationScriptsandybpl.3661:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |ValidatorAdministrationScriptsandybpl.3740:61|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |ValidatorAdministrationScriptsandybpl.3917:36|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.3941:71|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@2) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@2)))
 :qid |ValidatorAdministrationScriptsandybpl.4097:42|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |ValidatorAdministrationScriptsandybpl.4110:46|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |ValidatorAdministrationScriptsandybpl.4123:64|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |ValidatorAdministrationScriptsandybpl.4136:75|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |ValidatorAdministrationScriptsandybpl.4149:72|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |ValidatorAdministrationScriptsandybpl.4203:55|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |ValidatorAdministrationScriptsandybpl.4225:46|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((account Int) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |ValidatorAdministrationScriptsandybpl.4536:15|
 :skolemid |120|
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |ValidatorAdministrationScriptsandybpl.4549:49|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |ValidatorAdministrationScriptsandybpl.4770:71|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |ValidatorAdministrationScriptsandybpl.4784:91|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |ValidatorAdministrationScriptsandybpl.4798:113|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |ValidatorAdministrationScriptsandybpl.4812:75|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |ValidatorAdministrationScriptsandybpl.4826:73|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |ValidatorAdministrationScriptsandybpl.4846:48|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |ValidatorAdministrationScriptsandybpl.4862:57|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |ValidatorAdministrationScriptsandybpl.4876:83|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |ValidatorAdministrationScriptsandybpl.4890:103|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |ValidatorAdministrationScriptsandybpl.4904:125|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |ValidatorAdministrationScriptsandybpl.4918:87|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |ValidatorAdministrationScriptsandybpl.4932:85|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |ValidatorAdministrationScriptsandybpl.4946:48|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |ValidatorAdministrationScriptsandybpl.4983:45|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |ValidatorAdministrationScriptsandybpl.4997:51|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |ValidatorAdministrationScriptsandybpl.5020:48|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |ValidatorAdministrationScriptsandybpl.6478:49|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |ValidatorAdministrationScriptsandybpl.6491:65|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |ValidatorAdministrationScriptsandybpl.6995:45|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |ValidatorAdministrationScriptsandybpl.7008:45|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30) true)
 :qid |ValidatorAdministrationScriptsandybpl.7021:55|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31) true)
 :qid |ValidatorAdministrationScriptsandybpl.7035:55|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@32))))
 :qid |ValidatorAdministrationScriptsandybpl.7055:38|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@33))))
 :qid |ValidatorAdministrationScriptsandybpl.7076:44|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))))
 :qid |ValidatorAdministrationScriptsandybpl.7127:53|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))))
 :qid |ValidatorAdministrationScriptsandybpl.7189:53|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36) true)
 :qid |ValidatorAdministrationScriptsandybpl.7215:55|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37) true)
 :qid |ValidatorAdministrationScriptsandybpl.7229:55|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@38)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@38))))
 :qid |ValidatorAdministrationScriptsandybpl.7246:38|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@39)))
 :qid |ValidatorAdministrationScriptsandybpl.7260:48|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@40)))
 :qid |ValidatorAdministrationScriptsandybpl.7274:48|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@41)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@41))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@41))))
 :qid |ValidatorAdministrationScriptsandybpl.7294:41|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@42)))
 :qid |ValidatorAdministrationScriptsandybpl.7309:53|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@43)))
 :qid |ValidatorAdministrationScriptsandybpl.7323:53|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44))))
 :qid |ValidatorAdministrationScriptsandybpl.7340:60|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45))))
 :qid |ValidatorAdministrationScriptsandybpl.7357:60|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46))))
 :qid |ValidatorAdministrationScriptsandybpl.7374:57|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47) true)
 :qid |ValidatorAdministrationScriptsandybpl.9575:68|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))))
 :qid |ValidatorAdministrationScriptsandybpl.9597:66|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))))
 :qid |ValidatorAdministrationScriptsandybpl.9623:66|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@50) true)
 :qid |ValidatorAdministrationScriptsandybpl.9956:31|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@51) true)
 :qid |ValidatorAdministrationScriptsandybpl.10300:31|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@51))
)))
(assert (forall ((s@@52 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@52)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@52)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@52))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@52))))
 :qid |ValidatorAdministrationScriptsandybpl.10319:35|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@53) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@53)))
 :qid |ValidatorAdministrationScriptsandybpl.10740:45|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@54)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@54))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@54))))
 :qid |ValidatorAdministrationScriptsandybpl.10759:50|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@55) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@55)))
 :qid |ValidatorAdministrationScriptsandybpl.10774:52|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@55))
)))
(assert (forall ((s@@56 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@56)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@56)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@56))))
 :qid |ValidatorAdministrationScriptsandybpl.10801:65|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@57)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@57)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@57))))
 :qid |ValidatorAdministrationScriptsandybpl.11186:60|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@58)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@58)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@58))))
 :qid |ValidatorAdministrationScriptsandybpl.11203:66|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@59)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@59)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@59))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@59))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@59))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@59))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@59))))
 :qid |ValidatorAdministrationScriptsandybpl.11232:50|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@60) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@60)))
 :qid |ValidatorAdministrationScriptsandybpl.11251:45|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@61)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@61)) true))
 :qid |ValidatorAdministrationScriptsandybpl.11570:87|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@62) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@62)))
 :qid |ValidatorAdministrationScriptsandybpl.11782:47|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@63)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@63)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@63))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@63))))
 :qid |ValidatorAdministrationScriptsandybpl.11802:58|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@64) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@64)))
 :qid |ValidatorAdministrationScriptsandybpl.11817:39|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@65)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@65)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@65))))
 :qid |ValidatorAdministrationScriptsandybpl.11844:58|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@66)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@66)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@66))))
 :qid |ValidatorAdministrationScriptsandybpl.11861:58|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@67) true)
 :qid |ValidatorAdministrationScriptsandybpl.11876:51|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@67))
)))
(assert (forall ((s@@68 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@68)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@68))))
 :qid |ValidatorAdministrationScriptsandybpl.11893:60|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@69)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@69)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@69))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@69))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@69))))
 :qid |ValidatorAdministrationScriptsandybpl.12196:47|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@70)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@70)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@70))))
 :qid |ValidatorAdministrationScriptsandybpl.12218:63|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@71) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@71)))
 :qid |ValidatorAdministrationScriptsandybpl.12233:57|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@72)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@72)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@72))))
 :qid |ValidatorAdministrationScriptsandybpl.12249:54|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@73) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@73)))
 :qid |ValidatorAdministrationScriptsandybpl.12263:55|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@74) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@74)))
 :qid |ValidatorAdministrationScriptsandybpl.12277:57|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@75)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@75)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@75))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@75))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@75))))
 :qid |ValidatorAdministrationScriptsandybpl.12299:56|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@76)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@76)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@76))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@76))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@76))))
 :qid |ValidatorAdministrationScriptsandybpl.12324:52|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@77) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@77)))
 :qid |ValidatorAdministrationScriptsandybpl.12340:54|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@78)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@78))))
 :qid |ValidatorAdministrationScriptsandybpl.15497:47|
 :skolemid |274|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@79)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@79))))
 :qid |ValidatorAdministrationScriptsandybpl.15521:47|
 :skolemid |275|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@80)))
 :qid |ValidatorAdministrationScriptsandybpl.15762:49|
 :skolemid |276|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@81)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@81))))
 :qid |ValidatorAdministrationScriptsandybpl.15805:49|
 :skolemid |277|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@82)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@82))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@82))))
 :qid |ValidatorAdministrationScriptsandybpl.15834:48|
 :skolemid |278|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@83)))
 :qid |ValidatorAdministrationScriptsandybpl.16129:47|
 :skolemid |279|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_66957 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_66957 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_65972 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65972 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_66169 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_66169 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_66366 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_66366 v@@31))
)))
(assert (forall ((v@@32 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_67154 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_67154 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_66760 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_66760 v@@33))
)))
(assert (forall ((v@@34 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_66563 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_66563 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_65775 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65775 v@@35))
)))
(assert (forall ((|l#0| Bool) (i@@42 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@42) |l#0|)
 :qid |ValidatorAdministrationScriptsandybpl.245:54|
 :skolemid |334|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@42))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_73812|) (|l#1| |T@[$1_Event_EventHandle]Multiset_73812|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| |l#1| handle@@0))))
(Multiset_73812 (|lambda#3| (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| |l#0@@0| handle@@0)) (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorAdministrationScriptsandybpl.2728:13|
 :skolemid |335|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@36) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@36) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@36)))
 :qid |ValidatorAdministrationScriptsandybpl.124:29|
 :skolemid |336|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@36))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t25 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3| () T@$Memory_107751)
(declare-fun $t26 () T@$1_DiemConfig_Configuration)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@3 () T@$Memory_108268)
(declare-fun $t27 () Int)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_103766)
(declare-fun $t28 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_107332)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_105594)
(declare-fun _$t3 () Int)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun _$t2 () (Seq Int))
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_107751)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_104235)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_108156)
(declare-fun $t7 () T@$1_DiemConfig_Configuration)
(declare-fun $t8 () Int)
(declare-fun $t12 () Int)
(declare-fun $t9 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t10 () T@$1_DiemConfig_Configuration)
(declare-fun $t11 () T@$1_Event_EventHandle)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_73812_| (|T@[$1_Event_EventHandle]Multiset_73812| T@$1_Event_EventHandle T@Multiset_73812) |T@[$1_Event_EventHandle]Multiset_73812|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_73812|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_73812)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|Store__T@[$1_Event_EventHandle]Multiset_73812_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_73812|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_73812)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|Store__T@[$1_Event_EventHandle]Multiset_73812_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_73812_| ?x0 ?y1))) :weight 0)))
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t56@0 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_108268)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t57@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t58@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| () T@$Memory_107751)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t3@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t59@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t60@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t54@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t61@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t53@0 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@2| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_108268)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_108268)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_108268)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_Configuration'@1| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_107751)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_107751)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t55@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t23@1 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t23@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t51@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t52@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t44@2 () T@$Mutation_110042)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t44@1 () T@$Mutation_110042)
(declare-fun |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_82385)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t45@1 () T@$Mutation_82385)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t49@1 () T@$1_DiemSystem_ValidatorInfo)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t47@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t46@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t42@0 () T@$1_ValidatorConfig_Config)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t43@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t3@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t41@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t38@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t35@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t37@1 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t34@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t29@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t30@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t26@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t28@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t25@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t24@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t22@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t14@0 () T@$Mutation_82385)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t44@0 () T@$Mutation_110042)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t45@0 () T@$Mutation_82385)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t15@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t16@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t17@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t18@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$1_DiemSystem_add_validator$0$$t19@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t20@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t21@0 () Int)
(declare-fun $t16@0 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t19 () T@$1_DiemConfig_Configuration)
(declare-fun $t20 () Int)
(declare-fun $t21 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t22 () T@$1_DiemConfig_Configuration)
(declare-fun $t23 () T@$1_Event_EventHandle)
(declare-fun $t24 () Int)
(declare-fun $t15 () Bool)
(declare-fun $t14 () (Seq Int))
(declare-fun $t13 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 () Int)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1 () T@$Memory_107332)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0 () T@$Memory_107332)
(declare-fun |Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int T@$1_SlidingNonce_SlidingNonce) |T@[Int]$1_SlidingNonce_SlidingNonce|)
(declare-fun |Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int) T@$1_SlidingNonce_SlidingNonce)
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1| () T@$1_SlidingNonce_SlidingNonce)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_104568)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_109803)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|T@[Int]$1_DiemSystem_CapabilityHolder| Int) T@$1_DiemSystem_CapabilityHolder)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_136952)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_135998)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(push 1)
(set-info :boogie-vc-id $1_ValidatorAdministrationScripts_add_validator_and_reconfigure$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 238621) (let ((anon14_Else_correct  (=> (not $abort_flag@1) (=> (and (and (= $t25 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3|) addr))))) (= $t26 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory@3) 173345816))) (and (= $t27 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t28 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t26))))) (and (=> (= (ControlFlow 0 176052) (- 0 242125)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0))) (and (=> (= (ControlFlow 0 176052) (- 0 242138)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0)))) (=> (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (and (=> (= (ControlFlow 0 176052) (- 0 242153)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) (and (=> (= (ControlFlow 0 176052) (- 0 242164)) (not (not (= (let ((t_ref (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref)) _$t2)))) (=> (not (not (= (let ((t_ref@@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@0)) _$t2))) (and (=> (= (ControlFlow 0 176052) (- 0 242178)) (not (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@0))))) 256))) (=> (not (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@1))))) 256)) (and (=> (= (ControlFlow 0 176052) (- 0 242190)) (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))))) (=> (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0))))) (and (=> (= (ControlFlow 0 176052) (- 0 242201)) (not (let (($range_0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@2))))))
(exists (($i_1 Int) ) (!  (and (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let ((v@@37 (seq.nth $range_0 $i_1)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@37) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
))))) (=> (not (let (($range_0@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@3))))))
(exists (($i_1@@0 Int) ) (!  (and (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0@@0))) (let ((v@@38 (seq.nth $range_0@@0 $i_1@@0)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@38) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
)))) (and (=> (= (ControlFlow 0 176052) (- 0 242210)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 176052) (- 0 242220)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 176052) (- 0 242232)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t6)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t6)) 0))) (and (=> (= (ControlFlow 0 176052) (- 0 242250)) (not (not (= _$t0 173345816)))) (=> (not (not (= _$t0 173345816))) (and (=> (= (ControlFlow 0 176052) (- 0 242264)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7)))) (and (=> (= (ControlFlow 0 176052) (- 0 242306)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t12))) (and (=> (= (ControlFlow 0 176052) (- 0 242318)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t12)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t12)) 0))) (and (=> (= (ControlFlow 0 176052) (- 0 242336)) (not (not (= _$t0 173345816)))) (=> (not (not (= _$t0 173345816))) (and (=> (= (ControlFlow 0 176052) (- 0 242350)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) _$t3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) _$t3)) 3))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) _$t3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) _$t3)) 3)) (and (=> (= (ControlFlow 0 176052) (- 0 242358)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0))) (and (=> (= (ControlFlow 0 176052) (- 0 242366)) (let (($range_0@@1 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3|) addr@@4))))))
(exists (($i_1@@1 Int) ) (!  (and (and (>= $i_1@@1 0) (< $i_1@@1 (seq.len $range_0@@1))) (let ((v@@39 (seq.nth $range_0@@1 $i_1@@1)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@39) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
)))) (=> (let (($range_0@@2 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3|) addr@@5))))))
(exists (($i_1@@2 Int) ) (!  (and (and (>= $i_1@@2 0) (< $i_1@@2 (seq.len $range_0@@2))) (let ((v@@40 (seq.nth $range_0@@2 $i_1@@2)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@40) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
))) (and (=> (= (ControlFlow 0 176052) (- 0 242373)) (and (and (= (seq.len $t25) (+ (seq.len $t9) 1)) (= (seq.nth $t25 (- (seq.len $t25) 1)) ($1_DiemSystem_ValidatorInfo _$t3 1 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (seq.extract $t25 (|lb#$Range| ($Range 0 (- (seq.len $t25) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t25) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t25) 1))))) (seq.extract $t9 (|lb#$Range| ($Range 0 (seq.len $t9))) (- (|ub#$Range| ($Range 0 (seq.len $t9))) (|lb#$Range| ($Range 0 (seq.len $t9)))))))) (=> (and (and (= (seq.len $t25) (+ (seq.len $t9) 1)) (= (seq.nth $t25 (- (seq.len $t25) 1)) ($1_DiemSystem_ValidatorInfo _$t3 1 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (seq.extract $t25 (|lb#$Range| ($Range 0 (- (seq.len $t25) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t25) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t25) 1))))) (seq.extract $t9 (|lb#$Range| ($Range 0 (seq.len $t9))) (- (|ub#$Range| ($Range 0 (seq.len $t9))) (|lb#$Range| ($Range 0 (seq.len $t9))))))) (and (=> (= (ControlFlow 0 176052) (- 0 242396)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10)))) (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $EmptyEventStore) $t11)))
(let ((stream_new (let ((len (|l#Multiset_73812| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@0) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28))))
(Multiset_73812 (|Store__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@0) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $EmptyEventStore) $t11 stream_new)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@41 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| expected) handle@@1)) v@@41) (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| actual) handle@@1)) v@@41))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2734:13|
 :skolemid |75|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@0 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10)))) (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $EmptyEventStore) $t11)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_73812| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@1) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28))))
(Multiset_73812 (|Store__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@1) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $EmptyEventStore) $t11 stream_new@@0)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@42 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| expected@@0) handle@@2)) v@@42) (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| actual@@0) handle@@2)) v@@42))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2734:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 176052) (- 0 242441)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10)))) (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $EmptyEventStore) $t11)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_73812| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28))))
(Multiset_73812 (|Store__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $EmptyEventStore) $t11 stream_new@@1)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@43 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| actual@@1) handle@@3)) v@@43) (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| expected@@1) handle@@3)) v@@43))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2734:13|
 :skolemid |75|
))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 172222) (- 0 241555)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0)) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) (not (= (let ((t_ref@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@1)) _$t2))) (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@6 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@6))))) 256)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0))))) (let (($range_0@@3 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@7 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@7))))))
(exists (($i_1@@3 Int) ) (!  (and (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@3))) (let ((v@@44 (seq.nth $range_0@@3 $i_1@@3)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@44) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= _$t0 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t12)) 0))) (not (= _$t0 173345816)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0)) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) (not (= (let ((t_ref@@2 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@2)) _$t2))) (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@8 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@8))))) 256)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0))))) (let (($range_0@@4 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@9 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@9))))))
(exists (($i_1@@4 Int) ) (!  (and (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@4))) (let ((v@@45 (seq.nth $range_0@@4 $i_1@@4)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@45) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= _$t0 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t12)) 0))) (not (= _$t0 173345816))) (=> (= (ControlFlow 0 172222) (- 0 241733)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0)) (= 5 $t13@0)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0)) (= 7 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)) (= 5 $t13@0))) (and (not (= (let ((t_ref@@3 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@3)) _$t2)) (= 0 $t13@0))) (and (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@10 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@10))))) 256) (= 8 $t13@0))) (and (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (= 7 $t13@0))) (and (let (($range_0@@5 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@11))))))
(exists (($i_1@@5 Int) ) (!  (and (and (>= $i_1@@5 0) (< $i_1@@5 (seq.len $range_0@@5))) (let ((v@@46 (seq.nth $range_0@@5 $i_1@@5)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@46) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
))) (= 7 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t6)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t6)) 0)) (= 3 $t13@0))) (and (not (= _$t0 173345816)) (= 2 $t13@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7))) (= 1 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t12)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t12)) 0)) (= 3 $t13@0))) (and (not (= _$t0 173345816)) (= 2 $t13@0))) (= 0 $t13@0)) (= 7 $t13@0)) (= 5 $t13@0)) (= 2 $t13@0)) (= 1 $t13@0)) (= 8 $t13@0)) (= 3 $t13@0)))))))
(let ((anon14_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t13@0 $abort_code@2) (= (ControlFlow 0 176066) 172222))) L3_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon31_correct  (=> (= inline$$1_DiemSystem_add_validator$0$$t56@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory@2) 173345816)) (=> (and (and (= inline$$1_DiemSystem_add_validator$0$$t57@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_add_validator$0$$t58@0 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t56@0)))) (and (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816)) inline$$1_DiemSystem_add_validator$0$$t3@1) (= inline$$1_DiemSystem_add_validator$0$$t59@0 inline$$1_DiemSystem_add_validator$0$$t58@0))) (=> (and (and (and (= inline$$1_DiemSystem_add_validator$0$$t60@0 inline$$1_DiemSystem_add_validator$0$$t54@0) (= inline$$1_DiemSystem_add_validator$0$$t61@0  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= inline$$1_DiemSystem_add_validator$0$$t57@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t53@0)))))) (and (= $es@0 (ite inline$$1_DiemSystem_add_validator$0$$t61@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $es) inline$$1_DiemSystem_add_validator$0$$t60@0)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_73812| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| inline$$1_DiemSystem_add_validator$0$$t59@0))))
(Multiset_73812 (|Store__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| inline$$1_DiemSystem_add_validator$0$$t59@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $es) inline$$1_DiemSystem_add_validator$0$$t60@0 stream_new@@2)))) $es)) (= $abort_code@2 $abort_code@1))) (and (and (= $abort_flag@1 $abort_flag@0) (= $es@1 $es@0)) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) (= $1_DiemConfig_Configuration_$memory@3 $1_DiemConfig_Configuration_$memory@2)))) (and (=> (= (ControlFlow 0 175254) 176066) anon14_Then_correct) (=> (= (ControlFlow 0 175254) 176052) anon14_Else_correct)))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon45_Else_correct  (=> (and (and (not |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@2|) (= $1_DiemConfig_Configuration_$memory@1 ($Memory_108268 (|Store__T@[Int]Bool_| (|domain#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1) (= (ControlFlow 0 175154) 175254))) inline$$1_DiemSystem_add_validator$0$anon31_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon45_Then_correct  (=> (and (and |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@2| (= $1_DiemConfig_Configuration_$memory@0 ($Memory_108268 (|Store__T@[Int]Bool_| (|domain#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816 |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_Configuration'@1|)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0) (= (ControlFlow 0 175266) 175254))) inline$$1_DiemSystem_add_validator$0$anon31_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon44_Else_correct  (=> (not |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@1|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| ($Memory_107751 (|Store__T@[Int]Bool_| (|domain#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1|)) (and (=> (= (ControlFlow 0 175140) 175266) inline$$1_DiemSystem_add_validator$0$anon45_Then_correct) (=> (= (ControlFlow 0 175140) 175154) inline$$1_DiemSystem_add_validator$0$anon45_Else_correct))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon44_Then_correct  (=> |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@1| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| ($Memory_107751 (|Store__T@[Int]Bool_| (|domain#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@1|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0|)) (and (=> (= (ControlFlow 0 175278) 175266) inline$$1_DiemSystem_add_validator$0$anon45_Then_correct) (=> (= (ControlFlow 0 175278) 175154) inline$$1_DiemSystem_add_validator$0$anon45_Else_correct))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon43_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t55@0) (and (=> (= (ControlFlow 0 175128) 175278) inline$$1_DiemSystem_add_validator$0$anon44_Then_correct) (=> (= (ControlFlow 0 175128) 175140) inline$$1_DiemSystem_add_validator$0$anon44_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$L7_correct  (=> (= $abort_code@2 inline$$1_DiemSystem_add_validator$0$$t23@1) (=> (and (and (= $abort_flag@1 true) (= $es@1 $es)) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) (= $1_DiemConfig_Configuration_$memory@3 $1_DiemConfig_Configuration_$memory))) (and (=> (= (ControlFlow 0 174383) 176066) anon14_Then_correct) (=> (= (ControlFlow 0 174383) 176052) anon14_Else_correct))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon43_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t55@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t51@0) 18446744073709551615)) (< inline$$1_DiemSystem_add_validator$0$$t52@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t51@0))) (= 1 inline$$1_DiemSystem_add_validator$0$$t23@0))) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 175354) 174383))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon42_Else_correct  (=> (and (and (and (not $abort_flag@0) (= inline$$1_DiemSystem_add_validator$0$$t44@2 ($Mutation_110042 (|l#$Mutation_110042| inline$$1_DiemSystem_add_validator$0$$t44@1) (|p#$Mutation_110042| inline$$1_DiemSystem_add_validator$0$$t44@1) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_110042| inline$$1_DiemSystem_add_validator$0$$t44@1)) (|v#$Mutation_82385| |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1|))))) (and (= inline$$1_DiemSystem_add_validator$0$$t3@1 (|v#$Mutation_110042| inline$$1_DiemSystem_add_validator$0$$t44@2)) (= inline$$1_DiemSystem_add_validator$0$$t51@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (= inline$$1_DiemSystem_add_validator$0$$t52@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_add_validator$0$$t53@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= inline$$1_DiemSystem_add_validator$0$$t54@0 (|$events#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t53@0)) (= inline$$1_DiemSystem_add_validator$0$$t55@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t51@0) 18446744073709551615)) (< inline$$1_DiemSystem_add_validator$0$$t52@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t51@0)))))))) (and (=> (= (ControlFlow 0 175122) 175354) inline$$1_DiemSystem_add_validator$0$anon43_Then_correct) (=> (= (ControlFlow 0 175122) 175128) inline$$1_DiemSystem_add_validator$0$anon43_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon42_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 $abort_code@1) (= (ControlFlow 0 175368) 174383))) inline$$1_DiemSystem_add_validator$0$L7_correct)))
(let ((|inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| ($Mutation_82385 (|l#$Mutation_82385| inline$$1_DiemSystem_add_validator$0$$t45@1) (|p#$Mutation_82385| inline$$1_DiemSystem_add_validator$0$$t45@1) (seq.++ (|v#$Mutation_82385| inline$$1_DiemSystem_add_validator$0$$t45@1) (seq.unit inline$$1_DiemSystem_add_validator$0$$t49@1)))) (and (=> (= (ControlFlow 0 174988) 175368) inline$$1_DiemSystem_add_validator$0$anon42_Then_correct) (=> (= (ControlFlow 0 174988) 175122) inline$$1_DiemSystem_add_validator$0$anon42_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon41_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t47@0) (=> (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t46@0) (= inline$$1_DiemSystem_add_validator$0$$t46@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (= inline$$1_DiemSystem_add_validator$0$$t46@0 inline$$1_DiemSystem_add_validator$0$$t46@0) (|$IsValid'u64'| 1)) (and (= inline$$1_DiemSystem_add_validator$0$$t49@1 ($1_DiemSystem_ValidatorInfo _$t3 1 inline$$1_DiemSystem_add_validator$0$$t42@0 inline$$1_DiemSystem_add_validator$0$$t46@0)) (= (ControlFlow 0 174994) 174988))) |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon41_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t47@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_DiemSystem_add_validator$0$$t23@0)) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 175394) 174383))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon40_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t43@0) (=> (and (|$IsValid'$1_ValidatorConfig_Config'| inline$$1_DiemSystem_add_validator$0$$t42@0) (= inline$$1_DiemSystem_add_validator$0$$t42@0 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) 0))) (=> (and (and (and (= inline$$1_DiemSystem_add_validator$0$$t42@0 inline$$1_DiemSystem_add_validator$0$$t42@0) (= inline$$1_DiemSystem_add_validator$0$$t44@1 ($Mutation_110042 ($Local 3) (as seq.empty (Seq Int)) inline$$1_DiemSystem_add_validator$0$$t3@0))) (and (= inline$$1_DiemSystem_add_validator$0$$t45@1 ($Mutation_82385 (|l#$Mutation_110042| inline$$1_DiemSystem_add_validator$0$$t44@1) (seq.++ (|p#$Mutation_110042| inline$$1_DiemSystem_add_validator$0$$t44@1) (seq.unit 1)) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_110042| inline$$1_DiemSystem_add_validator$0$$t44@1)))) (= |inline$$1_DiemSystem_add_validator$0$$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| (|v#$Mutation_82385| inline$$1_DiemSystem_add_validator$0$$t45@1)))) (and (and (= |inline$$1_DiemSystem_add_validator$0$$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| |inline$$1_DiemSystem_add_validator$0$$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1|) (= _$t3 _$t3)) (and (= inline$$1_DiemSystem_add_validator$0$$t42@0 inline$$1_DiemSystem_add_validator$0$$t42@0) (= inline$$1_DiemSystem_add_validator$0$$t47@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 174893) 175394) inline$$1_DiemSystem_add_validator$0$anon41_Then_correct) (=> (= (ControlFlow 0 174893) 174994) inline$$1_DiemSystem_add_validator$0$anon41_Else_correct)))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon40_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t43@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)) (= 5 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (= 7 inline$$1_DiemSystem_add_validator$0$$t23@0))) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 175442) 174383))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon39_Then_correct  (=> (and inline$$Not$0$dst@1 (= inline$$1_DiemSystem_add_validator$0$$t43@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)) (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (and (=> (= (ControlFlow 0 174805) 175442) inline$$1_DiemSystem_add_validator$0$anon40_Then_correct) (=> (= (ControlFlow 0 174805) 174893) inline$$1_DiemSystem_add_validator$0$anon40_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon39_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= inline$$1_DiemSystem_add_validator$0$$t41@0 inline$$1_DiemSystem_add_validator$0$$t41@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t41@0) (= (ControlFlow 0 174777) 174383))) inline$$1_DiemSystem_add_validator$0$L7_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon38_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t41@0) (= inline$$1_DiemSystem_add_validator$0$$t41@0 7)) (and (= inline$$1_DiemSystem_add_validator$0$$t41@0 inline$$1_DiemSystem_add_validator$0$$t41@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 174761) 174805) inline$$1_DiemSystem_add_validator$0$anon39_Then_correct) (=> (= (ControlFlow 0 174761) 174777) inline$$1_DiemSystem_add_validator$0$anon39_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_DiemSystem_add_validator$0$$t38@0)) (= (ControlFlow 0 174721) 174761)) inline$$1_DiemSystem_add_validator$0$anon38_Else$1_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon38_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t35@0) (=> (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| inline$$1_DiemSystem_add_validator$0$$t3@0) (let ((inline$$1_DiemSystem_add_validator$0$$range_0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t3@0)))))
(let ((inline$$1_DiemSystem_add_validator$0$$range_1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t3@0)))))
(forall ((inline$$1_DiemSystem_add_validator$0$$i_2 Int) (inline$$1_DiemSystem_add_validator$0$$i_3 Int) ) (!  (=> ($InRange inline$$1_DiemSystem_add_validator$0$$range_0 inline$$1_DiemSystem_add_validator$0$$i_2) (=> ($InRange inline$$1_DiemSystem_add_validator$0$$range_1 inline$$1_DiemSystem_add_validator$0$$i_3) (let ((inline$$1_DiemSystem_add_validator$0$i inline$$1_DiemSystem_add_validator$0$$i_2))
(let ((inline$$1_DiemSystem_add_validator$0$j inline$$1_DiemSystem_add_validator$0$$i_3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t3@0) inline$$1_DiemSystem_add_validator$0$i)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t3@0) inline$$1_DiemSystem_add_validator$0$j))) (= inline$$1_DiemSystem_add_validator$0$i inline$$1_DiemSystem_add_validator$0$j))))))
 :qid |unknown.0:0|
 :skolemid |139|
))))) (= inline$$1_DiemSystem_add_validator$0$$t3@0 (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))) (and (and (= inline$$1_DiemSystem_add_validator$0$$t3@0 inline$$1_DiemSystem_add_validator$0$$t3@0) (= inline$$1_DiemSystem_add_validator$0$$t37@1 (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t3@0))) (and (= inline$$1_DiemSystem_add_validator$0$$t38@0 (let ((inline$$1_DiemSystem_add_validator$0$$range_0@@0 inline$$1_DiemSystem_add_validator$0$$t37@1))
(exists ((inline$$1_DiemSystem_add_validator$0$$i_1 Int) ) (!  (and (and (>= inline$$1_DiemSystem_add_validator$0$$i_1 0) (< inline$$1_DiemSystem_add_validator$0$$i_1 (seq.len inline$$1_DiemSystem_add_validator$0$$range_0@@0))) (let ((inline$$1_DiemSystem_add_validator$0$v (seq.nth inline$$1_DiemSystem_add_validator$0$$range_0@@0 inline$$1_DiemSystem_add_validator$0$$i_1)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| inline$$1_DiemSystem_add_validator$0$v) _$t3)))
 :qid |unknown.0:0|
 :skolemid |140|
)))) (= (ControlFlow 0 174727) 174721)))) inline$$Not$0$anon0_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon38_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t35@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 inline$$1_DiemSystem_add_validator$0$$t23@0)) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 175470) 174383))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon37_Then_correct  (=> (and inline$$Lt$0$dst@1 (= inline$$1_DiemSystem_add_validator$0$$t35@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 174537) 175470) inline$$1_DiemSystem_add_validator$0$anon38_Then_correct) (=> (= (ControlFlow 0 174537) 174727) inline$$1_DiemSystem_add_validator$0$anon38_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon37_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= inline$$1_DiemSystem_add_validator$0$$t34@0 inline$$1_DiemSystem_add_validator$0$$t34@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t34@0) (= (ControlFlow 0 174521) 174383))) inline$$1_DiemSystem_add_validator$0$L7_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon36_Else$1_correct  (=> (|$IsValid'u64'| 7) (=> (and (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t34@0) (= inline$$1_DiemSystem_add_validator$0$$t34@0 8)) (and (= inline$$1_DiemSystem_add_validator$0$$t34@0 inline$$1_DiemSystem_add_validator$0$$t34@0) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 174505) 174537) inline$$1_DiemSystem_add_validator$0$anon37_Then_correct) (=> (= (ControlFlow 0 174505) 174521) inline$$1_DiemSystem_add_validator$0$anon37_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< inline$$1_DiemSystem_add_validator$0$$t29@0 256)) (= (ControlFlow 0 174465) 174505)) inline$$1_DiemSystem_add_validator$0$anon36_Else$1_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon36_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t30@0) (=> (and (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t29@0) (= inline$$1_DiemSystem_add_validator$0$$t29@0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))))) (and (|$IsValid'u64'| 256) (= (ControlFlow 0 174471) 174465))) inline$$Lt$0$anon0_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon36_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t30@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 inline$$1_DiemSystem_add_validator$0$$t23@0)) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 175498) 174383))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon35_Then_correct  (=> (and inline$$1_DiemSystem_add_validator$0$$t26@0 (= inline$$1_DiemSystem_add_validator$0$$t30@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 174399) 175498) inline$$1_DiemSystem_add_validator$0$anon36_Then_correct) (=> (= (ControlFlow 0 174399) 174471) inline$$1_DiemSystem_add_validator$0$anon36_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon35_Else_correct  (=> (and (and (not inline$$1_DiemSystem_add_validator$0$$t26@0) (= inline$$1_DiemSystem_add_validator$0$$t28@0 inline$$1_DiemSystem_add_validator$0$$t28@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t28@0) (= (ControlFlow 0 174377) 174383))) inline$$1_DiemSystem_add_validator$0$L7_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon34_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t25@0) (=> (and (= inline$$1_DiemSystem_add_validator$0$$t26@0  (and (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t28@0) (= inline$$1_DiemSystem_add_validator$0$$t28@0 7)) (and (= inline$$1_DiemSystem_add_validator$0$$t28@0 inline$$1_DiemSystem_add_validator$0$$t28@0) (= inline$$1_DiemSystem_add_validator$0$$t26@0 inline$$1_DiemSystem_add_validator$0$$t26@0))) (and (=> (= (ControlFlow 0 174361) 174399) inline$$1_DiemSystem_add_validator$0$anon35_Then_correct) (=> (= (ControlFlow 0 174361) 174377) inline$$1_DiemSystem_add_validator$0$anon35_Else_correct)))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon34_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t25@0 (=> (and (and (or (or (or (and (not (= _$t0 173345816)) (= 2 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_add_validator$0$$t24@0)) (= 5 inline$$1_DiemSystem_add_validator$0$$t23@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_add_validator$0$$t24@0)) 0)) (= 3 inline$$1_DiemSystem_add_validator$0$$t23@0))) (and (not (= _$t0 173345816)) (= 2 inline$$1_DiemSystem_add_validator$0$$t23@0))) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 175590) 174383))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon33_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t22@0) (=> (and (= inline$$1_DiemSystem_add_validator$0$$t24@0 _$t0) (= inline$$1_DiemSystem_add_validator$0$$t25@0  (or (or (or (not (= _$t0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_add_validator$0$$t24@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_add_validator$0$$t24@0)) 0))) (not (= _$t0 173345816))))) (and (=> (= (ControlFlow 0 174311) 175590) inline$$1_DiemSystem_add_validator$0$anon34_Then_correct) (=> (= (ControlFlow 0 174311) 174361) inline$$1_DiemSystem_add_validator$0$anon34_Else_correct))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon33_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t22@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_DiemSystem_add_validator$0$$t23@0)) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 175616) 174383))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_82385| inline$$1_DiemSystem_add_validator$0$$t14@0)) 0) (=> (and (and (= (seq.len (|p#$Mutation_110042| inline$$1_DiemSystem_add_validator$0$$t44@0)) 0) (= (seq.len (|p#$Mutation_82385| inline$$1_DiemSystem_add_validator$0$$t45@0)) 0)) (and (= inline$$1_DiemSystem_add_validator$0$$t15@0 _$t0) (= inline$$1_DiemSystem_add_validator$0$$t16@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816)))) (=> (and (and (and (= inline$$1_DiemSystem_add_validator$0$$t17@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_add_validator$0$$t18@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14)))))) (and (= inline$$1_DiemSystem_add_validator$0$$t19@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816)) (= inline$$1_DiemSystem_add_validator$0$$t20@0 (|$events#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t19@0)))) (and (and (= inline$$1_DiemSystem_add_validator$0$$t21@0 _$t0) (= _$t0 _$t0)) (and (= _$t3 _$t3) (= inline$$1_DiemSystem_add_validator$0$$t22@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 174239) 175616) inline$$1_DiemSystem_add_validator$0$anon33_Then_correct) (=> (= (ControlFlow 0 174239) 174311) inline$$1_DiemSystem_add_validator$0$anon33_Else_correct)))))))
(let ((anon13_Then_correct  (=> $t16@0 (=> (and (and (and (= $t18 _$t0) (= $t19 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t20 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t21 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@15))))))) (and (and (= $t22 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t23 (|$events#$1_DiemConfig_Configuration| $t22))) (and (= $t24 _$t0) (= (ControlFlow 0 175620) 174239)))) inline$$1_DiemSystem_add_validator$0$anon0_correct))))
(let ((anon13_Else_correct  (=> (not $t16@0) (=> (and (and (|$IsValid'u64'| 0) (= 0 0)) (and (= $t13@0 0) (= (ControlFlow 0 171634) 172222))) L3_correct))))
(let ((anon12_Else_correct  (=> (not $t15) (=> (and (and (|$IsValid'vec'u8''| $t14) (= $t14 (let ((t_ref@@4 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@4)))) (and (= $t16@0 (= $t14 _$t2)) (= $t16@0 $t16@0))) (and (=> (= (ControlFlow 0 171612) 175620) anon13_Then_correct) (=> (= (ControlFlow 0 171612) 171634) anon13_Else_correct))))))
(let ((anon12_Then_correct  (=> $t15 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)) (= 5 $t13)) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 176094) 172222))) L3_correct))))
(let ((anon11_Else_correct  (=> (and (not $abort_flag@0) (= $t15  (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) (and (=> (= (ControlFlow 0 171580) 176094) anon12_Then_correct) (=> (= (ControlFlow 0 171580) 171612) anon12_Else_correct)))))
(let ((anon11_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t13@0 $abort_code@1) (= (ControlFlow 0 176108) 172222))) L3_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct  (=> (and (= $abort_flag@0 true) (= $abort_code@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1)) (and (=> (= (ControlFlow 0 171504) 176108) anon11_Then_correct) (=> (= (ControlFlow 0 171504) 171580) anon11_Else_correct)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct  (=> (and (and (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= (ControlFlow 0 171498) 171504))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0)) (= 5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0) (= (ControlFlow 0 171554) 171504))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 171510) 176108) anon11_Then_correct) (=> (= (ControlFlow 0 171510) 171580) anon11_Else_correct))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct  (=> (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0) (=> (and (and (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0)) (and (|$IsValid'u64'| 0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 0)))) (and (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 7)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1)))) (and (=> (= (ControlFlow 0 171482) 171510) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct) (=> (= (ControlFlow 0 171482) 171498) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct  (=> (not |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1|) (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@1 ($Memory_107332 (|Store__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0 false) (|contents#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory))) (= (ControlFlow 0 171424) 171482)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct  (=> |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@0 ($Memory_107332 (|Store__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0 true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0 |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1|))) (= (ControlFlow 0 171524) 171482)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct  (=> (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0) (and (=> (= (ControlFlow 0 171410) 171524) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct) (=> (= (ControlFlow 0 171410) 171424) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct  (=> (= _$t0 _$t0) (=> (and (= _$t1 _$t1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0)))) (and (=> (= (ControlFlow 0 171404) 171554) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct) (=> (= (ControlFlow 0 171404) 171410) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104568| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@16) (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) addr@@16)) 4))))
 :qid |ValidatorAdministrationScriptsandybpl.13256:20|
 :skolemid |196|
))) (and (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@17) (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) addr@@17)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13260:20|
 :skolemid |197|
)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@18) (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) addr@@18)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13264:20|
 :skolemid |198|
)))) (=> (and (and (and (and (and (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@19) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@19)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) addr@@19)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13268:20|
 :skolemid |199|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_109803| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (let (($range_0@@6 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@20 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@20))))))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@6) (let ((i1 $i_1@@6))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@21 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@21)))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@21 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@21)))) i1)))) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13288:151|
 :skolemid |200|
)))) (and (let (($range_0@@7 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@22 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@22))))))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@7) (let ((i1@@0 $i_1@@7))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@23 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@23)))) i1@@0)) 1)))
 :qid |ValidatorAdministrationScriptsandybpl.13293:151|
 :skolemid |201|
))) (|$IsValid'address'| _$t0)))) (and (and (and (|$IsValid'u64'| _$t1) (|$IsValid'vec'u8''| _$t2)) (and (|$IsValid'address'| _$t3) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |ValidatorAdministrationScriptsandybpl.13309:20|
 :skolemid |202|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)))) (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |ValidatorAdministrationScriptsandybpl.13313:20|
 :skolemid |203|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@1)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@1) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@1))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@1))) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.13317:20|
 :skolemid |204|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@2)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@2))
 :qid |ValidatorAdministrationScriptsandybpl.13321:20|
 :skolemid |205|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) $a_0@@3)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@3))
 :qid |ValidatorAdministrationScriptsandybpl.13325:20|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) $a_0@@3))
)))))) (and (and (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@4)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@4))
 :qid |ValidatorAdministrationScriptsandybpl.13329:20|
 :skolemid |207|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@5)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@5) (let (($range_1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@5))))))
(let (($range_2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@5))))))
(forall (($i_3 Int) ($i_4 Int) ) (!  (=> ($InRange $range_1 $i_3) (=> ($InRange $range_2 $i_4) (let ((i@@43 $i_3))
(let ((j@@10 $i_4))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@5)) i@@43)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@5)) j@@10))) (= i@@43 j@@10))))))
 :qid |ValidatorAdministrationScriptsandybpl.13334:367|
 :skolemid |208|
))))))
 :qid |ValidatorAdministrationScriptsandybpl.13333:20|
 :skolemid |209|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@5))
))) (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_109803| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@6)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@6))
 :qid |ValidatorAdministrationScriptsandybpl.13339:20|
 :skolemid |210|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_109803| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@6))
)) (= $t6 _$t0))) (and (and (= $t7 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t8 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t9 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@24 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@24))))) (= $t10 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816))))) (and (and (and (= $t11 (|$events#$1_DiemConfig_Configuration| $t10)) (= $t12 _$t0)) (and (let ((addr@@25 _$t0))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_136952| $1_DiemAccount_DiemAccount_$memory) addr@@25)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_135998| $1_AccountFreezing_FreezingBit_$memory) addr@@25) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_135998| $1_AccountFreezing_FreezingBit_$memory) addr@@25)))))) (= _$t0 _$t0))) (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= _$t3 _$t3) (= (ControlFlow 0 171558) 171404)))))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_73812| stream@@4) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@4) v@@47) 0)
 :qid |ValidatorAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 170375) 171558)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 238621) 170375) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@2 () T@$Memory_105594)
(declare-fun _$t1@@0 () Int)
(declare-fun _$t2@@0 () (Seq Int))
(declare-fun _$t3@@0 () (Seq Int))
(declare-fun _$t4 () (Seq Int))
(declare-fun _$t0@@0 () Int)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@1 () T@$Memory_105594)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0 () T@$Memory_105594)
(declare-fun |Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int T@$1_ValidatorConfig_ValidatorConfig) |T@[Int]$1_ValidatorConfig_ValidatorConfig|)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t5 () Bool)
(declare-fun $t6@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_ValidatorAdministrationScripts_register_validator_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 242663) (let ((anon5_correct  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory@2) _$t1@@0) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory@2) _$t1@@0)))) 0))) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory@2) _$t1@@0) ($1_ValidatorConfig_ValidatorConfig (|$1_Option_Option'$1_ValidatorConfig_Config'| (seq.unit ($1_ValidatorConfig_Config _$t2@@0 _$t3@@0 _$t4))) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0))))) (and (=> (= (ControlFlow 0 177015) (- 0 243265)) (not (not (= _$t0@@0 (let ((t_ref@@5 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@5)) 0)))))) (=> (not (not (= _$t0@@0 (let ((t_ref@@6 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@6)) 0))))) (and (=> (= (ControlFlow 0 177015) (- 0 243281)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0))) (and (=> (= (ControlFlow 0 177015) (- 0 243291)) (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0))))) (=> (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0)))) (and (=> (= (ControlFlow 0 177015) (- 0 243302)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0))) (and (=> (= (ControlFlow 0 177015) (- 0 243313)) (not (not (= _$t0@@0 (let ((t_ref@@7 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@7)) 0)))))) (=> (not (not (= _$t0@@0 (let ((t_ref@@8 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@8)) 0))))) (=> (= (ControlFlow 0 177015) (- 0 243329)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory@2) _$t1@@0) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory@2) _$t1@@0)))) 0)))))))))))))))))
(let ((anon8_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_ValidatorConfig_ValidatorConfig_$memory@1 ($Memory_105594 (|Store__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0 false) (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory)))) (and (= $1_ValidatorConfig_ValidatorConfig_$memory@2 $1_ValidatorConfig_ValidatorConfig_$memory@1) (= (ControlFlow 0 176901) 177015))) anon5_correct)))
(let ((anon8_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_ValidatorConfig_ValidatorConfig_$memory@0 ($Memory_105594 (|Store__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0 true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0 |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0|)))) (and (= $1_ValidatorConfig_ValidatorConfig_$memory@2 $1_ValidatorConfig_ValidatorConfig_$memory@0) (= (ControlFlow 0 177027) 177015))) anon5_correct)))
(let ((anon7_Else_correct  (=> (not $t5) (and (=> (= (ControlFlow 0 176889) 177027) anon8_Then_correct) (=> (= (ControlFlow 0 176889) 176901) anon8_Else_correct)))))
(let ((anon7_Then_correct  (=> $t5 (=> (and (or (or (or (and (not (= _$t0@@0 (let ((t_ref@@9 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@9)) 0)))) (= 7 $t6@@0)) (and (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0)) (= 7 $t6@@0))) (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0))) (= 7 $t6@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)) (= 5 $t6@@0))) (= $t6@@0 $t6@@0)) (and (=> (= (ControlFlow 0 177291) (- 0 243031)) (or (or (or (or (not (= _$t0@@0 (let ((t_ref@@10 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@10)) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0))) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0))) (not (= _$t0@@0 (let ((t_ref@@11 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@11)) 0)))))) (=> (or (or (or (or (not (= _$t0@@0 (let ((t_ref@@12 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@12)) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0))) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0))) (not (= _$t0@@0 (let ((t_ref@@13 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@13)) 0))))) (=> (= (ControlFlow 0 177291) (- 0 243078)) (or (or (or (or (or (or (and (not (= _$t0@@0 (let ((t_ref@@14 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@14)) 0)))) (= 7 $t6@@0)) (and (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0)) (= 7 $t6@@0))) (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0))) (= 7 $t6@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)) (= 5 $t6@@0))) (and (not (= _$t0@@0 (let ((t_ref@@15 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@15)) 0)))) (= 7 $t6@@0))) (= 7 $t6@@0)) (= 5 $t6@@0)))))))))
(let ((anon0$1_correct@@0  (=> (and (and (and (and (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@26) (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) addr@@26)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13697:20|
 :skolemid |211|
)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@27) (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) addr@@27)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13701:20|
 :skolemid |212|
))) (and (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@28) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@28)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) addr@@28)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13705:20|
 :skolemid |213|
)) (|$IsValid'address'| _$t0@@0))) (and (and (|$IsValid'address'| _$t1@@0) (|$IsValid'vec'u8''| _$t2@@0)) (and (|$IsValid'vec'u8''| _$t3@@0) (|$IsValid'vec'u8''| _$t4)))) (and (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@7)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@7) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@7))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@7))) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.13723:20|
 :skolemid |214|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@7))
)) (let ((addr@@29 _$t0@@0))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_136952| $1_DiemAccount_DiemAccount_$memory) addr@@29)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_135998| $1_AccountFreezing_FreezingBit_$memory) addr@@29) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_135998| $1_AccountFreezing_FreezingBit_$memory) addr@@29))))))) (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0))) (and (and (= _$t2@@0 _$t2@@0) (= _$t3@@0 _$t3@@0)) (and (= _$t4 _$t4) (= $t5  (or (or (or (not (= _$t0@@0 (let ((t_ref@@16 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@16)) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0))) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))))))) (and (=> (= (ControlFlow 0 176881) 177291) anon7_Then_correct) (=> (= (ControlFlow 0 176881) 176889) anon7_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_73812| stream@@5) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@5) v@@48) 0)
 :qid |ValidatorAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 176634) 176881)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 242663) 176634) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0)))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t25@@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3@@0| () T@$Memory_107751)
(declare-fun $t26@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@3@@0 () T@$Memory_108268)
(declare-fun $t27@@0 () Int)
(declare-fun $t28@@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun _$t0@@1 () Int)
(declare-fun _$t1@@1 () Int)
(declare-fun _$t3@@1 () Int)
(declare-fun _$t2@@1 () (Seq Int))
(declare-fun $t6@@1 () Int)
(declare-fun $t7@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t8@@0 () Int)
(declare-fun $t12@@0 () Int)
(declare-fun $t9@@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $es@1@@0 () T@$EventStore)
(declare-fun $t10@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t11@@0 () T@$1_Event_EventHandle)
(declare-fun $t13@0@@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t37@0 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@0 () T@$Memory_108268)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t38@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t39@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| () T@$Memory_107751)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t2@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t40@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t41@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t35@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t42@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t34@0 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun |inline$$1_DiemSystem_remove_validator$0$$temp_0'bool'@2| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@0 () T@$Memory_108268)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@0 () T@$Memory_108268)
(declare-fun |inline$$1_DiemSystem_remove_validator$0$$temp_0'$1_DiemConfig_Configuration'@1| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_DiemSystem_remove_validator$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0| () T@$Memory_107751)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0| () T@$Memory_107751)
(declare-fun |inline$$1_DiemSystem_remove_validator$0$$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t36@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t15@1 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t15@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t32@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t33@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t28@2 () T@$Mutation_110042)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t28@1 () T@$Mutation_110042)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| () T@$Mutation_82385)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@0| () T@$Mutation_82385)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t26@0 () Int)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$e@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_82385)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t29@1 () T@$Mutation_82385)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t27@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t22@0 () |T@$1_Option_Option'u64'|)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t2@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t23@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t25@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t18@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t20@1 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t21@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t17@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t16@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t14@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t28@0 () T@$Mutation_110042)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t29@0 () T@$Mutation_82385)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t7@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t8@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t9@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t10@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t11@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t12@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t13@0 () Int)
(declare-fun $t16@0@@0 () Bool)
(declare-fun $t18@@0 () Int)
(declare-fun $t19@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t20@@0 () Int)
(declare-fun $t21@@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t22@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@0 () T@$1_Event_EventHandle)
(declare-fun $t24@@0 () Int)
(declare-fun $t15@@0 () Bool)
(declare-fun $t14@@0 () (Seq Int))
(declare-fun $t13@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0 () Int)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 () Int)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@0| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1@@0 () T@$Memory_107332)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0@@0 () T@$Memory_107332)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1@@0| () T@$1_SlidingNonce_SlidingNonce)
(push 1)
(set-info :boogie-vc-id $1_ValidatorAdministrationScripts_remove_validator_and_reconfigure$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 243344) (let ((anon14_Else_correct@@0  (=> (not $abort_flag@2) (=> (and (and (= $t25@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@30 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3@@0|) addr@@30))))) (= $t26@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory@3@@0) 173345816))) (and (= $t27@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t28@@0 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t26@@0))))) (and (=> (= (ControlFlow 0 182586) (- 0 246608)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@1))) (and (=> (= (ControlFlow 0 182586) (- 0 246621)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@1 _$t1@@1) 0)))) (=> (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@1 _$t1@@1) 0))) (and (=> (= (ControlFlow 0 182586) (- 0 246636)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1))) (and (=> (= (ControlFlow 0 182586) (- 0 246647)) (not (not (= (let ((t_ref@@17 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@17)) _$t2@@1)))) (=> (not (not (= (let ((t_ref@@18 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@18)) _$t2@@1))) (and (=> (= (ControlFlow 0 182586) (- 0 246661)) (not (not (let (($range_0@@8 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@31 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@31))))))
(exists (($i_1@@8 Int) ) (!  (and (and (>= $i_1@@8 0) (< $i_1@@8 (seq.len $range_0@@8))) (let ((v@@49 (seq.nth $range_0@@8 $i_1@@8)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@49) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
)))))) (=> (not (not (let (($range_0@@9 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@32 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@32))))))
(exists (($i_1@@9 Int) ) (!  (and (and (>= $i_1@@9 0) (< $i_1@@9 (seq.len $range_0@@9))) (let ((v@@50 (seq.nth $range_0@@9 $i_1@@9)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@50) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
))))) (and (=> (= (ControlFlow 0 182586) (- 0 246672)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t6@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t6@@1))) (and (=> (= (ControlFlow 0 182586) (- 0 246684)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t6@@1)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t6@@1)) 0))) (and (=> (= (ControlFlow 0 182586) (- 0 246702)) (not (not (= _$t0@@1 173345816)))) (=> (not (not (= _$t0@@1 173345816))) (and (=> (= (ControlFlow 0 182586) (- 0 246716)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 182586) (- 0 246726)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7@@0) 18446744073709551615)) (< $t8@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@0))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7@@0) 18446744073709551615)) (< $t8@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@0)))) (and (=> (= (ControlFlow 0 182586) (- 0 246768)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t12@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t12@@0))) (and (=> (= (ControlFlow 0 182586) (- 0 246780)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t12@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t12@@0)) 0))) (and (=> (= (ControlFlow 0 182586) (- 0 246798)) (not (not (= _$t0@@1 173345816)))) (=> (not (not (= _$t0@@1 173345816))) (and (=> (= (ControlFlow 0 182586) (- 0 246812)) (let (($range_0@@10 $t25@@0))
(forall (($i_1@@10 Int) ) (!  (=> (and (>= $i_1@@10 0) (< $i_1@@10 (seq.len $range_0@@10))) (let ((vi (seq.nth $range_0@@10 $i_1@@10)))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| vi) _$t3@@1)) (let (($range_2@@0 $t9@@0))
(exists (($i_3@@0 Int) ) (!  (and (and (>= $i_3@@0 0) (< $i_3@@0 (seq.len $range_2@@0))) (let ((ovi (seq.nth $range_2@@0 $i_3@@0)))
(= vi ovi)))
 :qid |ValidatorAdministrationScriptsandybpl.14265:106|
 :skolemid |230|
))))))
 :qid |ValidatorAdministrationScriptsandybpl.14264:38|
 :skolemid |231|
)))) (=> (let (($range_0@@11 $t25@@0))
(forall (($i_1@@11 Int) ) (!  (=> (and (>= $i_1@@11 0) (< $i_1@@11 (seq.len $range_0@@11))) (let ((vi@@0 (seq.nth $range_0@@11 $i_1@@11)))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| vi@@0) _$t3@@1)) (let (($range_2@@1 $t9@@0))
(exists (($i_3@@1 Int) ) (!  (and (and (>= $i_3@@1 0) (< $i_3@@1 (seq.len $range_2@@1))) (let ((ovi@@0 (seq.nth $range_2@@1 $i_3@@1)))
(= vi@@0 ovi@@0)))
 :qid |ValidatorAdministrationScriptsandybpl.14265:106|
 :skolemid |230|
))))))
 :qid |ValidatorAdministrationScriptsandybpl.14264:38|
 :skolemid |231|
))) (and (=> (= (ControlFlow 0 182586) (- 0 246878)) (not (let (($range_0@@12 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@33 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3@@0|) addr@@33))))))
(exists (($i_1@@12 Int) ) (!  (and (and (>= $i_1@@12 0) (< $i_1@@12 (seq.len $range_0@@12))) (let ((v@@51 (seq.nth $range_0@@12 $i_1@@12)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@51) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
))))) (=> (not (let (($range_0@@13 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@34 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3@@0|) addr@@34))))))
(exists (($i_1@@13 Int) ) (!  (and (and (>= $i_1@@13 0) (< $i_1@@13 (seq.len $range_0@@13))) (let ((v@@52 (seq.nth $range_0@@13 $i_1@@13)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@52) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
)))) (and (=> (= (ControlFlow 0 182586) (- 0 246887)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@1@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@0)))) (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $EmptyEventStore) $t11@@0)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_73812| stream@@6)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@6) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0))))
(Multiset_73812 (|Store__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@6) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $EmptyEventStore) $t11@@0 stream_new@@3)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@6 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| expected@@2) handle@@6)) (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| actual@@2) handle@@6))) (forall ((v@@53 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| expected@@2) handle@@6)) v@@53) (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| actual@@2) handle@@6)) v@@53))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2734:13|
 :skolemid |75|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@1@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@0)))) (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $EmptyEventStore) $t11@@0)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_73812| stream@@7)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@7) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0))))
(Multiset_73812 (|Store__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@7) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $EmptyEventStore) $t11@@0 stream_new@@4)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@7 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| expected@@3) handle@@7)) (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| actual@@3) handle@@7))) (forall ((v@@54 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| expected@@3) handle@@7)) v@@54) (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| actual@@3) handle@@7)) v@@54))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2734:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 182586) (- 0 246932)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@1@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@0)))) (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $EmptyEventStore) $t11@@0)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_73812| stream@@8)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@8) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0))))
(Multiset_73812 (|Store__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@8) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $EmptyEventStore) $t11@@0 stream_new@@5)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@8 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| actual@@4) handle@@8)) (|l#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| expected@@4) handle@@8))) (forall ((v@@55 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| actual@@4) handle@@8)) v@@55) (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| expected@@4) handle@@8)) v@@55))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2734:13|
 :skolemid |75|
))))))))))))))))))))))))))))))))))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 179220) (- 0 246089)) (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@1)) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@1 _$t1@@1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1))) (not (= (let ((t_ref@@19 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@19)) _$t2@@1))) (not (let (($range_0@@14 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@35 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@35))))))
(exists (($i_1@@14 Int) ) (!  (and (and (>= $i_1@@14 0) (< $i_1@@14 (seq.len $range_0@@14))) (let ((v@@56 (seq.nth $range_0@@14 $i_1@@14)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@56) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t6@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t6@@1)) 0))) (not (= _$t0@@1 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7@@0) 18446744073709551615)) (< $t8@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t12@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t12@@0)) 0))) (not (= _$t0@@1 173345816)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@1)) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@1 _$t1@@1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1))) (not (= (let ((t_ref@@20 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@20)) _$t2@@1))) (not (let (($range_0@@15 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@36 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@36))))))
(exists (($i_1@@15 Int) ) (!  (and (and (>= $i_1@@15 0) (< $i_1@@15 (seq.len $range_0@@15))) (let ((v@@57 (seq.nth $range_0@@15 $i_1@@15)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@57) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t6@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t6@@1)) 0))) (not (= _$t0@@1 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7@@0) 18446744073709551615)) (< $t8@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t12@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t12@@0)) 0))) (not (= _$t0@@1 173345816))) (=> (= (ControlFlow 0 179220) (- 0 246252)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@1)) (= 5 $t13@0@@0)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@1 _$t1@@1) 0)) (= 7 $t13@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)) (= 5 $t13@0@@0))) (and (not (= (let ((t_ref@@21 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@21)) _$t2@@1)) (= 0 $t13@0@@0))) (and (not (let (($range_0@@16 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@37 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@37))))))
(exists (($i_1@@16 Int) ) (!  (and (and (>= $i_1@@16 0) (< $i_1@@16 (seq.len $range_0@@16))) (let ((v@@58 (seq.nth $range_0@@16 $i_1@@16)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@58) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4965:125|
 :skolemid |135|
)))) (= 7 $t13@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t6@@1)) (= 5 $t13@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t6@@1)) 0)) (= 3 $t13@0@@0))) (and (not (= _$t0@@1 173345816)) (= 2 $t13@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t13@0@@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7@@0) 18446744073709551615)) (< $t8@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@0))) (= 1 $t13@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) $t12@@0)) (= 5 $t13@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $t12@@0)) 0)) (= 3 $t13@0@@0))) (and (not (= _$t0@@1 173345816)) (= 2 $t13@0@@0))) (= 0 $t13@0@@0)) (= 7 $t13@0@@0)) (= 5 $t13@0@@0)) (= 2 $t13@0@@0)) (= 1 $t13@0@@0)) (= 3 $t13@0@@0)))))))
(let ((anon14_Then_correct@@0  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t13@0@@0 $abort_code@3) (= (ControlFlow 0 182600) 179220))) L3_correct@@0)))
(let ((inline$$1_DiemSystem_remove_validator$0$anon21_correct  (=> (= inline$$1_DiemSystem_remove_validator$0$$t37@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory@2@@0) 173345816)) (=> (and (and (= inline$$1_DiemSystem_remove_validator$0$$t38@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_remove_validator$0$$t39@0 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t37@0)))) (and (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) inline$$1_DiemSystem_remove_validator$0$$t2@1) (= inline$$1_DiemSystem_remove_validator$0$$t40@0 inline$$1_DiemSystem_remove_validator$0$$t39@0))) (=> (and (and (and (= inline$$1_DiemSystem_remove_validator$0$$t41@0 inline$$1_DiemSystem_remove_validator$0$$t35@0) (= inline$$1_DiemSystem_remove_validator$0$$t42@0  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= inline$$1_DiemSystem_remove_validator$0$$t38@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t34@0)))))) (and (= $es@0@@0 (ite inline$$1_DiemSystem_remove_validator$0$$t42@0 (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $es) inline$$1_DiemSystem_remove_validator$0$$t41@0)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_73812| stream@@9)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| inline$$1_DiemSystem_remove_validator$0$$t40@0))))
(Multiset_73812 (|Store__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| inline$$1_DiemSystem_remove_validator$0$$t40@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $es) inline$$1_DiemSystem_remove_validator$0$$t41@0 stream_new@@6)))) $es)) (= $es@1@@0 $es@0@@0))) (and (and (= $abort_flag@2 $abort_flag@1@@0) (= $abort_code@3 $abort_code@2@@0)) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) (= $1_DiemConfig_Configuration_$memory@3@@0 $1_DiemConfig_Configuration_$memory@2@@0)))) (and (=> (= (ControlFlow 0 181860) 182600) anon14_Then_correct@@0) (=> (= (ControlFlow 0 181860) 182586) anon14_Else_correct@@0)))))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon30_Else_correct  (=> (and (and (not |inline$$1_DiemSystem_remove_validator$0$$temp_0'bool'@2|) (= $1_DiemConfig_Configuration_$memory@1@@0 ($Memory_108268 (|Store__T@[Int]Bool_| (|domain#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2@@0 $1_DiemConfig_Configuration_$memory@1@@0) (= (ControlFlow 0 181760) 181860))) inline$$1_DiemSystem_remove_validator$0$anon21_correct)))
(let ((inline$$1_DiemSystem_remove_validator$0$anon30_Then_correct  (=> (and (and |inline$$1_DiemSystem_remove_validator$0$$temp_0'bool'@2| (= $1_DiemConfig_Configuration_$memory@0@@0 ($Memory_108268 (|Store__T@[Int]Bool_| (|domain#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816 |inline$$1_DiemSystem_remove_validator$0$$temp_0'$1_DiemConfig_Configuration'@1|)))) (and (= $1_DiemConfig_Configuration_$memory@2@@0 $1_DiemConfig_Configuration_$memory@0@@0) (= (ControlFlow 0 181872) 181860))) inline$$1_DiemSystem_remove_validator$0$anon21_correct)))
(let ((inline$$1_DiemSystem_remove_validator$0$anon29_Else_correct  (=> (not |inline$$1_DiemSystem_remove_validator$0$$temp_0'bool'@1|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0| ($Memory_107751 (|Store__T@[Int]Bool_| (|domain#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0|)) (and (=> (= (ControlFlow 0 181746) 181872) inline$$1_DiemSystem_remove_validator$0$anon30_Then_correct) (=> (= (ControlFlow 0 181746) 181760) inline$$1_DiemSystem_remove_validator$0$anon30_Else_correct))))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon29_Then_correct  (=> |inline$$1_DiemSystem_remove_validator$0$$temp_0'bool'@1| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0| ($Memory_107751 (|Store__T@[Int]Bool_| (|domain#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |inline$$1_DiemSystem_remove_validator$0$$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@1|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0|)) (and (=> (= (ControlFlow 0 181884) 181872) inline$$1_DiemSystem_remove_validator$0$anon30_Then_correct) (=> (= (ControlFlow 0 181884) 181760) inline$$1_DiemSystem_remove_validator$0$anon30_Else_correct))))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon28_Else_correct  (=> (not inline$$1_DiemSystem_remove_validator$0$$t36@0) (and (=> (= (ControlFlow 0 181734) 181884) inline$$1_DiemSystem_remove_validator$0$anon29_Then_correct) (=> (= (ControlFlow 0 181734) 181746) inline$$1_DiemSystem_remove_validator$0$anon29_Else_correct)))))
(let ((inline$$1_DiemSystem_remove_validator$0$L3_correct  (=> (= $es@1@@0 $es) (=> (and (and (= $abort_flag@2 true) (= $abort_code@3 inline$$1_DiemSystem_remove_validator$0$$t15@1)) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) (= $1_DiemConfig_Configuration_$memory@3@@0 $1_DiemConfig_Configuration_$memory))) (and (=> (= (ControlFlow 0 181334) 182600) anon14_Then_correct@@0) (=> (= (ControlFlow 0 181334) 182586) anon14_Else_correct@@0))))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon28_Then_correct  (=> inline$$1_DiemSystem_remove_validator$0$$t36@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t32@0) 18446744073709551615)) (< inline$$1_DiemSystem_remove_validator$0$$t33@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t32@0))) (= 1 inline$$1_DiemSystem_remove_validator$0$$t15@0))) (= inline$$1_DiemSystem_remove_validator$0$$t15@0 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 inline$$1_DiemSystem_remove_validator$0$$t15@0) (= (ControlFlow 0 181960) 181334))) inline$$1_DiemSystem_remove_validator$0$L3_correct))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon27_Else_correct  (=> (and (and (and (not $abort_flag@1@@0) (= inline$$1_DiemSystem_remove_validator$0$$t28@2 ($Mutation_110042 (|l#$Mutation_110042| inline$$1_DiemSystem_remove_validator$0$$t28@1) (|p#$Mutation_110042| inline$$1_DiemSystem_remove_validator$0$$t28@1) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_110042| inline$$1_DiemSystem_remove_validator$0$$t28@1)) (|v#$Mutation_82385| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2|))))) (and (= inline$$1_DiemSystem_remove_validator$0$$t2@1 (|v#$Mutation_110042| inline$$1_DiemSystem_remove_validator$0$$t28@2)) (= inline$$1_DiemSystem_remove_validator$0$$t32@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (= inline$$1_DiemSystem_remove_validator$0$$t33@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_remove_validator$0$$t34@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= inline$$1_DiemSystem_remove_validator$0$$t35@0 (|$events#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t34@0)) (= inline$$1_DiemSystem_remove_validator$0$$t36@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t32@0) 18446744073709551615)) (< inline$$1_DiemSystem_remove_validator$0$$t33@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t32@0)))))))) (and (=> (= (ControlFlow 0 181728) 181960) inline$$1_DiemSystem_remove_validator$0$anon28_Then_correct) (=> (= (ControlFlow 0 181728) 181734) inline$$1_DiemSystem_remove_validator$0$anon28_Else_correct)))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon27_Then_correct  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 $abort_code@2@@0) (= (ControlFlow 0 181974) 181334))) inline$$1_DiemSystem_remove_validator$0$L3_correct)))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|  (=> (= $abort_code@2@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1@@0 true) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@0|)) (and (=> (= (ControlFlow 0 181592) 181974) inline$$1_DiemSystem_remove_validator$0$anon27_Then_correct) (=> (= (ControlFlow 0 181592) 181728) inline$$1_DiemSystem_remove_validator$0$anon27_Else_correct))))))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|  (=> (and (not (and (>= inline$$1_DiemSystem_remove_validator$0$$t26@0 0) (< inline$$1_DiemSystem_remove_validator$0$$t26@0 (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|)))) (= (ControlFlow 0 181590) 181592)) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|  (=> (and (and (and (>= inline$$1_DiemSystem_remove_validator$0$$t26@0 0) (< inline$$1_DiemSystem_remove_validator$0$$t26@0 (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$e@1| (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0))) (and (and (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1| ($Mutation_82385 (|l#$Mutation_82385| inline$$1_DiemSystem_remove_validator$0$$t29@1) (|p#$Mutation_82385| inline$$1_DiemSystem_remove_validator$0$$t29@1) (seq.extract (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) 0 (- inline$$1_DiemSystem_remove_validator$0$$t26@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1))) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) (+ inline$$1_DiemSystem_remove_validator$0$$t26@0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1))))) (+ inline$$1_DiemSystem_remove_validator$0$$t26@0 1)))) 0 (- (- (seq.len (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) 0 (- inline$$1_DiemSystem_remove_validator$0$$t26@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1))) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) (+ inline$$1_DiemSystem_remove_validator$0$$t26@0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1))))) (+ inline$$1_DiemSystem_remove_validator$0$$t26@0 1))))) 1) 0)))) (= $abort_code@2@@0 $abort_code@1@@0)) (and (= $abort_flag@1@@0 $abort_flag@0@@0) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1|)))) (and (=> (= (ControlFlow 0 181540) 181974) inline$$1_DiemSystem_remove_validator$0$anon27_Then_correct) (=> (= (ControlFlow 0 181540) 181728) inline$$1_DiemSystem_remove_validator$0$anon27_Else_correct)))))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (|v#$Mutation_82385| inline$$1_DiemSystem_remove_validator$0$$t29@1)) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (and (=> (= (ControlFlow 0 181508) 181590) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 181508) 181540) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|)))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon26_Else_correct  (=> (not inline$$1_DiemSystem_remove_validator$0$$t27@0) (=> (and (|$IsValid'u64'| inline$$1_DiemSystem_remove_validator$0$$t26@0) (= inline$$1_DiemSystem_remove_validator$0$$t26@0 (seq.nth (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0) 0))) (=> (and (and (= inline$$1_DiemSystem_remove_validator$0$$t26@0 inline$$1_DiemSystem_remove_validator$0$$t26@0) (= inline$$1_DiemSystem_remove_validator$0$$t28@1 ($Mutation_110042 ($Local 2) (as seq.empty (Seq Int)) inline$$1_DiemSystem_remove_validator$0$$t2@0))) (and (= inline$$1_DiemSystem_remove_validator$0$$t29@1 ($Mutation_82385 (|l#$Mutation_110042| inline$$1_DiemSystem_remove_validator$0$$t28@1) (seq.++ (|p#$Mutation_110042| inline$$1_DiemSystem_remove_validator$0$$t28@1) (seq.unit 1)) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_110042| inline$$1_DiemSystem_remove_validator$0$$t28@1)))) (= (ControlFlow 0 181600) 181508))) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon26_Then_correct  (=> inline$$1_DiemSystem_remove_validator$0$$t27@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0)) 0) (= 7 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (= inline$$1_DiemSystem_remove_validator$0$$t15@0 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 inline$$1_DiemSystem_remove_validator$0$$t15@0) (= (ControlFlow 0 181998) 181334))) inline$$1_DiemSystem_remove_validator$0$L3_correct))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon25_Then_correct  (=> (and inline$$1_DiemSystem_remove_validator$0$$t23@0 (= inline$$1_DiemSystem_remove_validator$0$$t27@0 (= (seq.len (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0)) 0))) (and (=> (= (ControlFlow 0 181346) 181998) inline$$1_DiemSystem_remove_validator$0$anon26_Then_correct) (=> (= (ControlFlow 0 181346) 181600) inline$$1_DiemSystem_remove_validator$0$anon26_Else_correct)))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon25_Else_correct  (=> (and (and (not inline$$1_DiemSystem_remove_validator$0$$t23@0) (= inline$$1_DiemSystem_remove_validator$0$$t25@0 inline$$1_DiemSystem_remove_validator$0$$t25@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 inline$$1_DiemSystem_remove_validator$0$$t25@0) (= (ControlFlow 0 181328) 181334))) inline$$1_DiemSystem_remove_validator$0$L3_correct)))
(let ((inline$$1_DiemSystem_remove_validator$0$anon24_Else_correct  (=> (not inline$$1_DiemSystem_remove_validator$0$$t18@0) (=> (and (|$IsValid'$1_DiemSystem_DiemSystem'| inline$$1_DiemSystem_remove_validator$0$$t2@0) (let ((inline$$1_DiemSystem_remove_validator$0$$range_0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_remove_validator$0$$t2@0)))))
(let ((inline$$1_DiemSystem_remove_validator$0$$range_1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_remove_validator$0$$t2@0)))))
(forall ((inline$$1_DiemSystem_remove_validator$0$$i_2 Int) (inline$$1_DiemSystem_remove_validator$0$$i_3 Int) ) (!  (=> ($InRange inline$$1_DiemSystem_remove_validator$0$$range_0 inline$$1_DiemSystem_remove_validator$0$$i_2) (=> ($InRange inline$$1_DiemSystem_remove_validator$0$$range_1 inline$$1_DiemSystem_remove_validator$0$$i_3) (let ((inline$$1_DiemSystem_remove_validator$0$i inline$$1_DiemSystem_remove_validator$0$$i_2))
(let ((inline$$1_DiemSystem_remove_validator$0$j inline$$1_DiemSystem_remove_validator$0$$i_3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_remove_validator$0$$t2@0) inline$$1_DiemSystem_remove_validator$0$i)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_remove_validator$0$$t2@0) inline$$1_DiemSystem_remove_validator$0$j))) (= inline$$1_DiemSystem_remove_validator$0$i inline$$1_DiemSystem_remove_validator$0$j))))))
 :qid |unknown.0:0|
 :skolemid |141|
))))) (=> (and (and (and (and (= inline$$1_DiemSystem_remove_validator$0$$t2@0 (let ((addr@@38 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@38)))) (= inline$$1_DiemSystem_remove_validator$0$$t2@0 inline$$1_DiemSystem_remove_validator$0$$t2@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t20@1 (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_remove_validator$0$$t2@0)) (= inline$$1_DiemSystem_remove_validator$0$$t21@0 (seq.len inline$$1_DiemSystem_remove_validator$0$$t20@1)))) (and (and (|$IsValid'$1_Option_Option'u64''| inline$$1_DiemSystem_remove_validator$0$$t22@0) (<= (seq.len (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0)) 1)) (=> (let ((inline$$1_DiemSystem_remove_validator$0$$range_0@@0 ($Range 0 inline$$1_DiemSystem_remove_validator$0$$t21@0)))
(forall ((inline$$1_DiemSystem_remove_validator$0$$i_1 Int) ) (!  (=> ($InRange inline$$1_DiemSystem_remove_validator$0$$range_0@@0 inline$$1_DiemSystem_remove_validator$0$$i_1) (let ((inline$$1_DiemSystem_remove_validator$0$i@@0 inline$$1_DiemSystem_remove_validator$0$$i_1))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth inline$$1_DiemSystem_remove_validator$0$$t20@1 inline$$1_DiemSystem_remove_validator$0$i@@0)) _$t3@@1))))
 :qid |unknown.0:0|
 :skolemid |142|
))) (= (seq.len (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0)) 0)))) (and (and (and (=> (let ((inline$$1_DiemSystem_remove_validator$0$$range_0@@1 ($Range 0 inline$$1_DiemSystem_remove_validator$0$$t21@0)))
(exists ((inline$$1_DiemSystem_remove_validator$0$$i_1@@0 Int) ) (!  (and ($InRange inline$$1_DiemSystem_remove_validator$0$$range_0@@1 inline$$1_DiemSystem_remove_validator$0$$i_1@@0) (let ((inline$$1_DiemSystem_remove_validator$0$i@@1 inline$$1_DiemSystem_remove_validator$0$$i_1@@0))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth inline$$1_DiemSystem_remove_validator$0$$t20@1 inline$$1_DiemSystem_remove_validator$0$i@@1)) _$t3@@1)))
 :qid |unknown.0:0|
 :skolemid |143|
))) (and (not (= (seq.len (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0)) 0)) (let ((inline$$1_DiemSystem_remove_validator$0$at (seq.nth (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0) 0)))
 (and (and (<= 0 inline$$1_DiemSystem_remove_validator$0$at) (< inline$$1_DiemSystem_remove_validator$0$at inline$$1_DiemSystem_remove_validator$0$$t21@0)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth inline$$1_DiemSystem_remove_validator$0$$t20@1 inline$$1_DiemSystem_remove_validator$0$at)) _$t3@@1))))) (= inline$$1_DiemSystem_remove_validator$0$$t22@0 inline$$1_DiemSystem_remove_validator$0$$t22@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t23@0  (not (= (seq.len (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0)) 0))) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| inline$$1_DiemSystem_remove_validator$0$$t25@0) (= inline$$1_DiemSystem_remove_validator$0$$t25@0 7)) (and (= inline$$1_DiemSystem_remove_validator$0$$t25@0 inline$$1_DiemSystem_remove_validator$0$$t25@0) (= inline$$1_DiemSystem_remove_validator$0$$t23@0 inline$$1_DiemSystem_remove_validator$0$$t23@0))))) (and (=> (= (ControlFlow 0 181312) 181346) inline$$1_DiemSystem_remove_validator$0$anon25_Then_correct) (=> (= (ControlFlow 0 181312) 181328) inline$$1_DiemSystem_remove_validator$0$anon25_Else_correct)))))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon24_Then_correct  (=> inline$$1_DiemSystem_remove_validator$0$$t18@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (= inline$$1_DiemSystem_remove_validator$0$$t15@0 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 inline$$1_DiemSystem_remove_validator$0$$t15@0) (= (ControlFlow 0 182026) 181334))) inline$$1_DiemSystem_remove_validator$0$L3_correct))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon23_Else_correct  (=> (and (not inline$$1_DiemSystem_remove_validator$0$$t17@0) (= inline$$1_DiemSystem_remove_validator$0$$t18@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 181001) 182026) inline$$1_DiemSystem_remove_validator$0$anon24_Then_correct) (=> (= (ControlFlow 0 181001) 181312) inline$$1_DiemSystem_remove_validator$0$anon24_Else_correct)))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon23_Then_correct  (=> inline$$1_DiemSystem_remove_validator$0$$t17@0 (=> (and (and (or (or (or (and (not (= _$t0@@1 173345816)) (= 2 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_remove_validator$0$$t16@0)) (= 5 inline$$1_DiemSystem_remove_validator$0$$t15@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_remove_validator$0$$t16@0)) 0)) (= 3 inline$$1_DiemSystem_remove_validator$0$$t15@0))) (and (not (= _$t0@@1 173345816)) (= 2 inline$$1_DiemSystem_remove_validator$0$$t15@0))) (= inline$$1_DiemSystem_remove_validator$0$$t15@0 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 inline$$1_DiemSystem_remove_validator$0$$t15@0) (= (ControlFlow 0 182118) 181334))) inline$$1_DiemSystem_remove_validator$0$L3_correct))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon22_Else_correct  (=> (not inline$$1_DiemSystem_remove_validator$0$$t14@0) (=> (and (= inline$$1_DiemSystem_remove_validator$0$$t16@0 _$t0@@1) (= inline$$1_DiemSystem_remove_validator$0$$t17@0  (or (or (or (not (= _$t0@@1 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_remove_validator$0$$t16@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_remove_validator$0$$t16@0)) 0))) (not (= _$t0@@1 173345816))))) (and (=> (= (ControlFlow 0 180981) 182118) inline$$1_DiemSystem_remove_validator$0$anon23_Then_correct) (=> (= (ControlFlow 0 180981) 181001) inline$$1_DiemSystem_remove_validator$0$anon23_Else_correct))))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon22_Then_correct  (=> inline$$1_DiemSystem_remove_validator$0$$t14@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (= inline$$1_DiemSystem_remove_validator$0$$t15@0 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 inline$$1_DiemSystem_remove_validator$0$$t15@0) (= (ControlFlow 0 182144) 181334))) inline$$1_DiemSystem_remove_validator$0$L3_correct))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_110042| inline$$1_DiemSystem_remove_validator$0$$t28@0)) 0) (= (seq.len (|p#$Mutation_82385| inline$$1_DiemSystem_remove_validator$0$$t29@0)) 0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t7@0 _$t0@@1) (= inline$$1_DiemSystem_remove_validator$0$$t8@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816)))) (=> (and (and (and (= inline$$1_DiemSystem_remove_validator$0$$t9@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_remove_validator$0$$t10@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@39 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@39)))))) (and (= inline$$1_DiemSystem_remove_validator$0$$t11@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816)) (= inline$$1_DiemSystem_remove_validator$0$$t12@0 (|$events#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t11@0)))) (and (and (= inline$$1_DiemSystem_remove_validator$0$$t13@0 _$t0@@1) (= _$t0@@1 _$t0@@1)) (and (= _$t3@@1 _$t3@@1) (= inline$$1_DiemSystem_remove_validator$0$$t14@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 180909) 182144) inline$$1_DiemSystem_remove_validator$0$anon22_Then_correct) (=> (= (ControlFlow 0 180909) 180981) inline$$1_DiemSystem_remove_validator$0$anon22_Else_correct))))))
(let ((anon13_Then_correct@@0  (=> $t16@0@@0 (=> (and (and (and (= $t18@@0 _$t0@@1) (= $t19@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t20@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t21@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@40 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@40))))))) (and (and (= $t22@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t23@@0 (|$events#$1_DiemConfig_Configuration| $t22@@0))) (and (= $t24@@0 _$t0@@1) (= (ControlFlow 0 182148) 180909)))) inline$$1_DiemSystem_remove_validator$0$anon0_correct))))
(let ((anon13_Else_correct@@0  (=> (not $t16@0@@0) (=> (and (and (|$IsValid'u64'| 0) (= 0 0)) (and (= $t13@0@@0 0) (= (ControlFlow 0 178692) 179220))) L3_correct@@0))))
(let ((anon12_Else_correct@@0  (=> (not $t15@@0) (=> (and (and (|$IsValid'vec'u8''| $t14@@0) (= $t14@@0 (let ((t_ref@@22 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@22)))) (and (= $t16@0@@0 (= $t14@@0 _$t2@@1)) (= $t16@0@@0 $t16@0@@0))) (and (=> (= (ControlFlow 0 178670) 182148) anon13_Then_correct@@0) (=> (= (ControlFlow 0 178670) 178692) anon13_Else_correct@@0))))))
(let ((anon12_Then_correct@@0  (=> $t15@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)) (= 5 $t13@@0)) (= $t13@@0 $t13@@0)) (and (= $t13@0@@0 $t13@@0) (= (ControlFlow 0 182628) 179220))) L3_correct@@0))))
(let ((anon11_Else_correct@@0  (=> (and (not $abort_flag@0@@0) (= $t15@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))) (and (=> (= (ControlFlow 0 178638) 182628) anon12_Then_correct@@0) (=> (= (ControlFlow 0 178638) 178670) anon12_Else_correct@@0)))))
(let ((anon11_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t13@0@@0 $abort_code@1@@0) (= (ControlFlow 0 182642) 179220))) L3_correct@@0)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@0  (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0)) (and (=> (= (ControlFlow 0 178562) 182642) anon11_Then_correct@@0) (=> (= (ControlFlow 0 178562) 178638) anon11_Else_correct@@0)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct@@0  (=> (and (and (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0) (= (ControlFlow 0 178556) 178562))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@0)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct@@0  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@1)) (= 5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0) (= (ControlFlow 0 178612) 178562))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@0))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct@@0  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 (=> (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0)) (and (=> (= (ControlFlow 0 178568) 182642) anon11_Then_correct@@0) (=> (= (ControlFlow 0 178568) 178638) anon11_Else_correct@@0))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@0  (=> (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0) (=> (and (and (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 ($1_SlidingNonce_spec_try_record_nonce _$t0@@1 _$t1@@1)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0)) (and (|$IsValid'u64'| 0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 0)))) (and (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 7)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0)))) (and (=> (= (ControlFlow 0 178540) 178568) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 178540) 178556) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct@@0))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct@@0  (=> (not |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@0|) (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@1@@0 ($Memory_107332 (|Store__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@1 false) (|contents#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory))) (= (ControlFlow 0 178482) 178540)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@0))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct@@0  (=> |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@0| (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@0@@0 ($Memory_107332 (|Store__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@1 true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@1 |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1@@0|))) (= (ControlFlow 0 178582) 178540)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@0))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct@@0  (=> (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0) (and (=> (= (ControlFlow 0 178468) 178582) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct@@0) (=> (= (ControlFlow 0 178468) 178482) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct@@0)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct@@0  (=> (= _$t0@@1 _$t0@@1) (=> (and (= _$t1@@1 _$t1@@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@1)))) (and (=> (= (ControlFlow 0 178462) 178612) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct@@0) (=> (= (ControlFlow 0 178462) 178468) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct@@0))))))
(let ((anon0$1_correct@@1  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104568| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@41) (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) addr@@41)) 4))))
 :qid |ValidatorAdministrationScriptsandybpl.13913:20|
 :skolemid |215|
))) (and (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@42) (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) addr@@42)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13917:20|
 :skolemid |216|
)) (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@43) (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) addr@@43)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13921:20|
 :skolemid |217|
)))) (=> (and (and (and (and (and (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@44) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@44)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) addr@@44)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13925:20|
 :skolemid |218|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_109803| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (let (($range_0@@17 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@45 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@45))))))))
(forall (($i_1@@17 Int) ) (!  (=> ($InRange $range_0@@17 $i_1@@17) (let ((i1@@1 $i_1@@17))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_104235| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@46 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@46)))) i1@@1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@46 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@46)))) i1@@1)))) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13945:151|
 :skolemid |219|
)))) (and (let (($range_0@@18 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@47 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@47))))))))
(forall (($i_1@@18 Int) ) (!  (=> ($InRange $range_0@@18 $i_1@@18) (let ((i1@@2 $i_1@@18))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@48 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@48)))) i1@@2)) 1)))
 :qid |ValidatorAdministrationScriptsandybpl.13950:151|
 :skolemid |220|
))) (|$IsValid'address'| _$t0@@1)))) (and (and (and (|$IsValid'u64'| _$t1@@1) (|$IsValid'vec'u8''| _$t2@@1)) (and (|$IsValid'address'| _$t3@@1) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@8)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@8))
 :qid |ValidatorAdministrationScriptsandybpl.13966:20|
 :skolemid |221|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@8))
)))) (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |ValidatorAdministrationScriptsandybpl.13970:20|
 :skolemid |222|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_104235| $1_Roles_RoleId_$memory) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@10)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@10) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@10))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@10))) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.13974:20|
 :skolemid |223|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105594| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@10))
))) (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@11)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@11))
 :qid |ValidatorAdministrationScriptsandybpl.13978:20|
 :skolemid |224|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_107332| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@11))
)) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) $a_0@@12)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@12))
 :qid |ValidatorAdministrationScriptsandybpl.13982:20|
 :skolemid |225|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) $a_0@@12))
)))))) (and (and (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@13)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@13))
 :qid |ValidatorAdministrationScriptsandybpl.13986:20|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_108156| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@13))
)) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@14)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@14) (let (($range_1@@0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@14))))))
(let (($range_2@@2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@14))))))
(forall (($i_3@@2 Int) ($i_4@@0 Int) ) (!  (=> ($InRange $range_1@@0 $i_3@@2) (=> ($InRange $range_2@@2 $i_4@@0) (let ((i@@44 $i_3@@2))
(let ((j@@11 $i_4@@0))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@14)) i@@44)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@14)) j@@11))) (= i@@44 j@@11))))))
 :qid |ValidatorAdministrationScriptsandybpl.13991:367|
 :skolemid |227|
))))))
 :qid |ValidatorAdministrationScriptsandybpl.13990:20|
 :skolemid |228|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@14))
))) (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_109803| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@15)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@15))
 :qid |ValidatorAdministrationScriptsandybpl.13996:20|
 :skolemid |229|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_109803| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@15))
)) (= $t6@@1 _$t0@@1))) (and (and (= $t7@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t8@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t9@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@49 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107751| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@49))))) (= $t10@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_108268| $1_DiemConfig_Configuration_$memory) 173345816))))) (and (and (and (= $t11@@0 (|$events#$1_DiemConfig_Configuration| $t10@@0)) (= $t12@@0 _$t0@@1)) (and (let ((addr@@50 _$t0@@1))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_103766| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_136952| $1_DiemAccount_DiemAccount_$memory) addr@@50)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_135998| $1_AccountFreezing_FreezingBit_$memory) addr@@50) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_135998| $1_AccountFreezing_FreezingBit_$memory) addr@@50)))))) (= _$t0@@1 _$t0@@1))) (and (and (= _$t1@@1 _$t1@@1) (= _$t2@@1 _$t2@@1)) (and (= _$t3@@1 _$t3@@1) (= (ControlFlow 0 178616) 178462)))))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct@@0))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_73812_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_73812| stream@@10) 0) (forall ((v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_73812| stream@@10) v@@59) 0)
 :qid |ValidatorAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 177433) 178616)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 243344) 177433) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1)))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
