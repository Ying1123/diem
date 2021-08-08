(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_103019 0)) ((($Memory_103019 (|domain#$Memory_103019| |T@[Int]Bool|) (|contents#$Memory_103019| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_172164 0)) ((($Memory_172164 (|domain#$Memory_172164| |T@[Int]Bool|) (|contents#$Memory_172164| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_169066 0)) ((($Memory_169066 (|domain#$Memory_169066| |T@[Int]Bool|) (|contents#$Memory_169066| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_167071 0)) ((($Memory_167071 (|domain#$Memory_167071| |T@[Int]Bool|) (|contents#$Memory_167071| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_167351 0)) ((($Memory_167351 (|domain#$Memory_167351| |T@[Int]Bool|) (|contents#$Memory_167351| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_167038 0)) ((($Memory_167038 (|domain#$Memory_167038| |T@[Int]Bool|) (|contents#$Memory_167038| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_166823 0)) ((($Memory_166823 (|domain#$Memory_166823| |T@[Int]Bool|) (|contents#$Memory_166823| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_164333 0)) ((($Memory_164333 (|domain#$Memory_164333| |T@[Int]Bool|) (|contents#$Memory_164333| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_164269 0)) ((($Memory_164269 (|domain#$Memory_164269| |T@[Int]Bool|) (|contents#$Memory_164269| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_162891 0)) ((($Memory_162891 (|domain#$Memory_162891| |T@[Int]Bool|) (|contents#$Memory_162891| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_159770 0)) ((($Memory_159770 (|domain#$Memory_159770| |T@[Int]Bool|) (|contents#$Memory_159770| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_159551 0)) ((($Memory_159551 (|domain#$Memory_159551| |T@[Int]Bool|) (|contents#$Memory_159551| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_168855 0)) ((($Memory_168855 (|domain#$Memory_168855| |T@[Int]Bool|) (|contents#$Memory_168855| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_152506 0)) ((($Memory_152506 (|domain#$Memory_152506| |T@[Int]Bool|) (|contents#$Memory_152506| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_152419 0)) ((($Memory_152419 (|domain#$Memory_152419| |T@[Int]Bool|) (|contents#$Memory_152419| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_149216 0)) ((($Memory_149216 (|domain#$Memory_149216| |T@[Int]Bool|) (|contents#$Memory_149216| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_149129 0)) ((($Memory_149129 (|domain#$Memory_149129| |T@[Int]Bool|) (|contents#$Memory_149129| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_152770 0)) ((($Memory_152770 (|domain#$Memory_152770| |T@[Int]Bool|) (|contents#$Memory_152770| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_161603 0)) ((($Memory_161603 (|domain#$Memory_161603| |T@[Int]Bool|) (|contents#$Memory_161603| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_153096 0)) ((($Memory_153096 (|domain#$Memory_153096| |T@[Int]Bool|) (|contents#$Memory_153096| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_152679 0)) ((($Memory_152679 (|domain#$Memory_152679| |T@[Int]Bool|) (|contents#$Memory_152679| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_163203 0)) ((($Memory_163203 (|domain#$Memory_163203| |T@[Int]Bool|) (|contents#$Memory_163203| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_152997 0)) ((($Memory_152997 (|domain#$Memory_152997| |T@[Int]Bool|) (|contents#$Memory_152997| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_148831 0)) ((($Memory_148831 (|domain#$Memory_148831| |T@[Int]Bool|) (|contents#$Memory_148831| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_148767 0)) ((($Memory_148767 (|domain#$Memory_148767| |T@[Int]Bool|) (|contents#$Memory_148767| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_144840 0)) ((($Memory_144840 (|domain#$Memory_144840| |T@[Int]Bool|) (|contents#$Memory_144840| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_144753 0)) ((($Memory_144753 (|domain#$Memory_144753| |T@[Int]Bool|) (|contents#$Memory_144753| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_144666 0)) ((($Memory_144666 (|domain#$Memory_144666| |T@[Int]Bool|) (|contents#$Memory_144666| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_144579 0)) ((($Memory_144579 (|domain#$Memory_144579| |T@[Int]Bool|) (|contents#$Memory_144579| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_144492 0)) ((($Memory_144492 (|domain#$Memory_144492| |T@[Int]Bool|) (|contents#$Memory_144492| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_145105 0)) ((($Memory_145105 (|domain#$Memory_145105| |T@[Int]Bool|) (|contents#$Memory_145105| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_143618 0)) ((($Memory_143618 (|domain#$Memory_143618| |T@[Int]Bool|) (|contents#$Memory_143618| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_143684 0)) ((($Memory_143684 (|domain#$Memory_143684| |T@[Int]Bool|) (|contents#$Memory_143684| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_143537 0)) ((($Memory_143537 (|domain#$Memory_143537| |T@[Int]Bool|) (|contents#$Memory_143537| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_143456 0)) ((($Memory_143456 (|domain#$Memory_143456| |T@[Int]Bool|) (|contents#$Memory_143456| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_143375 0)) ((($Memory_143375 (|domain#$Memory_143375| |T@[Int]Bool|) (|contents#$Memory_143375| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_143294 0)) ((($Memory_143294 (|domain#$Memory_143294| |T@[Int]Bool|) (|contents#$Memory_143294| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_143180 0)) ((($Memory_143180 (|domain#$Memory_143180| |T@[Int]Bool|) (|contents#$Memory_143180| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_167992 0)) ((($Memory_167992 (|domain#$Memory_167992| |T@[Int]Bool|) (|contents#$Memory_167992| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_143213 0)) ((($Memory_143213 (|domain#$Memory_143213| |T@[Int]Bool|) (|contents#$Memory_143213| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_142669 0)) ((($Memory_142669 (|domain#$Memory_142669| |T@[Int]Bool|) (|contents#$Memory_142669| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_142111 0)) ((($Memory_142111 (|domain#$Memory_142111| |T@[Int]Bool|) (|contents#$Memory_142111| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_111178 0)) ((($Memory_111178 (|domain#$Memory_111178| |T@[Int]Bool|) (|contents#$Memory_111178| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_109771 0)) ((($Memory_109771 (|domain#$Memory_109771| |T@[Int]Bool|) (|contents#$Memory_109771| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_80957 0)) (((Multiset_80957 (|v#Multiset_80957| |T@[$EventRep]Int|) (|l#Multiset_80957| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_80957| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_80957|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_169893 0)) ((($Mutation_169893 (|l#$Mutation_169893| T@$Location) (|p#$Mutation_169893| (Seq Int)) (|v#$Mutation_169893| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_169849 0)) ((($Mutation_169849 (|l#$Mutation_169849| T@$Location) (|p#$Mutation_169849| (Seq Int)) (|v#$Mutation_169849| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_51851 0)) ((($Mutation_51851 (|l#$Mutation_51851| T@$Location) (|p#$Mutation_51851| (Seq Int)) (|v#$Mutation_51851| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_158285 0)) ((($Mutation_158285 (|l#$Mutation_158285| T@$Location) (|p#$Mutation_158285| (Seq Int)) (|v#$Mutation_158285| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_147520 0)) ((($Mutation_147520 (|l#$Mutation_147520| T@$Location) (|p#$Mutation_147520| (Seq Int)) (|v#$Mutation_147520| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_110240 0)) ((($Mutation_110240 (|l#$Mutation_110240| T@$Location) (|p#$Mutation_110240| (Seq Int)) (|v#$Mutation_110240| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_103647 0)) ((($Mutation_103647 (|l#$Mutation_103647| T@$Location) (|p#$Mutation_103647| (Seq Int)) (|v#$Mutation_103647| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_99015 0)) ((($Mutation_99015 (|l#$Mutation_99015| T@$Location) (|p#$Mutation_99015| (Seq Int)) (|v#$Mutation_99015| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_98269 0)) ((($Mutation_98269 (|l#$Mutation_98269| T@$Location) (|p#$Mutation_98269| (Seq Int)) (|v#$Mutation_98269| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_96829 0)) ((($Mutation_96829 (|l#$Mutation_96829| T@$Location) (|p#$Mutation_96829| (Seq Int)) (|v#$Mutation_96829| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_96083 0)) ((($Mutation_96083 (|l#$Mutation_96083| T@$Location) (|p#$Mutation_96083| (Seq Int)) (|v#$Mutation_96083| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_94643 0)) ((($Mutation_94643 (|l#$Mutation_94643| T@$Location) (|p#$Mutation_94643| (Seq Int)) (|v#$Mutation_94643| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_93897 0)) ((($Mutation_93897 (|l#$Mutation_93897| T@$Location) (|p#$Mutation_93897| (Seq Int)) (|v#$Mutation_93897| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_92457 0)) ((($Mutation_92457 (|l#$Mutation_92457| T@$Location) (|p#$Mutation_92457| (Seq Int)) (|v#$Mutation_92457| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_91711 0)) ((($Mutation_91711 (|l#$Mutation_91711| T@$Location) (|p#$Mutation_91711| (Seq Int)) (|v#$Mutation_91711| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_90271 0)) ((($Mutation_90271 (|l#$Mutation_90271| T@$Location) (|p#$Mutation_90271| (Seq Int)) (|v#$Mutation_90271| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_89525 0)) ((($Mutation_89525 (|l#$Mutation_89525| T@$Location) (|p#$Mutation_89525| (Seq Int)) (|v#$Mutation_89525| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_88085 0)) ((($Mutation_88085 (|l#$Mutation_88085| T@$Location) (|p#$Mutation_88085| (Seq Int)) (|v#$Mutation_88085| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_87339 0)) ((($Mutation_87339 (|l#$Mutation_87339| T@$Location) (|p#$Mutation_87339| (Seq Int)) (|v#$Mutation_87339| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_85899 0)) ((($Mutation_85899 (|l#$Mutation_85899| T@$Location) (|p#$Mutation_85899| (Seq Int)) (|v#$Mutation_85899| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_85153 0)) ((($Mutation_85153 (|l#$Mutation_85153| T@$Location) (|p#$Mutation_85153| (Seq Int)) (|v#$Mutation_85153| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_83675 0)) ((($Mutation_83675 (|l#$Mutation_83675| T@$Location) (|p#$Mutation_83675| (Seq Int)) (|v#$Mutation_83675| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_82929 0)) ((($Mutation_82929 (|l#$Mutation_82929| T@$Location) (|p#$Mutation_82929| (Seq Int)) (|v#$Mutation_82929| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_80957_| (|T@[$1_Event_EventHandle]Multiset_80957| T@$1_Event_EventHandle) T@Multiset_80957)
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
(declare-fun ReverseVec_73200 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_72215 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_72412 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_72609 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_73397 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_73003 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_72806 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_72018 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_80957| |T@[$1_Event_EventHandle]Multiset_80957|) |T@[$1_Event_EventHandle]Multiset_80957|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |Rolesandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |Rolesandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |Rolesandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |Rolesandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |Rolesandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |Rolesandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |Rolesandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |Rolesandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |Rolesandybpl.590:13|
 :skolemid |15|
))))
 :qid |Rolesandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |Rolesandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |Rolesandybpl.603:17|
 :skolemid |18|
)))))
 :qid |Rolesandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |Rolesandybpl.770:13|
 :skolemid |20|
))))
 :qid |Rolesandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |Rolesandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |Rolesandybpl.783:17|
 :skolemid |23|
)))))
 :qid |Rolesandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |Rolesandybpl.950:13|
 :skolemid |25|
))))
 :qid |Rolesandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |Rolesandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |Rolesandybpl.963:17|
 :skolemid |28|
)))))
 :qid |Rolesandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |Rolesandybpl.1130:13|
 :skolemid |30|
))))
 :qid |Rolesandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |Rolesandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |Rolesandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |Rolesandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |Rolesandybpl.1310:13|
 :skolemid |35|
))))
 :qid |Rolesandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |Rolesandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |Rolesandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |Rolesandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |Rolesandybpl.1490:13|
 :skolemid |40|
))))
 :qid |Rolesandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |Rolesandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |Rolesandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |Rolesandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |Rolesandybpl.1670:13|
 :skolemid |45|
))))
 :qid |Rolesandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |Rolesandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |Rolesandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |Rolesandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |Rolesandybpl.1850:13|
 :skolemid |50|
))))
 :qid |Rolesandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |Rolesandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |Rolesandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |Rolesandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |Rolesandybpl.2030:13|
 :skolemid |55|
))))
 :qid |Rolesandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |Rolesandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |Rolesandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |Rolesandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |Rolesandybpl.2210:13|
 :skolemid |60|
))))
 :qid |Rolesandybpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |Rolesandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |Rolesandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |Rolesandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |Rolesandybpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |Rolesandybpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |Rolesandybpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |Rolesandybpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_80957| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream) v@@24) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |Rolesandybpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |Rolesandybpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |Rolesandybpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |Rolesandybpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |Rolesandybpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |Rolesandybpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |Rolesandybpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |Rolesandybpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |Rolesandybpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |Rolesandybpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |Rolesandybpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |Rolesandybpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |Rolesandybpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |Rolesandybpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |Rolesandybpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |Rolesandybpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |Rolesandybpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |Rolesandybpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |Rolesandybpl.3083:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |Rolesandybpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |Rolesandybpl.3139:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |Rolesandybpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |Rolesandybpl.3195:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |Rolesandybpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |Rolesandybpl.3251:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |Rolesandybpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |Rolesandybpl.3307:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |Rolesandybpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |Rolesandybpl.3363:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |Rolesandybpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |Rolesandybpl.3419:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |Rolesandybpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |Rolesandybpl.3475:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |Rolesandybpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |Rolesandybpl.3560:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |Rolesandybpl.4125:36|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |Rolesandybpl.10216:71|
 :skolemid |331|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |Rolesandybpl.10280:46|
 :skolemid |332|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |Rolesandybpl.10293:64|
 :skolemid |333|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |Rolesandybpl.10306:75|
 :skolemid |334|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |Rolesandybpl.10319:72|
 :skolemid |335|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |Rolesandybpl.10348:55|
 :skolemid |336|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |Rolesandybpl.10370:46|
 :skolemid |337|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |Rolesandybpl.10388:49|
 :skolemid |338|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |Rolesandybpl.10463:71|
 :skolemid |339|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |Rolesandybpl.10477:91|
 :skolemid |340|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |Rolesandybpl.10491:113|
 :skolemid |341|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |Rolesandybpl.10505:75|
 :skolemid |342|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |Rolesandybpl.10519:73|
 :skolemid |343|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |Rolesandybpl.10539:48|
 :skolemid |344|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |Rolesandybpl.10555:57|
 :skolemid |345|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |Rolesandybpl.10569:83|
 :skolemid |346|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |Rolesandybpl.10583:103|
 :skolemid |347|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |Rolesandybpl.10597:125|
 :skolemid |348|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |Rolesandybpl.10611:87|
 :skolemid |349|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |Rolesandybpl.10625:85|
 :skolemid |350|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |Rolesandybpl.10639:48|
 :skolemid |351|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |Rolesandybpl.10660:45|
 :skolemid |352|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |Rolesandybpl.10674:51|
 :skolemid |353|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |Rolesandybpl.10697:48|
 :skolemid |354|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |Rolesandybpl.11003:49|
 :skolemid |355|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |Rolesandybpl.11016:65|
 :skolemid |356|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |Rolesandybpl.11520:45|
 :skolemid |357|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |Rolesandybpl.11533:45|
 :skolemid |358|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29) true)
 :qid |Rolesandybpl.11546:55|
 :skolemid |359|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30) true)
 :qid |Rolesandybpl.11560:55|
 :skolemid |360|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@31))))
 :qid |Rolesandybpl.11580:38|
 :skolemid |361|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@32))))
 :qid |Rolesandybpl.11601:44|
 :skolemid |362|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))))
 :qid |Rolesandybpl.11652:53|
 :skolemid |363|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))))
 :qid |Rolesandybpl.11714:53|
 :skolemid |364|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35) true)
 :qid |Rolesandybpl.11740:55|
 :skolemid |365|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36) true)
 :qid |Rolesandybpl.11754:55|
 :skolemid |366|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@37)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@37))))
 :qid |Rolesandybpl.11771:38|
 :skolemid |367|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@38)))
 :qid |Rolesandybpl.11785:48|
 :skolemid |368|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@39)))
 :qid |Rolesandybpl.11799:48|
 :skolemid |369|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@40)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@40))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@40))))
 :qid |Rolesandybpl.11819:41|
 :skolemid |370|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@41)))
 :qid |Rolesandybpl.11834:53|
 :skolemid |371|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@42)))
 :qid |Rolesandybpl.11848:53|
 :skolemid |372|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43))))
 :qid |Rolesandybpl.11865:60|
 :skolemid |373|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44))))
 :qid |Rolesandybpl.11882:60|
 :skolemid |374|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45))))
 :qid |Rolesandybpl.11899:57|
 :skolemid |375|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46) true)
 :qid |Rolesandybpl.14100:68|
 :skolemid |376|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))))
 :qid |Rolesandybpl.14122:66|
 :skolemid |377|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))))
 :qid |Rolesandybpl.14148:66|
 :skolemid |378|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@49) true)
 :qid |Rolesandybpl.14481:31|
 :skolemid |379|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@50) true)
 :qid |Rolesandybpl.14825:31|
 :skolemid |380|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@51)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@51)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@51))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@51))))
 :qid |Rolesandybpl.14844:35|
 :skolemid |381|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@51))
)))
(assert (forall ((s@@52 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@52)))
 :qid |Rolesandybpl.15265:45|
 :skolemid |382|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@53))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@53))))
 :qid |Rolesandybpl.15284:50|
 :skolemid |383|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@54)))
 :qid |Rolesandybpl.15299:52|
 :skolemid |384|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55))))
 :qid |Rolesandybpl.15326:65|
 :skolemid |385|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@56)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@56))))
 :qid |Rolesandybpl.15711:60|
 :skolemid |386|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57))))
 :qid |Rolesandybpl.15728:66|
 :skolemid |387|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@58)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@58)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@58))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@58))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@58))))
 :qid |Rolesandybpl.15757:50|
 :skolemid |388|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@59) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@59)))
 :qid |Rolesandybpl.15776:45|
 :skolemid |389|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@60)) true))
 :qid |Rolesandybpl.16095:87|
 :skolemid |390|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@61)))
 :qid |Rolesandybpl.16307:47|
 :skolemid |391|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@62)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@62))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@62))))
 :qid |Rolesandybpl.16327:58|
 :skolemid |392|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@63) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@63)))
 :qid |Rolesandybpl.16342:39|
 :skolemid |393|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@64))))
 :qid |Rolesandybpl.16364:58|
 :skolemid |394|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65))))
 :qid |Rolesandybpl.16381:58|
 :skolemid |395|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66) true)
 :qid |Rolesandybpl.16396:51|
 :skolemid |396|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67))))
 :qid |Rolesandybpl.16413:60|
 :skolemid |397|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@68)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@68))))
 :qid |Rolesandybpl.16711:47|
 :skolemid |398|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@69)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@69))))
 :qid |Rolesandybpl.16733:63|
 :skolemid |399|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@70)))
 :qid |Rolesandybpl.16748:57|
 :skolemid |400|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@71)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@71))))
 :qid |Rolesandybpl.16764:54|
 :skolemid |401|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@72)))
 :qid |Rolesandybpl.16778:55|
 :skolemid |402|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@73)))
 :qid |Rolesandybpl.16792:57|
 :skolemid |403|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@74)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@74))))
 :qid |Rolesandybpl.16814:56|
 :skolemid |404|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@75)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@75))))
 :qid |Rolesandybpl.16839:52|
 :skolemid |405|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@76)))
 :qid |Rolesandybpl.16855:54|
 :skolemid |406|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |Rolesandybpl.17726:47|
 :skolemid |407|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |Rolesandybpl.17750:47|
 :skolemid |408|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |Rolesandybpl.17991:49|
 :skolemid |409|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |Rolesandybpl.18034:49|
 :skolemid |410|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |Rolesandybpl.18063:48|
 :skolemid |411|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |Rolesandybpl.18358:47|
 :skolemid |412|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_73200 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_73200 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_72215 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_72215 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_72412 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_72412 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_72609 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_72609 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_73397 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_73397 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_73003 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_73003 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_72806 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_72806 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_72018 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_72018 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |Rolesandybpl.245:54|
 :skolemid |467|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_80957|) (|l#1| |T@[$1_Event_EventHandle]Multiset_80957|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_80957| (|Select__T@[$1_Event_EventHandle]Multiset_80957_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_80957| (|Select__T@[$1_Event_EventHandle]Multiset_80957_| |l#1| handle@@0))))
(Multiset_80957 (|lambda#3| (|v#Multiset_80957| (|Select__T@[$1_Event_EventHandle]Multiset_80957_| |l#0@@0| handle@@0)) (|v#Multiset_80957| (|Select__T@[$1_Event_EventHandle]Multiset_80957_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |Rolesandybpl.2548:13|
 :skolemid |468|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |Rolesandybpl.124:29|
 :skolemid |469|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_110240)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_110240)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_109771)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_111178)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_109771)
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
(declare-fun $t14 () T@$Mutation_110240)
(declare-fun $t14@0 () T@$Mutation_110240)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_110240)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 261823) (let ((L5_correct  (=> (and (= $t24@0 ($Mutation_12329 (|l#$Mutation_110240| $t14@1) (seq.++ (|p#$Mutation_110240| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_110240| $t14@1)))) (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2))) (=> (and (and (= $t14@2 ($Mutation_110240 (|l#$Mutation_110240| $t14@1) (|p#$Mutation_110240| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1)))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) 173345816)) 0)))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) 186537453)) 1))) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_109771 (|Store__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_110240| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_110240| $t14@2)) (|v#$Mutation_110240| $t14@2)))))) (and (=> (= (ControlFlow 0 186711) (- 0 262459)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) 173345816)) 0)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) 173345816)) 0))) (and (=> (= (ControlFlow 0 186711) (- 0 262473)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) 186537453)) 1)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) 186537453)) 1))) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 186711) (- 0 262500)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 186711) (- 0 262510)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 186711) (- 0 262524)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 186711) (- 0 262548)) (= $t25 _$t2)))))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 186769) 186711)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 186539) 186711)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 186535) (- 0 262592)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 186535) (- 0 262629)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 186765) 186535))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 186749) 186769) anon25_Then_correct) (=> (= (ControlFlow 0 186749) 186765) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 186419) 186535))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 186403) 186539) anon26_Then_correct) (=> (= (ControlFlow 0 186403) 186419) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 186367) 186403)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 186373) 186367)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_110240| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_110240| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 186321) 186749) anon24_Then_correct) (=> (= (ControlFlow 0 186321) 186373) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 186783) 186535))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 186835) 186783) anon23_Then_correct) (=> (= (ControlFlow 0 186835) 186321) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 186833) 186835)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_110240 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 186275) 186783) anon23_Then_correct) (=> (= (ControlFlow 0 186275) 186321) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 186253) (- 0 262121)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 186253) 186833) anon22_Then_correct) (=> (= (ControlFlow 0 186253) 186275) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 186865) 186535))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 186233) 186865) anon21_Then_correct) (=> (= (ControlFlow 0 186233) 186253) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 186891) 186535))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |Rolesandybpl.3748:20|
 :skolemid |106|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 186211) 186891) anon20_Then_correct) (=> (= (ControlFlow 0 186211) 186233) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_80957| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@0) v@@35) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 186099) 186211)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_110240| $t3)) 0) (= (seq.len (|p#$Mutation_110240| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 186109) 186099))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 261823) 186109) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t16@0 () Bool)
(declare-fun _$t0@@0 () Int)
(declare-fun $t6 () Int)
(declare-fun $t8@0 () Int)
(declare-fun $t18 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $t14@0@@0 () Int)
(declare-fun $t13@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t13 () T@$1_Roles_RoleId)
(declare-fun $t9@@0 () Int)
(declare-fun $t13@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t10@0 () Bool)
(declare-fun $t12@@0 () Int)
(declare-fun $t7 () Bool)
(declare-fun $t8 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_diem_root$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 262865) (let ((anon18_Then_correct  (=> $t16@0 (and (=> (= (ControlFlow 0 187801) (- 0 263244)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 187801) (- 0 263258)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 187801) (- 0 263270)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6)) 0))) (and (=> (= (ControlFlow 0 187801) (- 0 263288)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 187801) (- 0 263302)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr)) 0))))
 :qid |Rolesandybpl.4371:15|
 :skolemid |109|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@0)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@0)) 0))))
 :qid |Rolesandybpl.4371:15|
 :skolemid |109|
)) (and (=> (= (ControlFlow 0 187801) (- 0 263351)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@1)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@1)) 1))))
 :qid |Rolesandybpl.4375:15|
 :skolemid |110|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@2)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@2)) 1))))
 :qid |Rolesandybpl.4375:15|
 :skolemid |110|
)) (and (=> (= (ControlFlow 0 187801) (- 0 263400)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@3)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@3)) 3))))
 :qid |Rolesandybpl.4379:15|
 :skolemid |111|
))) (=> (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@4)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@4)) 3))))
 :qid |Rolesandybpl.4379:15|
 :skolemid |111|
)) (and (=> (= (ControlFlow 0 187801) (- 0 263449)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@5)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@5)) 4))))
 :qid |Rolesandybpl.4383:15|
 :skolemid |112|
))) (=> (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@6)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@6)) 4))))
 :qid |Rolesandybpl.4383:15|
 :skolemid |112|
)) (and (=> (= (ControlFlow 0 187801) (- 0 263498)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@7)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@7)) 2))))
 :qid |Rolesandybpl.4387:15|
 :skolemid |113|
))) (=> (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@8)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@8)) 2))))
 :qid |Rolesandybpl.4387:15|
 :skolemid |113|
)) (and (=> (= (ControlFlow 0 187801) (- 0 263547)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@9)) 5))))
 :qid |Rolesandybpl.4391:15|
 :skolemid |114|
))) (=> (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@10)) 5))))
 :qid |Rolesandybpl.4391:15|
 :skolemid |114|
)) (=> (= (ControlFlow 0 187801) (- 0 263596)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@11)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@11)) 6))))
 :qid |Rolesandybpl.4395:15|
 :skolemid |115|
))))))))))))))))))))))))))
(let ((L5_correct@@0  (and (=> (= (ControlFlow 0 187292) (- 0 263680)) (or (or (or (not (= _$t0@@0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= _$t0@@0 173345816)))) (=> (or (or (or (not (= _$t0@@0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= _$t0@@0 173345816))) (=> (= (ControlFlow 0 187292) (- 0 263724)) (or (or (or (and (not (= _$t0@@0 173345816)) (= 2 $t8@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6)) (= 5 $t8@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6)) 0)) (= 3 $t8@0))) (and (not (= _$t0@@0 173345816)) (= 2 $t8@0))))))))
(let ((anon18_Else_correct  (=> (and (and (not $t16@0) (= $t18 $t18)) (and (= $t8@0 $t18) (= (ControlFlow 0 187378) 187292))) L5_correct@@0)))
(let ((anon17_Else_correct  (=> (not $abort_flag@0@@0) (=> (and (and (and (= $t14@0@@0 (|$role_id#$1_Roles_RoleId| $t13@1)) (|$IsValid'u64'| 0)) (and (= $t16@0 (= $t14@0@@0 0)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t18) (= $t18 3)) (and (= $t18 $t18) (= $t16@0 $t16@0)))) (and (=> (= (ControlFlow 0 187362) 187801) anon18_Then_correct) (=> (= (ControlFlow 0 187362) 187378) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t8@0 $abort_code@1@@0) (= (ControlFlow 0 187815) 187292))) L5_correct@@0)))
(let ((anon16_Then$1_correct  (=> (= $t13@1 $t13) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 187867) 187815) anon17_Then_correct) (=> (= (ControlFlow 0 187867) 187362) anon17_Else_correct))))))
(let ((anon16_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t9@@0)) (= (ControlFlow 0 187865) 187867)) anon16_Then$1_correct)))
(let ((anon16_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t9@@0) (=> (and (and (= $t13@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t9@@0)) (= $t13@1 $t13@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 187310) 187815) anon17_Then_correct) (=> (= (ControlFlow 0 187310) 187362) anon17_Else_correct))))))
(let ((anon15_Then_correct  (=> $t10@0 (and (=> (= (ControlFlow 0 187296) 187865) anon16_Then_correct) (=> (= (ControlFlow 0 187296) 187310) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (and (not $t10@0) (= $t12@@0 $t12@@0)) (and (= $t8@0 $t12@@0) (= (ControlFlow 0 187156) 187292))) L5_correct@@0)))
(let ((anon14_Else_correct  (=> (and (not $t7) (|$IsValid'address'| $t9@@0)) (=> (and (and (and (= $t9@@0 _$t0@@0) (= $t9@@0 $t9@@0)) (and (= $t10@0 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t9@@0)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t12@@0) (= $t12@@0 5)) (and (= $t12@@0 $t12@@0) (= $t10@0 $t10@0)))) (and (=> (= (ControlFlow 0 187140) 187296) anon15_Then_correct) (=> (= (ControlFlow 0 187140) 187156) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> $t7 (=> (and (and (and (not (= _$t0@@0 173345816)) (= 2 $t8)) (= $t8 $t8)) (and (= $t8@0 $t8) (= (ControlFlow 0 187897) 187292))) L5_correct@@0))))
(let ((anon0$1_correct@@0  (=> (|$IsValid'address'| _$t0@@0) (=> (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |Rolesandybpl.4171:20|
 :skolemid |108|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@0))
)) (= $t6 _$t0@@0)) (and (= _$t0@@0 _$t0@@0) (= $t7  (not (= _$t0@@0 173345816))))) (and (=> (= (ControlFlow 0 187078) 187897) anon14_Then_correct) (=> (= (ControlFlow 0 187078) 187140) anon14_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_80957| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@1) v@@36) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 187002) 187078)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 262865) 187002) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t16@0@@0 () Bool)
(declare-fun $t6@@0 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun $t8@0@@0 () Int)
(declare-fun $t18@@0 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t14@0@@1 () Int)
(declare-fun $t13@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t13@@0 () T@$1_Roles_RoleId)
(declare-fun $t9@@1 () Int)
(declare-fun $t13@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t10@0@@0 () Bool)
(declare-fun $t12@@1 () Int)
(declare-fun $t7@@0 () Bool)
(declare-fun $t8@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_treasury_compliance$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 263809) (let ((anon18_Then_correct@@0  (=> $t16@0@@0 (and (=> (= (ControlFlow 0 188756) (- 0 264194)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@0))) (and (=> (= (ControlFlow 0 188756) (- 0 264206)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@0)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (and (=> (= (ControlFlow 0 188756) (- 0 264224)) (not (not (= _$t0@@1 186537453)))) (=> (not (not (= _$t0@@1 186537453))) (and (=> (= (ControlFlow 0 188756) (- 0 264238)) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@12)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@12)) 0))))
 :qid |Rolesandybpl.4655:15|
 :skolemid |117|
))) (=> (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@13)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@13)) 0))))
 :qid |Rolesandybpl.4655:15|
 :skolemid |117|
)) (and (=> (= (ControlFlow 0 188756) (- 0 264287)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@14)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@14)) 1))))
 :qid |Rolesandybpl.4659:15|
 :skolemid |118|
))) (=> (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@15)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@15)) 1))))
 :qid |Rolesandybpl.4659:15|
 :skolemid |118|
)) (and (=> (= (ControlFlow 0 188756) (- 0 264336)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@16)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@16)) 3))))
 :qid |Rolesandybpl.4663:15|
 :skolemid |119|
))) (=> (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@17)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@17)) 3))))
 :qid |Rolesandybpl.4663:15|
 :skolemid |119|
)) (and (=> (= (ControlFlow 0 188756) (- 0 264385)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@18)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@18)) 4))))
 :qid |Rolesandybpl.4667:15|
 :skolemid |120|
))) (=> (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@19)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@19)) 4))))
 :qid |Rolesandybpl.4667:15|
 :skolemid |120|
)) (and (=> (= (ControlFlow 0 188756) (- 0 264434)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@20)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@20)) 2))))
 :qid |Rolesandybpl.4671:15|
 :skolemid |121|
))) (=> (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@21)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@21)) 2))))
 :qid |Rolesandybpl.4671:15|
 :skolemid |121|
)) (and (=> (= (ControlFlow 0 188756) (- 0 264483)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@22)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@22)) 5))))
 :qid |Rolesandybpl.4675:15|
 :skolemid |122|
))) (=> (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@23)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@23)) 5))))
 :qid |Rolesandybpl.4675:15|
 :skolemid |122|
)) (=> (= (ControlFlow 0 188756) (- 0 264532)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@24)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@24)) 6))))
 :qid |Rolesandybpl.4679:15|
 :skolemid |123|
))))))))))))))))))))))))
(let ((L5_correct@@1  (and (=> (= (ControlFlow 0 188257) (- 0 264616)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= _$t0@@1 186537453)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= _$t0@@1 186537453))) (=> (= (ControlFlow 0 188257) (- 0 264649)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t8@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@0)) 1)) (= 3 $t8@0@@0))) (and (not (= _$t0@@1 186537453)) (= 2 $t8@0@@0))))))))
(let ((anon18_Else_correct@@0  (=> (and (and (not $t16@0@@0) (= $t18@@0 $t18@@0)) (and (= $t8@0@@0 $t18@@0) (= (ControlFlow 0 188347) 188257))) L5_correct@@1)))
(let ((anon17_Else_correct@@0  (=> (not $abort_flag@0@@1) (=> (and (and (and (= $t14@0@@1 (|$role_id#$1_Roles_RoleId| $t13@1@@0)) (|$IsValid'u64'| 1)) (and (= $t16@0@@0 (= $t14@0@@1 1)) (|$IsValid'u64'| 2))) (and (and (|$IsValid'u64'| $t18@@0) (= $t18@@0 3)) (and (= $t18@@0 $t18@@0) (= $t16@0@@0 $t16@0@@0)))) (and (=> (= (ControlFlow 0 188331) 188756) anon18_Then_correct@@0) (=> (= (ControlFlow 0 188331) 188347) anon18_Else_correct@@0))))))
(let ((anon17_Then_correct@@0  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t8@0@@0 $abort_code@1@@1) (= (ControlFlow 0 188770) 188257))) L5_correct@@1)))
(let ((anon16_Then$1_correct@@0  (=> (= $t13@1@@0 $t13@@0) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 188822) 188770) anon17_Then_correct@@0) (=> (= (ControlFlow 0 188822) 188331) anon17_Else_correct@@0))))))
(let ((anon16_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t9@@1)) (= (ControlFlow 0 188820) 188822)) anon16_Then$1_correct@@0)))
(let ((anon16_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t9@@1) (=> (and (and (= $t13@0@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t9@@1)) (= $t13@1@@0 $t13@0@@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 188275) 188770) anon17_Then_correct@@0) (=> (= (ControlFlow 0 188275) 188331) anon17_Else_correct@@0))))))
(let ((anon15_Then_correct@@0  (=> $t10@0@@0 (and (=> (= (ControlFlow 0 188261) 188820) anon16_Then_correct@@0) (=> (= (ControlFlow 0 188261) 188275) anon16_Else_correct@@0)))))
(let ((anon15_Else_correct@@0  (=> (and (and (not $t10@0@@0) (= $t12@@1 $t12@@1)) (and (= $t8@0@@0 $t12@@1) (= (ControlFlow 0 188153) 188257))) L5_correct@@1)))
(let ((anon14_Else_correct@@0  (=> (and (not $t7@@0) (|$IsValid'address'| $t9@@1)) (=> (and (and (and (= $t9@@1 _$t0@@1) (= $t9@@1 $t9@@1)) (and (= $t10@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t9@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t12@@1) (= $t12@@1 5)) (and (= $t12@@1 $t12@@1) (= $t10@0@@0 $t10@0@@0)))) (and (=> (= (ControlFlow 0 188137) 188261) anon15_Then_correct@@0) (=> (= (ControlFlow 0 188137) 188153) anon15_Else_correct@@0))))))
(let ((anon14_Then_correct@@0  (=> $t7@@0 (=> (and (and (and (not (= _$t0@@1 186537453)) (= 2 $t8@@0)) (= $t8@@0 $t8@@0)) (and (= $t8@0@@0 $t8@@0) (= (ControlFlow 0 188852) 188257))) L5_correct@@1))))
(let ((anon0$1_correct@@1  (=> (|$IsValid'address'| _$t0@@1) (=> (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |Rolesandybpl.4458:20|
 :skolemid |116|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@1))
)) (= $t6@@0 _$t0@@1)) (and (= _$t0@@1 _$t0@@1) (= $t7@@0  (not (= _$t0@@1 186537453))))) (and (=> (= (ControlFlow 0 188075) 188852) anon14_Then_correct@@0) (=> (= (ControlFlow 0 188075) 188137) anon14_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_80957| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@2) v@@37) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 187999) 188075)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 263809) 187999) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t14@0@@2 () Bool)
(declare-fun _$t0@@2 () Int)
(declare-fun $t10@0@@1 () Int)
(declare-fun $t16 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t12@0 () Int)
(declare-fun $t11@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t11@@0 () T@$1_Roles_RoleId)
(declare-fun $t6@@1 () Int)
(declare-fun $t11@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t9@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 264716) (let ((anon15_Then_correct@@1  (=> $t14@0@@2 (and (=> (= (ControlFlow 0 189643) (- 0 265039)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@2))) (and (=> (= (ControlFlow 0 189643) (- 0 265052)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@2)) 6)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@2)) 6))) (and (=> (= (ControlFlow 0 189643) (- 0 265071)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@25)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@25)) 0))))
 :qid |Rolesandybpl.4897:15|
 :skolemid |125|
))) (=> (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@26)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@26)) 0))))
 :qid |Rolesandybpl.4897:15|
 :skolemid |125|
)) (and (=> (= (ControlFlow 0 189643) (- 0 265120)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@27)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@27)) 1))))
 :qid |Rolesandybpl.4901:15|
 :skolemid |126|
))) (=> (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@28)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@28)) 1))))
 :qid |Rolesandybpl.4901:15|
 :skolemid |126|
)) (and (=> (= (ControlFlow 0 189643) (- 0 265169)) (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@29)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@29)) 3))))
 :qid |Rolesandybpl.4905:15|
 :skolemid |127|
))) (=> (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@30)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@30)) 3))))
 :qid |Rolesandybpl.4905:15|
 :skolemid |127|
)) (and (=> (= (ControlFlow 0 189643) (- 0 265218)) (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@31)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@31)) 4))))
 :qid |Rolesandybpl.4909:15|
 :skolemid |128|
))) (=> (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@32)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@32)) 4))))
 :qid |Rolesandybpl.4909:15|
 :skolemid |128|
)) (and (=> (= (ControlFlow 0 189643) (- 0 265267)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@33)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@33)) 2))))
 :qid |Rolesandybpl.4913:15|
 :skolemid |129|
))) (=> (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@34)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@34)) 2))))
 :qid |Rolesandybpl.4913:15|
 :skolemid |129|
)) (and (=> (= (ControlFlow 0 189643) (- 0 265316)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@35)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@35)) 5))))
 :qid |Rolesandybpl.4917:15|
 :skolemid |130|
))) (=> (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@36)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@36)) 5))))
 :qid |Rolesandybpl.4917:15|
 :skolemid |130|
)) (=> (= (ControlFlow 0 189643) (- 0 265365)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@37)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@37)) 6))))
 :qid |Rolesandybpl.4921:15|
 :skolemid |131|
))))))))))))))))))))))
(let ((L5_correct@@2  (and (=> (= (ControlFlow 0 189154) (- 0 265445)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@2)) 6)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@2)) 6))) (=> (= (ControlFlow 0 189154) (- 0 265469)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@2)) (= 5 $t10@0@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@2)) 6)) (= 3 $t10@0@@1))))))))
(let ((anon15_Else_correct@@1  (=> (and (and (not $t14@0@@2) (= $t16 $t16)) (and (= $t10@0@@1 $t16) (= (ControlFlow 0 189244) 189154))) L5_correct@@2)))
(let ((anon14_Else_correct@@1  (=> (not $abort_flag@0@@2) (=> (and (and (and (= $t12@0 (|$role_id#$1_Roles_RoleId| $t11@1)) (|$IsValid'u64'| 6)) (and (= $t14@0@@2 (= $t12@0 6)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| $t16) (= $t16 3)) (and (= $t16 $t16) (= $t14@0@@2 $t14@0@@2)))) (and (=> (= (ControlFlow 0 189228) 189643) anon15_Then_correct@@1) (=> (= (ControlFlow 0 189228) 189244) anon15_Else_correct@@1))))))
(let ((anon14_Then_correct@@1  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t10@0@@1 $abort_code@1@@2) (= (ControlFlow 0 189657) 189154))) L5_correct@@2)))
(let ((anon13_Then$1_correct  (=> (= $t11@1 $t11@@0) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 189709) 189657) anon14_Then_correct@@1) (=> (= (ControlFlow 0 189709) 189228) anon14_Else_correct@@1))))))
(let ((anon13_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@1)) (= (ControlFlow 0 189707) 189709)) anon13_Then$1_correct)))
(let ((anon13_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@1) (=> (and (and (= $t11@0@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@1)) (= $t11@1 $t11@0@@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 189172) 189657) anon14_Then_correct@@1) (=> (= (ControlFlow 0 189172) 189228) anon14_Else_correct@@1))))))
(let ((anon12_Then_correct  (=> $t7@0 (and (=> (= (ControlFlow 0 189158) 189707) anon13_Then_correct) (=> (= (ControlFlow 0 189158) 189172) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (and (not $t7@0) (= $t9@@2 $t9@@2)) (and (= $t10@0@@1 $t9@@2) (= (ControlFlow 0 189074) 189154))) L5_correct@@2)))
(let ((anon0$1_correct@@2  (=> (and (and (|$IsValid'address'| _$t0@@2) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@2)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@2))
 :qid |Rolesandybpl.4740:20|
 :skolemid |124|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@2))
))) (and (= _$t0@@2 _$t0@@2) (|$IsValid'address'| $t6@@1))) (=> (and (and (and (= $t6@@1 _$t0@@2) (= $t6@@1 $t6@@1)) (and (= $t7@0 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t9@@2) (= $t9@@2 5)) (and (= $t9@@2 $t9@@2) (= $t7@0 $t7@0)))) (and (=> (= (ControlFlow 0 189058) 189158) anon12_Then_correct) (=> (= (ControlFlow 0 189058) 189074) anon12_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_80957| stream@@3) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@3) v@@38) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 188954) 189058)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 264716) 188954) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t15@0@@0 () Bool)
(declare-fun $t6@@2 () Int)
(declare-fun $t11@0@@1 () Int)
(declare-fun $t17 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $t13@0@@1 () Int)
(declare-fun $t12@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t12@@2 () T@$1_Roles_RoleId)
(declare-fun $t7@@1 () Int)
(declare-fun $t12@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t8@0@@1 () Bool)
(declare-fun $t10@@0 () Int)
(declare-fun _$t0@@3 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_designated_dealer$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 265520) (let ((anon15_Then_correct@@2  (=> $t15@0@@0 (and (=> (= (ControlFlow 0 190500) (- 0 265856)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@2))) (and (=> (= (ControlFlow 0 190500) (- 0 265868)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@2)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@2)) 2))) (and (=> (= (ControlFlow 0 190500) (- 0 265886)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@38)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@38)) 0))))
 :qid |Rolesandybpl.5145:15|
 :skolemid |133|
))) (=> (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@39)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@39)) 0))))
 :qid |Rolesandybpl.5145:15|
 :skolemid |133|
)) (and (=> (= (ControlFlow 0 190500) (- 0 265935)) (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@40)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@40)) 1))))
 :qid |Rolesandybpl.5149:15|
 :skolemid |134|
))) (=> (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@41)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@41)) 1))))
 :qid |Rolesandybpl.5149:15|
 :skolemid |134|
)) (and (=> (= (ControlFlow 0 190500) (- 0 265984)) (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@42)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@42)) 3))))
 :qid |Rolesandybpl.5153:15|
 :skolemid |135|
))) (=> (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@43)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@43)) 3))))
 :qid |Rolesandybpl.5153:15|
 :skolemid |135|
)) (and (=> (= (ControlFlow 0 190500) (- 0 266033)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@44)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@44)) 4))))
 :qid |Rolesandybpl.5157:15|
 :skolemid |136|
))) (=> (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@45)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@45)) 4))))
 :qid |Rolesandybpl.5157:15|
 :skolemid |136|
)) (and (=> (= (ControlFlow 0 190500) (- 0 266082)) (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@46)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@46)) 2))))
 :qid |Rolesandybpl.5161:15|
 :skolemid |137|
))) (=> (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@47)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@47)) 2))))
 :qid |Rolesandybpl.5161:15|
 :skolemid |137|
)) (and (=> (= (ControlFlow 0 190500) (- 0 266131)) (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@48)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@48)) 5))))
 :qid |Rolesandybpl.5165:15|
 :skolemid |138|
))) (=> (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@49)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@49)) 5))))
 :qid |Rolesandybpl.5165:15|
 :skolemid |138|
)) (=> (= (ControlFlow 0 190500) (- 0 266180)) (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@50)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@50)) 6))))
 :qid |Rolesandybpl.5169:15|
 :skolemid |139|
))))))))))))))))))))))
(let ((L5_correct@@3  (and (=> (= (ControlFlow 0 190015) (- 0 266260)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@2)) 2)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@2)) 2))) (=> (= (ControlFlow 0 190015) (- 0 266282)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@2)) (= 5 $t11@0@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@2)) 2)) (= 3 $t11@0@@1))))))))
(let ((anon15_Else_correct@@2  (=> (and (and (not $t15@0@@0) (= $t17 $t17)) (and (= $t11@0@@1 $t17) (= (ControlFlow 0 190105) 190015))) L5_correct@@3)))
(let ((anon14_Else_correct@@2  (=> (not $abort_flag@0@@3) (=> (and (and (and (= $t13@0@@1 (|$role_id#$1_Roles_RoleId| $t12@1)) (|$IsValid'u64'| 2)) (and (= $t15@0@@0 (= $t13@0@@1 2)) (|$IsValid'u64'| 6))) (and (and (|$IsValid'u64'| $t17) (= $t17 3)) (and (= $t17 $t17) (= $t15@0@@0 $t15@0@@0)))) (and (=> (= (ControlFlow 0 190089) 190500) anon15_Then_correct@@2) (=> (= (ControlFlow 0 190089) 190105) anon15_Else_correct@@2))))))
(let ((anon14_Then_correct@@2  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t11@0@@1 $abort_code@1@@3) (= (ControlFlow 0 190514) 190015))) L5_correct@@3)))
(let ((anon13_Then$1_correct@@0  (=> (= $t12@1 $t12@@2) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 190566) 190514) anon14_Then_correct@@2) (=> (= (ControlFlow 0 190566) 190089) anon14_Else_correct@@2))))))
(let ((anon13_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t7@@1)) (= (ControlFlow 0 190564) 190566)) anon13_Then$1_correct@@0)))
(let ((anon13_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t7@@1) (=> (and (and (= $t12@0@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t7@@1)) (= $t12@1 $t12@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 190033) 190514) anon14_Then_correct@@2) (=> (= (ControlFlow 0 190033) 190089) anon14_Else_correct@@2))))))
(let ((anon12_Then_correct@@0  (=> $t8@0@@1 (and (=> (= (ControlFlow 0 190019) 190564) anon13_Then_correct@@0) (=> (= (ControlFlow 0 190019) 190033) anon13_Else_correct@@0)))))
(let ((anon12_Else_correct@@0  (=> (and (and (not $t8@0@@1) (= $t10@@0 $t10@@0)) (and (= $t11@0@@1 $t10@@0) (= (ControlFlow 0 189943) 190015))) L5_correct@@3)))
(let ((anon0$1_correct@@3  (=> (|$IsValid'address'| _$t0@@3) (=> (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@3)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@3))
 :qid |Rolesandybpl.4983:20|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@3))
)) (= $t6@@2 _$t0@@3)) (and (= _$t0@@3 _$t0@@3) (|$IsValid'address'| $t7@@1))) (=> (and (and (and (= $t7@@1 _$t0@@3) (= $t7@@1 $t7@@1)) (and (= $t8@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t7@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t10@@0) (= $t10@@0 5)) (and (= $t10@@0 $t10@@0) (= $t8@0@@1 $t8@0@@1)))) (and (=> (= (ControlFlow 0 189927) 190019) anon12_Then_correct@@0) (=> (= (ControlFlow 0 189927) 189943) anon12_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_80957| stream@@4) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@4) v@@39) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 189811) 189927)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 265520) 189811) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t7@0@@0 () Bool)
(declare-fun $t8@@1 () Int)
(declare-fun $t9@@3 () Int)
(declare-fun $t14@0@@3 () Int)
(declare-fun $t23@@0 () Int)
(declare-fun $t18@0@@0 () Bool)
(declare-fun $t21@0 () Bool)
(declare-fun $t16@0@@1 () Int)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $t15@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t15 () T@$1_Roles_RoleId)
(declare-fun $t10@@1 () Int)
(declare-fun $t15@0@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t11@0@@2 () Bool)
(declare-fun $t13@@1 () Int)
(declare-fun _$t0@@4 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_parent_vasp_or_child_vasp$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 266331) (let ((anon19_Then_correct  (=> $t7@0@@0 (and (=> (= (ControlFlow 0 191419) (- 0 266749)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t8@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t8@@1))) (and (=> (= (ControlFlow 0 191419) (- 0 266761)) (not (and (not (= $t9@@3 5)) (not (= $t9@@3 6))))) (=> (not (and (not (= $t9@@3 5)) (not (= $t9@@3 6)))) (and (=> (= (ControlFlow 0 191419) (- 0 266784)) (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@51)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@51)) 0))))
 :qid |Rolesandybpl.5452:15|
 :skolemid |141|
))) (=> (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@52)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@52)) 0))))
 :qid |Rolesandybpl.5452:15|
 :skolemid |141|
)) (and (=> (= (ControlFlow 0 191419) (- 0 266833)) (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@53)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@53)) 1))))
 :qid |Rolesandybpl.5456:15|
 :skolemid |142|
))) (=> (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@54)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@54)) 1))))
 :qid |Rolesandybpl.5456:15|
 :skolemid |142|
)) (and (=> (= (ControlFlow 0 191419) (- 0 266882)) (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@55)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@55)) 3))))
 :qid |Rolesandybpl.5460:15|
 :skolemid |143|
))) (=> (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@56)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@56)) 3))))
 :qid |Rolesandybpl.5460:15|
 :skolemid |143|
)) (and (=> (= (ControlFlow 0 191419) (- 0 266931)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@57)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@57)) 4))))
 :qid |Rolesandybpl.5464:15|
 :skolemid |144|
))) (=> (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@58)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@58)) 4))))
 :qid |Rolesandybpl.5464:15|
 :skolemid |144|
)) (and (=> (= (ControlFlow 0 191419) (- 0 266980)) (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@59)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@59)) 2))))
 :qid |Rolesandybpl.5468:15|
 :skolemid |145|
))) (=> (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@60)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@60)) 2))))
 :qid |Rolesandybpl.5468:15|
 :skolemid |145|
)) (and (=> (= (ControlFlow 0 191419) (- 0 267029)) (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@61)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@61)) 5))))
 :qid |Rolesandybpl.5472:15|
 :skolemid |146|
))) (=> (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@62)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@62)) 5))))
 :qid |Rolesandybpl.5472:15|
 :skolemid |146|
)) (=> (= (ControlFlow 0 191419) (- 0 267078)) (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@63)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@63)) 6))))
 :qid |Rolesandybpl.5476:15|
 :skolemid |147|
))))))))))))))))))))))
(let ((L9_correct  (and (=> (= (ControlFlow 0 190894) (- 0 267158)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t8@@1)) (and (not (= $t9@@3 5)) (not (= $t9@@3 6))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t8@@1)) (and (not (= $t9@@3 5)) (not (= $t9@@3 6)))) (=> (= (ControlFlow 0 190894) (- 0 267185)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t8@@1)) (= 5 $t14@0@@3)) (and (and (not (= $t9@@3 5)) (not (= $t9@@3 6))) (= 3 $t14@0@@3))))))))
(let ((anon19_Else_correct  (=> (and (and (not $t7@0@@0) (= $t23@@0 $t23@@0)) (and (= $t14@0@@3 $t23@@0) (= (ControlFlow 0 191020) 190894))) L9_correct)))
(let ((L5_correct@@4  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t23@@0) (= $t23@@0 3)) (and (= $t23@@0 $t23@@0) (= $t7@0@@0 $t7@0@@0))) (and (=> (= (ControlFlow 0 191004) 191419) anon19_Then_correct) (=> (= (ControlFlow 0 191004) 191020) anon19_Else_correct))))))
(let ((anon18_Else_correct@@1  (=> (and (not $t18@0@@0) (|$IsValid'u64'| 6)) (=> (and (and (= $t21@0 (= $t16@0@@1 6)) (= $t21@0 $t21@0)) (and (= $t7@0@@0 $t21@0) (= (ControlFlow 0 190970) 191004))) L5_correct@@4))))
(let ((anon18_Then_correct@@1  (=> (and (and $t18@0@@0 (= true true)) (and (= $t7@0@@0 true) (= (ControlFlow 0 191437) 191004))) L5_correct@@4)))
(let ((anon17_Else_correct@@1  (=> (not $abort_flag@0@@4) (=> (and (and (= $t16@0@@1 (|$role_id#$1_Roles_RoleId| $t15@1)) (= $t16@0@@1 $t16@0@@1)) (and (|$IsValid'u64'| 5) (= $t18@0@@0 (= $t16@0@@1 5)))) (and (=> (= (ControlFlow 0 190944) 191437) anon18_Then_correct@@1) (=> (= (ControlFlow 0 190944) 190970) anon18_Else_correct@@1))))))
(let ((anon17_Then_correct@@1  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t14@0@@3 $abort_code@1@@4) (= (ControlFlow 0 191451) 190894))) L9_correct)))
(let ((anon16_Then$1_correct@@1  (=> (= $t15@1 $t15) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 191503) 191451) anon17_Then_correct@@1) (=> (= (ControlFlow 0 191503) 190944) anon17_Else_correct@@1))))))
(let ((anon16_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t10@@1)) (= (ControlFlow 0 191501) 191503)) anon16_Then$1_correct@@1)))
(let ((anon16_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t10@@1) (=> (and (and (= $t15@0@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t10@@1)) (= $t15@1 $t15@0@@1)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 190912) 191451) anon17_Then_correct@@1) (=> (= (ControlFlow 0 190912) 190944) anon17_Else_correct@@1))))))
(let ((anon15_Then_correct@@3  (=> $t11@0@@2 (and (=> (= (ControlFlow 0 190898) 191501) anon16_Then_correct@@1) (=> (= (ControlFlow 0 190898) 190912) anon16_Else_correct@@1)))))
(let ((anon15_Else_correct@@3  (=> (and (and (not $t11@0@@2) (= $t13@@1 $t13@@1)) (and (= $t14@0@@3 $t13@@1) (= (ControlFlow 0 190814) 190894))) L9_correct)))
(let ((anon0$1_correct@@4  (=> (and (|$IsValid'address'| _$t0@@4) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |Rolesandybpl.5237:20|
 :skolemid |140|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@4))
))) (=> (and (and (= $t8@@1 _$t0@@4) (= $t9@@3 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t8@@1)))) (and (= _$t0@@4 _$t0@@4) (|$IsValid'address'| $t10@@1))) (=> (and (and (and (= $t10@@1 _$t0@@4) (= $t10@@1 $t10@@1)) (and (= $t11@0@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t10@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t13@@1) (= $t13@@1 5)) (and (= $t13@@1 $t13@@1) (= $t11@0@@2 $t11@0@@2)))) (and (=> (= (ControlFlow 0 190798) 190898) anon15_Then_correct@@3) (=> (= (ControlFlow 0 190798) 190814) anon15_Else_correct@@3)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_80957| stream@@5) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@5) v@@40) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 190668) 190798)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 266331) 190668) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t7@0@@1 () Bool)
(declare-fun $t8@@2 () Int)
(declare-fun $t9@@4 () Int)
(declare-fun $t14@0@@4 () Int)
(declare-fun $t23@@1 () Int)
(declare-fun $t18@0@@1 () Bool)
(declare-fun $t21@0@@0 () Bool)
(declare-fun $t16@0@@2 () Int)
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $t15@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $t15@@0 () T@$1_Roles_RoleId)
(declare-fun $t10@@2 () Int)
(declare-fun $t15@0@@2 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t11@0@@3 () Bool)
(declare-fun $t13@@2 () Int)
(declare-fun _$t0@@5 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_parent_vasp_or_designated_dealer$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 267239) (let ((anon19_Then_correct@@0  (=> $t7@0@@1 (and (=> (= (ControlFlow 0 192354) (- 0 267657)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t8@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t8@@2))) (and (=> (= (ControlFlow 0 192354) (- 0 267669)) (not (and (not (= $t9@@4 5)) (not (= $t9@@4 2))))) (=> (not (and (not (= $t9@@4 5)) (not (= $t9@@4 2)))) (and (=> (= (ControlFlow 0 192354) (- 0 267692)) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@64)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@64)) 0))))
 :qid |Rolesandybpl.5759:15|
 :skolemid |149|
))) (=> (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@65)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@65)) 0))))
 :qid |Rolesandybpl.5759:15|
 :skolemid |149|
)) (and (=> (= (ControlFlow 0 192354) (- 0 267741)) (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@66)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@66)) 1))))
 :qid |Rolesandybpl.5763:15|
 :skolemid |150|
))) (=> (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@67)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@67)) 1))))
 :qid |Rolesandybpl.5763:15|
 :skolemid |150|
)) (and (=> (= (ControlFlow 0 192354) (- 0 267790)) (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@68)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@68)) 3))))
 :qid |Rolesandybpl.5767:15|
 :skolemid |151|
))) (=> (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@69)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@69)) 3))))
 :qid |Rolesandybpl.5767:15|
 :skolemid |151|
)) (and (=> (= (ControlFlow 0 192354) (- 0 267839)) (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@70)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@70)) 4))))
 :qid |Rolesandybpl.5771:15|
 :skolemid |152|
))) (=> (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@71)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@71)) 4))))
 :qid |Rolesandybpl.5771:15|
 :skolemid |152|
)) (and (=> (= (ControlFlow 0 192354) (- 0 267888)) (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@72)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@72)) 2))))
 :qid |Rolesandybpl.5775:15|
 :skolemid |153|
))) (=> (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@73)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@73)) 2))))
 :qid |Rolesandybpl.5775:15|
 :skolemid |153|
)) (and (=> (= (ControlFlow 0 192354) (- 0 267937)) (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@74)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@74)) 5))))
 :qid |Rolesandybpl.5779:15|
 :skolemid |154|
))) (=> (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@75)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@75)) 5))))
 :qid |Rolesandybpl.5779:15|
 :skolemid |154|
)) (=> (= (ControlFlow 0 192354) (- 0 267986)) (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@76)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@76)) 6))))
 :qid |Rolesandybpl.5783:15|
 :skolemid |155|
))))))))))))))))))))))
(let ((L9_correct@@0  (and (=> (= (ControlFlow 0 191829) (- 0 268066)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t8@@2)) (and (not (= $t9@@4 5)) (not (= $t9@@4 2))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t8@@2)) (and (not (= $t9@@4 5)) (not (= $t9@@4 2)))) (=> (= (ControlFlow 0 191829) (- 0 268093)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t8@@2)) (= 5 $t14@0@@4)) (and (and (not (= $t9@@4 5)) (not (= $t9@@4 2))) (= 3 $t14@0@@4))))))))
(let ((anon19_Else_correct@@0  (=> (and (and (not $t7@0@@1) (= $t23@@1 $t23@@1)) (and (= $t14@0@@4 $t23@@1) (= (ControlFlow 0 191955) 191829))) L9_correct@@0)))
(let ((L5_correct@@5  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| $t23@@1) (= $t23@@1 3)) (and (= $t23@@1 $t23@@1) (= $t7@0@@1 $t7@0@@1))) (and (=> (= (ControlFlow 0 191939) 192354) anon19_Then_correct@@0) (=> (= (ControlFlow 0 191939) 191955) anon19_Else_correct@@0))))))
(let ((anon18_Else_correct@@2  (=> (and (not $t18@0@@1) (|$IsValid'u64'| 2)) (=> (and (and (= $t21@0@@0 (= $t16@0@@2 2)) (= $t21@0@@0 $t21@0@@0)) (and (= $t7@0@@1 $t21@0@@0) (= (ControlFlow 0 191905) 191939))) L5_correct@@5))))
(let ((anon18_Then_correct@@2  (=> (and (and $t18@0@@1 (= true true)) (and (= $t7@0@@1 true) (= (ControlFlow 0 192372) 191939))) L5_correct@@5)))
(let ((anon17_Else_correct@@2  (=> (not $abort_flag@0@@5) (=> (and (and (= $t16@0@@2 (|$role_id#$1_Roles_RoleId| $t15@1@@0)) (= $t16@0@@2 $t16@0@@2)) (and (|$IsValid'u64'| 5) (= $t18@0@@1 (= $t16@0@@2 5)))) (and (=> (= (ControlFlow 0 191879) 192372) anon18_Then_correct@@2) (=> (= (ControlFlow 0 191879) 191905) anon18_Else_correct@@2))))))
(let ((anon17_Then_correct@@2  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t14@0@@4 $abort_code@1@@5) (= (ControlFlow 0 192386) 191829))) L9_correct@@0)))
(let ((anon16_Then$1_correct@@2  (=> (= $t15@1@@0 $t15@@0) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 192438) 192386) anon17_Then_correct@@2) (=> (= (ControlFlow 0 192438) 191879) anon17_Else_correct@@2))))))
(let ((anon16_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t10@@2)) (= (ControlFlow 0 192436) 192438)) anon16_Then$1_correct@@2)))
(let ((anon16_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t10@@2) (=> (and (and (= $t15@0@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t10@@2)) (= $t15@1@@0 $t15@0@@2)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 191847) 192386) anon17_Then_correct@@2) (=> (= (ControlFlow 0 191847) 191879) anon17_Else_correct@@2))))))
(let ((anon15_Then_correct@@4  (=> $t11@0@@3 (and (=> (= (ControlFlow 0 191833) 192436) anon16_Then_correct@@2) (=> (= (ControlFlow 0 191833) 191847) anon16_Else_correct@@2)))))
(let ((anon15_Else_correct@@4  (=> (and (and (not $t11@0@@3) (= $t13@@2 $t13@@2)) (and (= $t14@0@@4 $t13@@2) (= (ControlFlow 0 191749) 191829))) L9_correct@@0)))
(let ((anon0$1_correct@@5  (=> (and (|$IsValid'address'| _$t0@@5) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |Rolesandybpl.5544:20|
 :skolemid |148|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@5))
))) (=> (and (and (= $t8@@2 _$t0@@5) (= $t9@@4 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t8@@2)))) (and (= _$t0@@5 _$t0@@5) (|$IsValid'address'| $t10@@2))) (=> (and (and (and (= $t10@@2 _$t0@@5) (= $t10@@2 $t10@@2)) (and (= $t11@0@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t10@@2)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t13@@2) (= $t13@@2 5)) (and (= $t13@@2 $t13@@2) (= $t11@0@@3 $t11@0@@3)))) (and (=> (= (ControlFlow 0 191733) 191833) anon15_Then_correct@@4) (=> (= (ControlFlow 0 191733) 191749) anon15_Else_correct@@4)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_80957| stream@@6) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@6) v@@41) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 191603) 191733)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 267239) 191603) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5)))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t15@0@@3 () Bool)
(declare-fun $t6@@3 () Int)
(declare-fun $t11@0@@4 () Int)
(declare-fun $t17@@0 () Int)
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $t13@0@@2 () Int)
(declare-fun $t12@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun $t12@@3 () T@$1_Roles_RoleId)
(declare-fun $t7@@2 () Int)
(declare-fun $t12@0@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun $t8@0@@2 () Bool)
(declare-fun $t10@@3 () Int)
(declare-fun _$t0@@6 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 268147) (let ((anon15_Then_correct@@5  (=> $t15@0@@3 (and (=> (= (ControlFlow 0 193227) (- 0 268483)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@3))) (and (=> (= (ControlFlow 0 193227) (- 0 268495)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@3)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@3)) 5))) (and (=> (= (ControlFlow 0 193227) (- 0 268513)) (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@77)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@77)) 0))))
 :qid |Rolesandybpl.6007:15|
 :skolemid |157|
))) (=> (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@78)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@78)) 0))))
 :qid |Rolesandybpl.6007:15|
 :skolemid |157|
)) (and (=> (= (ControlFlow 0 193227) (- 0 268562)) (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@79)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@79)) 1))))
 :qid |Rolesandybpl.6011:15|
 :skolemid |158|
))) (=> (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@80)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@80)) 1))))
 :qid |Rolesandybpl.6011:15|
 :skolemid |158|
)) (and (=> (= (ControlFlow 0 193227) (- 0 268611)) (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@81)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@81)) 3))))
 :qid |Rolesandybpl.6015:15|
 :skolemid |159|
))) (=> (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@82)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@82)) 3))))
 :qid |Rolesandybpl.6015:15|
 :skolemid |159|
)) (and (=> (= (ControlFlow 0 193227) (- 0 268660)) (forall ((addr@@83 Int) ) (!  (=> (|$IsValid'address'| addr@@83) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@83)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@83)) 4))))
 :qid |Rolesandybpl.6019:15|
 :skolemid |160|
))) (=> (forall ((addr@@84 Int) ) (!  (=> (|$IsValid'address'| addr@@84) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@84)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@84)) 4))))
 :qid |Rolesandybpl.6019:15|
 :skolemid |160|
)) (and (=> (= (ControlFlow 0 193227) (- 0 268709)) (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@85)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@85)) 2))))
 :qid |Rolesandybpl.6023:15|
 :skolemid |161|
))) (=> (forall ((addr@@86 Int) ) (!  (=> (|$IsValid'address'| addr@@86) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@86)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@86)) 2))))
 :qid |Rolesandybpl.6023:15|
 :skolemid |161|
)) (and (=> (= (ControlFlow 0 193227) (- 0 268758)) (forall ((addr@@87 Int) ) (!  (=> (|$IsValid'address'| addr@@87) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@87)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@87)) 5))))
 :qid |Rolesandybpl.6027:15|
 :skolemid |162|
))) (=> (forall ((addr@@88 Int) ) (!  (=> (|$IsValid'address'| addr@@88) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@88)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@88)) 5))))
 :qid |Rolesandybpl.6027:15|
 :skolemid |162|
)) (=> (= (ControlFlow 0 193227) (- 0 268807)) (forall ((addr@@89 Int) ) (!  (=> (|$IsValid'address'| addr@@89) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@89)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@89)) 6))))
 :qid |Rolesandybpl.6031:15|
 :skolemid |163|
))))))))))))))))))))))
(let ((L5_correct@@6  (and (=> (= (ControlFlow 0 192742) (- 0 268887)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@3)) 5)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@3)) 5))) (=> (= (ControlFlow 0 192742) (- 0 268909)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@3)) (= 5 $t11@0@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@3)) 5)) (= 3 $t11@0@@4))))))))
(let ((anon15_Else_correct@@5  (=> (and (and (not $t15@0@@3) (= $t17@@0 $t17@@0)) (and (= $t11@0@@4 $t17@@0) (= (ControlFlow 0 192832) 192742))) L5_correct@@6)))
(let ((anon14_Else_correct@@3  (=> (not $abort_flag@0@@6) (=> (and (and (and (= $t13@0@@2 (|$role_id#$1_Roles_RoleId| $t12@1@@0)) (|$IsValid'u64'| 5)) (and (= $t15@0@@3 (= $t13@0@@2 5)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t17@@0) (= $t17@@0 3)) (and (= $t17@@0 $t17@@0) (= $t15@0@@3 $t15@0@@3)))) (and (=> (= (ControlFlow 0 192816) 193227) anon15_Then_correct@@5) (=> (= (ControlFlow 0 192816) 192832) anon15_Else_correct@@5))))))
(let ((anon14_Then_correct@@3  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t11@0@@4 $abort_code@1@@6) (= (ControlFlow 0 193241) 192742))) L5_correct@@6)))
(let ((anon13_Then$1_correct@@1  (=> (= $t12@1@@0 $t12@@3) (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 193293) 193241) anon14_Then_correct@@3) (=> (= (ControlFlow 0 193293) 192816) anon14_Else_correct@@3))))))
(let ((anon13_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t7@@2)) (= (ControlFlow 0 193291) 193293)) anon13_Then$1_correct@@1)))
(let ((anon13_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t7@@2) (=> (and (and (= $t12@0@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t7@@2)) (= $t12@1@@0 $t12@0@@1)) (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6))) (and (=> (= (ControlFlow 0 192760) 193241) anon14_Then_correct@@3) (=> (= (ControlFlow 0 192760) 192816) anon14_Else_correct@@3))))))
(let ((anon12_Then_correct@@1  (=> $t8@0@@2 (and (=> (= (ControlFlow 0 192746) 193291) anon13_Then_correct@@1) (=> (= (ControlFlow 0 192746) 192760) anon13_Else_correct@@1)))))
(let ((anon12_Else_correct@@1  (=> (and (and (not $t8@0@@2) (= $t10@@3 $t10@@3)) (and (= $t11@0@@4 $t10@@3) (= (ControlFlow 0 192670) 192742))) L5_correct@@6)))
(let ((anon0$1_correct@@6  (=> (|$IsValid'address'| _$t0@@6) (=> (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |Rolesandybpl.5845:20|
 :skolemid |156|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@6))
)) (= $t6@@3 _$t0@@6)) (and (= _$t0@@6 _$t0@@6) (|$IsValid'address'| $t7@@2))) (=> (and (and (and (= $t7@@2 _$t0@@6) (= $t7@@2 $t7@@2)) (and (= $t8@0@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t7@@2)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t10@@3) (= $t10@@3 5)) (and (= $t10@@3 $t10@@3) (= $t8@0@@2 $t8@0@@2)))) (and (=> (= (ControlFlow 0 192654) 192746) anon12_Then_correct@@1) (=> (= (ControlFlow 0 192654) 192670) anon12_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_80957| stream@@7) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@7) v@@42) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 192538) 192654)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 268147) 192538) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t14@0@@5 () Bool)
(declare-fun _$t0@@7 () Int)
(declare-fun $t10@0@@2 () Int)
(declare-fun $t16@@0 () Int)
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $t12@0@@2 () Int)
(declare-fun $t11@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $t11@@1 () T@$1_Roles_RoleId)
(declare-fun $t6@@4 () Int)
(declare-fun $t11@0@@5 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun $t7@0@@2 () Bool)
(declare-fun $t9@@5 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_validator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 268958) (let ((anon15_Then_correct@@6  (=> $t14@0@@5 (and (=> (= (ControlFlow 0 194084) (- 0 269281)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@7))) (and (=> (= (ControlFlow 0 194084) (- 0 269294)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@7)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@7)) 3))) (and (=> (= (ControlFlow 0 194084) (- 0 269313)) (forall ((addr@@90 Int) ) (!  (=> (|$IsValid'address'| addr@@90) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@90)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@90)) 0))))
 :qid |Rolesandybpl.6249:15|
 :skolemid |165|
))) (=> (forall ((addr@@91 Int) ) (!  (=> (|$IsValid'address'| addr@@91) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@91)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@91)) 0))))
 :qid |Rolesandybpl.6249:15|
 :skolemid |165|
)) (and (=> (= (ControlFlow 0 194084) (- 0 269362)) (forall ((addr@@92 Int) ) (!  (=> (|$IsValid'address'| addr@@92) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@92)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@92)) 1))))
 :qid |Rolesandybpl.6253:15|
 :skolemid |166|
))) (=> (forall ((addr@@93 Int) ) (!  (=> (|$IsValid'address'| addr@@93) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@93)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@93)) 1))))
 :qid |Rolesandybpl.6253:15|
 :skolemid |166|
)) (and (=> (= (ControlFlow 0 194084) (- 0 269411)) (forall ((addr@@94 Int) ) (!  (=> (|$IsValid'address'| addr@@94) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@94)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@94)) 3))))
 :qid |Rolesandybpl.6257:15|
 :skolemid |167|
))) (=> (forall ((addr@@95 Int) ) (!  (=> (|$IsValid'address'| addr@@95) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@95)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@95)) 3))))
 :qid |Rolesandybpl.6257:15|
 :skolemid |167|
)) (and (=> (= (ControlFlow 0 194084) (- 0 269460)) (forall ((addr@@96 Int) ) (!  (=> (|$IsValid'address'| addr@@96) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@96)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@96)) 4))))
 :qid |Rolesandybpl.6261:15|
 :skolemid |168|
))) (=> (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@97)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@97)) 4))))
 :qid |Rolesandybpl.6261:15|
 :skolemid |168|
)) (and (=> (= (ControlFlow 0 194084) (- 0 269509)) (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@98)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@98)) 2))))
 :qid |Rolesandybpl.6265:15|
 :skolemid |169|
))) (=> (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@99)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@99)) 2))))
 :qid |Rolesandybpl.6265:15|
 :skolemid |169|
)) (and (=> (= (ControlFlow 0 194084) (- 0 269558)) (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@100)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@100)) 5))))
 :qid |Rolesandybpl.6269:15|
 :skolemid |170|
))) (=> (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@101) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@101)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@101) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@101)) 5))))
 :qid |Rolesandybpl.6269:15|
 :skolemid |170|
)) (=> (= (ControlFlow 0 194084) (- 0 269607)) (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@102) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@102)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@102) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@102)) 6))))
 :qid |Rolesandybpl.6273:15|
 :skolemid |171|
))))))))))))))))))))))
(let ((L5_correct@@7  (and (=> (= (ControlFlow 0 193595) (- 0 269687)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@7)) 3)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@7)) 3))) (=> (= (ControlFlow 0 193595) (- 0 269711)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@7)) (= 5 $t10@0@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@7)) 3)) (= 3 $t10@0@@2))))))))
(let ((anon15_Else_correct@@6  (=> (and (and (not $t14@0@@5) (= $t16@@0 $t16@@0)) (and (= $t10@0@@2 $t16@@0) (= (ControlFlow 0 193685) 193595))) L5_correct@@7)))
(let ((anon14_Else_correct@@4  (=> (not $abort_flag@0@@7) (=> (and (and (and (= $t12@0@@2 (|$role_id#$1_Roles_RoleId| $t11@1@@0)) (|$IsValid'u64'| 3)) (and (= $t14@0@@5 (= $t12@0@@2 3)) (|$IsValid'u64'| 7))) (and (and (|$IsValid'u64'| $t16@@0) (= $t16@@0 3)) (and (= $t16@@0 $t16@@0) (= $t14@0@@5 $t14@0@@5)))) (and (=> (= (ControlFlow 0 193669) 194084) anon15_Then_correct@@6) (=> (= (ControlFlow 0 193669) 193685) anon15_Else_correct@@6))))))
(let ((anon14_Then_correct@@4  (=> (and (and $abort_flag@0@@7 (= $abort_code@1@@7 $abort_code@1@@7)) (and (= $t10@0@@2 $abort_code@1@@7) (= (ControlFlow 0 194098) 193595))) L5_correct@@7)))
(let ((anon13_Then$1_correct@@2  (=> (= $t11@1@@0 $t11@@1) (=> (and (= $abort_flag@0@@7 true) (= $abort_code@1@@7 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 194150) 194098) anon14_Then_correct@@4) (=> (= (ControlFlow 0 194150) 193669) anon14_Else_correct@@4))))))
(let ((anon13_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@4)) (= (ControlFlow 0 194148) 194150)) anon13_Then$1_correct@@2)))
(let ((anon13_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@4) (=> (and (and (= $t11@0@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@4)) (= $t11@1@@0 $t11@0@@5)) (and (= $abort_flag@0@@7 false) (= $abort_code@1@@7 $abort_code@0@@7))) (and (=> (= (ControlFlow 0 193613) 194098) anon14_Then_correct@@4) (=> (= (ControlFlow 0 193613) 193669) anon14_Else_correct@@4))))))
(let ((anon12_Then_correct@@2  (=> $t7@0@@2 (and (=> (= (ControlFlow 0 193599) 194148) anon13_Then_correct@@2) (=> (= (ControlFlow 0 193599) 193613) anon13_Else_correct@@2)))))
(let ((anon12_Else_correct@@2  (=> (and (and (not $t7@0@@2) (= $t9@@5 $t9@@5)) (and (= $t10@0@@2 $t9@@5) (= (ControlFlow 0 193515) 193595))) L5_correct@@7)))
(let ((anon0$1_correct@@7  (=> (and (and (|$IsValid'address'| _$t0@@7) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |Rolesandybpl.6092:20|
 :skolemid |164|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@7))
))) (and (= _$t0@@7 _$t0@@7) (|$IsValid'address'| $t6@@4))) (=> (and (and (and (= $t6@@4 _$t0@@7) (= $t6@@4 $t6@@4)) (and (= $t7@0@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@4)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t9@@5) (= $t9@@5 5)) (and (= $t9@@5 $t9@@5) (= $t7@0@@2 $t7@0@@2)))) (and (=> (= (ControlFlow 0 193499) 193599) anon12_Then_correct@@2) (=> (= (ControlFlow 0 193499) 193515) anon12_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_80957| stream@@8) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@8) v@@43) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 193395) 193499)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 268958) 193395) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t14@0@@6 () Bool)
(declare-fun _$t0@@8 () Int)
(declare-fun $t10@0@@3 () Int)
(declare-fun $t16@@1 () Int)
(declare-fun $abort_flag@0@@8 () Bool)
(declare-fun $t12@0@@3 () Int)
(declare-fun $t11@1@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@8 () Int)
(declare-fun $t11@@2 () T@$1_Roles_RoleId)
(declare-fun $t6@@5 () Int)
(declare-fun $t11@0@@6 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@8 () Int)
(declare-fun $t7@0@@3 () Bool)
(declare-fun $t9@@6 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_validator_operator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 269762) (let ((anon15_Then_correct@@7  (=> $t14@0@@6 (and (=> (= (ControlFlow 0 194941) (- 0 270085)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@8))) (and (=> (= (ControlFlow 0 194941) (- 0 270098)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@8)) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@8)) 4))) (and (=> (= (ControlFlow 0 194941) (- 0 270117)) (forall ((addr@@103 Int) ) (!  (=> (|$IsValid'address'| addr@@103) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@103) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@103)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@103) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@103)) 0))))
 :qid |Rolesandybpl.6491:15|
 :skolemid |173|
))) (=> (forall ((addr@@104 Int) ) (!  (=> (|$IsValid'address'| addr@@104) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@104) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@104)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@104) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@104)) 0))))
 :qid |Rolesandybpl.6491:15|
 :skolemid |173|
)) (and (=> (= (ControlFlow 0 194941) (- 0 270166)) (forall ((addr@@105 Int) ) (!  (=> (|$IsValid'address'| addr@@105) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@105) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@105)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@105) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@105)) 1))))
 :qid |Rolesandybpl.6495:15|
 :skolemid |174|
))) (=> (forall ((addr@@106 Int) ) (!  (=> (|$IsValid'address'| addr@@106) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@106) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@106)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@106) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@106)) 1))))
 :qid |Rolesandybpl.6495:15|
 :skolemid |174|
)) (and (=> (= (ControlFlow 0 194941) (- 0 270215)) (forall ((addr@@107 Int) ) (!  (=> (|$IsValid'address'| addr@@107) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@107) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@107)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@107) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@107)) 3))))
 :qid |Rolesandybpl.6499:15|
 :skolemid |175|
))) (=> (forall ((addr@@108 Int) ) (!  (=> (|$IsValid'address'| addr@@108) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@108) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@108)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@108) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@108)) 3))))
 :qid |Rolesandybpl.6499:15|
 :skolemid |175|
)) (and (=> (= (ControlFlow 0 194941) (- 0 270264)) (forall ((addr@@109 Int) ) (!  (=> (|$IsValid'address'| addr@@109) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@109) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@109)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@109) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@109)) 4))))
 :qid |Rolesandybpl.6503:15|
 :skolemid |176|
))) (=> (forall ((addr@@110 Int) ) (!  (=> (|$IsValid'address'| addr@@110) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@110) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@110)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@110) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@110)) 4))))
 :qid |Rolesandybpl.6503:15|
 :skolemid |176|
)) (and (=> (= (ControlFlow 0 194941) (- 0 270313)) (forall ((addr@@111 Int) ) (!  (=> (|$IsValid'address'| addr@@111) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@111)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@111)) 2))))
 :qid |Rolesandybpl.6507:15|
 :skolemid |177|
))) (=> (forall ((addr@@112 Int) ) (!  (=> (|$IsValid'address'| addr@@112) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@112)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@112)) 2))))
 :qid |Rolesandybpl.6507:15|
 :skolemid |177|
)) (and (=> (= (ControlFlow 0 194941) (- 0 270362)) (forall ((addr@@113 Int) ) (!  (=> (|$IsValid'address'| addr@@113) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@113)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@113)) 5))))
 :qid |Rolesandybpl.6511:15|
 :skolemid |178|
))) (=> (forall ((addr@@114 Int) ) (!  (=> (|$IsValid'address'| addr@@114) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@114)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@114)) 5))))
 :qid |Rolesandybpl.6511:15|
 :skolemid |178|
)) (=> (= (ControlFlow 0 194941) (- 0 270411)) (forall ((addr@@115 Int) ) (!  (=> (|$IsValid'address'| addr@@115) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@115)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@115)) 6))))
 :qid |Rolesandybpl.6515:15|
 :skolemid |179|
))))))))))))))))))))))
(let ((L5_correct@@8  (and (=> (= (ControlFlow 0 194452) (- 0 270491)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@8)) 4)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@8)) 4))) (=> (= (ControlFlow 0 194452) (- 0 270515)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@8)) (= 5 $t10@0@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@8)) 4)) (= 3 $t10@0@@3))))))))
(let ((anon15_Else_correct@@7  (=> (and (and (not $t14@0@@6) (= $t16@@1 $t16@@1)) (and (= $t10@0@@3 $t16@@1) (= (ControlFlow 0 194542) 194452))) L5_correct@@8)))
(let ((anon14_Else_correct@@5  (=> (not $abort_flag@0@@8) (=> (and (and (and (= $t12@0@@3 (|$role_id#$1_Roles_RoleId| $t11@1@@1)) (|$IsValid'u64'| 4)) (and (= $t14@0@@6 (= $t12@0@@3 4)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| $t16@@1) (= $t16@@1 3)) (and (= $t16@@1 $t16@@1) (= $t14@0@@6 $t14@0@@6)))) (and (=> (= (ControlFlow 0 194526) 194941) anon15_Then_correct@@7) (=> (= (ControlFlow 0 194526) 194542) anon15_Else_correct@@7))))))
(let ((anon14_Then_correct@@5  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t10@0@@3 $abort_code@1@@8) (= (ControlFlow 0 194955) 194452))) L5_correct@@8)))
(let ((anon13_Then$1_correct@@3  (=> (= $t11@1@@1 $t11@@2) (=> (and (= $abort_flag@0@@8 true) (= $abort_code@1@@8 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 195007) 194955) anon14_Then_correct@@5) (=> (= (ControlFlow 0 195007) 194526) anon14_Else_correct@@5))))))
(let ((anon13_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@5)) (= (ControlFlow 0 195005) 195007)) anon13_Then$1_correct@@3)))
(let ((anon13_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@5) (=> (and (and (= $t11@0@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@5)) (= $t11@1@@1 $t11@0@@6)) (and (= $abort_flag@0@@8 false) (= $abort_code@1@@8 $abort_code@0@@8))) (and (=> (= (ControlFlow 0 194470) 194955) anon14_Then_correct@@5) (=> (= (ControlFlow 0 194470) 194526) anon14_Else_correct@@5))))))
(let ((anon12_Then_correct@@3  (=> $t7@0@@3 (and (=> (= (ControlFlow 0 194456) 195005) anon13_Then_correct@@3) (=> (= (ControlFlow 0 194456) 194470) anon13_Else_correct@@3)))))
(let ((anon12_Else_correct@@3  (=> (and (and (not $t7@0@@3) (= $t9@@6 $t9@@6)) (and (= $t10@0@@3 $t9@@6) (= (ControlFlow 0 194372) 194452))) L5_correct@@8)))
(let ((anon0$1_correct@@8  (=> (and (and (|$IsValid'address'| _$t0@@8) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |Rolesandybpl.6334:20|
 :skolemid |172|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@8))
))) (and (= _$t0@@8 _$t0@@8) (|$IsValid'address'| $t6@@5))) (=> (and (and (and (= $t6@@5 _$t0@@8) (= $t6@@5 $t6@@5)) (and (= $t7@0@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@5)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t9@@6) (= $t9@@6 5)) (and (= $t9@@6 $t9@@6) (= $t7@0@@3 $t7@0@@3)))) (and (=> (= (ControlFlow 0 194356) 194456) anon12_Then_correct@@3) (=> (= (ControlFlow 0 194356) 194372) anon12_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_80957| stream@@9) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@9) v@@44) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 194252) 194356)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (ControlFlow 0 269762) 194252) inline$$InitEventStore$0$anon0_correct@@8)))
anon0_correct@@8))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@0 () Bool)
(declare-fun $abort_flag@12 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 () Bool)
(declare-fun $t1@0 () Bool)
(declare-fun $abort_flag@11 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@9 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t3@1 () Bool)
(declare-fun $abort_flag@10 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1 () Bool)
(declare-fun _$t0@@9 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t3@1 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1 () Bool)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@0@@9 () Bool)
(declare-fun $abort_code@1@@9 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@9 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1 () Bool)
(push 1)
(set-info :boogie-vc-id $1_Roles_can_hold_balance$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 270567) (let ((L7_correct  (=> (= $t2@0 $t2@0) (and (=> (= (ControlFlow 0 197610) (- 0 272102)) (forall ((addr@@116 Int) ) (!  (=> (|$IsValid'address'| addr@@116) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@116)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@116)) 0))))
 :qid |Rolesandybpl.6694:15|
 :skolemid |181|
))) (=> (forall ((addr@@117 Int) ) (!  (=> (|$IsValid'address'| addr@@117) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@117) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@117)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@117) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@117)) 0))))
 :qid |Rolesandybpl.6694:15|
 :skolemid |181|
)) (and (=> (= (ControlFlow 0 197610) (- 0 272151)) (forall ((addr@@118 Int) ) (!  (=> (|$IsValid'address'| addr@@118) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@118) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@118)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@118) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@118)) 1))))
 :qid |Rolesandybpl.6698:15|
 :skolemid |182|
))) (=> (forall ((addr@@119 Int) ) (!  (=> (|$IsValid'address'| addr@@119) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@119) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@119)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@119) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@119)) 1))))
 :qid |Rolesandybpl.6698:15|
 :skolemid |182|
)) (and (=> (= (ControlFlow 0 197610) (- 0 272200)) (forall ((addr@@120 Int) ) (!  (=> (|$IsValid'address'| addr@@120) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@120) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@120)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@120) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@120)) 3))))
 :qid |Rolesandybpl.6702:15|
 :skolemid |183|
))) (=> (forall ((addr@@121 Int) ) (!  (=> (|$IsValid'address'| addr@@121) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@121) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@121)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@121) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@121)) 3))))
 :qid |Rolesandybpl.6702:15|
 :skolemid |183|
)) (and (=> (= (ControlFlow 0 197610) (- 0 272249)) (forall ((addr@@122 Int) ) (!  (=> (|$IsValid'address'| addr@@122) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@122) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@122)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@122) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@122)) 4))))
 :qid |Rolesandybpl.6706:15|
 :skolemid |184|
))) (=> (forall ((addr@@123 Int) ) (!  (=> (|$IsValid'address'| addr@@123) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@123) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@123)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@123) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@123)) 4))))
 :qid |Rolesandybpl.6706:15|
 :skolemid |184|
)) (and (=> (= (ControlFlow 0 197610) (- 0 272298)) (forall ((addr@@124 Int) ) (!  (=> (|$IsValid'address'| addr@@124) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@124) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@124)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@124) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@124)) 2))))
 :qid |Rolesandybpl.6710:15|
 :skolemid |185|
))) (=> (forall ((addr@@125 Int) ) (!  (=> (|$IsValid'address'| addr@@125) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@125) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@125)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@125) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@125)) 2))))
 :qid |Rolesandybpl.6710:15|
 :skolemid |185|
)) (and (=> (= (ControlFlow 0 197610) (- 0 272347)) (forall ((addr@@126 Int) ) (!  (=> (|$IsValid'address'| addr@@126) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@126) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@126)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@126) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@126)) 5))))
 :qid |Rolesandybpl.6714:15|
 :skolemid |186|
))) (=> (forall ((addr@@127 Int) ) (!  (=> (|$IsValid'address'| addr@@127) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@127) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@127)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@127) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@127)) 5))))
 :qid |Rolesandybpl.6714:15|
 :skolemid |186|
)) (=> (= (ControlFlow 0 197610) (- 0 272396)) (forall ((addr@@128 Int) ) (!  (=> (|$IsValid'address'| addr@@128) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@128) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@128)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@128) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@128)) 6))))
 :qid |Rolesandybpl.6718:15|
 :skolemid |187|
))))))))))))))))))
(let ((anon18_Else_correct@@3  (=> (and (and (not $abort_flag@12) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1)) (and (= $t2@0 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1) (= (ControlFlow 0 197239) 197610))) L7_correct)))
(let ((anon17_Then_correct@@3  (=> (and (and $t1@0 (= true true)) (and (= $t2@0 true) (= (ControlFlow 0 197648) 197610))) L7_correct)))
(let ((anon18_Then_correct@@3 true))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@11) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1) (= $abort_flag@12 $abort_flag@11))) (and (=> (= (ControlFlow 0 197197) 197624) anon18_Then_correct@@3) (=> (= (ControlFlow 0 197197) 197239) anon18_Else_correct@@3)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct  (=> (and (and $abort_flag@11 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0) (= $abort_flag@12 true))) (and (=> (= (ControlFlow 0 197215) 197624) anon18_Then_correct@@3) (=> (= (ControlFlow 0 197215) 197239) anon18_Else_correct@@3)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct  (=> $abort_flag@9 (=> (and (and (= $abort_code@8 $abort_code@8) (= $abort_flag@11 true)) (and (= $abort_code@10 $abort_code@8) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@0))) (and (=> (= (ControlFlow 0 197121) 197215) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 197121) 197197) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$2$$t3@1 inline$$1_Roles_has_role$2$$t3@1) (= $abort_flag@11 $abort_flag@10)) (and (= $abort_code@10 $abort_code@9) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$t3@1))) (and (=> (= (ControlFlow 0 197057) 197215) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 197057) 197197) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct  (=> (and (and (and (not $abort_flag@9) (= inline$$1_Roles_has_role$2$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2))) (and (= inline$$1_Roles_has_role$2$$t9@1 (= inline$$1_Roles_has_role$2$$t8@1 2)) (= inline$$1_Roles_has_role$2$$t9@1 inline$$1_Roles_has_role$2$$t9@1))) (and (and (= $abort_flag@10 $abort_flag@9) (= inline$$1_Roles_has_role$2$$t3@1 inline$$1_Roles_has_role$2$$t9@1)) (and (= $abort_code@9 $abort_code@8) (= (ControlFlow 0 197103) 197057)))) inline$$1_Roles_has_role$2$L3_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct  (=> (= $abort_code@8 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@9 true) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@0)) (and (=> (= (ControlFlow 0 197173) 197121) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 197173) 197103) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)) (= (ControlFlow 0 197171) 197173)) inline$$1_Roles_has_role$2$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)) (= $abort_code@8 $abort_code@7)) (and (= $abort_flag@9 $abort_flag@8) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@1))) (and (=> (= (ControlFlow 0 197075) 197121) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 197075) 197103) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct  (=> inline$$1_Roles_has_role$2$$t5@1 (and (=> (= (ControlFlow 0 197061) 197171) inline$$1_Roles_has_role$2$anon10_Then_correct) (=> (= (ControlFlow 0 197061) 197075) inline$$1_Roles_has_role$2$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$2$$t5@1) (= false false)) (=> (and (and (= $abort_flag@10 $abort_flag@8) (= inline$$1_Roles_has_role$2$$t3@1 false)) (and (= $abort_code@9 $abort_code@7) (= (ControlFlow 0 197045) 197057))) inline$$1_Roles_has_role$2$L3_correct))))
(let ((inline$$1_Roles_has_role$2$anon0_correct  (=> (and (= _$t0@@9 _$t0@@9) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t4@0 _$t0@@9)) (and (= inline$$1_Roles_has_role$2$$t4@0 inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)))) (and (=> (= (ControlFlow 0 197025) 197061) inline$$1_Roles_has_role$2$anon9_Then_correct) (=> (= (ControlFlow 0 197025) 197045) inline$$1_Roles_has_role$2$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct  (=> (= _$t0@@9 _$t0@@9) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 197179) 197025)) inline$$1_Roles_has_role$2$anon0_correct))))
(let ((anon17_Else_correct@@3  (=> (and (not $t1@0) (= (ControlFlow 0 197221) 197179)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct)))
(let ((anon16_Else_correct@@3  (=> (not $abort_flag@7) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1) (= $abort_flag@8 $abort_flag@7)) (and (= $abort_code@7 $abort_code@6) (= $t1@0 inline$$1_Roles_has_child_VASP_role$0$$ret0@1))) (and (=> (= (ControlFlow 0 196539) 197648) anon17_Then_correct@@3) (=> (= (ControlFlow 0 196539) 197221) anon17_Else_correct@@3))))))
(let ((anon15_Then_correct@@8  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 (=> (and (and (= true true) (= $abort_flag@8 $abort_flag@3)) (and (= $abort_code@7 $abort_code@3) (= $t1@0 true))) (and (=> (= (ControlFlow 0 197680) 197648) anon17_Then_correct@@3) (=> (= (ControlFlow 0 197680) 197221) anon17_Else_correct@@3))))))
(let ((anon16_Then_correct@@3 true))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@6) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1) (= $abort_flag@7 $abort_flag@6))) (and (=> (= (ControlFlow 0 196497) 197662) anon16_Then_correct@@3) (=> (= (ControlFlow 0 196497) 196539) anon16_Else_correct@@3)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@6 $abort_code@6)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0) (= $abort_flag@7 true))) (and (=> (= (ControlFlow 0 196515) 197662) anon16_Then_correct@@3) (=> (= (ControlFlow 0 196515) 196539) anon16_Else_correct@@3)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct  (=> $abort_flag@4 (=> (and (and (= $abort_code@4 $abort_code@4) (= $abort_code@6 $abort_code@4)) (and (= $abort_flag@6 true) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@0))) (and (=> (= (ControlFlow 0 196421) 196515) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 196421) 196497) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$1$$t3@1 inline$$1_Roles_has_role$1$$t3@1) (= $abort_code@6 $abort_code@5)) (and (= $abort_flag@6 $abort_flag@5) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$t3@1))) (and (=> (= (ControlFlow 0 196357) 196515) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 196357) 196497) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct  (=> (and (and (and (not $abort_flag@4) (= inline$$1_Roles_has_role$1$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2))) (and (= inline$$1_Roles_has_role$1$$t9@1 (= inline$$1_Roles_has_role$1$$t8@1 6)) (= inline$$1_Roles_has_role$1$$t9@1 inline$$1_Roles_has_role$1$$t9@1))) (and (and (= $abort_code@5 $abort_code@4) (= inline$$1_Roles_has_role$1$$t3@1 inline$$1_Roles_has_role$1$$t9@1)) (and (= $abort_flag@5 $abort_flag@4) (= (ControlFlow 0 196403) 196357)))) inline$$1_Roles_has_role$1$L3_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@0)) (and (=> (= (ControlFlow 0 196473) 196421) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 196473) 196403) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)) (= (ControlFlow 0 196471) 196473)) inline$$1_Roles_has_role$1$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@4 $abort_code@3) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@1))) (and (=> (= (ControlFlow 0 196375) 196421) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 196375) 196403) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct  (=> inline$$1_Roles_has_role$1$$t5@1 (and (=> (= (ControlFlow 0 196361) 196471) inline$$1_Roles_has_role$1$anon10_Then_correct) (=> (= (ControlFlow 0 196361) 196375) inline$$1_Roles_has_role$1$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$1$$t5@1) (= false false)) (=> (and (and (= $abort_code@5 $abort_code@3) (= inline$$1_Roles_has_role$1$$t3@1 false)) (and (= $abort_flag@5 $abort_flag@3) (= (ControlFlow 0 196345) 196357))) inline$$1_Roles_has_role$1$L3_correct))))
(let ((inline$$1_Roles_has_role$1$anon0_correct  (=> (and (= _$t0@@9 _$t0@@9) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t4@0 _$t0@@9)) (and (= inline$$1_Roles_has_role$1$$t4@0 inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)))) (and (=> (= (ControlFlow 0 196325) 196361) inline$$1_Roles_has_role$1$anon9_Then_correct) (=> (= (ControlFlow 0 196325) 196345) inline$$1_Roles_has_role$1$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct  (=> (= _$t0@@9 _$t0@@9) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 196479) 196325)) inline$$1_Roles_has_role$1$anon0_correct))))
(let ((anon15_Else_correct@@8  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1) (= (ControlFlow 0 196521) 196479)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct)))
(let ((anon14_Else_correct@@6  (=> (not $abort_flag@3) (and (=> (= (ControlFlow 0 195841) 197680) anon15_Then_correct@@8) (=> (= (ControlFlow 0 195841) 196521) anon15_Else_correct@@8)))))
(let ((anon14_Then_correct@@6 true))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@2) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@3 $abort_flag@2))) (and (=> (= (ControlFlow 0 195809) 197694) anon14_Then_correct@@6) (=> (= (ControlFlow 0 195809) 195841) anon14_Else_correct@@6)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0) (= $abort_flag@3 true))) (and (=> (= (ControlFlow 0 195827) 197694) anon14_Then_correct@@6) (=> (= (ControlFlow 0 195827) 195841) anon14_Else_correct@@6)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@0@@9 (=> (and (and (= $abort_code@1@@9 $abort_code@1@@9) (= $abort_code@3 $abort_code@1@@9)) (and (= $abort_flag@2 true) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 195733) 195827) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 195733) 195809) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1 inline$$1_Roles_has_role$0$$t3@1) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t3@1))) (and (=> (= (ControlFlow 0 195669) 195827) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 195669) 195809) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@0@@9) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 5)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_code@2 $abort_code@1@@9) (= inline$$1_Roles_has_role$0$$t3@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_flag@1 $abort_flag@0@@9) (= (ControlFlow 0 195715) 195669)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_flag@0@@9 true) (=> (and (= $abort_code@1@@9 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 195785) 195733) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 195785) 195715) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 195783) 195785)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_flag@0@@9 false)) (and (= $abort_code@1@@9 $abort_code@0@@9) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 195687) 195733) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 195687) 195715) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 195673) 195783) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 195673) 195687) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_code@2 $abort_code@0@@9) (= inline$$1_Roles_has_role$0$$t3@1 false)) (and (= $abort_flag@1 false) (= (ControlFlow 0 195657) 195669))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= _$t0@@9 _$t0@@9) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 _$t0@@9)) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 195637) 195673) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 195637) 195657) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct  (=> (= _$t0@@9 _$t0@@9) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 195791) 195637)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((anon0$1_correct@@9  (=> (and (and (|$IsValid'address'| _$t0@@9) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |Rolesandybpl.6567:20|
 :skolemid |180|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@9))
))) (and (= _$t0@@9 _$t0@@9) (= (ControlFlow 0 195833) 195791))) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct)))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_80957| stream@@10) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@10) v@@45) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 195109) 195833)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 270567) 195109) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9)))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@10 () Bool)
(declare-fun $t8@0@@3 () Int)
(declare-fun $t7@1 () T@$1_Roles_RoleId)
(declare-fun $t7@@3 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@10 () Int)
(declare-fun _$t0@@10 () Int)
(declare-fun $t7@0@@4 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@10 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t5 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_get_role_id$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 272462) (let ((anon12_Else_correct@@4  (=> (not $abort_flag@0@@10) (=> (and (= $t8@0@@3 (|$role_id#$1_Roles_RoleId| $t7@1)) (= $t8@0@@3 $t8@0@@3)) (and (=> (= (ControlFlow 0 198312) (- 0 272714)) (forall ((addr@@129 Int) ) (!  (=> (|$IsValid'address'| addr@@129) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@129) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@129)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@129) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@129)) 0))))
 :qid |Rolesandybpl.6845:15|
 :skolemid |189|
))) (=> (forall ((addr@@130 Int) ) (!  (=> (|$IsValid'address'| addr@@130) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@130) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@130)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@130) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@130)) 0))))
 :qid |Rolesandybpl.6845:15|
 :skolemid |189|
)) (and (=> (= (ControlFlow 0 198312) (- 0 272763)) (forall ((addr@@131 Int) ) (!  (=> (|$IsValid'address'| addr@@131) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@131) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@131)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@131) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@131)) 1))))
 :qid |Rolesandybpl.6849:15|
 :skolemid |190|
))) (=> (forall ((addr@@132 Int) ) (!  (=> (|$IsValid'address'| addr@@132) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@132) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@132)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@132) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@132)) 1))))
 :qid |Rolesandybpl.6849:15|
 :skolemid |190|
)) (and (=> (= (ControlFlow 0 198312) (- 0 272812)) (forall ((addr@@133 Int) ) (!  (=> (|$IsValid'address'| addr@@133) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@133) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@133)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@133) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@133)) 3))))
 :qid |Rolesandybpl.6853:15|
 :skolemid |191|
))) (=> (forall ((addr@@134 Int) ) (!  (=> (|$IsValid'address'| addr@@134) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@134) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@134)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@134) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@134)) 3))))
 :qid |Rolesandybpl.6853:15|
 :skolemid |191|
)) (and (=> (= (ControlFlow 0 198312) (- 0 272861)) (forall ((addr@@135 Int) ) (!  (=> (|$IsValid'address'| addr@@135) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@135) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@135)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@135) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@135)) 4))))
 :qid |Rolesandybpl.6857:15|
 :skolemid |192|
))) (=> (forall ((addr@@136 Int) ) (!  (=> (|$IsValid'address'| addr@@136) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@136) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@136)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@136) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@136)) 4))))
 :qid |Rolesandybpl.6857:15|
 :skolemid |192|
)) (and (=> (= (ControlFlow 0 198312) (- 0 272910)) (forall ((addr@@137 Int) ) (!  (=> (|$IsValid'address'| addr@@137) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@137) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@137)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@137) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@137)) 2))))
 :qid |Rolesandybpl.6861:15|
 :skolemid |193|
))) (=> (forall ((addr@@138 Int) ) (!  (=> (|$IsValid'address'| addr@@138) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@138) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@138)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@138) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@138)) 2))))
 :qid |Rolesandybpl.6861:15|
 :skolemid |193|
)) (and (=> (= (ControlFlow 0 198312) (- 0 272959)) (forall ((addr@@139 Int) ) (!  (=> (|$IsValid'address'| addr@@139) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@139) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@139)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@139) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@139)) 5))))
 :qid |Rolesandybpl.6865:15|
 :skolemid |194|
))) (=> (forall ((addr@@140 Int) ) (!  (=> (|$IsValid'address'| addr@@140) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@140) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@140)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@140) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@140)) 5))))
 :qid |Rolesandybpl.6865:15|
 :skolemid |194|
)) (=> (= (ControlFlow 0 198312) (- 0 273008)) (forall ((addr@@141 Int) ) (!  (=> (|$IsValid'address'| addr@@141) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@141) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@141)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@141) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@141)) 6))))
 :qid |Rolesandybpl.6869:15|
 :skolemid |195|
)))))))))))))))))))
(let ((anon12_Then_correct@@4 true))
(let ((anon11_Then$1_correct  (=> (= $t7@1 $t7@@3) (=> (and (= $abort_flag@0@@10 true) (= $abort_code@1@@10 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 198378) 198326) anon12_Then_correct@@4) (=> (= (ControlFlow 0 198378) 198312) anon12_Else_correct@@4))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@10)) (= (ControlFlow 0 198376) 198378)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@10) (=> (and (and (= $t7@0@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@10)) (= $t7@1 $t7@0@@4)) (and (= $abort_flag@0@@10 false) (= $abort_code@1@@10 $abort_code@0@@10))) (and (=> (= (ControlFlow 0 197931) 198326) anon12_Then_correct@@4) (=> (= (ControlFlow 0 197931) 198312) anon12_Else_correct@@4))))))
(let ((anon10_Then_correct  (=> $t3@0 (and (=> (= (ControlFlow 0 197917) 198376) anon11_Then_correct) (=> (= (ControlFlow 0 197917) 197931) anon11_Else_correct)))))
(let ((anon10_Else_correct true))
(let ((anon0$1_correct@@10  (=> (|$IsValid'address'| _$t0@@10) (=> (and (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@10)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@10))
 :qid |Rolesandybpl.6763:20|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@10))
)) (= _$t0@@10 _$t0@@10)) (and (= $t3@0 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@10)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5) (= $t5 5)) (and (= $t5 $t5) (= $t3@0 $t3@0)))) (and (=> (= (ControlFlow 0 197891) 197917) anon10_Then_correct) (=> (= (ControlFlow 0 197891) 197907) anon10_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_80957| stream@@11) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@11) v@@46) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 197807) 197891)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (ControlFlow 0 272462) 197807) inline$$InitEventStore$0$anon0_correct@@10)))
anon0_correct@@10)))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@11 () Int)
(declare-fun $t2 () Int)
(declare-fun $t6@@6 () Bool)
(declare-fun $t3@@0 () Bool)
(declare-fun $t1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_111178)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_111178)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_111178)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Roles_RoleId'@0| () T@$1_Roles_RoleId)
(declare-fun $t5@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 273067) (let ((L2_correct  (and (=> (= (ControlFlow 0 199262) (- 0 273813)) (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@11 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@11)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@11 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@11)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 199262) (- 0 273844)) (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (not (= _$t0@@11 173345816)) (= 2 $t2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@11) (= 6 $t2))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2))))))))
(let ((anon13_Then_correct@@4  (=> $t6@@6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@11) (= 6 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 199150) 199262))) L2_correct))))
(let ((anon12_Then_correct@@5  (=> $t3@@0 (=> (and (and (not (= _$t0@@11 173345816)) (= 2 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 199292) 199262))) L2_correct))))
(let ((anon11_Then_correct@@0  (=> $t1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 199318) 199262))) L2_correct))))
(let ((anon9_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) _$t0@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) _$t0@@11)) 0)) (and (=> (= (ControlFlow 0 199108) (- 0 273459)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 199108) (- 0 273469)) (not (not (= _$t0@@11 173345816)))) (=> (not (not (= _$t0@@11 173345816))) (and (=> (= (ControlFlow 0 199108) (- 0 273483)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@11))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@11)) (and (=> (= (ControlFlow 0 199108) (- 0 273494)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 199108) (- 0 273504)) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) _$t0@@11)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) _$t0@@11) (and (=> (= (ControlFlow 0 199108) (- 0 273513)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) _$t0@@11)) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) _$t0@@11)) 0) (and (=> (= (ControlFlow 0 199108) (- 0 273528)) (forall ((addr@@142 Int) ) (!  (=> (|$IsValid'address'| addr@@142) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@142) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@142)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@142) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@142)) 1))))
 :qid |Rolesandybpl.7104:15|
 :skolemid |198|
))) (=> (forall ((addr@@143 Int) ) (!  (=> (|$IsValid'address'| addr@@143) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@143) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@143)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@143) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@143)) 1))))
 :qid |Rolesandybpl.7104:15|
 :skolemid |198|
)) (and (=> (= (ControlFlow 0 199108) (- 0 273575)) (forall ((addr@@144 Int) ) (!  (=> (|$IsValid'address'| addr@@144) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@144) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@144)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@144) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@144)) 3))))
 :qid |Rolesandybpl.7108:15|
 :skolemid |199|
))) (=> (forall ((addr@@145 Int) ) (!  (=> (|$IsValid'address'| addr@@145) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@145) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@145)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@145) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@145)) 3))))
 :qid |Rolesandybpl.7108:15|
 :skolemid |199|
)) (and (=> (= (ControlFlow 0 199108) (- 0 273622)) (forall ((addr@@146 Int) ) (!  (=> (|$IsValid'address'| addr@@146) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@146) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@146)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@146) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@146)) 4))))
 :qid |Rolesandybpl.7112:15|
 :skolemid |200|
))) (=> (forall ((addr@@147 Int) ) (!  (=> (|$IsValid'address'| addr@@147) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@147) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@147)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@147) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@147)) 4))))
 :qid |Rolesandybpl.7112:15|
 :skolemid |200|
)) (and (=> (= (ControlFlow 0 199108) (- 0 273669)) (forall ((addr@@148 Int) ) (!  (=> (|$IsValid'address'| addr@@148) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@148) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@148)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@148) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@148)) 2))))
 :qid |Rolesandybpl.7116:15|
 :skolemid |201|
))) (=> (forall ((addr@@149 Int) ) (!  (=> (|$IsValid'address'| addr@@149) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@149) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@149)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@149) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@149)) 2))))
 :qid |Rolesandybpl.7116:15|
 :skolemid |201|
)) (and (=> (= (ControlFlow 0 199108) (- 0 273716)) (forall ((addr@@150 Int) ) (!  (=> (|$IsValid'address'| addr@@150) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@150) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@150)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@150) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@150)) 5))))
 :qid |Rolesandybpl.7120:15|
 :skolemid |202|
))) (=> (forall ((addr@@151 Int) ) (!  (=> (|$IsValid'address'| addr@@151) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@151) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@151)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@151) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@151)) 5))))
 :qid |Rolesandybpl.7120:15|
 :skolemid |202|
)) (=> (= (ControlFlow 0 199108) (- 0 273763)) (forall ((addr@@152 Int) ) (!  (=> (|$IsValid'address'| addr@@152) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@152) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2) addr@@152)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@152) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@152)) 6))))
 :qid |Rolesandybpl.7124:15|
 :skolemid |203|
))))))))))))))))))))))))))))
(let ((anon14_Else_correct@@7  (=> (and (and (not |$temp_0'bool'@0|) (= $1_Roles_RoleId_$memory@1 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@11 false) (|contents#$Memory_111178| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 198702) 199108))) anon9_correct)))
(let ((anon14_Then_correct@@7  (=> (and (and |$temp_0'bool'@0| (= $1_Roles_RoleId_$memory@0 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@11 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@11 |$temp_0'$1_Roles_RoleId'@0|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 199122) 199108))) anon9_correct)))
(let ((anon13_Else_correct@@4  (=> (not $t6@@6) (and (=> (= (ControlFlow 0 198688) 199122) anon14_Then_correct@@7) (=> (= (ControlFlow 0 198688) 198702) anon14_Else_correct@@7)))))
(let ((anon12_Else_correct@@5  (=> (not $t3@@0) (=> (and (|$IsValid'u64'| 0) (= $t5@@0 _$t0@@11)) (and (=> (= (ControlFlow 0 198682) (- 0 273309)) (=> (= 0 0) (= $t5@@0 173345816))) (=> (=> (= 0 0) (= $t5@@0 173345816)) (and (=> (= (ControlFlow 0 198682) (- 0 273325)) (=> (= 0 1) (= $t5@@0 186537453))) (=> (=> (= 0 1) (= $t5@@0 186537453)) (and (=> (= (ControlFlow 0 198682) (- 0 273341)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@11)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@11) (=> (= $t6@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@11)) (and (=> (= (ControlFlow 0 198682) 199150) anon13_Then_correct@@4) (=> (= (ControlFlow 0 198682) 198688) anon13_Else_correct@@4)))))))))))))
(let ((anon11_Else_correct@@0  (=> (and (not $t1) (= $t3@@0  (not (= _$t0@@11 173345816)))) (and (=> (= (ControlFlow 0 198604) 199292) anon12_Then_correct@@5) (=> (= (ControlFlow 0 198604) 198682) anon12_Else_correct@@5)))))
(let ((anon0$1_correct@@11  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0@@11) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@11)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@11))
 :qid |Rolesandybpl.6918:20|
 :skolemid |196|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@11))
))) (=> (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@12)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@12))
 :qid |Rolesandybpl.6922:20|
 :skolemid |197|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@12))
)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@11)) (and (= _$t0@@11 _$t0@@11) (= $t1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 198582) 199318) anon11_Then_correct@@0) (=> (= (ControlFlow 0 198582) 198604) anon11_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@11  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_80957| stream@@12) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@12) v@@47) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 198474) 198582)) anon0$1_correct@@11)))
(let ((anon0_correct@@11  (=> (= (ControlFlow 0 273067) 198474) inline$$InitEventStore$0$anon0_correct@@11)))
anon0_correct@@11))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@11 () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_111178)
(declare-fun _$t0@@12 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0@@4 () Int)
(declare-fun $abort_code@1@@11 () Int)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_111178)
(declare-fun $t11@0@@7 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@11 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t9@@7 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 273922) (let ((anon12_Else_correct@@6  (=> (not $abort_flag@0@@11) (and (=> (= (ControlFlow 0 200318) (- 0 274552)) (forall ((addr@@153 Int) ) (!  (=> (|$IsValid'address'| addr@@153) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@153) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@153) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@153)) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@153))))))
 :qid |Rolesandybpl.7354:15|
 :skolemid |214|
))) (=> (forall ((addr@@154 Int) ) (!  (=> (|$IsValid'address'| addr@@154) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@154) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@154) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@154)) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@154))))))
 :qid |Rolesandybpl.7354:15|
 :skolemid |214|
)) (and (=> (= (ControlFlow 0 200318) (- 0 274594)) (forall ((addr@@155 Int) ) (!  (=> (|$IsValid'address'| addr@@155) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@155) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@155)) 0)) (= addr@@155 173345816)))
 :qid |Rolesandybpl.7360:15|
 :skolemid |215|
))) (=> (forall ((addr@@156 Int) ) (!  (=> (|$IsValid'address'| addr@@156) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@156) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@156)) 0)) (= addr@@156 173345816)))
 :qid |Rolesandybpl.7360:15|
 :skolemid |215|
)) (and (=> (= (ControlFlow 0 200318) (- 0 274619)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) 173345816)) 0)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) 173345816)) 0))) (and (=> (= (ControlFlow 0 200318) (- 0 274633)) (forall ((addr@@157 Int) ) (!  (=> (|$IsValid'address'| addr@@157) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@157) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@157)) 1)) (= addr@@157 186537453)))
 :qid |Rolesandybpl.7372:15|
 :skolemid |216|
))) (=> (forall ((addr@@158 Int) ) (!  (=> (|$IsValid'address'| addr@@158) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@158) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@158)) 1)) (= addr@@158 186537453)))
 :qid |Rolesandybpl.7372:15|
 :skolemid |216|
)) (and (=> (= (ControlFlow 0 200318) (- 0 274658)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) 186537453)) 1)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) 186537453)) 1))) (and (=> (= (ControlFlow 0 200318) (- 0 274672)) (forall ((addr@@159 Int) ) (!  (=> (|$IsValid'address'| addr@@159) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@159) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@159)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@159) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@159)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@159) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@159)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@159) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@159)) 2))))))
 :qid |Rolesandybpl.7384:15|
 :skolemid |217|
))) (=> (forall ((addr@@160 Int) ) (!  (=> (|$IsValid'address'| addr@@160) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@160) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@160)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@160) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@160)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@160) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@160)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@160) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@160)) 2))))))
 :qid |Rolesandybpl.7384:15|
 :skolemid |217|
)) (and (=> (= (ControlFlow 0 200318) (- 0 274698)) (forall ((addr@@161 Int) ) (!  (=> (|$IsValid'address'| addr@@161) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@161) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@161)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@161) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@161)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@161) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@161)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@161) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@161)) 2))))))
 :qid |Rolesandybpl.7390:15|
 :skolemid |218|
))) (=> (forall ((addr@@162 Int) ) (!  (=> (|$IsValid'address'| addr@@162) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@162) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@162)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@162) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@162)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@162) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@162)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@162) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@162)) 2))))))
 :qid |Rolesandybpl.7390:15|
 :skolemid |218|
)) (and (=> (= (ControlFlow 0 200318) (- 0 274724)) (forall ((addr@@163 Int) ) (!  (=> (|$IsValid'address'| addr@@163) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@163) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@163)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@163) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@163)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@163) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@163)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@163) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@163)) 2))))))
 :qid |Rolesandybpl.7396:15|
 :skolemid |219|
))) (=> (forall ((addr@@164 Int) ) (!  (=> (|$IsValid'address'| addr@@164) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@164) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@164)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@164) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@164)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@164) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@164)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@164) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@164)) 2))))))
 :qid |Rolesandybpl.7396:15|
 :skolemid |219|
)) (and (=> (= (ControlFlow 0 200318) (- 0 274750)) (forall ((addr@@165 Int) ) (!  (=> (|$IsValid'address'| addr@@165) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@165) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@165)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@165) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@165)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@165) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@165)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@165) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@165)) 2))))))
 :qid |Rolesandybpl.7402:15|
 :skolemid |220|
))) (=> (forall ((addr@@166 Int) ) (!  (=> (|$IsValid'address'| addr@@166) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@166) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@166)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@166) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@166)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@166) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@166)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@166) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@166)) 2))))))
 :qid |Rolesandybpl.7402:15|
 :skolemid |220|
)) (and (=> (= (ControlFlow 0 200318) (- 0 274776)) (forall ((addr@@167 Int) ) (!  (=> (|$IsValid'address'| addr@@167) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@167)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@167)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@167)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@167)) 2)))))
 :qid |Rolesandybpl.7408:15|
 :skolemid |221|
))) (=> (forall ((addr@@168 Int) ) (!  (=> (|$IsValid'address'| addr@@168) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@168)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@168)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@168)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@168)) 2)))))
 :qid |Rolesandybpl.7408:15|
 :skolemid |221|
)) (and (=> (= (ControlFlow 0 200318) (- 0 274800)) (forall ((addr@@169 Int) ) (!  (=> (|$IsValid'address'| addr@@169) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@169)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@169)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@169)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@169)) 2)))))
 :qid |Rolesandybpl.7414:15|
 :skolemid |222|
))) (=> (forall ((addr@@170 Int) ) (!  (=> (|$IsValid'address'| addr@@170) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@170)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@170)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@170)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@170)) 2)))))
 :qid |Rolesandybpl.7414:15|
 :skolemid |222|
)) (and (=> (= (ControlFlow 0 200318) (- 0 274824)) (forall ((addr@@171 Int) ) (!  (=> (|$IsValid'address'| addr@@171) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@171) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@171)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@171) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@171)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@171) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@171)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@171) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@171)) 2)))))
 :qid |Rolesandybpl.7420:15|
 :skolemid |223|
))) (=> (forall ((addr@@172 Int) ) (!  (=> (|$IsValid'address'| addr@@172) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@172) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@172)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@172) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@172)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@172) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@172)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@172) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) addr@@172)) 2)))))
 :qid |Rolesandybpl.7420:15|
 :skolemid |223|
)) (and (=> (= (ControlFlow 0 200318) (- 0 274851)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@12))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@12)) (and (=> (= (ControlFlow 0 200318) (- 0 274862)) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) _$t0@@12)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) _$t0@@12) (=> (= (ControlFlow 0 200318) (- 0 274871)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@1@@0) _$t0@@12)) _$t1@@0)))))))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 199687) (- 0 274522)) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@12)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@12) (=> (= (ControlFlow 0 199687) (- 0 274528)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@12) (= 6 $t10@0@@4)))))))
(let ((anon12_Then_correct@@6  (=> (and (and $abort_flag@0@@11 (= $abort_code@1@@11 $abort_code@1@@11)) (and (= $t10@0@@4 $abort_code@1@@11) (= (ControlFlow 0 200332) 199687))) L3_correct)))
(let ((anon11_Then$1_correct@@0  (=> (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@11 true) (= $abort_code@1@@11 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 200382) 200332) anon12_Then_correct@@6) (=> (= (ControlFlow 0 200382) 200318) anon12_Else_correct@@6))))))
(let ((anon11_Then_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@12) (= (ControlFlow 0 200380) 200382)) anon11_Then$1_correct@@0)))
(let ((anon11_Else_correct@@1  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@12)) (=> (and (and (= $1_Roles_RoleId_$memory@0@@0 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@12 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@12 $t11@0@@7))) (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory@0@@0)) (and (= $abort_flag@0@@11 false) (= $abort_code@1@@11 $abort_code@0@@11))) (and (=> (= (ControlFlow 0 199964) 200332) anon12_Then_correct@@6) (=> (= (ControlFlow 0 199964) 200318) anon12_Else_correct@@6))))))
(let ((anon10_Then_correct@@0  (=> (and inline$$Not$0$dst@1 (= $t11@0@@7 ($1_Roles_RoleId _$t1@@0))) (and (=> (= (ControlFlow 0 199946) (- 0 274168)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 _$t0@@12)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 _$t0@@12) (=> (forall ((addr@@173 Int) ) (!  (=> (|$IsValid'address'| addr@@173) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@173) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@173)) 0)) (= addr@@173 173345816)))
 :qid |Rolesandybpl.7290:20|
 :skolemid |205|
)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@174 Int) ) (!  (=> (|$IsValid'address'| addr@@174) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@174) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@174)) 1)) (= addr@@174 186537453)))
 :qid |Rolesandybpl.7298:20|
 :skolemid |206|
))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@175 Int) ) (!  (=> (|$IsValid'address'| addr@@175) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@175) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@175)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@175) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@175)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@175) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@175)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@175) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@175)) 2))))))
 :qid |Rolesandybpl.7306:20|
 :skolemid |207|
))) (and (forall ((addr@@176 Int) ) (!  (=> (|$IsValid'address'| addr@@176) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@176)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@176)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@176)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@176)) 2))))))
 :qid |Rolesandybpl.7310:20|
 :skolemid |208|
)) (forall ((addr@@177 Int) ) (!  (=> (|$IsValid'address'| addr@@177) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@177)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@177)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@177)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@177)) 2))))))
 :qid |Rolesandybpl.7314:20|
 :skolemid |209|
)))) (and (and (forall ((addr@@178 Int) ) (!  (=> (|$IsValid'address'| addr@@178) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@178)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@178)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@178)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@178)) 2))))))
 :qid |Rolesandybpl.7318:20|
 :skolemid |210|
)) (forall ((addr@@179 Int) ) (!  (=> (|$IsValid'address'| addr@@179) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@179)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@179)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@179)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@179)) 2)))))
 :qid |Rolesandybpl.7322:20|
 :skolemid |211|
))) (and (forall ((addr@@180 Int) ) (!  (=> (|$IsValid'address'| addr@@180) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@180)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@180)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@180)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@180)) 2)))))
 :qid |Rolesandybpl.7326:20|
 :skolemid |212|
)) (forall ((addr@@181 Int) ) (!  (=> (|$IsValid'address'| addr@@181) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@181)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@181)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@181)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@181)) 2)))))
 :qid |Rolesandybpl.7330:20|
 :skolemid |213|
))))) (and (=> (= (ControlFlow 0 199946) 200380) anon11_Then_correct@@1) (=> (= (ControlFlow 0 199946) 199964) anon11_Else_correct@@1))))))))))
(let ((anon10_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1) (= $t9@@7 $t9@@7)) (and (= $t10@0@@4 $t9@@7) (= (ControlFlow 0 199655) 199687))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9@@7) (= $t9@@7 6)) (and (= $t9@@7 $t9@@7) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 199639) 199946) anon10_Then_correct@@0) (=> (= (ControlFlow 0 199639) 199655) anon10_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 199603) 199639)) anon0$2_correct)))
(let ((anon0$1_correct@@12  (=> (|$IsValid'address'| _$t0@@12) (=> (and (and (|$IsValid'u64'| _$t1@@0) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@13)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@13))
 :qid |Rolesandybpl.7186:20|
 :skolemid |204|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@13))
))) (and (= $t4 _$t0@@12) (=> (= _$t1@@0 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1@@0 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 _$t0@@12)) (and (= _$t0@@12 _$t0@@12) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t5@@1) (= $t5@@1 _$t0@@12)) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t5@@1)) (= (ControlFlow 0 199609) 199603)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@12  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_80957| stream@@13) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@13) v@@48) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 199441) 199609)) anon0$1_correct@@12)))
(let ((anon0_correct@@12  (=> (= (ControlFlow 0 273922) 199441) inline$$InitEventStore$0$anon0_correct@@12)))
anon0_correct@@12))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@13 () Int)
(declare-fun $t2@@0 () Int)
(declare-fun _$t1@@1 () Int)
(declare-fun $t4@@0 () Int)
(declare-fun $t10@@4 () Bool)
(declare-fun $t7@@4 () Bool)
(declare-fun $t6@@7 () Int)
(declare-fun $t5@@2 () Bool)
(declare-fun $t3@@1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2@@0 () T@$Memory_111178)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@1 () T@$Memory_111178)
(declare-fun $1_Roles_RoleId_$memory@0@@1 () T@$Memory_111178)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@0| () T@$1_Roles_RoleId)
(declare-fun $t9@@8 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 274891) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 201532) (- 0 275864)) (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@13 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= _$t1@@1 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@13)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@13 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= _$t1@@1 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@13)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 201532) (- 0 275930)) (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (not (= _$t0@@13 186537453)) (= 2 $t4@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@0)) 0)) (= 3 $t4@@0))) (and (not (= _$t1@@1 173345816)) (= 2 $t4@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@13) (= 6 $t4@@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0))))))))
(let ((anon16_Then_correct@@4  (=> $t10@@4 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@13) (= 6 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 201320) 201532))) L2_correct@@0))))
(let ((anon15_Then_correct@@9  (=> (and (and $t7@@4 (or (or (or (and (not (= _$t1@@1 173345816)) (= 2 $t4@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@7)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@7)) 0)) (= 3 $t4@@0))) (and (not (= _$t1@@1 173345816)) (= 2 $t4@@0)))) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 201624) 201532))) L2_correct@@0)))
(let ((anon14_Then_correct@@8  (=> $t5@@2 (=> (and (and (not (= _$t0@@13 186537453)) (= 2 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 201654) 201532))) L2_correct@@0))))
(let ((anon13_Then_correct@@5  (=> $t3@@1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 201680) 201532))) L2_correct@@0))))
(let ((anon11_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) _$t0@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) _$t0@@13)) 1)) (and (=> (= (ControlFlow 0 201278) (- 0 275466)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 201278) (- 0 275476)) (not (not (= _$t0@@13 186537453)))) (=> (not (not (= _$t0@@13 186537453))) (and (=> (= (ControlFlow 0 201278) (- 0 275490)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@0))) (and (=> (= (ControlFlow 0 201278) (- 0 275502)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (and (=> (= (ControlFlow 0 201278) (- 0 275520)) (not (not (= _$t1@@1 173345816)))) (=> (not (not (= _$t1@@1 173345816))) (and (=> (= (ControlFlow 0 201278) (- 0 275534)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@13))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@13)) (and (=> (= (ControlFlow 0 201278) (- 0 275545)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 201278) (- 0 275555)) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) _$t0@@13)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) _$t0@@13) (and (=> (= (ControlFlow 0 201278) (- 0 275564)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) _$t0@@13)) 1)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) _$t0@@13)) 1) (and (=> (= (ControlFlow 0 201278) (- 0 275579)) (forall ((addr@@182 Int) ) (!  (=> (|$IsValid'address'| addr@@182) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@182) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@182)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@182) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@182)) 0))))
 :qid |Rolesandybpl.7747:15|
 :skolemid |226|
))) (=> (forall ((addr@@183 Int) ) (!  (=> (|$IsValid'address'| addr@@183) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@183) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@183)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@183) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@183)) 0))))
 :qid |Rolesandybpl.7747:15|
 :skolemid |226|
)) (and (=> (= (ControlFlow 0 201278) (- 0 275626)) (forall ((addr@@184 Int) ) (!  (=> (|$IsValid'address'| addr@@184) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@184) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@184)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@184) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@184)) 3))))
 :qid |Rolesandybpl.7751:15|
 :skolemid |227|
))) (=> (forall ((addr@@185 Int) ) (!  (=> (|$IsValid'address'| addr@@185) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@185) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@185)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@185) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@185)) 3))))
 :qid |Rolesandybpl.7751:15|
 :skolemid |227|
)) (and (=> (= (ControlFlow 0 201278) (- 0 275673)) (forall ((addr@@186 Int) ) (!  (=> (|$IsValid'address'| addr@@186) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@186) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@186)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@186) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@186)) 4))))
 :qid |Rolesandybpl.7755:15|
 :skolemid |228|
))) (=> (forall ((addr@@187 Int) ) (!  (=> (|$IsValid'address'| addr@@187) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@187) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@187)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@187) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@187)) 4))))
 :qid |Rolesandybpl.7755:15|
 :skolemid |228|
)) (and (=> (= (ControlFlow 0 201278) (- 0 275720)) (forall ((addr@@188 Int) ) (!  (=> (|$IsValid'address'| addr@@188) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@188) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@188)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@188) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@188)) 2))))
 :qid |Rolesandybpl.7759:15|
 :skolemid |229|
))) (=> (forall ((addr@@189 Int) ) (!  (=> (|$IsValid'address'| addr@@189) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@189) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@189)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@189) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@189)) 2))))
 :qid |Rolesandybpl.7759:15|
 :skolemid |229|
)) (and (=> (= (ControlFlow 0 201278) (- 0 275767)) (forall ((addr@@190 Int) ) (!  (=> (|$IsValid'address'| addr@@190) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@190) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@190)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@190) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@190)) 5))))
 :qid |Rolesandybpl.7763:15|
 :skolemid |230|
))) (=> (forall ((addr@@191 Int) ) (!  (=> (|$IsValid'address'| addr@@191) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@191) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@191)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@191) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@191)) 5))))
 :qid |Rolesandybpl.7763:15|
 :skolemid |230|
)) (=> (= (ControlFlow 0 201278) (- 0 275814)) (forall ((addr@@192 Int) ) (!  (=> (|$IsValid'address'| addr@@192) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@192) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@0) addr@@192)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@192) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@192)) 6))))
 :qid |Rolesandybpl.7767:15|
 :skolemid |231|
))))))))))))))))))))))))))))))))))
(let ((anon17_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_Roles_RoleId_$memory@1@@1 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@13 false) (|contents#$Memory_111178| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@1@@1) (= (ControlFlow 0 200828) 201278))) anon11_correct)))
(let ((anon17_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@0| (= $1_Roles_RoleId_$memory@0@@1 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@13 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@13 |$temp_0'$1_Roles_RoleId'@0@@0|)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@0@@1) (= (ControlFlow 0 201292) 201278))) anon11_correct)))
(let ((anon16_Else_correct@@4  (=> (not $t10@@4) (and (=> (= (ControlFlow 0 200814) 201292) anon17_Then_correct@@4) (=> (= (ControlFlow 0 200814) 200828) anon17_Else_correct@@4)))))
(let ((anon15_Else_correct@@9  (=> (not $t7@@4) (=> (and (|$IsValid'u64'| 1) (= $t9@@8 _$t0@@13)) (and (=> (= (ControlFlow 0 200808) (- 0 275316)) (=> (= 1 0) (= $t9@@8 173345816))) (=> (=> (= 1 0) (= $t9@@8 173345816)) (and (=> (= (ControlFlow 0 200808) (- 0 275332)) (=> (= 1 1) (= $t9@@8 186537453))) (=> (=> (= 1 1) (= $t9@@8 186537453)) (and (=> (= (ControlFlow 0 200808) (- 0 275348)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 _$t0@@13)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 _$t0@@13) (=> (= $t10@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t0@@13)) (and (=> (= (ControlFlow 0 200808) 201320) anon16_Then_correct@@4) (=> (= (ControlFlow 0 200808) 200814) anon16_Else_correct@@4)))))))))))))
(let ((anon14_Else_correct@@8  (=> (not $t5@@2) (=> (and (= $t6@@7 _$t1@@1) (= $t7@@4  (or (or (or (not (= _$t1@@1 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t6@@7)) 0))) (not (= _$t1@@1 173345816))))) (and (=> (= (ControlFlow 0 200730) 201624) anon15_Then_correct@@9) (=> (= (ControlFlow 0 200730) 200808) anon15_Else_correct@@9))))))
(let ((anon13_Else_correct@@5  (=> (and (not $t3@@1) (= $t5@@2  (not (= _$t0@@13 186537453)))) (and (=> (= (ControlFlow 0 200658) 201654) anon14_Then_correct@@8) (=> (= (ControlFlow 0 200658) 200730) anon14_Else_correct@@8)))))
(let ((anon0$1_correct@@13  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (|$IsValid'address'| _$t0@@13)) (=> (and (and (and (|$IsValid'address'| _$t1@@1) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@14)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@14))
 :qid |Rolesandybpl.7504:20|
 :skolemid |224|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@14))
))) (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@15)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@15))
 :qid |Rolesandybpl.7508:20|
 :skolemid |225|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@15))
)) (= $t2@@0 _$t1@@1))) (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 _$t0@@13) (= _$t0@@13 _$t0@@13)) (and (= _$t1@@1 _$t1@@1) (= $t3@@1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109771| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 200636) 201680) anon13_Then_correct@@5) (=> (= (ControlFlow 0 200636) 200658) anon13_Else_correct@@5))))))
(let ((inline$$InitEventStore$0$anon0_correct@@13  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@15 T@$1_Event_EventHandle) ) (! (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@15)))
 (and (= (|l#Multiset_80957| stream@@14) 0) (forall ((v@@49 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@14) v@@49) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 200508) 200636)) anon0$1_correct@@13)))
(let ((anon0_correct@@13  (=> (= (ControlFlow 0 274891) 200508) inline$$InitEventStore$0$anon0_correct@@13)))
anon0_correct@@13))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@0@@12 () Bool)
(declare-fun $abort_code@1@@12 () Int)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@0 () Bool)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@12 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@0 () Bool)
(declare-fun _$t0@@14 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_child_VASP_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 276067) (let ((anon4_Else_correct  (=> (and (not $abort_flag@2@@0) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@1@@0)) (and (=> (= (ControlFlow 0 202724) (- 0 276506)) (forall ((addr@@193 Int) ) (!  (=> (|$IsValid'address'| addr@@193) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@193) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@193)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@193) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@193)) 0))))
 :qid |Rolesandybpl.7899:15|
 :skolemid |233|
))) (=> (forall ((addr@@194 Int) ) (!  (=> (|$IsValid'address'| addr@@194) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@194) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@194)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@194) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@194)) 0))))
 :qid |Rolesandybpl.7899:15|
 :skolemid |233|
)) (and (=> (= (ControlFlow 0 202724) (- 0 276555)) (forall ((addr@@195 Int) ) (!  (=> (|$IsValid'address'| addr@@195) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@195) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@195)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@195) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@195)) 1))))
 :qid |Rolesandybpl.7903:15|
 :skolemid |234|
))) (=> (forall ((addr@@196 Int) ) (!  (=> (|$IsValid'address'| addr@@196) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@196) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@196)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@196) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@196)) 1))))
 :qid |Rolesandybpl.7903:15|
 :skolemid |234|
)) (and (=> (= (ControlFlow 0 202724) (- 0 276604)) (forall ((addr@@197 Int) ) (!  (=> (|$IsValid'address'| addr@@197) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@197) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@197)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@197) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@197)) 3))))
 :qid |Rolesandybpl.7907:15|
 :skolemid |235|
))) (=> (forall ((addr@@198 Int) ) (!  (=> (|$IsValid'address'| addr@@198) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@198) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@198)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@198) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@198)) 3))))
 :qid |Rolesandybpl.7907:15|
 :skolemid |235|
)) (and (=> (= (ControlFlow 0 202724) (- 0 276653)) (forall ((addr@@199 Int) ) (!  (=> (|$IsValid'address'| addr@@199) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@199) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@199)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@199) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@199)) 4))))
 :qid |Rolesandybpl.7911:15|
 :skolemid |236|
))) (=> (forall ((addr@@200 Int) ) (!  (=> (|$IsValid'address'| addr@@200) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@200) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@200)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@200) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@200)) 4))))
 :qid |Rolesandybpl.7911:15|
 :skolemid |236|
)) (and (=> (= (ControlFlow 0 202724) (- 0 276702)) (forall ((addr@@201 Int) ) (!  (=> (|$IsValid'address'| addr@@201) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@201) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@201)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@201) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@201)) 2))))
 :qid |Rolesandybpl.7915:15|
 :skolemid |237|
))) (=> (forall ((addr@@202 Int) ) (!  (=> (|$IsValid'address'| addr@@202) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@202) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@202)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@202) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@202)) 2))))
 :qid |Rolesandybpl.7915:15|
 :skolemid |237|
)) (and (=> (= (ControlFlow 0 202724) (- 0 276751)) (forall ((addr@@203 Int) ) (!  (=> (|$IsValid'address'| addr@@203) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@203) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@203)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@203) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@203)) 5))))
 :qid |Rolesandybpl.7919:15|
 :skolemid |238|
))) (=> (forall ((addr@@204 Int) ) (!  (=> (|$IsValid'address'| addr@@204) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@204) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@204)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@204) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@204)) 5))))
 :qid |Rolesandybpl.7919:15|
 :skolemid |238|
)) (=> (= (ControlFlow 0 202724) (- 0 276800)) (forall ((addr@@205 Int) ) (!  (=> (|$IsValid'address'| addr@@205) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@205) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@205)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@205) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@205)) 6))))
 :qid |Rolesandybpl.7923:15|
 :skolemid |239|
))))))))))))))))))
(let ((anon4_Then_correct true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@0  (=> $abort_flag@0@@12 (=> (and (and (= $abort_code@1@@12 $abort_code@1@@12) (= $abort_code@3@@0 $abort_code@1@@12)) (and (= $abort_flag@2@@0 true) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@0@@0))) (and (=> (= (ControlFlow 0 202289) 202742) anon4_Then_correct) (=> (= (ControlFlow 0 202289) 202724) anon4_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@0  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@0 inline$$1_Roles_has_role$0$$t3@1@@0) (= $abort_code@3@@0 $abort_code@2@@0)) (and (= $abort_flag@2@@0 $abort_flag@1@@0) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$t3@1@@0))) (and (=> (= (ControlFlow 0 202225) 202742) anon4_Then_correct) (=> (= (ControlFlow 0 202225) 202724) anon4_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@0  (=> (and (and (and (not $abort_flag@0@@12) (= inline$$1_Roles_has_role$0$$t8@1@@0 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@0))) (and (= inline$$1_Roles_has_role$0$$t9@1@@0 (= inline$$1_Roles_has_role$0$$t8@1@@0 6)) (= inline$$1_Roles_has_role$0$$t9@1@@0 inline$$1_Roles_has_role$0$$t9@1@@0))) (and (and (= $abort_code@2@@0 $abort_code@1@@12) (= inline$$1_Roles_has_role$0$$t3@1@@0 inline$$1_Roles_has_role$0$$t9@1@@0)) (and (= $abort_flag@1@@0 $abort_flag@0@@12) (= (ControlFlow 0 202271) 202225)))) inline$$1_Roles_has_role$0$L3_correct@@0)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@0  (=> (= $abort_flag@0@@12 true) (=> (and (= $abort_code@1@@12 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@0 inline$$1_Roles_has_role$0$$t6@0@@0)) (and (=> (= (ControlFlow 0 202341) 202289) inline$$1_Roles_has_role$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 202341) 202271) inline$$1_Roles_has_role$0$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)) (= (ControlFlow 0 202339) 202341)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@0)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)) (= $abort_flag@0@@12 false)) (and (= $abort_code@1@@12 $abort_code@0@@12) (= inline$$1_Roles_has_role$0$$t6@2@@0 inline$$1_Roles_has_role$0$$t6@1@@0))) (and (=> (= (ControlFlow 0 202243) 202289) inline$$1_Roles_has_role$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 202243) 202271) inline$$1_Roles_has_role$0$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@0  (=> inline$$1_Roles_has_role$0$$t5@1@@0 (and (=> (= (ControlFlow 0 202229) 202339) inline$$1_Roles_has_role$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 202229) 202243) inline$$1_Roles_has_role$0$anon10_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@0  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@0) (= false false)) (=> (and (and (= $abort_code@2@@0 $abort_code@0@@12) (= inline$$1_Roles_has_role$0$$t3@1@@0 false)) (and (= $abort_flag@1@@0 false) (= (ControlFlow 0 202213) 202225))) inline$$1_Roles_has_role$0$L3_correct@@0))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@0  (=> (and (= _$t0@@14 _$t0@@14) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@0) (= inline$$1_Roles_has_role$0$$t4@0@@0 _$t0@@14)) (and (= inline$$1_Roles_has_role$0$$t4@0@@0 inline$$1_Roles_has_role$0$$t4@0@@0) (= inline$$1_Roles_has_role$0$$t5@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)))) (and (=> (= (ControlFlow 0 202193) 202229) inline$$1_Roles_has_role$0$anon9_Then_correct@@0) (=> (= (ControlFlow 0 202193) 202213) inline$$1_Roles_has_role$0$anon9_Else_correct@@0))))))
(let ((anon0$1_correct@@14  (=> (|$IsValid'address'| _$t0@@14) (=> (and (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@16)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@16))
 :qid |Rolesandybpl.7866:20|
 :skolemid |232|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@16))
)) (= _$t0@@14 _$t0@@14)) (and (|$IsValid'u64'| 6) (= (ControlFlow 0 202347) 202193))) inline$$1_Roles_has_role$0$anon0_correct@@0))))
(let ((inline$$InitEventStore$0$anon0_correct@@14  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@16 T@$1_Event_EventHandle) ) (! (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@16)))
 (and (= (|l#Multiset_80957| stream@@15) 0) (forall ((v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@15) v@@50) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 201811) 202347)) anon0$1_correct@@14)))
(let ((anon0_correct@@14  (=> (= (ControlFlow 0 276067) 201811) inline$$InitEventStore$0$anon0_correct@@14)))
anon0_correct@@14)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@1 () Bool)
(declare-fun $abort_flag@0@@13 () Bool)
(declare-fun $abort_code@1@@13 () Int)
(declare-fun $abort_code@3@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@1 () Bool)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@13 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@1 () Bool)
(declare-fun _$t0@@15 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 276860) (let ((anon4_Else_correct@@0  (=> (and (not $abort_flag@2@@1) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$ret0@1@@1)) (and (=> (= (ControlFlow 0 203752) (- 0 277299)) (forall ((addr@@206 Int) ) (!  (=> (|$IsValid'address'| addr@@206) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@206) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@206)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@206) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@206)) 0))))
 :qid |Rolesandybpl.8047:15|
 :skolemid |241|
))) (=> (forall ((addr@@207 Int) ) (!  (=> (|$IsValid'address'| addr@@207) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@207) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@207)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@207) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@207)) 0))))
 :qid |Rolesandybpl.8047:15|
 :skolemid |241|
)) (and (=> (= (ControlFlow 0 203752) (- 0 277348)) (forall ((addr@@208 Int) ) (!  (=> (|$IsValid'address'| addr@@208) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@208) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@208)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@208) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@208)) 1))))
 :qid |Rolesandybpl.8051:15|
 :skolemid |242|
))) (=> (forall ((addr@@209 Int) ) (!  (=> (|$IsValid'address'| addr@@209) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@209) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@209)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@209) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@209)) 1))))
 :qid |Rolesandybpl.8051:15|
 :skolemid |242|
)) (and (=> (= (ControlFlow 0 203752) (- 0 277397)) (forall ((addr@@210 Int) ) (!  (=> (|$IsValid'address'| addr@@210) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@210) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@210)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@210) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@210)) 3))))
 :qid |Rolesandybpl.8055:15|
 :skolemid |243|
))) (=> (forall ((addr@@211 Int) ) (!  (=> (|$IsValid'address'| addr@@211) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@211) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@211)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@211) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@211)) 3))))
 :qid |Rolesandybpl.8055:15|
 :skolemid |243|
)) (and (=> (= (ControlFlow 0 203752) (- 0 277446)) (forall ((addr@@212 Int) ) (!  (=> (|$IsValid'address'| addr@@212) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@212) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@212)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@212) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@212)) 4))))
 :qid |Rolesandybpl.8059:15|
 :skolemid |244|
))) (=> (forall ((addr@@213 Int) ) (!  (=> (|$IsValid'address'| addr@@213) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@213) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@213)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@213) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@213)) 4))))
 :qid |Rolesandybpl.8059:15|
 :skolemid |244|
)) (and (=> (= (ControlFlow 0 203752) (- 0 277495)) (forall ((addr@@214 Int) ) (!  (=> (|$IsValid'address'| addr@@214) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@214) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@214)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@214) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@214)) 2))))
 :qid |Rolesandybpl.8063:15|
 :skolemid |245|
))) (=> (forall ((addr@@215 Int) ) (!  (=> (|$IsValid'address'| addr@@215) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@215) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@215)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@215) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@215)) 2))))
 :qid |Rolesandybpl.8063:15|
 :skolemid |245|
)) (and (=> (= (ControlFlow 0 203752) (- 0 277544)) (forall ((addr@@216 Int) ) (!  (=> (|$IsValid'address'| addr@@216) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@216) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@216)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@216) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@216)) 5))))
 :qid |Rolesandybpl.8067:15|
 :skolemid |246|
))) (=> (forall ((addr@@217 Int) ) (!  (=> (|$IsValid'address'| addr@@217) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@217) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@217)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@217) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@217)) 5))))
 :qid |Rolesandybpl.8067:15|
 :skolemid |246|
)) (=> (= (ControlFlow 0 203752) (- 0 277593)) (forall ((addr@@218 Int) ) (!  (=> (|$IsValid'address'| addr@@218) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@218) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@218)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@218) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@218)) 6))))
 :qid |Rolesandybpl.8071:15|
 :skolemid |247|
))))))))))))))))))
(let ((anon4_Then_correct@@0 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@1  (=> $abort_flag@0@@13 (=> (and (and (= $abort_code@1@@13 $abort_code@1@@13) (= $abort_code@3@@1 $abort_code@1@@13)) (and (= $abort_flag@2@@1 true) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$ret0@0@@1))) (and (=> (= (ControlFlow 0 203317) 203770) anon4_Then_correct@@0) (=> (= (ControlFlow 0 203317) 203752) anon4_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@1  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@1 inline$$1_Roles_has_role$0$$t3@1@@1) (= $abort_code@3@@1 $abort_code@2@@1)) (and (= $abort_flag@2@@1 $abort_flag@1@@1) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$t3@1@@1))) (and (=> (= (ControlFlow 0 203253) 203770) anon4_Then_correct@@0) (=> (= (ControlFlow 0 203253) 203752) anon4_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@1  (=> (and (and (and (not $abort_flag@0@@13) (= inline$$1_Roles_has_role$0$$t8@1@@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@1))) (and (= inline$$1_Roles_has_role$0$$t9@1@@1 (= inline$$1_Roles_has_role$0$$t8@1@@1 2)) (= inline$$1_Roles_has_role$0$$t9@1@@1 inline$$1_Roles_has_role$0$$t9@1@@1))) (and (and (= $abort_code@2@@1 $abort_code@1@@13) (= inline$$1_Roles_has_role$0$$t3@1@@1 inline$$1_Roles_has_role$0$$t9@1@@1)) (and (= $abort_flag@1@@1 $abort_flag@0@@13) (= (ControlFlow 0 203299) 203253)))) inline$$1_Roles_has_role$0$L3_correct@@1)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@1  (=> (= $abort_flag@0@@13 true) (=> (and (= $abort_code@1@@13 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@1 inline$$1_Roles_has_role$0$$t6@0@@1)) (and (=> (= (ControlFlow 0 203369) 203317) inline$$1_Roles_has_role$0$anon11_Then_correct@@1) (=> (= (ControlFlow 0 203369) 203299) inline$$1_Roles_has_role$0$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)) (= (ControlFlow 0 203367) 203369)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@1)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)) (= $abort_flag@0@@13 false)) (and (= $abort_code@1@@13 $abort_code@0@@13) (= inline$$1_Roles_has_role$0$$t6@2@@1 inline$$1_Roles_has_role$0$$t6@1@@1))) (and (=> (= (ControlFlow 0 203271) 203317) inline$$1_Roles_has_role$0$anon11_Then_correct@@1) (=> (= (ControlFlow 0 203271) 203299) inline$$1_Roles_has_role$0$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@1  (=> inline$$1_Roles_has_role$0$$t5@1@@1 (and (=> (= (ControlFlow 0 203257) 203367) inline$$1_Roles_has_role$0$anon10_Then_correct@@1) (=> (= (ControlFlow 0 203257) 203271) inline$$1_Roles_has_role$0$anon10_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@1  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@1) (= false false)) (=> (and (and (= $abort_code@2@@1 $abort_code@0@@13) (= inline$$1_Roles_has_role$0$$t3@1@@1 false)) (and (= $abort_flag@1@@1 false) (= (ControlFlow 0 203241) 203253))) inline$$1_Roles_has_role$0$L3_correct@@1))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@1  (=> (and (= _$t0@@15 _$t0@@15) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@1) (= inline$$1_Roles_has_role$0$$t4@0@@1 _$t0@@15)) (and (= inline$$1_Roles_has_role$0$$t4@0@@1 inline$$1_Roles_has_role$0$$t4@0@@1) (= inline$$1_Roles_has_role$0$$t5@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)))) (and (=> (= (ControlFlow 0 203221) 203257) inline$$1_Roles_has_role$0$anon9_Then_correct@@1) (=> (= (ControlFlow 0 203221) 203241) inline$$1_Roles_has_role$0$anon9_Else_correct@@1))))))
(let ((anon0$1_correct@@15  (=> (|$IsValid'address'| _$t0@@15) (=> (and (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@17)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@17))
 :qid |Rolesandybpl.8014:20|
 :skolemid |240|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@17))
)) (= _$t0@@15 _$t0@@15)) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 203375) 203221))) inline$$1_Roles_has_role$0$anon0_correct@@1))))
(let ((inline$$InitEventStore$0$anon0_correct@@15  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@17 T@$1_Event_EventHandle) ) (! (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@17)))
 (and (= (|l#Multiset_80957| stream@@16) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@16) v@@51) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 202839) 203375)) anon0$1_correct@@15)))
(let ((anon0_correct@@15  (=> (= (ControlFlow 0 276860) 202839) inline$$InitEventStore$0$anon0_correct@@15)))
anon0_correct@@15)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@2 () Bool)
(declare-fun $abort_flag@0@@14 () Bool)
(declare-fun $abort_code@1@@14 () Int)
(declare-fun $abort_code@3@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@2 () Bool)
(declare-fun $abort_code@2@@2 () Int)
(declare-fun $abort_flag@1@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@2 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@14 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@2 () Bool)
(declare-fun _$t0@@16 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 277653) (let ((anon4_Else_correct@@1  (=> (and (not $abort_flag@2@@2) (= inline$$1_Roles_has_role$0$$ret0@1@@2 inline$$1_Roles_has_role$0$$ret0@1@@2)) (and (=> (= (ControlFlow 0 204780) (- 0 278092)) (forall ((addr@@219 Int) ) (!  (=> (|$IsValid'address'| addr@@219) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@219) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@219)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@219) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@219)) 0))))
 :qid |Rolesandybpl.8143:15|
 :skolemid |249|
))) (=> (forall ((addr@@220 Int) ) (!  (=> (|$IsValid'address'| addr@@220) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@220) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@220)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@220) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@220)) 0))))
 :qid |Rolesandybpl.8143:15|
 :skolemid |249|
)) (and (=> (= (ControlFlow 0 204780) (- 0 278141)) (forall ((addr@@221 Int) ) (!  (=> (|$IsValid'address'| addr@@221) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@221) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@221)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@221) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@221)) 1))))
 :qid |Rolesandybpl.8147:15|
 :skolemid |250|
))) (=> (forall ((addr@@222 Int) ) (!  (=> (|$IsValid'address'| addr@@222) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@222) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@222)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@222) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@222)) 1))))
 :qid |Rolesandybpl.8147:15|
 :skolemid |250|
)) (and (=> (= (ControlFlow 0 204780) (- 0 278190)) (forall ((addr@@223 Int) ) (!  (=> (|$IsValid'address'| addr@@223) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@223) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@223)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@223) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@223)) 3))))
 :qid |Rolesandybpl.8151:15|
 :skolemid |251|
))) (=> (forall ((addr@@224 Int) ) (!  (=> (|$IsValid'address'| addr@@224) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@224) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@224)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@224) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@224)) 3))))
 :qid |Rolesandybpl.8151:15|
 :skolemid |251|
)) (and (=> (= (ControlFlow 0 204780) (- 0 278239)) (forall ((addr@@225 Int) ) (!  (=> (|$IsValid'address'| addr@@225) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@225) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@225)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@225) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@225)) 4))))
 :qid |Rolesandybpl.8155:15|
 :skolemid |252|
))) (=> (forall ((addr@@226 Int) ) (!  (=> (|$IsValid'address'| addr@@226) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@226) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@226)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@226) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@226)) 4))))
 :qid |Rolesandybpl.8155:15|
 :skolemid |252|
)) (and (=> (= (ControlFlow 0 204780) (- 0 278288)) (forall ((addr@@227 Int) ) (!  (=> (|$IsValid'address'| addr@@227) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@227) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@227)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@227) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@227)) 2))))
 :qid |Rolesandybpl.8159:15|
 :skolemid |253|
))) (=> (forall ((addr@@228 Int) ) (!  (=> (|$IsValid'address'| addr@@228) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@228) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@228)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@228) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@228)) 2))))
 :qid |Rolesandybpl.8159:15|
 :skolemid |253|
)) (and (=> (= (ControlFlow 0 204780) (- 0 278337)) (forall ((addr@@229 Int) ) (!  (=> (|$IsValid'address'| addr@@229) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@229) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@229)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@229) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@229)) 5))))
 :qid |Rolesandybpl.8163:15|
 :skolemid |254|
))) (=> (forall ((addr@@230 Int) ) (!  (=> (|$IsValid'address'| addr@@230) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@230) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@230)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@230) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@230)) 5))))
 :qid |Rolesandybpl.8163:15|
 :skolemid |254|
)) (=> (= (ControlFlow 0 204780) (- 0 278386)) (forall ((addr@@231 Int) ) (!  (=> (|$IsValid'address'| addr@@231) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@231) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@231)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@231) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@231)) 6))))
 :qid |Rolesandybpl.8167:15|
 :skolemid |255|
))))))))))))))))))
(let ((anon4_Then_correct@@1 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@2  (=> $abort_flag@0@@14 (=> (and (and (= $abort_code@1@@14 $abort_code@1@@14) (= $abort_code@3@@2 $abort_code@1@@14)) (and (= $abort_flag@2@@2 true) (= inline$$1_Roles_has_role$0$$ret0@1@@2 inline$$1_Roles_has_role$0$$ret0@0@@2))) (and (=> (= (ControlFlow 0 204345) 204798) anon4_Then_correct@@1) (=> (= (ControlFlow 0 204345) 204780) anon4_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@2  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@2 inline$$1_Roles_has_role$0$$t3@1@@2) (= $abort_code@3@@2 $abort_code@2@@2)) (and (= $abort_flag@2@@2 $abort_flag@1@@2) (= inline$$1_Roles_has_role$0$$ret0@1@@2 inline$$1_Roles_has_role$0$$t3@1@@2))) (and (=> (= (ControlFlow 0 204281) 204798) anon4_Then_correct@@1) (=> (= (ControlFlow 0 204281) 204780) anon4_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@2  (=> (and (and (and (not $abort_flag@0@@14) (= inline$$1_Roles_has_role$0$$t8@1@@2 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@2))) (and (= inline$$1_Roles_has_role$0$$t9@1@@2 (= inline$$1_Roles_has_role$0$$t8@1@@2 0)) (= inline$$1_Roles_has_role$0$$t9@1@@2 inline$$1_Roles_has_role$0$$t9@1@@2))) (and (and (= $abort_code@2@@2 $abort_code@1@@14) (= inline$$1_Roles_has_role$0$$t3@1@@2 inline$$1_Roles_has_role$0$$t9@1@@2)) (and (= $abort_flag@1@@2 $abort_flag@0@@14) (= (ControlFlow 0 204327) 204281)))) inline$$1_Roles_has_role$0$L3_correct@@2)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@2  (=> (= $abort_flag@0@@14 true) (=> (and (= $abort_code@1@@14 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@2 inline$$1_Roles_has_role$0$$t6@0@@2)) (and (=> (= (ControlFlow 0 204397) 204345) inline$$1_Roles_has_role$0$anon11_Then_correct@@2) (=> (= (ControlFlow 0 204397) 204327) inline$$1_Roles_has_role$0$anon11_Else_correct@@2))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@2)) (= (ControlFlow 0 204395) 204397)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@2)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@2) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@2)) (= $abort_flag@0@@14 false)) (and (= $abort_code@1@@14 $abort_code@0@@14) (= inline$$1_Roles_has_role$0$$t6@2@@2 inline$$1_Roles_has_role$0$$t6@1@@2))) (and (=> (= (ControlFlow 0 204299) 204345) inline$$1_Roles_has_role$0$anon11_Then_correct@@2) (=> (= (ControlFlow 0 204299) 204327) inline$$1_Roles_has_role$0$anon11_Else_correct@@2))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@2  (=> inline$$1_Roles_has_role$0$$t5@1@@2 (and (=> (= (ControlFlow 0 204285) 204395) inline$$1_Roles_has_role$0$anon10_Then_correct@@2) (=> (= (ControlFlow 0 204285) 204299) inline$$1_Roles_has_role$0$anon10_Else_correct@@2)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@2  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@2) (= false false)) (=> (and (and (= $abort_code@2@@2 $abort_code@0@@14) (= inline$$1_Roles_has_role$0$$t3@1@@2 false)) (and (= $abort_flag@1@@2 false) (= (ControlFlow 0 204269) 204281))) inline$$1_Roles_has_role$0$L3_correct@@2))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@2  (=> (and (= _$t0@@16 _$t0@@16) (= 0 0)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@2) (= inline$$1_Roles_has_role$0$$t4@0@@2 _$t0@@16)) (and (= inline$$1_Roles_has_role$0$$t4@0@@2 inline$$1_Roles_has_role$0$$t4@0@@2) (= inline$$1_Roles_has_role$0$$t5@1@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@2)))) (and (=> (= (ControlFlow 0 204249) 204285) inline$$1_Roles_has_role$0$anon9_Then_correct@@2) (=> (= (ControlFlow 0 204249) 204269) inline$$1_Roles_has_role$0$anon9_Else_correct@@2))))))
(let ((anon0$1_correct@@16  (=> (|$IsValid'address'| _$t0@@16) (=> (and (and (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@18)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@18))
 :qid |Rolesandybpl.8110:20|
 :skolemid |248|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@18))
)) (= _$t0@@16 _$t0@@16)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 204403) 204249))) inline$$1_Roles_has_role$0$anon0_correct@@2))))
(let ((inline$$InitEventStore$0$anon0_correct@@16  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@18 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@18)))
 (and (= (|l#Multiset_80957| stream@@17) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@17) v@@52) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 203867) 204403)) anon0$1_correct@@16)))
(let ((anon0_correct@@16  (=> (= (ControlFlow 0 277653) 203867) inline$$InitEventStore$0$anon0_correct@@16)))
anon0_correct@@16)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@3 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@3 () Bool)
(declare-fun $abort_flag@0@@15 () Bool)
(declare-fun $abort_code@1@@15 () Int)
(declare-fun $abort_code@3@@3 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@3 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@3 () Bool)
(declare-fun $abort_code@2@@3 () Int)
(declare-fun $abort_flag@1@@3 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@3 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@3 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@3 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@3 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@3 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@3 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@15 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@3 () Bool)
(declare-fun _$t0@@17 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_parent_VASP_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 278446) (let ((anon4_Else_correct@@2  (=> (and (not $abort_flag@2@@3) (= inline$$1_Roles_has_role$0$$ret0@1@@3 inline$$1_Roles_has_role$0$$ret0@1@@3)) (and (=> (= (ControlFlow 0 205808) (- 0 278885)) (forall ((addr@@232 Int) ) (!  (=> (|$IsValid'address'| addr@@232) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@232) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@232)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@232) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@232)) 0))))
 :qid |Rolesandybpl.8291:15|
 :skolemid |257|
))) (=> (forall ((addr@@233 Int) ) (!  (=> (|$IsValid'address'| addr@@233) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@233) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@233)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@233) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@233)) 0))))
 :qid |Rolesandybpl.8291:15|
 :skolemid |257|
)) (and (=> (= (ControlFlow 0 205808) (- 0 278934)) (forall ((addr@@234 Int) ) (!  (=> (|$IsValid'address'| addr@@234) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@234) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@234)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@234) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@234)) 1))))
 :qid |Rolesandybpl.8295:15|
 :skolemid |258|
))) (=> (forall ((addr@@235 Int) ) (!  (=> (|$IsValid'address'| addr@@235) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@235) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@235)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@235) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@235)) 1))))
 :qid |Rolesandybpl.8295:15|
 :skolemid |258|
)) (and (=> (= (ControlFlow 0 205808) (- 0 278983)) (forall ((addr@@236 Int) ) (!  (=> (|$IsValid'address'| addr@@236) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@236) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@236)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@236) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@236)) 3))))
 :qid |Rolesandybpl.8299:15|
 :skolemid |259|
))) (=> (forall ((addr@@237 Int) ) (!  (=> (|$IsValid'address'| addr@@237) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@237) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@237)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@237) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@237)) 3))))
 :qid |Rolesandybpl.8299:15|
 :skolemid |259|
)) (and (=> (= (ControlFlow 0 205808) (- 0 279032)) (forall ((addr@@238 Int) ) (!  (=> (|$IsValid'address'| addr@@238) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@238) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@238)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@238) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@238)) 4))))
 :qid |Rolesandybpl.8303:15|
 :skolemid |260|
))) (=> (forall ((addr@@239 Int) ) (!  (=> (|$IsValid'address'| addr@@239) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@239) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@239)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@239) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@239)) 4))))
 :qid |Rolesandybpl.8303:15|
 :skolemid |260|
)) (and (=> (= (ControlFlow 0 205808) (- 0 279081)) (forall ((addr@@240 Int) ) (!  (=> (|$IsValid'address'| addr@@240) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@240) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@240)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@240) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@240)) 2))))
 :qid |Rolesandybpl.8307:15|
 :skolemid |261|
))) (=> (forall ((addr@@241 Int) ) (!  (=> (|$IsValid'address'| addr@@241) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@241) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@241)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@241) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@241)) 2))))
 :qid |Rolesandybpl.8307:15|
 :skolemid |261|
)) (and (=> (= (ControlFlow 0 205808) (- 0 279130)) (forall ((addr@@242 Int) ) (!  (=> (|$IsValid'address'| addr@@242) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@242) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@242)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@242) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@242)) 5))))
 :qid |Rolesandybpl.8311:15|
 :skolemid |262|
))) (=> (forall ((addr@@243 Int) ) (!  (=> (|$IsValid'address'| addr@@243) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@243) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@243)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@243) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@243)) 5))))
 :qid |Rolesandybpl.8311:15|
 :skolemid |262|
)) (=> (= (ControlFlow 0 205808) (- 0 279179)) (forall ((addr@@244 Int) ) (!  (=> (|$IsValid'address'| addr@@244) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@244) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@244)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@244) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@244)) 6))))
 :qid |Rolesandybpl.8315:15|
 :skolemid |263|
))))))))))))))))))
(let ((anon4_Then_correct@@2 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@3  (=> $abort_flag@0@@15 (=> (and (and (= $abort_code@1@@15 $abort_code@1@@15) (= $abort_code@3@@3 $abort_code@1@@15)) (and (= $abort_flag@2@@3 true) (= inline$$1_Roles_has_role$0$$ret0@1@@3 inline$$1_Roles_has_role$0$$ret0@0@@3))) (and (=> (= (ControlFlow 0 205373) 205826) anon4_Then_correct@@2) (=> (= (ControlFlow 0 205373) 205808) anon4_Else_correct@@2))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@3  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@3 inline$$1_Roles_has_role$0$$t3@1@@3) (= $abort_code@3@@3 $abort_code@2@@3)) (and (= $abort_flag@2@@3 $abort_flag@1@@3) (= inline$$1_Roles_has_role$0$$ret0@1@@3 inline$$1_Roles_has_role$0$$t3@1@@3))) (and (=> (= (ControlFlow 0 205309) 205826) anon4_Then_correct@@2) (=> (= (ControlFlow 0 205309) 205808) anon4_Else_correct@@2)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@3  (=> (and (and (and (not $abort_flag@0@@15) (= inline$$1_Roles_has_role$0$$t8@1@@3 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@3))) (and (= inline$$1_Roles_has_role$0$$t9@1@@3 (= inline$$1_Roles_has_role$0$$t8@1@@3 5)) (= inline$$1_Roles_has_role$0$$t9@1@@3 inline$$1_Roles_has_role$0$$t9@1@@3))) (and (and (= $abort_code@2@@3 $abort_code@1@@15) (= inline$$1_Roles_has_role$0$$t3@1@@3 inline$$1_Roles_has_role$0$$t9@1@@3)) (and (= $abort_flag@1@@3 $abort_flag@0@@15) (= (ControlFlow 0 205355) 205309)))) inline$$1_Roles_has_role$0$L3_correct@@3)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@3  (=> (= $abort_flag@0@@15 true) (=> (and (= $abort_code@1@@15 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@3 inline$$1_Roles_has_role$0$$t6@0@@3)) (and (=> (= (ControlFlow 0 205425) 205373) inline$$1_Roles_has_role$0$anon11_Then_correct@@3) (=> (= (ControlFlow 0 205425) 205355) inline$$1_Roles_has_role$0$anon11_Else_correct@@3))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@3)) (= (ControlFlow 0 205423) 205425)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@3)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@3) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@3)) (= $abort_flag@0@@15 false)) (and (= $abort_code@1@@15 $abort_code@0@@15) (= inline$$1_Roles_has_role$0$$t6@2@@3 inline$$1_Roles_has_role$0$$t6@1@@3))) (and (=> (= (ControlFlow 0 205327) 205373) inline$$1_Roles_has_role$0$anon11_Then_correct@@3) (=> (= (ControlFlow 0 205327) 205355) inline$$1_Roles_has_role$0$anon11_Else_correct@@3))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@3  (=> inline$$1_Roles_has_role$0$$t5@1@@3 (and (=> (= (ControlFlow 0 205313) 205423) inline$$1_Roles_has_role$0$anon10_Then_correct@@3) (=> (= (ControlFlow 0 205313) 205327) inline$$1_Roles_has_role$0$anon10_Else_correct@@3)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@3  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@3) (= false false)) (=> (and (and (= $abort_code@2@@3 $abort_code@0@@15) (= inline$$1_Roles_has_role$0$$t3@1@@3 false)) (and (= $abort_flag@1@@3 false) (= (ControlFlow 0 205297) 205309))) inline$$1_Roles_has_role$0$L3_correct@@3))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@3  (=> (and (= _$t0@@17 _$t0@@17) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@3) (= inline$$1_Roles_has_role$0$$t4@0@@3 _$t0@@17)) (and (= inline$$1_Roles_has_role$0$$t4@0@@3 inline$$1_Roles_has_role$0$$t4@0@@3) (= inline$$1_Roles_has_role$0$$t5@1@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@3)))) (and (=> (= (ControlFlow 0 205277) 205313) inline$$1_Roles_has_role$0$anon9_Then_correct@@3) (=> (= (ControlFlow 0 205277) 205297) inline$$1_Roles_has_role$0$anon9_Else_correct@@3))))))
(let ((anon0$1_correct@@17  (=> (|$IsValid'address'| _$t0@@17) (=> (and (and (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@19)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@19))
 :qid |Rolesandybpl.8258:20|
 :skolemid |256|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@19))
)) (= _$t0@@17 _$t0@@17)) (and (|$IsValid'u64'| 5) (= (ControlFlow 0 205431) 205277))) inline$$1_Roles_has_role$0$anon0_correct@@3))))
(let ((inline$$InitEventStore$0$anon0_correct@@17  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@19 T@$1_Event_EventHandle) ) (! (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@19)))
 (and (= (|l#Multiset_80957| stream@@18) 0) (forall ((v@@53 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@18) v@@53) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 204895) 205431)) anon0$1_correct@@17)))
(let ((anon0_correct@@17  (=> (= (ControlFlow 0 278446) 204895) inline$$InitEventStore$0$anon0_correct@@17)))
anon0_correct@@17)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t3@0@@0 () Bool)
(declare-fun $abort_flag@0@@16 () Bool)
(declare-fun $t8@0@@4 () Int)
(declare-fun $t6@1 () T@$1_Roles_RoleId)
(declare-fun $t9@0 () Bool)
(declare-fun _$t1@@2 () Int)
(declare-fun $t6@@8 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@16 () Int)
(declare-fun $t4@@1 () Int)
(declare-fun $t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@16 () Int)
(declare-fun $t5@0 () Bool)
(declare-fun _$t0@@18 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 279240) (let ((anon12_Then_correct@@7 true))
(let ((L3_correct@@0  (=> (= $t3@0@@0 $t3@0@@0) (and (=> (= (ControlFlow 0 206402) (- 0 279534)) (forall ((addr@@245 Int) ) (!  (=> (|$IsValid'address'| addr@@245) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@245) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@245)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@245) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@245)) 0))))
 :qid |Rolesandybpl.8596:15|
 :skolemid |265|
))) (=> (forall ((addr@@246 Int) ) (!  (=> (|$IsValid'address'| addr@@246) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@246) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@246)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@246) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@246)) 0))))
 :qid |Rolesandybpl.8596:15|
 :skolemid |265|
)) (and (=> (= (ControlFlow 0 206402) (- 0 279583)) (forall ((addr@@247 Int) ) (!  (=> (|$IsValid'address'| addr@@247) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@247) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@247)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@247) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@247)) 1))))
 :qid |Rolesandybpl.8600:15|
 :skolemid |266|
))) (=> (forall ((addr@@248 Int) ) (!  (=> (|$IsValid'address'| addr@@248) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@248) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@248)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@248) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@248)) 1))))
 :qid |Rolesandybpl.8600:15|
 :skolemid |266|
)) (and (=> (= (ControlFlow 0 206402) (- 0 279632)) (forall ((addr@@249 Int) ) (!  (=> (|$IsValid'address'| addr@@249) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@249) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@249)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@249) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@249)) 3))))
 :qid |Rolesandybpl.8604:15|
 :skolemid |267|
))) (=> (forall ((addr@@250 Int) ) (!  (=> (|$IsValid'address'| addr@@250) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@250) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@250)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@250) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@250)) 3))))
 :qid |Rolesandybpl.8604:15|
 :skolemid |267|
)) (and (=> (= (ControlFlow 0 206402) (- 0 279681)) (forall ((addr@@251 Int) ) (!  (=> (|$IsValid'address'| addr@@251) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@251) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@251)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@251) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@251)) 4))))
 :qid |Rolesandybpl.8608:15|
 :skolemid |268|
))) (=> (forall ((addr@@252 Int) ) (!  (=> (|$IsValid'address'| addr@@252) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@252) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@252)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@252) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@252)) 4))))
 :qid |Rolesandybpl.8608:15|
 :skolemid |268|
)) (and (=> (= (ControlFlow 0 206402) (- 0 279730)) (forall ((addr@@253 Int) ) (!  (=> (|$IsValid'address'| addr@@253) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@253) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@253)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@253) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@253)) 2))))
 :qid |Rolesandybpl.8612:15|
 :skolemid |269|
))) (=> (forall ((addr@@254 Int) ) (!  (=> (|$IsValid'address'| addr@@254) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@254) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@254)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@254) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@254)) 2))))
 :qid |Rolesandybpl.8612:15|
 :skolemid |269|
)) (and (=> (= (ControlFlow 0 206402) (- 0 279779)) (forall ((addr@@255 Int) ) (!  (=> (|$IsValid'address'| addr@@255) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@255) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@255)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@255) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@255)) 5))))
 :qid |Rolesandybpl.8616:15|
 :skolemid |270|
))) (=> (forall ((addr@@256 Int) ) (!  (=> (|$IsValid'address'| addr@@256) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@256) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@256)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@256) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@256)) 5))))
 :qid |Rolesandybpl.8616:15|
 :skolemid |270|
)) (=> (= (ControlFlow 0 206402) (- 0 279828)) (forall ((addr@@257 Int) ) (!  (=> (|$IsValid'address'| addr@@257) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@257) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@257)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@257) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@257)) 6))))
 :qid |Rolesandybpl.8620:15|
 :skolemid |271|
))))))))))))))))))
(let ((anon12_Else_correct@@7  (=> (and (not $abort_flag@0@@16) (= $t8@0@@4 (|$role_id#$1_Roles_RoleId| $t6@1))) (=> (and (and (= $t9@0 (= $t8@0@@4 _$t1@@2)) (= $t9@0 $t9@0)) (and (= $t3@0@@0 $t9@0) (= (ControlFlow 0 206448) 206402))) L3_correct@@0))))
(let ((anon11_Then$1_correct@@1  (=> (= $t6@1 $t6@@8) (=> (and (= $abort_flag@0@@16 true) (= $abort_code@1@@16 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 206518) 206466) anon12_Then_correct@@7) (=> (= (ControlFlow 0 206518) 206448) anon12_Else_correct@@7))))))
(let ((anon11_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@1)) (= (ControlFlow 0 206516) 206518)) anon11_Then$1_correct@@1)))
(let ((anon11_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@1) (=> (and (and (= $t6@0@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@1)) (= $t6@1 $t6@0@@0)) (and (= $abort_flag@0@@16 false) (= $abort_code@1@@16 $abort_code@0@@16))) (and (=> (= (ControlFlow 0 206420) 206466) anon12_Then_correct@@7) (=> (= (ControlFlow 0 206420) 206448) anon12_Else_correct@@7))))))
(let ((anon10_Then_correct@@1  (=> $t5@0 (and (=> (= (ControlFlow 0 206406) 206516) anon11_Then_correct@@2) (=> (= (ControlFlow 0 206406) 206420) anon11_Else_correct@@2)))))
(let ((anon10_Else_correct@@1  (=> (and (and (not $t5@0) (= false false)) (and (= $t3@0@@0 false) (= (ControlFlow 0 206031) 206402))) L3_correct@@0)))
(let ((anon0$1_correct@@18  (=> (|$IsValid'address'| _$t0@@18) (=> (and (and (and (|$IsValid'u64'| _$t1@@2) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@20)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@20))
 :qid |Rolesandybpl.8495:20|
 :skolemid |264|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@20))
))) (and (= _$t0@@18 _$t0@@18) (= _$t1@@2 _$t1@@2))) (and (and (|$IsValid'address'| $t4@@1) (= $t4@@1 _$t0@@18)) (and (= $t4@@1 $t4@@1) (= $t5@0 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@1))))) (and (=> (= (ControlFlow 0 206011) 206406) anon10_Then_correct@@1) (=> (= (ControlFlow 0 206011) 206031) anon10_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@18  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@20 T@$1_Event_EventHandle) ) (! (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@20)))
 (and (= (|l#Multiset_80957| stream@@19) 0) (forall ((v@@54 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@19) v@@54) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 205925) 206011)) anon0$1_correct@@18)))
(let ((anon0_correct@@18  (=> (= (ControlFlow 0 279240) 205925) inline$$InitEventStore$0$anon0_correct@@18)))
anon0_correct@@18))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@4 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@4 () Bool)
(declare-fun $abort_flag@0@@17 () Bool)
(declare-fun $abort_code@1@@17 () Int)
(declare-fun $abort_code@3@@4 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@4 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@4 () Bool)
(declare-fun $abort_code@2@@4 () Int)
(declare-fun $abort_flag@1@@4 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@4 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@4 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@4 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@4 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@4 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@4 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@17 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@4 () Bool)
(declare-fun _$t0@@19 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 279888) (let ((anon4_Else_correct@@3  (=> (and (not $abort_flag@2@@4) (= inline$$1_Roles_has_role$0$$ret0@1@@4 inline$$1_Roles_has_role$0$$ret0@1@@4)) (and (=> (= (ControlFlow 0 207527) (- 0 280327)) (forall ((addr@@258 Int) ) (!  (=> (|$IsValid'address'| addr@@258) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@258) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@258)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@258) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@258)) 0))))
 :qid |Rolesandybpl.8692:15|
 :skolemid |273|
))) (=> (forall ((addr@@259 Int) ) (!  (=> (|$IsValid'address'| addr@@259) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@259) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@259)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@259) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@259)) 0))))
 :qid |Rolesandybpl.8692:15|
 :skolemid |273|
)) (and (=> (= (ControlFlow 0 207527) (- 0 280376)) (forall ((addr@@260 Int) ) (!  (=> (|$IsValid'address'| addr@@260) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@260) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@260)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@260) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@260)) 1))))
 :qid |Rolesandybpl.8696:15|
 :skolemid |274|
))) (=> (forall ((addr@@261 Int) ) (!  (=> (|$IsValid'address'| addr@@261) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@261) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@261)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@261) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@261)) 1))))
 :qid |Rolesandybpl.8696:15|
 :skolemid |274|
)) (and (=> (= (ControlFlow 0 207527) (- 0 280425)) (forall ((addr@@262 Int) ) (!  (=> (|$IsValid'address'| addr@@262) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@262) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@262)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@262) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@262)) 3))))
 :qid |Rolesandybpl.8700:15|
 :skolemid |275|
))) (=> (forall ((addr@@263 Int) ) (!  (=> (|$IsValid'address'| addr@@263) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@263) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@263)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@263) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@263)) 3))))
 :qid |Rolesandybpl.8700:15|
 :skolemid |275|
)) (and (=> (= (ControlFlow 0 207527) (- 0 280474)) (forall ((addr@@264 Int) ) (!  (=> (|$IsValid'address'| addr@@264) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@264) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@264)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@264) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@264)) 4))))
 :qid |Rolesandybpl.8704:15|
 :skolemid |276|
))) (=> (forall ((addr@@265 Int) ) (!  (=> (|$IsValid'address'| addr@@265) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@265) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@265)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@265) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@265)) 4))))
 :qid |Rolesandybpl.8704:15|
 :skolemid |276|
)) (and (=> (= (ControlFlow 0 207527) (- 0 280523)) (forall ((addr@@266 Int) ) (!  (=> (|$IsValid'address'| addr@@266) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@266) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@266)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@266) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@266)) 2))))
 :qid |Rolesandybpl.8708:15|
 :skolemid |277|
))) (=> (forall ((addr@@267 Int) ) (!  (=> (|$IsValid'address'| addr@@267) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@267) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@267)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@267) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@267)) 2))))
 :qid |Rolesandybpl.8708:15|
 :skolemid |277|
)) (and (=> (= (ControlFlow 0 207527) (- 0 280572)) (forall ((addr@@268 Int) ) (!  (=> (|$IsValid'address'| addr@@268) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@268) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@268)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@268) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@268)) 5))))
 :qid |Rolesandybpl.8712:15|
 :skolemid |278|
))) (=> (forall ((addr@@269 Int) ) (!  (=> (|$IsValid'address'| addr@@269) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@269) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@269)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@269) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@269)) 5))))
 :qid |Rolesandybpl.8712:15|
 :skolemid |278|
)) (=> (= (ControlFlow 0 207527) (- 0 280621)) (forall ((addr@@270 Int) ) (!  (=> (|$IsValid'address'| addr@@270) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@270) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@270)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@270) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@270)) 6))))
 :qid |Rolesandybpl.8716:15|
 :skolemid |279|
))))))))))))))))))
(let ((anon4_Then_correct@@3 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@4  (=> $abort_flag@0@@17 (=> (and (and (= $abort_code@1@@17 $abort_code@1@@17) (= $abort_code@3@@4 $abort_code@1@@17)) (and (= $abort_flag@2@@4 true) (= inline$$1_Roles_has_role$0$$ret0@1@@4 inline$$1_Roles_has_role$0$$ret0@0@@4))) (and (=> (= (ControlFlow 0 207092) 207545) anon4_Then_correct@@3) (=> (= (ControlFlow 0 207092) 207527) anon4_Else_correct@@3))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@4  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@4 inline$$1_Roles_has_role$0$$t3@1@@4) (= $abort_code@3@@4 $abort_code@2@@4)) (and (= $abort_flag@2@@4 $abort_flag@1@@4) (= inline$$1_Roles_has_role$0$$ret0@1@@4 inline$$1_Roles_has_role$0$$t3@1@@4))) (and (=> (= (ControlFlow 0 207028) 207545) anon4_Then_correct@@3) (=> (= (ControlFlow 0 207028) 207527) anon4_Else_correct@@3)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@4  (=> (and (and (and (not $abort_flag@0@@17) (= inline$$1_Roles_has_role$0$$t8@1@@4 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@4))) (and (= inline$$1_Roles_has_role$0$$t9@1@@4 (= inline$$1_Roles_has_role$0$$t8@1@@4 1)) (= inline$$1_Roles_has_role$0$$t9@1@@4 inline$$1_Roles_has_role$0$$t9@1@@4))) (and (and (= $abort_code@2@@4 $abort_code@1@@17) (= inline$$1_Roles_has_role$0$$t3@1@@4 inline$$1_Roles_has_role$0$$t9@1@@4)) (and (= $abort_flag@1@@4 $abort_flag@0@@17) (= (ControlFlow 0 207074) 207028)))) inline$$1_Roles_has_role$0$L3_correct@@4)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@4  (=> (= $abort_flag@0@@17 true) (=> (and (= $abort_code@1@@17 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@4 inline$$1_Roles_has_role$0$$t6@0@@4)) (and (=> (= (ControlFlow 0 207144) 207092) inline$$1_Roles_has_role$0$anon11_Then_correct@@4) (=> (= (ControlFlow 0 207144) 207074) inline$$1_Roles_has_role$0$anon11_Else_correct@@4))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@4)) (= (ControlFlow 0 207142) 207144)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@4)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@4) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@4)) (= $abort_flag@0@@17 false)) (and (= $abort_code@1@@17 $abort_code@0@@17) (= inline$$1_Roles_has_role$0$$t6@2@@4 inline$$1_Roles_has_role$0$$t6@1@@4))) (and (=> (= (ControlFlow 0 207046) 207092) inline$$1_Roles_has_role$0$anon11_Then_correct@@4) (=> (= (ControlFlow 0 207046) 207074) inline$$1_Roles_has_role$0$anon11_Else_correct@@4))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@4  (=> inline$$1_Roles_has_role$0$$t5@1@@4 (and (=> (= (ControlFlow 0 207032) 207142) inline$$1_Roles_has_role$0$anon10_Then_correct@@4) (=> (= (ControlFlow 0 207032) 207046) inline$$1_Roles_has_role$0$anon10_Else_correct@@4)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@4  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@4) (= false false)) (=> (and (and (= $abort_code@2@@4 $abort_code@0@@17) (= inline$$1_Roles_has_role$0$$t3@1@@4 false)) (and (= $abort_flag@1@@4 false) (= (ControlFlow 0 207016) 207028))) inline$$1_Roles_has_role$0$L3_correct@@4))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@4  (=> (and (= _$t0@@19 _$t0@@19) (= 1 1)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@4) (= inline$$1_Roles_has_role$0$$t4@0@@4 _$t0@@19)) (and (= inline$$1_Roles_has_role$0$$t4@0@@4 inline$$1_Roles_has_role$0$$t4@0@@4) (= inline$$1_Roles_has_role$0$$t5@1@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@4)))) (and (=> (= (ControlFlow 0 206996) 207032) inline$$1_Roles_has_role$0$anon9_Then_correct@@4) (=> (= (ControlFlow 0 206996) 207016) inline$$1_Roles_has_role$0$anon9_Else_correct@@4))))))
(let ((anon0$1_correct@@19  (=> (|$IsValid'address'| _$t0@@19) (=> (and (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@21)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@21))
 :qid |Rolesandybpl.8659:20|
 :skolemid |272|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@21))
)) (= _$t0@@19 _$t0@@19)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 207150) 206996))) inline$$1_Roles_has_role$0$anon0_correct@@4))))
(let ((inline$$InitEventStore$0$anon0_correct@@19  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@21 T@$1_Event_EventHandle) ) (! (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@21)))
 (and (= (|l#Multiset_80957| stream@@20) 0) (forall ((v@@55 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@20) v@@55) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 206614) 207150)) anon0$1_correct@@19)))
(let ((anon0_correct@@19  (=> (= (ControlFlow 0 279888) 206614) inline$$InitEventStore$0$anon0_correct@@19)))
anon0_correct@@19)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@5 () Bool)
(declare-fun $abort_flag@0@@18 () Bool)
(declare-fun $abort_code@1@@18 () Int)
(declare-fun $abort_code@3@@5 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@5 () Bool)
(declare-fun $abort_code@2@@5 () Int)
(declare-fun $abort_flag@1@@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@5 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@5 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@5 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@5 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@5 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@18 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@5 () Bool)
(declare-fun _$t0@@20 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 280681) (let ((anon4_Else_correct@@4  (=> (and (not $abort_flag@2@@5) (= inline$$1_Roles_has_role$0$$ret0@1@@5 inline$$1_Roles_has_role$0$$ret0@1@@5)) (and (=> (= (ControlFlow 0 208555) (- 0 281120)) (forall ((addr@@271 Int) ) (!  (=> (|$IsValid'address'| addr@@271) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@271) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@271)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@271) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@271)) 0))))
 :qid |Rolesandybpl.8788:15|
 :skolemid |281|
))) (=> (forall ((addr@@272 Int) ) (!  (=> (|$IsValid'address'| addr@@272) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@272) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@272)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@272) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@272)) 0))))
 :qid |Rolesandybpl.8788:15|
 :skolemid |281|
)) (and (=> (= (ControlFlow 0 208555) (- 0 281169)) (forall ((addr@@273 Int) ) (!  (=> (|$IsValid'address'| addr@@273) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@273) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@273)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@273) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@273)) 1))))
 :qid |Rolesandybpl.8792:15|
 :skolemid |282|
))) (=> (forall ((addr@@274 Int) ) (!  (=> (|$IsValid'address'| addr@@274) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@274) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@274)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@274) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@274)) 1))))
 :qid |Rolesandybpl.8792:15|
 :skolemid |282|
)) (and (=> (= (ControlFlow 0 208555) (- 0 281218)) (forall ((addr@@275 Int) ) (!  (=> (|$IsValid'address'| addr@@275) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@275) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@275)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@275) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@275)) 3))))
 :qid |Rolesandybpl.8796:15|
 :skolemid |283|
))) (=> (forall ((addr@@276 Int) ) (!  (=> (|$IsValid'address'| addr@@276) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@276) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@276)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@276) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@276)) 3))))
 :qid |Rolesandybpl.8796:15|
 :skolemid |283|
)) (and (=> (= (ControlFlow 0 208555) (- 0 281267)) (forall ((addr@@277 Int) ) (!  (=> (|$IsValid'address'| addr@@277) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@277) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@277)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@277) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@277)) 4))))
 :qid |Rolesandybpl.8800:15|
 :skolemid |284|
))) (=> (forall ((addr@@278 Int) ) (!  (=> (|$IsValid'address'| addr@@278) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@278) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@278)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@278) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@278)) 4))))
 :qid |Rolesandybpl.8800:15|
 :skolemid |284|
)) (and (=> (= (ControlFlow 0 208555) (- 0 281316)) (forall ((addr@@279 Int) ) (!  (=> (|$IsValid'address'| addr@@279) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@279) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@279)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@279) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@279)) 2))))
 :qid |Rolesandybpl.8804:15|
 :skolemid |285|
))) (=> (forall ((addr@@280 Int) ) (!  (=> (|$IsValid'address'| addr@@280) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@280) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@280)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@280) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@280)) 2))))
 :qid |Rolesandybpl.8804:15|
 :skolemid |285|
)) (and (=> (= (ControlFlow 0 208555) (- 0 281365)) (forall ((addr@@281 Int) ) (!  (=> (|$IsValid'address'| addr@@281) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@281) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@281)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@281) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@281)) 5))))
 :qid |Rolesandybpl.8808:15|
 :skolemid |286|
))) (=> (forall ((addr@@282 Int) ) (!  (=> (|$IsValid'address'| addr@@282) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@282) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@282)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@282) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@282)) 5))))
 :qid |Rolesandybpl.8808:15|
 :skolemid |286|
)) (=> (= (ControlFlow 0 208555) (- 0 281414)) (forall ((addr@@283 Int) ) (!  (=> (|$IsValid'address'| addr@@283) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@283) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@283)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@283) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@283)) 6))))
 :qid |Rolesandybpl.8812:15|
 :skolemid |287|
))))))))))))))))))
(let ((anon4_Then_correct@@4 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@5  (=> $abort_flag@0@@18 (=> (and (and (= $abort_code@1@@18 $abort_code@1@@18) (= $abort_code@3@@5 $abort_code@1@@18)) (and (= $abort_flag@2@@5 true) (= inline$$1_Roles_has_role$0$$ret0@1@@5 inline$$1_Roles_has_role$0$$ret0@0@@5))) (and (=> (= (ControlFlow 0 208120) 208573) anon4_Then_correct@@4) (=> (= (ControlFlow 0 208120) 208555) anon4_Else_correct@@4))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@5  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@5 inline$$1_Roles_has_role$0$$t3@1@@5) (= $abort_code@3@@5 $abort_code@2@@5)) (and (= $abort_flag@2@@5 $abort_flag@1@@5) (= inline$$1_Roles_has_role$0$$ret0@1@@5 inline$$1_Roles_has_role$0$$t3@1@@5))) (and (=> (= (ControlFlow 0 208056) 208573) anon4_Then_correct@@4) (=> (= (ControlFlow 0 208056) 208555) anon4_Else_correct@@4)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@5  (=> (and (and (and (not $abort_flag@0@@18) (= inline$$1_Roles_has_role$0$$t8@1@@5 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@5))) (and (= inline$$1_Roles_has_role$0$$t9@1@@5 (= inline$$1_Roles_has_role$0$$t8@1@@5 4)) (= inline$$1_Roles_has_role$0$$t9@1@@5 inline$$1_Roles_has_role$0$$t9@1@@5))) (and (and (= $abort_code@2@@5 $abort_code@1@@18) (= inline$$1_Roles_has_role$0$$t3@1@@5 inline$$1_Roles_has_role$0$$t9@1@@5)) (and (= $abort_flag@1@@5 $abort_flag@0@@18) (= (ControlFlow 0 208102) 208056)))) inline$$1_Roles_has_role$0$L3_correct@@5)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@5  (=> (= $abort_flag@0@@18 true) (=> (and (= $abort_code@1@@18 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@5 inline$$1_Roles_has_role$0$$t6@0@@5)) (and (=> (= (ControlFlow 0 208172) 208120) inline$$1_Roles_has_role$0$anon11_Then_correct@@5) (=> (= (ControlFlow 0 208172) 208102) inline$$1_Roles_has_role$0$anon11_Else_correct@@5))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@5  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@5)) (= (ControlFlow 0 208170) 208172)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@5)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@5  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@5) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@5)) (= $abort_flag@0@@18 false)) (and (= $abort_code@1@@18 $abort_code@0@@18) (= inline$$1_Roles_has_role$0$$t6@2@@5 inline$$1_Roles_has_role$0$$t6@1@@5))) (and (=> (= (ControlFlow 0 208074) 208120) inline$$1_Roles_has_role$0$anon11_Then_correct@@5) (=> (= (ControlFlow 0 208074) 208102) inline$$1_Roles_has_role$0$anon11_Else_correct@@5))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@5  (=> inline$$1_Roles_has_role$0$$t5@1@@5 (and (=> (= (ControlFlow 0 208060) 208170) inline$$1_Roles_has_role$0$anon10_Then_correct@@5) (=> (= (ControlFlow 0 208060) 208074) inline$$1_Roles_has_role$0$anon10_Else_correct@@5)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@5  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@5) (= false false)) (=> (and (and (= $abort_code@2@@5 $abort_code@0@@18) (= inline$$1_Roles_has_role$0$$t3@1@@5 false)) (and (= $abort_flag@1@@5 false) (= (ControlFlow 0 208044) 208056))) inline$$1_Roles_has_role$0$L3_correct@@5))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@5  (=> (and (= _$t0@@20 _$t0@@20) (= 4 4)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@5) (= inline$$1_Roles_has_role$0$$t4@0@@5 _$t0@@20)) (and (= inline$$1_Roles_has_role$0$$t4@0@@5 inline$$1_Roles_has_role$0$$t4@0@@5) (= inline$$1_Roles_has_role$0$$t5@1@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@5)))) (and (=> (= (ControlFlow 0 208024) 208060) inline$$1_Roles_has_role$0$anon9_Then_correct@@5) (=> (= (ControlFlow 0 208024) 208044) inline$$1_Roles_has_role$0$anon9_Else_correct@@5))))))
(let ((anon0$1_correct@@20  (=> (|$IsValid'address'| _$t0@@20) (=> (and (and (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@22)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@22))
 :qid |Rolesandybpl.8755:20|
 :skolemid |280|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@22))
)) (= _$t0@@20 _$t0@@20)) (and (|$IsValid'u64'| 4) (= (ControlFlow 0 208178) 208024))) inline$$1_Roles_has_role$0$anon0_correct@@5))))
(let ((inline$$InitEventStore$0$anon0_correct@@20  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@22 T@$1_Event_EventHandle) ) (! (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@22)))
 (and (= (|l#Multiset_80957| stream@@21) 0) (forall ((v@@56 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@21) v@@56) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 207642) 208178)) anon0$1_correct@@20)))
(let ((anon0_correct@@20  (=> (= (ControlFlow 0 280681) 207642) inline$$InitEventStore$0$anon0_correct@@20)))
anon0_correct@@20)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@6 () Bool)
(declare-fun $abort_flag@0@@19 () Bool)
(declare-fun $abort_code@1@@19 () Int)
(declare-fun $abort_code@3@@6 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@6 () Bool)
(declare-fun $abort_code@2@@6 () Int)
(declare-fun $abort_flag@1@@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@6 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@6 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@6 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@6 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@6 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@19 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@6 () Bool)
(declare-fun _$t0@@21 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 281474) (let ((anon4_Else_correct@@5  (=> (and (not $abort_flag@2@@6) (= inline$$1_Roles_has_role$0$$ret0@1@@6 inline$$1_Roles_has_role$0$$ret0@1@@6)) (and (=> (= (ControlFlow 0 209583) (- 0 281913)) (forall ((addr@@284 Int) ) (!  (=> (|$IsValid'address'| addr@@284) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@284) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@284)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@284) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@284)) 0))))
 :qid |Rolesandybpl.8884:15|
 :skolemid |289|
))) (=> (forall ((addr@@285 Int) ) (!  (=> (|$IsValid'address'| addr@@285) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@285) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@285)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@285) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@285)) 0))))
 :qid |Rolesandybpl.8884:15|
 :skolemid |289|
)) (and (=> (= (ControlFlow 0 209583) (- 0 281962)) (forall ((addr@@286 Int) ) (!  (=> (|$IsValid'address'| addr@@286) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@286) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@286)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@286) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@286)) 1))))
 :qid |Rolesandybpl.8888:15|
 :skolemid |290|
))) (=> (forall ((addr@@287 Int) ) (!  (=> (|$IsValid'address'| addr@@287) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@287) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@287)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@287) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@287)) 1))))
 :qid |Rolesandybpl.8888:15|
 :skolemid |290|
)) (and (=> (= (ControlFlow 0 209583) (- 0 282011)) (forall ((addr@@288 Int) ) (!  (=> (|$IsValid'address'| addr@@288) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@288) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@288)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@288) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@288)) 3))))
 :qid |Rolesandybpl.8892:15|
 :skolemid |291|
))) (=> (forall ((addr@@289 Int) ) (!  (=> (|$IsValid'address'| addr@@289) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@289) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@289)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@289) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@289)) 3))))
 :qid |Rolesandybpl.8892:15|
 :skolemid |291|
)) (and (=> (= (ControlFlow 0 209583) (- 0 282060)) (forall ((addr@@290 Int) ) (!  (=> (|$IsValid'address'| addr@@290) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@290) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@290)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@290) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@290)) 4))))
 :qid |Rolesandybpl.8896:15|
 :skolemid |292|
))) (=> (forall ((addr@@291 Int) ) (!  (=> (|$IsValid'address'| addr@@291) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@291) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@291)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@291) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@291)) 4))))
 :qid |Rolesandybpl.8896:15|
 :skolemid |292|
)) (and (=> (= (ControlFlow 0 209583) (- 0 282109)) (forall ((addr@@292 Int) ) (!  (=> (|$IsValid'address'| addr@@292) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@292) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@292)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@292) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@292)) 2))))
 :qid |Rolesandybpl.8900:15|
 :skolemid |293|
))) (=> (forall ((addr@@293 Int) ) (!  (=> (|$IsValid'address'| addr@@293) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@293) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@293)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@293) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@293)) 2))))
 :qid |Rolesandybpl.8900:15|
 :skolemid |293|
)) (and (=> (= (ControlFlow 0 209583) (- 0 282158)) (forall ((addr@@294 Int) ) (!  (=> (|$IsValid'address'| addr@@294) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@294) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@294)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@294) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@294)) 5))))
 :qid |Rolesandybpl.8904:15|
 :skolemid |294|
))) (=> (forall ((addr@@295 Int) ) (!  (=> (|$IsValid'address'| addr@@295) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@295) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@295)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@295) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@295)) 5))))
 :qid |Rolesandybpl.8904:15|
 :skolemid |294|
)) (=> (= (ControlFlow 0 209583) (- 0 282207)) (forall ((addr@@296 Int) ) (!  (=> (|$IsValid'address'| addr@@296) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@296) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@296)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@296) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@296)) 6))))
 :qid |Rolesandybpl.8908:15|
 :skolemid |295|
))))))))))))))))))
(let ((anon4_Then_correct@@5 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@6  (=> $abort_flag@0@@19 (=> (and (and (= $abort_code@1@@19 $abort_code@1@@19) (= $abort_code@3@@6 $abort_code@1@@19)) (and (= $abort_flag@2@@6 true) (= inline$$1_Roles_has_role$0$$ret0@1@@6 inline$$1_Roles_has_role$0$$ret0@0@@6))) (and (=> (= (ControlFlow 0 209148) 209601) anon4_Then_correct@@5) (=> (= (ControlFlow 0 209148) 209583) anon4_Else_correct@@5))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@6  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@6 inline$$1_Roles_has_role$0$$t3@1@@6) (= $abort_code@3@@6 $abort_code@2@@6)) (and (= $abort_flag@2@@6 $abort_flag@1@@6) (= inline$$1_Roles_has_role$0$$ret0@1@@6 inline$$1_Roles_has_role$0$$t3@1@@6))) (and (=> (= (ControlFlow 0 209084) 209601) anon4_Then_correct@@5) (=> (= (ControlFlow 0 209084) 209583) anon4_Else_correct@@5)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@6  (=> (and (and (and (not $abort_flag@0@@19) (= inline$$1_Roles_has_role$0$$t8@1@@6 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@6))) (and (= inline$$1_Roles_has_role$0$$t9@1@@6 (= inline$$1_Roles_has_role$0$$t8@1@@6 3)) (= inline$$1_Roles_has_role$0$$t9@1@@6 inline$$1_Roles_has_role$0$$t9@1@@6))) (and (and (= $abort_code@2@@6 $abort_code@1@@19) (= inline$$1_Roles_has_role$0$$t3@1@@6 inline$$1_Roles_has_role$0$$t9@1@@6)) (and (= $abort_flag@1@@6 $abort_flag@0@@19) (= (ControlFlow 0 209130) 209084)))) inline$$1_Roles_has_role$0$L3_correct@@6)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@6  (=> (= $abort_flag@0@@19 true) (=> (and (= $abort_code@1@@19 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@6 inline$$1_Roles_has_role$0$$t6@0@@6)) (and (=> (= (ControlFlow 0 209200) 209148) inline$$1_Roles_has_role$0$anon11_Then_correct@@6) (=> (= (ControlFlow 0 209200) 209130) inline$$1_Roles_has_role$0$anon11_Else_correct@@6))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@6  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@6)) (= (ControlFlow 0 209198) 209200)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@6)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@6  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@6) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@6)) (= $abort_flag@0@@19 false)) (and (= $abort_code@1@@19 $abort_code@0@@19) (= inline$$1_Roles_has_role$0$$t6@2@@6 inline$$1_Roles_has_role$0$$t6@1@@6))) (and (=> (= (ControlFlow 0 209102) 209148) inline$$1_Roles_has_role$0$anon11_Then_correct@@6) (=> (= (ControlFlow 0 209102) 209130) inline$$1_Roles_has_role$0$anon11_Else_correct@@6))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@6  (=> inline$$1_Roles_has_role$0$$t5@1@@6 (and (=> (= (ControlFlow 0 209088) 209198) inline$$1_Roles_has_role$0$anon10_Then_correct@@6) (=> (= (ControlFlow 0 209088) 209102) inline$$1_Roles_has_role$0$anon10_Else_correct@@6)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@6  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@6) (= false false)) (=> (and (and (= $abort_code@2@@6 $abort_code@0@@19) (= inline$$1_Roles_has_role$0$$t3@1@@6 false)) (and (= $abort_flag@1@@6 false) (= (ControlFlow 0 209072) 209084))) inline$$1_Roles_has_role$0$L3_correct@@6))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@6  (=> (and (= _$t0@@21 _$t0@@21) (= 3 3)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@6) (= inline$$1_Roles_has_role$0$$t4@0@@6 _$t0@@21)) (and (= inline$$1_Roles_has_role$0$$t4@0@@6 inline$$1_Roles_has_role$0$$t4@0@@6) (= inline$$1_Roles_has_role$0$$t5@1@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@6)))) (and (=> (= (ControlFlow 0 209052) 209088) inline$$1_Roles_has_role$0$anon9_Then_correct@@6) (=> (= (ControlFlow 0 209052) 209072) inline$$1_Roles_has_role$0$anon9_Else_correct@@6))))))
(let ((anon0$1_correct@@21  (=> (|$IsValid'address'| _$t0@@21) (=> (and (and (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@23)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@23))
 :qid |Rolesandybpl.8851:20|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@23))
)) (= _$t0@@21 _$t0@@21)) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 209206) 209052))) inline$$1_Roles_has_role$0$anon0_correct@@6))))
(let ((inline$$InitEventStore$0$anon0_correct@@21  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@23 T@$1_Event_EventHandle) ) (! (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@23)))
 (and (= (|l#Multiset_80957| stream@@22) 0) (forall ((v@@57 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@22) v@@57) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 208670) 209206)) anon0$1_correct@@21)))
(let ((anon0_correct@@21  (=> (= (ControlFlow 0 281474) 208670) inline$$InitEventStore$0$anon0_correct@@21)))
anon0_correct@@21)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@1 () Int)
(declare-fun _$t1@@3 () Int)
(declare-fun $t3@@2 () Int)
(declare-fun $t6@@9 () Int)
(declare-fun $t9@@9 () Bool)
(declare-fun $t5@@3 () Bool)
(declare-fun $t4@@2 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@1 () T@$Memory_111178)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@2 () T@$Memory_111178)
(declare-fun $1_Roles_RoleId_$memory@0@@2 () T@$Memory_111178)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@1| () T@$1_Roles_RoleId)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@2 () |T@[Int]Bool|)
(declare-fun _$t0@@22 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 282267) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 210570) (- 0 283038)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@2)) 5)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@2)) 5))) (=> (= (ControlFlow 0 210570) (- 0 283092)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $t6@@9)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $t6@@9))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@3) (= 6 $t6@@9))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@2)) (= 5 $t6@@9))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@2)) 5)) (= 3 $t6@@9))))))))
(let ((anon10_Then_correct@@2  (=> $t9@@9 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@3) (= 6 $t6@@9)) (and (= $t6@@9 $t6@@9) (= (ControlFlow 0 210402) 210570))) L2_correct@@1))))
(let ((anon9_Then_correct  (=> (and (and $t5@@3 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@2)) (= 5 $t6@@9)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@2)) 5)) (= 3 $t6@@9)))) (and (= $t6@@9 $t6@@9) (= (ControlFlow 0 210622) 210570))) L2_correct@@1)))
(let ((anon7_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) _$t1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) _$t1@@3)) 6)) (and (=> (= (ControlFlow 0 210360) (- 0 282658)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 210360) (- 0 282670)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 210360) (- 0 282688)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@3))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@3)) (and (=> (= (ControlFlow 0 210360) (- 0 282699)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@2))) (and (=> (= (ControlFlow 0 210360) (- 0 282711)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@2)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@2)) 5))) (and (=> (= (ControlFlow 0 210360) (- 0 282729)) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) _$t1@@3)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) _$t1@@3) (and (=> (= (ControlFlow 0 210360) (- 0 282738)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) _$t1@@3)) 6)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) _$t1@@3)) 6) (and (=> (= (ControlFlow 0 210360) (- 0 282753)) (forall ((addr@@297 Int) ) (!  (=> (|$IsValid'address'| addr@@297) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@297) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@297)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@297) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@297)) 0))))
 :qid |Rolesandybpl.9128:15|
 :skolemid |297|
))) (=> (forall ((addr@@298 Int) ) (!  (=> (|$IsValid'address'| addr@@298) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@298) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@298)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@298) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@298)) 0))))
 :qid |Rolesandybpl.9128:15|
 :skolemid |297|
)) (and (=> (= (ControlFlow 0 210360) (- 0 282800)) (forall ((addr@@299 Int) ) (!  (=> (|$IsValid'address'| addr@@299) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@299) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@299)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@299) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@299)) 1))))
 :qid |Rolesandybpl.9132:15|
 :skolemid |298|
))) (=> (forall ((addr@@300 Int) ) (!  (=> (|$IsValid'address'| addr@@300) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@300) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@300)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@300) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@300)) 1))))
 :qid |Rolesandybpl.9132:15|
 :skolemid |298|
)) (and (=> (= (ControlFlow 0 210360) (- 0 282847)) (forall ((addr@@301 Int) ) (!  (=> (|$IsValid'address'| addr@@301) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@301) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@301)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@301) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@301)) 3))))
 :qid |Rolesandybpl.9136:15|
 :skolemid |299|
))) (=> (forall ((addr@@302 Int) ) (!  (=> (|$IsValid'address'| addr@@302) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@302) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@302)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@302) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@302)) 3))))
 :qid |Rolesandybpl.9136:15|
 :skolemid |299|
)) (and (=> (= (ControlFlow 0 210360) (- 0 282894)) (forall ((addr@@303 Int) ) (!  (=> (|$IsValid'address'| addr@@303) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@303) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@303)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@303) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@303)) 4))))
 :qid |Rolesandybpl.9140:15|
 :skolemid |300|
))) (=> (forall ((addr@@304 Int) ) (!  (=> (|$IsValid'address'| addr@@304) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@304) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@304)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@304) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@304)) 4))))
 :qid |Rolesandybpl.9140:15|
 :skolemid |300|
)) (and (=> (= (ControlFlow 0 210360) (- 0 282941)) (forall ((addr@@305 Int) ) (!  (=> (|$IsValid'address'| addr@@305) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@305) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@305)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@305) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@305)) 2))))
 :qid |Rolesandybpl.9144:15|
 :skolemid |301|
))) (=> (forall ((addr@@306 Int) ) (!  (=> (|$IsValid'address'| addr@@306) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@306) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@306)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@306) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@306)) 2))))
 :qid |Rolesandybpl.9144:15|
 :skolemid |301|
)) (=> (= (ControlFlow 0 210360) (- 0 282988)) (forall ((addr@@307 Int) ) (!  (=> (|$IsValid'address'| addr@@307) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@307) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@1) addr@@307)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@307) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@307)) 5))))
 :qid |Rolesandybpl.9148:15|
 :skolemid |302|
))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@3  (=> (and (and (not |$temp_0'bool'@0@@1|) (= $1_Roles_RoleId_$memory@1@@2 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@3 false) (|contents#$Memory_111178| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@1@@2) (= (ControlFlow 0 209928) 210360))) anon7_correct)))
(let ((anon11_Then_correct@@3  (=> (and (and |$temp_0'bool'@0@@1| (= $1_Roles_RoleId_$memory@0@@2 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@3 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@3 |$temp_0'$1_Roles_RoleId'@0@@1|)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@0@@2) (= (ControlFlow 0 210374) 210360))) anon7_correct)))
(let ((anon10_Else_correct@@2  (=> (not $t9@@9) (and (=> (= (ControlFlow 0 209914) 210374) anon11_Then_correct@@3) (=> (= (ControlFlow 0 209914) 209928) anon11_Else_correct@@3)))))
(let ((anon9_Else_correct  (=> (not $t5@@3) (=> (and (|$IsValid'u64'| 6) (= $t8@@3 _$t1@@3)) (and (=> (= (ControlFlow 0 209908) (- 0 282508)) (=> (= 6 0) (= $t8@@3 173345816))) (=> (=> (= 6 0) (= $t8@@3 173345816)) (and (=> (= (ControlFlow 0 209908) (- 0 282524)) (=> (= 6 1) (= $t8@@3 186537453))) (=> (=> (= 6 1) (= $t8@@3 186537453)) (and (=> (= (ControlFlow 0 209908) (- 0 282540)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 _$t1@@3)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 _$t1@@3) (=> (= $t9@@9 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@3)) (and (=> (= (ControlFlow 0 209908) 210402) anon10_Then_correct@@2) (=> (= (ControlFlow 0 209908) 209914) anon10_Else_correct@@2)))))))))))))
(let ((anon0$1_correct@@22  (=> (and (|$IsValid'address'| _$t0@@22) (|$IsValid'address'| _$t1@@3)) (=> (and (and (and (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@24)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@24))
 :qid |Rolesandybpl.8959:20|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@24))
)) (= $t2@@1 _$t0@@22)) (and (= $t3@@2 _$t0@@22) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 _$t1@@3))) (and (and (= _$t0@@22 _$t0@@22) (= _$t1@@3 _$t1@@3)) (and (= $t4@@2 _$t0@@22) (= $t5@@3  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@2)) 5))))))) (and (=> (= (ControlFlow 0 209830) 210622) anon9_Then_correct) (=> (= (ControlFlow 0 209830) 209908) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@22  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@24 T@$1_Event_EventHandle) ) (! (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@24)))
 (and (= (|l#Multiset_80957| stream@@23) 0) (forall ((v@@58 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@23) v@@58) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 209700) 209830)) anon0$1_correct@@22)))
(let ((anon0_correct@@22  (=> (= (ControlFlow 0 282267) 209700) inline$$InitEventStore$0$anon0_correct@@22)))
anon0_correct@@22))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@2 () Int)
(declare-fun _$t0@@23 () Int)
(declare-fun _$t1@@4 () Int)
(declare-fun $t3@@3 () Int)
(declare-fun $t6@@10 () Int)
(declare-fun $t9@@10 () Bool)
(declare-fun $t5@@4 () Bool)
(declare-fun $t4@@3 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@2 () T@$Memory_111178)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@3 () T@$Memory_111178)
(declare-fun $1_Roles_RoleId_$memory@0@@3 () T@$Memory_111178)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@2| () T@$1_Roles_RoleId)
(declare-fun $t8@@4 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@3 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 283201) (let ((L2_correct@@2  (and (=> (= (ControlFlow 0 211718) (- 0 284030)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= _$t0@@23 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= _$t0@@23 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= _$t0@@23 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= _$t0@@23 186537453))) (=> (= (ControlFlow 0 211718) (- 0 284106)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@2)) (= 5 $t6@@10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@2)) 1)) (= 3 $t6@@10))) (and (not (= _$t0@@23 186537453)) (= 2 $t6@@10))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@4) (= 6 $t6@@10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@3)) (= 5 $t6@@10))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@3)) 1)) (= 3 $t6@@10))) (and (not (= _$t0@@23 186537453)) (= 2 $t6@@10))))))))
(let ((anon10_Then_correct@@3  (=> $t9@@10 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@4) (= 6 $t6@@10)) (and (= $t6@@10 $t6@@10) (= (ControlFlow 0 211486) 211718))) L2_correct@@2))))
(let ((anon9_Then_correct@@0  (=> (and (and $t5@@4 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@3)) (= 5 $t6@@10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@3)) 1)) (= 3 $t6@@10))) (and (not (= _$t0@@23 186537453)) (= 2 $t6@@10)))) (and (= $t6@@10 $t6@@10) (= (ControlFlow 0 211790) 211718))) L2_correct@@2)))
(let ((anon7_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) _$t1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) _$t1@@4)) 2)) (and (=> (= (ControlFlow 0 211444) (- 0 283622)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@2))) (and (=> (= (ControlFlow 0 211444) (- 0 283634)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (and (=> (= (ControlFlow 0 211444) (- 0 283652)) (not (not (= _$t0@@23 186537453)))) (=> (not (not (= _$t0@@23 186537453))) (and (=> (= (ControlFlow 0 211444) (- 0 283666)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@4))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@4)) (and (=> (= (ControlFlow 0 211444) (- 0 283677)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 211444) (- 0 283689)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (and (=> (= (ControlFlow 0 211444) (- 0 283707)) (not (not (= _$t0@@23 186537453)))) (=> (not (not (= _$t0@@23 186537453))) (and (=> (= (ControlFlow 0 211444) (- 0 283721)) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) _$t1@@4)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) _$t1@@4) (and (=> (= (ControlFlow 0 211444) (- 0 283730)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) _$t1@@4)) 2)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) _$t1@@4)) 2) (and (=> (= (ControlFlow 0 211444) (- 0 283745)) (forall ((addr@@308 Int) ) (!  (=> (|$IsValid'address'| addr@@308) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@308) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@308)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@308) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@308)) 0))))
 :qid |Rolesandybpl.9386:15|
 :skolemid |304|
))) (=> (forall ((addr@@309 Int) ) (!  (=> (|$IsValid'address'| addr@@309) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@309) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@309)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@309) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@309)) 0))))
 :qid |Rolesandybpl.9386:15|
 :skolemid |304|
)) (and (=> (= (ControlFlow 0 211444) (- 0 283792)) (forall ((addr@@310 Int) ) (!  (=> (|$IsValid'address'| addr@@310) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@310) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@310)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@310) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@310)) 1))))
 :qid |Rolesandybpl.9390:15|
 :skolemid |305|
))) (=> (forall ((addr@@311 Int) ) (!  (=> (|$IsValid'address'| addr@@311) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@311) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@311)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@311) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@311)) 1))))
 :qid |Rolesandybpl.9390:15|
 :skolemid |305|
)) (and (=> (= (ControlFlow 0 211444) (- 0 283839)) (forall ((addr@@312 Int) ) (!  (=> (|$IsValid'address'| addr@@312) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@312) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@312)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@312) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@312)) 3))))
 :qid |Rolesandybpl.9394:15|
 :skolemid |306|
))) (=> (forall ((addr@@313 Int) ) (!  (=> (|$IsValid'address'| addr@@313) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@313) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@313)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@313) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@313)) 3))))
 :qid |Rolesandybpl.9394:15|
 :skolemid |306|
)) (and (=> (= (ControlFlow 0 211444) (- 0 283886)) (forall ((addr@@314 Int) ) (!  (=> (|$IsValid'address'| addr@@314) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@314) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@314)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@314) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@314)) 4))))
 :qid |Rolesandybpl.9398:15|
 :skolemid |307|
))) (=> (forall ((addr@@315 Int) ) (!  (=> (|$IsValid'address'| addr@@315) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@315) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@315)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@315) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@315)) 4))))
 :qid |Rolesandybpl.9398:15|
 :skolemid |307|
)) (and (=> (= (ControlFlow 0 211444) (- 0 283933)) (forall ((addr@@316 Int) ) (!  (=> (|$IsValid'address'| addr@@316) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@316) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@316)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@316) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@316)) 5))))
 :qid |Rolesandybpl.9402:15|
 :skolemid |308|
))) (=> (forall ((addr@@317 Int) ) (!  (=> (|$IsValid'address'| addr@@317) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@317) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@317)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@317) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@317)) 5))))
 :qid |Rolesandybpl.9402:15|
 :skolemid |308|
)) (=> (= (ControlFlow 0 211444) (- 0 283980)) (forall ((addr@@318 Int) ) (!  (=> (|$IsValid'address'| addr@@318) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@318) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@2) addr@@318)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@318) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@318)) 6))))
 :qid |Rolesandybpl.9406:15|
 :skolemid |309|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@2|) (= $1_Roles_RoleId_$memory@1@@3 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@4 false) (|contents#$Memory_111178| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@1@@3) (= (ControlFlow 0 210984) 211444))) anon7_correct@@0)))
(let ((anon11_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@2| (= $1_Roles_RoleId_$memory@0@@3 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@4 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@4 |$temp_0'$1_Roles_RoleId'@0@@2|)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@0@@3) (= (ControlFlow 0 211458) 211444))) anon7_correct@@0)))
(let ((anon10_Else_correct@@3  (=> (not $t9@@10) (and (=> (= (ControlFlow 0 210970) 211458) anon11_Then_correct@@4) (=> (= (ControlFlow 0 210970) 210984) anon11_Else_correct@@4)))))
(let ((anon9_Else_correct@@0  (=> (not $t5@@4) (=> (and (|$IsValid'u64'| 2) (= $t8@@4 _$t1@@4)) (and (=> (= (ControlFlow 0 210964) (- 0 283472)) (=> (= 2 0) (= $t8@@4 173345816))) (=> (=> (= 2 0) (= $t8@@4 173345816)) (and (=> (= (ControlFlow 0 210964) (- 0 283488)) (=> (= 2 1) (= $t8@@4 186537453))) (=> (=> (= 2 1) (= $t8@@4 186537453)) (and (=> (= (ControlFlow 0 210964) (- 0 283504)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 _$t1@@4)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 _$t1@@4) (=> (= $t9@@10 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@4)) (and (=> (= (ControlFlow 0 210964) 211486) anon10_Then_correct@@3) (=> (= (ControlFlow 0 210964) 210970) anon10_Else_correct@@3)))))))))))))
(let ((anon0$1_correct@@23  (=> (and (|$IsValid'address'| _$t0@@23) (|$IsValid'address'| _$t1@@4)) (=> (and (and (and (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@25)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@25))
 :qid |Rolesandybpl.9207:20|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@25))
)) (= $t2@@2 _$t0@@23)) (and (= $t3@@3 _$t0@@23) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 _$t1@@4))) (and (and (= _$t0@@23 _$t0@@23) (= _$t1@@4 _$t1@@4)) (and (= $t4@@3 _$t0@@23) (= $t5@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@3)) 1))) (not (= _$t0@@23 186537453))))))) (and (=> (= (ControlFlow 0 210886) 211790) anon9_Then_correct@@0) (=> (= (ControlFlow 0 210886) 210964) anon9_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@23  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@25 T@$1_Event_EventHandle) ) (! (let ((stream@@24 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@25)))
 (and (= (|l#Multiset_80957| stream@@24) 0) (forall ((v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@24) v@@59) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 210744) 210886)) anon0$1_correct@@23)))
(let ((anon0_correct@@23  (=> (= (ControlFlow 0 283201) 210744) inline$$InitEventStore$0$anon0_correct@@23)))
anon0_correct@@23))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@3 () Int)
(declare-fun _$t0@@24 () Int)
(declare-fun _$t1@@5 () Int)
(declare-fun $t3@@4 () Int)
(declare-fun $t6@@11 () Int)
(declare-fun $t9@@11 () Bool)
(declare-fun $t5@@5 () Bool)
(declare-fun $t4@@4 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@3 () T@$Memory_111178)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@4 () T@$Memory_111178)
(declare-fun $1_Roles_RoleId_$memory@0@@4 () T@$Memory_111178)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@3| () T@$1_Roles_RoleId)
(declare-fun $t8@@5 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@4 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 284253) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 212886) (- 0 285082)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= _$t0@@24 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@4)) 1))) (not (= _$t0@@24 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= _$t0@@24 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@4)) 1))) (not (= _$t0@@24 186537453))) (=> (= (ControlFlow 0 212886) (- 0 285158)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@3)) (= 5 $t6@@11)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@3)) 1)) (= 3 $t6@@11))) (and (not (= _$t0@@24 186537453)) (= 2 $t6@@11))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@5) (= 6 $t6@@11))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@4)) (= 5 $t6@@11))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@4)) 1)) (= 3 $t6@@11))) (and (not (= _$t0@@24 186537453)) (= 2 $t6@@11))))))))
(let ((anon10_Then_correct@@4  (=> $t9@@11 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@5) (= 6 $t6@@11)) (and (= $t6@@11 $t6@@11) (= (ControlFlow 0 212654) 212886))) L2_correct@@3))))
(let ((anon9_Then_correct@@1  (=> (and (and $t5@@5 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@4)) (= 5 $t6@@11)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@4)) 1)) (= 3 $t6@@11))) (and (not (= _$t0@@24 186537453)) (= 2 $t6@@11)))) (and (= $t6@@11 $t6@@11) (= (ControlFlow 0 212958) 212886))) L2_correct@@3)))
(let ((anon7_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) _$t1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) _$t1@@5)) 5)) (and (=> (= (ControlFlow 0 212612) (- 0 284674)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@3))) (and (=> (= (ControlFlow 0 212612) (- 0 284686)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (and (=> (= (ControlFlow 0 212612) (- 0 284704)) (not (not (= _$t0@@24 186537453)))) (=> (not (not (= _$t0@@24 186537453))) (and (=> (= (ControlFlow 0 212612) (- 0 284718)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@5))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@5)) (and (=> (= (ControlFlow 0 212612) (- 0 284729)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@4))) (and (=> (= (ControlFlow 0 212612) (- 0 284741)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@4)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@4)) 1))) (and (=> (= (ControlFlow 0 212612) (- 0 284759)) (not (not (= _$t0@@24 186537453)))) (=> (not (not (= _$t0@@24 186537453))) (and (=> (= (ControlFlow 0 212612) (- 0 284773)) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) _$t1@@5)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) _$t1@@5) (and (=> (= (ControlFlow 0 212612) (- 0 284782)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) _$t1@@5)) 5)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) _$t1@@5)) 5) (and (=> (= (ControlFlow 0 212612) (- 0 284797)) (forall ((addr@@319 Int) ) (!  (=> (|$IsValid'address'| addr@@319) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@319) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@319)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@319) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@319)) 0))))
 :qid |Rolesandybpl.9644:15|
 :skolemid |311|
))) (=> (forall ((addr@@320 Int) ) (!  (=> (|$IsValid'address'| addr@@320) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@320) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@320)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@320) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@320)) 0))))
 :qid |Rolesandybpl.9644:15|
 :skolemid |311|
)) (and (=> (= (ControlFlow 0 212612) (- 0 284844)) (forall ((addr@@321 Int) ) (!  (=> (|$IsValid'address'| addr@@321) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@321) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@321)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@321) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@321)) 1))))
 :qid |Rolesandybpl.9648:15|
 :skolemid |312|
))) (=> (forall ((addr@@322 Int) ) (!  (=> (|$IsValid'address'| addr@@322) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@322) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@322)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@322) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@322)) 1))))
 :qid |Rolesandybpl.9648:15|
 :skolemid |312|
)) (and (=> (= (ControlFlow 0 212612) (- 0 284891)) (forall ((addr@@323 Int) ) (!  (=> (|$IsValid'address'| addr@@323) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@323) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@323)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@323) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@323)) 3))))
 :qid |Rolesandybpl.9652:15|
 :skolemid |313|
))) (=> (forall ((addr@@324 Int) ) (!  (=> (|$IsValid'address'| addr@@324) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@324) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@324)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@324) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@324)) 3))))
 :qid |Rolesandybpl.9652:15|
 :skolemid |313|
)) (and (=> (= (ControlFlow 0 212612) (- 0 284938)) (forall ((addr@@325 Int) ) (!  (=> (|$IsValid'address'| addr@@325) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@325) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@325)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@325) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@325)) 4))))
 :qid |Rolesandybpl.9656:15|
 :skolemid |314|
))) (=> (forall ((addr@@326 Int) ) (!  (=> (|$IsValid'address'| addr@@326) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@326) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@326)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@326) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@326)) 4))))
 :qid |Rolesandybpl.9656:15|
 :skolemid |314|
)) (and (=> (= (ControlFlow 0 212612) (- 0 284985)) (forall ((addr@@327 Int) ) (!  (=> (|$IsValid'address'| addr@@327) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@327) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@327)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@327) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@327)) 2))))
 :qid |Rolesandybpl.9660:15|
 :skolemid |315|
))) (=> (forall ((addr@@328 Int) ) (!  (=> (|$IsValid'address'| addr@@328) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@328) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@328)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@328) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@328)) 2))))
 :qid |Rolesandybpl.9660:15|
 :skolemid |315|
)) (=> (= (ControlFlow 0 212612) (- 0 285032)) (forall ((addr@@329 Int) ) (!  (=> (|$IsValid'address'| addr@@329) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@329) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@3) addr@@329)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@329) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@329)) 6))))
 :qid |Rolesandybpl.9664:15|
 :skolemid |316|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@5  (=> (and (and (not |$temp_0'bool'@0@@3|) (= $1_Roles_RoleId_$memory@1@@4 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@5 false) (|contents#$Memory_111178| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@1@@4) (= (ControlFlow 0 212152) 212612))) anon7_correct@@1)))
(let ((anon11_Then_correct@@5  (=> (and (and |$temp_0'bool'@0@@3| (= $1_Roles_RoleId_$memory@0@@4 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@5 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@5 |$temp_0'$1_Roles_RoleId'@0@@3|)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@0@@4) (= (ControlFlow 0 212626) 212612))) anon7_correct@@1)))
(let ((anon10_Else_correct@@4  (=> (not $t9@@11) (and (=> (= (ControlFlow 0 212138) 212626) anon11_Then_correct@@5) (=> (= (ControlFlow 0 212138) 212152) anon11_Else_correct@@5)))))
(let ((anon9_Else_correct@@1  (=> (not $t5@@5) (=> (and (|$IsValid'u64'| 5) (= $t8@@5 _$t1@@5)) (and (=> (= (ControlFlow 0 212132) (- 0 284524)) (=> (= 5 0) (= $t8@@5 173345816))) (=> (=> (= 5 0) (= $t8@@5 173345816)) (and (=> (= (ControlFlow 0 212132) (- 0 284540)) (=> (= 5 1) (= $t8@@5 186537453))) (=> (=> (= 5 1) (= $t8@@5 186537453)) (and (=> (= (ControlFlow 0 212132) (- 0 284556)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 _$t1@@5)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 _$t1@@5) (=> (= $t9@@11 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@5)) (and (=> (= (ControlFlow 0 212132) 212654) anon10_Then_correct@@4) (=> (= (ControlFlow 0 212132) 212138) anon10_Else_correct@@4)))))))))))))
(let ((anon0$1_correct@@24  (=> (and (|$IsValid'address'| _$t0@@24) (|$IsValid'address'| _$t1@@5)) (=> (and (and (and (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@26)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@26))
 :qid |Rolesandybpl.9465:20|
 :skolemid |310|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@26))
)) (= $t2@@3 _$t0@@24)) (and (= $t3@@4 _$t0@@24) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 _$t1@@5))) (and (and (= _$t0@@24 _$t0@@24) (= _$t1@@5 _$t1@@5)) (and (= $t4@@4 _$t0@@24) (= $t5@@5  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@4)) 1))) (not (= _$t0@@24 186537453))))))) (and (=> (= (ControlFlow 0 212054) 212958) anon9_Then_correct@@1) (=> (= (ControlFlow 0 212054) 212132) anon9_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@24  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@26 T@$1_Event_EventHandle) ) (! (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@26)))
 (and (= (|l#Multiset_80957| stream@@25) 0) (forall ((v@@60 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@25) v@@60) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 211912) 212054)) anon0$1_correct@@24)))
(let ((anon0_correct@@24  (=> (= (ControlFlow 0 284253) 211912) inline$$InitEventStore$0$anon0_correct@@24)))
anon0_correct@@24))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@4 () Int)
(declare-fun _$t0@@25 () Int)
(declare-fun _$t1@@6 () Int)
(declare-fun $t3@@5 () Int)
(declare-fun $t6@@12 () Int)
(declare-fun $t9@@12 () Bool)
(declare-fun $t5@@6 () Bool)
(declare-fun $t4@@5 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@4 () T@$Memory_111178)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@5 () T@$Memory_111178)
(declare-fun $1_Roles_RoleId_$memory@0@@5 () T@$Memory_111178)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@4| () T@$1_Roles_RoleId)
(declare-fun $t8@@6 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@5 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 285305) (let ((L2_correct@@4  (and (=> (= (ControlFlow 0 214066) (- 0 286164)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= _$t0@@25 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@6)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= _$t0@@25 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= _$t0@@25 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@6)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= _$t0@@25 173345816))) (=> (= (ControlFlow 0 214066) (- 0 286240)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@4)) (= 5 $t6@@12)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@4)) 0)) (= 3 $t6@@12))) (and (not (= _$t0@@25 173345816)) (= 2 $t6@@12))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@6) (= 6 $t6@@12))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@5)) (= 5 $t6@@12))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@5)) 0)) (= 3 $t6@@12))) (and (not (= _$t0@@25 173345816)) (= 2 $t6@@12))))))))
(let ((anon10_Then_correct@@5  (=> $t9@@12 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@6) (= 6 $t6@@12)) (and (= $t6@@12 $t6@@12) (= (ControlFlow 0 213834) 214066))) L2_correct@@4))))
(let ((anon9_Then_correct@@2  (=> (and (and $t5@@6 (or (or (or (and (not (= _$t0@@25 173345816)) (= 2 $t6@@12)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@5)) (= 5 $t6@@12))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@5)) 0)) (= 3 $t6@@12))) (and (not (= _$t0@@25 173345816)) (= 2 $t6@@12)))) (and (= $t6@@12 $t6@@12) (= (ControlFlow 0 214158) 214066))) L2_correct@@4)))
(let ((anon7_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) _$t1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) _$t1@@6)) 4)) (and (=> (= (ControlFlow 0 213792) (- 0 285756)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@4))) (and (=> (= (ControlFlow 0 213792) (- 0 285768)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (and (=> (= (ControlFlow 0 213792) (- 0 285786)) (not (not (= _$t0@@25 173345816)))) (=> (not (not (= _$t0@@25 173345816))) (and (=> (= (ControlFlow 0 213792) (- 0 285800)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@6))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@6)) (and (=> (= (ControlFlow 0 213792) (- 0 285811)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@5))) (and (=> (= (ControlFlow 0 213792) (- 0 285823)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (and (=> (= (ControlFlow 0 213792) (- 0 285841)) (not (not (= _$t0@@25 173345816)))) (=> (not (not (= _$t0@@25 173345816))) (and (=> (= (ControlFlow 0 213792) (- 0 285855)) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) _$t1@@6)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) _$t1@@6) (and (=> (= (ControlFlow 0 213792) (- 0 285864)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) _$t1@@6)) 4)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) _$t1@@6)) 4) (and (=> (= (ControlFlow 0 213792) (- 0 285879)) (forall ((addr@@330 Int) ) (!  (=> (|$IsValid'address'| addr@@330) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@330) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@330)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@330) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@330)) 0))))
 :qid |Rolesandybpl.9902:15|
 :skolemid |318|
))) (=> (forall ((addr@@331 Int) ) (!  (=> (|$IsValid'address'| addr@@331) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@331) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@331)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@331) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@331)) 0))))
 :qid |Rolesandybpl.9902:15|
 :skolemid |318|
)) (and (=> (= (ControlFlow 0 213792) (- 0 285926)) (forall ((addr@@332 Int) ) (!  (=> (|$IsValid'address'| addr@@332) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@332) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@332)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@332) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@332)) 1))))
 :qid |Rolesandybpl.9906:15|
 :skolemid |319|
))) (=> (forall ((addr@@333 Int) ) (!  (=> (|$IsValid'address'| addr@@333) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@333) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@333)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@333) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@333)) 1))))
 :qid |Rolesandybpl.9906:15|
 :skolemid |319|
)) (and (=> (= (ControlFlow 0 213792) (- 0 285973)) (forall ((addr@@334 Int) ) (!  (=> (|$IsValid'address'| addr@@334) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@334) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@334)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@334) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@334)) 3))))
 :qid |Rolesandybpl.9910:15|
 :skolemid |320|
))) (=> (forall ((addr@@335 Int) ) (!  (=> (|$IsValid'address'| addr@@335) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@335) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@335)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@335) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@335)) 3))))
 :qid |Rolesandybpl.9910:15|
 :skolemid |320|
)) (and (=> (= (ControlFlow 0 213792) (- 0 286020)) (forall ((addr@@336 Int) ) (!  (=> (|$IsValid'address'| addr@@336) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@336) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@336)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@336) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@336)) 2))))
 :qid |Rolesandybpl.9914:15|
 :skolemid |321|
))) (=> (forall ((addr@@337 Int) ) (!  (=> (|$IsValid'address'| addr@@337) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@337) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@337)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@337) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@337)) 2))))
 :qid |Rolesandybpl.9914:15|
 :skolemid |321|
)) (and (=> (= (ControlFlow 0 213792) (- 0 286067)) (forall ((addr@@338 Int) ) (!  (=> (|$IsValid'address'| addr@@338) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@338) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@338)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@338) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@338)) 5))))
 :qid |Rolesandybpl.9918:15|
 :skolemid |322|
))) (=> (forall ((addr@@339 Int) ) (!  (=> (|$IsValid'address'| addr@@339) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@339) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@339)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@339) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@339)) 5))))
 :qid |Rolesandybpl.9918:15|
 :skolemid |322|
)) (=> (= (ControlFlow 0 213792) (- 0 286114)) (forall ((addr@@340 Int) ) (!  (=> (|$IsValid'address'| addr@@340) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@340) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@4) addr@@340)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@340) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@340)) 6))))
 :qid |Rolesandybpl.9922:15|
 :skolemid |323|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@6  (=> (and (and (not |$temp_0'bool'@0@@4|) (= $1_Roles_RoleId_$memory@1@@5 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@6 false) (|contents#$Memory_111178| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@1@@5) (= (ControlFlow 0 213332) 213792))) anon7_correct@@2)))
(let ((anon11_Then_correct@@6  (=> (and (and |$temp_0'bool'@0@@4| (= $1_Roles_RoleId_$memory@0@@5 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@6 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@6 |$temp_0'$1_Roles_RoleId'@0@@4|)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@0@@5) (= (ControlFlow 0 213806) 213792))) anon7_correct@@2)))
(let ((anon10_Else_correct@@5  (=> (not $t9@@12) (and (=> (= (ControlFlow 0 213318) 213806) anon11_Then_correct@@6) (=> (= (ControlFlow 0 213318) 213332) anon11_Else_correct@@6)))))
(let ((anon9_Else_correct@@2  (=> (not $t5@@6) (=> (and (|$IsValid'u64'| 4) (= $t8@@6 _$t1@@6)) (and (=> (= (ControlFlow 0 213312) (- 0 285606)) (=> (= 4 0) (= $t8@@6 173345816))) (=> (=> (= 4 0) (= $t8@@6 173345816)) (and (=> (= (ControlFlow 0 213312) (- 0 285622)) (=> (= 4 1) (= $t8@@6 186537453))) (=> (=> (= 4 1) (= $t8@@6 186537453)) (and (=> (= (ControlFlow 0 213312) (- 0 285638)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 _$t1@@6)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 _$t1@@6) (=> (= $t9@@12 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@6)) (and (=> (= (ControlFlow 0 213312) 213834) anon10_Then_correct@@5) (=> (= (ControlFlow 0 213312) 213318) anon10_Else_correct@@5)))))))))))))
(let ((anon0$1_correct@@25  (=> (and (|$IsValid'address'| _$t0@@25) (|$IsValid'address'| _$t1@@6)) (=> (and (and (and (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@27)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@27))
 :qid |Rolesandybpl.9723:20|
 :skolemid |317|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@27))
)) (= $t2@@4 _$t0@@25)) (and (= $t3@@5 _$t0@@25) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 _$t1@@6))) (and (and (= _$t0@@25 _$t0@@25) (= _$t1@@6 _$t1@@6)) (and (= $t4@@5 _$t0@@25) (= $t5@@6  (or (or (or (not (= _$t0@@25 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@5)) 0))) (not (= _$t0@@25 173345816))))))) (and (=> (= (ControlFlow 0 213234) 214158) anon9_Then_correct@@2) (=> (= (ControlFlow 0 213234) 213312) anon9_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@25  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@27 T@$1_Event_EventHandle) ) (! (let ((stream@@26 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@27)))
 (and (= (|l#Multiset_80957| stream@@26) 0) (forall ((v@@61 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@26) v@@61) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 213080) 213234)) anon0$1_correct@@25)))
(let ((anon0_correct@@25  (=> (= (ControlFlow 0 285305) 213080) inline$$InitEventStore$0$anon0_correct@@25)))
anon0_correct@@25))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@5 () Int)
(declare-fun _$t0@@26 () Int)
(declare-fun _$t1@@7 () Int)
(declare-fun $t3@@6 () Int)
(declare-fun $t6@@13 () Int)
(declare-fun $t9@@13 () Bool)
(declare-fun $t5@@7 () Bool)
(declare-fun $t4@@6 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@5 () T@$Memory_111178)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@6 () T@$Memory_111178)
(declare-fun $1_Roles_RoleId_$memory@0@@6 () T@$Memory_111178)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@5| () T@$1_Roles_RoleId)
(declare-fun $t8@@7 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@6 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 286387) (let ((L2_correct@@5  (and (=> (= (ControlFlow 0 215266) (- 0 287246)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= _$t0@@26 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@7)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@6)) 0))) (not (= _$t0@@26 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= _$t0@@26 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@7)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@6)) 0))) (not (= _$t0@@26 173345816))) (=> (= (ControlFlow 0 215266) (- 0 287322)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@5)) (= 5 $t6@@13)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@5)) 0)) (= 3 $t6@@13))) (and (not (= _$t0@@26 173345816)) (= 2 $t6@@13))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@7) (= 6 $t6@@13))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@6)) (= 5 $t6@@13))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@6)) 0)) (= 3 $t6@@13))) (and (not (= _$t0@@26 173345816)) (= 2 $t6@@13))))))))
(let ((anon10_Then_correct@@6  (=> $t9@@13 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@7) (= 6 $t6@@13)) (and (= $t6@@13 $t6@@13) (= (ControlFlow 0 215034) 215266))) L2_correct@@5))))
(let ((anon9_Then_correct@@3  (=> (and (and $t5@@7 (or (or (or (and (not (= _$t0@@26 173345816)) (= 2 $t6@@13)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@6)) (= 5 $t6@@13))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@6)) 0)) (= 3 $t6@@13))) (and (not (= _$t0@@26 173345816)) (= 2 $t6@@13)))) (and (= $t6@@13 $t6@@13) (= (ControlFlow 0 215358) 215266))) L2_correct@@5)))
(let ((anon7_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) _$t1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) _$t1@@7)) 3)) (and (=> (= (ControlFlow 0 214992) (- 0 286838)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@5))) (and (=> (= (ControlFlow 0 214992) (- 0 286850)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (and (=> (= (ControlFlow 0 214992) (- 0 286868)) (not (not (= _$t0@@26 173345816)))) (=> (not (not (= _$t0@@26 173345816))) (and (=> (= (ControlFlow 0 214992) (- 0 286882)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@7))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@7)) (and (=> (= (ControlFlow 0 214992) (- 0 286893)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@6))) (and (=> (= (ControlFlow 0 214992) (- 0 286905)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@6)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t3@@6)) 0))) (and (=> (= (ControlFlow 0 214992) (- 0 286923)) (not (not (= _$t0@@26 173345816)))) (=> (not (not (= _$t0@@26 173345816))) (and (=> (= (ControlFlow 0 214992) (- 0 286937)) (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) _$t1@@7)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) _$t1@@7) (and (=> (= (ControlFlow 0 214992) (- 0 286946)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) _$t1@@7)) 3)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) _$t1@@7)) 3) (and (=> (= (ControlFlow 0 214992) (- 0 286961)) (forall ((addr@@341 Int) ) (!  (=> (|$IsValid'address'| addr@@341) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@341) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@341)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@341) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@341)) 0))))
 :qid |Rolesandybpl.10160:15|
 :skolemid |325|
))) (=> (forall ((addr@@342 Int) ) (!  (=> (|$IsValid'address'| addr@@342) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@342) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@342)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@342) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@342)) 0))))
 :qid |Rolesandybpl.10160:15|
 :skolemid |325|
)) (and (=> (= (ControlFlow 0 214992) (- 0 287008)) (forall ((addr@@343 Int) ) (!  (=> (|$IsValid'address'| addr@@343) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@343) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@343)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@343) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@343)) 1))))
 :qid |Rolesandybpl.10164:15|
 :skolemid |326|
))) (=> (forall ((addr@@344 Int) ) (!  (=> (|$IsValid'address'| addr@@344) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@344) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@344)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@344) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@344)) 1))))
 :qid |Rolesandybpl.10164:15|
 :skolemid |326|
)) (and (=> (= (ControlFlow 0 214992) (- 0 287055)) (forall ((addr@@345 Int) ) (!  (=> (|$IsValid'address'| addr@@345) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@345) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@345)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@345) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@345)) 4))))
 :qid |Rolesandybpl.10168:15|
 :skolemid |327|
))) (=> (forall ((addr@@346 Int) ) (!  (=> (|$IsValid'address'| addr@@346) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@346) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@346)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@346) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@346)) 4))))
 :qid |Rolesandybpl.10168:15|
 :skolemid |327|
)) (and (=> (= (ControlFlow 0 214992) (- 0 287102)) (forall ((addr@@347 Int) ) (!  (=> (|$IsValid'address'| addr@@347) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@347) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@347)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@347) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@347)) 2))))
 :qid |Rolesandybpl.10172:15|
 :skolemid |328|
))) (=> (forall ((addr@@348 Int) ) (!  (=> (|$IsValid'address'| addr@@348) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@348) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@348)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@348) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@348)) 2))))
 :qid |Rolesandybpl.10172:15|
 :skolemid |328|
)) (and (=> (= (ControlFlow 0 214992) (- 0 287149)) (forall ((addr@@349 Int) ) (!  (=> (|$IsValid'address'| addr@@349) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@349) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@349)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@349) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@349)) 5))))
 :qid |Rolesandybpl.10176:15|
 :skolemid |329|
))) (=> (forall ((addr@@350 Int) ) (!  (=> (|$IsValid'address'| addr@@350) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@350) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@350)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@350) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@350)) 5))))
 :qid |Rolesandybpl.10176:15|
 :skolemid |329|
)) (=> (= (ControlFlow 0 214992) (- 0 287196)) (forall ((addr@@351 Int) ) (!  (=> (|$IsValid'address'| addr@@351) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@351) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory@2@@5) addr@@351)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) addr@@351) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) addr@@351)) 6))))
 :qid |Rolesandybpl.10180:15|
 :skolemid |330|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@7  (=> (and (and (not |$temp_0'bool'@0@@5|) (= $1_Roles_RoleId_$memory@1@@6 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@7 false) (|contents#$Memory_111178| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@1@@6) (= (ControlFlow 0 214532) 214992))) anon7_correct@@3)))
(let ((anon11_Then_correct@@7  (=> (and (and |$temp_0'bool'@0@@5| (= $1_Roles_RoleId_$memory@0@@6 ($Memory_111178 (|Store__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@7 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@7 |$temp_0'$1_Roles_RoleId'@0@@5|)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@0@@6) (= (ControlFlow 0 215006) 214992))) anon7_correct@@3)))
(let ((anon10_Else_correct@@6  (=> (not $t9@@13) (and (=> (= (ControlFlow 0 214518) 215006) anon11_Then_correct@@7) (=> (= (ControlFlow 0 214518) 214532) anon11_Else_correct@@7)))))
(let ((anon9_Else_correct@@3  (=> (not $t5@@7) (=> (and (|$IsValid'u64'| 3) (= $t8@@7 _$t1@@7)) (and (=> (= (ControlFlow 0 214512) (- 0 286688)) (=> (= 3 0) (= $t8@@7 173345816))) (=> (=> (= 3 0) (= $t8@@7 173345816)) (and (=> (= (ControlFlow 0 214512) (- 0 286704)) (=> (= 3 1) (= $t8@@7 186537453))) (=> (=> (= 3 1) (= $t8@@7 186537453)) (and (=> (= (ControlFlow 0 214512) (- 0 286720)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 _$t1@@7)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 _$t1@@7) (=> (= $t9@@13 (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) _$t1@@7)) (and (=> (= (ControlFlow 0 214512) 215034) anon10_Then_correct@@6) (=> (= (ControlFlow 0 214512) 214518) anon10_Else_correct@@6)))))))))))))
(let ((anon0$1_correct@@26  (=> (and (|$IsValid'address'| _$t0@@26) (|$IsValid'address'| _$t1@@7)) (=> (and (and (and (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@28)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@28))
 :qid |Rolesandybpl.9981:20|
 :skolemid |324|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $a_0@@28))
)) (= $t2@@5 _$t0@@26)) (and (= $t3@@6 _$t0@@26) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 _$t1@@7))) (and (and (= _$t0@@26 _$t0@@26) (= _$t1@@7 _$t1@@7)) (and (= $t4@@6 _$t0@@26) (= $t5@@7  (or (or (or (not (= _$t0@@26 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_111178| $1_Roles_RoleId_$memory) $t4@@6)) 0))) (not (= _$t0@@26 173345816))))))) (and (=> (= (ControlFlow 0 214434) 215358) anon9_Then_correct@@3) (=> (= (ControlFlow 0 214434) 214512) anon9_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@26  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@28 T@$1_Event_EventHandle) ) (! (let ((stream@@27 (|Select__T@[$1_Event_EventHandle]Multiset_80957_| (|streams#$EventStore| $es) handle@@28)))
 (and (= (|l#Multiset_80957| stream@@27) 0) (forall ((v@@62 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_80957| stream@@27) v@@62) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 214280) 214434)) anon0$1_correct@@26)))
(let ((anon0_correct@@26  (=> (= (ControlFlow 0 286387) 214280) inline$$InitEventStore$0$anon0_correct@@26)))
anon0_correct@@26))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 287477) true)
))
(check-sat)
(pop 1)
; Valid
