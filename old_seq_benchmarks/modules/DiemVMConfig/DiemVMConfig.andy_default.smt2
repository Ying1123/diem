(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_85243 0)) ((($Memory_85243 (|domain#$Memory_85243| |T@[Int]Bool|) (|contents#$Memory_85243| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_124059 0)) ((($Memory_124059 (|domain#$Memory_124059| |T@[Int]Bool|) (|contents#$Memory_124059| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_120961 0)) ((($Memory_120961 (|domain#$Memory_120961| |T@[Int]Bool|) (|contents#$Memory_120961| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_118966 0)) ((($Memory_118966 (|domain#$Memory_118966| |T@[Int]Bool|) (|contents#$Memory_118966| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_119246 0)) ((($Memory_119246 (|domain#$Memory_119246| |T@[Int]Bool|) (|contents#$Memory_119246| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_118933 0)) ((($Memory_118933 (|domain#$Memory_118933| |T@[Int]Bool|) (|contents#$Memory_118933| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_118718 0)) ((($Memory_118718 (|domain#$Memory_118718| |T@[Int]Bool|) (|contents#$Memory_118718| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_116228 0)) ((($Memory_116228 (|domain#$Memory_116228| |T@[Int]Bool|) (|contents#$Memory_116228| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_116164 0)) ((($Memory_116164 (|domain#$Memory_116164| |T@[Int]Bool|) (|contents#$Memory_116164| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_114786 0)) ((($Memory_114786 (|domain#$Memory_114786| |T@[Int]Bool|) (|contents#$Memory_114786| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_111665 0)) ((($Memory_111665 (|domain#$Memory_111665| |T@[Int]Bool|) (|contents#$Memory_111665| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_111446 0)) ((($Memory_111446 (|domain#$Memory_111446| |T@[Int]Bool|) (|contents#$Memory_111446| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_120750 0)) ((($Memory_120750 (|domain#$Memory_120750| |T@[Int]Bool|) (|contents#$Memory_120750| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104401 0)) ((($Memory_104401 (|domain#$Memory_104401| |T@[Int]Bool|) (|contents#$Memory_104401| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104314 0)) ((($Memory_104314 (|domain#$Memory_104314| |T@[Int]Bool|) (|contents#$Memory_104314| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_101111 0)) ((($Memory_101111 (|domain#$Memory_101111| |T@[Int]Bool|) (|contents#$Memory_101111| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_101024 0)) ((($Memory_101024 (|domain#$Memory_101024| |T@[Int]Bool|) (|contents#$Memory_101024| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104665 0)) ((($Memory_104665 (|domain#$Memory_104665| |T@[Int]Bool|) (|contents#$Memory_104665| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_113498 0)) ((($Memory_113498 (|domain#$Memory_113498| |T@[Int]Bool|) (|contents#$Memory_113498| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104991 0)) ((($Memory_104991 (|domain#$Memory_104991| |T@[Int]Bool|) (|contents#$Memory_104991| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104574 0)) ((($Memory_104574 (|domain#$Memory_104574| |T@[Int]Bool|) (|contents#$Memory_104574| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_115098 0)) ((($Memory_115098 (|domain#$Memory_115098| |T@[Int]Bool|) (|contents#$Memory_115098| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104892 0)) ((($Memory_104892 (|domain#$Memory_104892| |T@[Int]Bool|) (|contents#$Memory_104892| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100726 0)) ((($Memory_100726 (|domain#$Memory_100726| |T@[Int]Bool|) (|contents#$Memory_100726| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100662 0)) ((($Memory_100662 (|domain#$Memory_100662| |T@[Int]Bool|) (|contents#$Memory_100662| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_96735 0)) ((($Memory_96735 (|domain#$Memory_96735| |T@[Int]Bool|) (|contents#$Memory_96735| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_96648 0)) ((($Memory_96648 (|domain#$Memory_96648| |T@[Int]Bool|) (|contents#$Memory_96648| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_96561 0)) ((($Memory_96561 (|domain#$Memory_96561| |T@[Int]Bool|) (|contents#$Memory_96561| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_96474 0)) ((($Memory_96474 (|domain#$Memory_96474| |T@[Int]Bool|) (|contents#$Memory_96474| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_96387 0)) ((($Memory_96387 (|domain#$Memory_96387| |T@[Int]Bool|) (|contents#$Memory_96387| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_97000 0)) ((($Memory_97000 (|domain#$Memory_97000| |T@[Int]Bool|) (|contents#$Memory_97000| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_95525 0)) ((($Memory_95525 (|domain#$Memory_95525| |T@[Int]Bool|) (|contents#$Memory_95525| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_95591 0)) ((($Memory_95591 (|domain#$Memory_95591| |T@[Int]Bool|) (|contents#$Memory_95591| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_95444 0)) ((($Memory_95444 (|domain#$Memory_95444| |T@[Int]Bool|) (|contents#$Memory_95444| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_93402 0)) ((($Memory_93402 (|domain#$Memory_93402| |T@[Int]Bool|) (|contents#$Memory_93402| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_95311 0)) ((($Memory_95311 (|domain#$Memory_95311| |T@[Int]Bool|) (|contents#$Memory_95311| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_95230 0)) ((($Memory_95230 (|domain#$Memory_95230| |T@[Int]Bool|) (|contents#$Memory_95230| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_95116 0)) ((($Memory_95116 (|domain#$Memory_95116| |T@[Int]Bool|) (|contents#$Memory_95116| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_119887 0)) ((($Memory_119887 (|domain#$Memory_119887| |T@[Int]Bool|) (|contents#$Memory_119887| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_95149 0)) ((($Memory_95149 (|domain#$Memory_95149| |T@[Int]Bool|) (|contents#$Memory_95149| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_94605 0)) ((($Memory_94605 (|domain#$Memory_94605| |T@[Int]Bool|) (|contents#$Memory_94605| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_94047 0)) ((($Memory_94047 (|domain#$Memory_94047| |T@[Int]Bool|) (|contents#$Memory_94047| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_93778 0)) ((($Memory_93778 (|domain#$Memory_93778| |T@[Int]Bool|) (|contents#$Memory_93778| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_91995 0)) ((($Memory_91995 (|domain#$Memory_91995| |T@[Int]Bool|) (|contents#$Memory_91995| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_63181 0)) (((Multiset_63181 (|v#Multiset_63181| |T@[$EventRep]Int|) (|l#Multiset_63181| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_63181| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_63181|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_129279 0)) ((($Mutation_129279 (|l#$Mutation_129279| T@$Location) (|p#$Mutation_129279| (Seq Int)) (|v#$Mutation_129279| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((T@$Mutation_129239 0)) ((($Mutation_129239 (|l#$Mutation_129239| T@$Location) (|p#$Mutation_129239| (Seq Int)) (|v#$Mutation_129239| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-datatypes ((T@$Mutation_129197 0)) ((($Mutation_129197 (|l#$Mutation_129197| T@$Location) (|p#$Mutation_129197| (Seq Int)) (|v#$Mutation_129197| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$Mutation_121788 0)) ((($Mutation_121788 (|l#$Mutation_121788| T@$Location) (|p#$Mutation_121788| (Seq Int)) (|v#$Mutation_121788| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_121744 0)) ((($Mutation_121744 (|l#$Mutation_121744| T@$Location) (|p#$Mutation_121744| (Seq Int)) (|v#$Mutation_121744| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_32187 0)) ((($Mutation_32187 (|l#$Mutation_32187| T@$Location) (|p#$Mutation_32187| (Seq Int)) (|v#$Mutation_32187| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_110180 0)) ((($Mutation_110180 (|l#$Mutation_110180| T@$Location) (|p#$Mutation_110180| (Seq Int)) (|v#$Mutation_110180| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_99415 0)) ((($Mutation_99415 (|l#$Mutation_99415| T@$Location) (|p#$Mutation_99415| (Seq Int)) (|v#$Mutation_99415| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_92464 0)) ((($Mutation_92464 (|l#$Mutation_92464| T@$Location) (|p#$Mutation_92464| (Seq Int)) (|v#$Mutation_92464| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_85871 0)) ((($Mutation_85871 (|l#$Mutation_85871| T@$Location) (|p#$Mutation_85871| (Seq Int)) (|v#$Mutation_85871| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_81239 0)) ((($Mutation_81239 (|l#$Mutation_81239| T@$Location) (|p#$Mutation_81239| (Seq Int)) (|v#$Mutation_81239| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_80493 0)) ((($Mutation_80493 (|l#$Mutation_80493| T@$Location) (|p#$Mutation_80493| (Seq Int)) (|v#$Mutation_80493| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_79053 0)) ((($Mutation_79053 (|l#$Mutation_79053| T@$Location) (|p#$Mutation_79053| (Seq Int)) (|v#$Mutation_79053| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_78307 0)) ((($Mutation_78307 (|l#$Mutation_78307| T@$Location) (|p#$Mutation_78307| (Seq Int)) (|v#$Mutation_78307| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_76867 0)) ((($Mutation_76867 (|l#$Mutation_76867| T@$Location) (|p#$Mutation_76867| (Seq Int)) (|v#$Mutation_76867| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_76121 0)) ((($Mutation_76121 (|l#$Mutation_76121| T@$Location) (|p#$Mutation_76121| (Seq Int)) (|v#$Mutation_76121| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_74681 0)) ((($Mutation_74681 (|l#$Mutation_74681| T@$Location) (|p#$Mutation_74681| (Seq Int)) (|v#$Mutation_74681| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_73935 0)) ((($Mutation_73935 (|l#$Mutation_73935| T@$Location) (|p#$Mutation_73935| (Seq Int)) (|v#$Mutation_73935| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_72495 0)) ((($Mutation_72495 (|l#$Mutation_72495| T@$Location) (|p#$Mutation_72495| (Seq Int)) (|v#$Mutation_72495| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_71749 0)) ((($Mutation_71749 (|l#$Mutation_71749| T@$Location) (|p#$Mutation_71749| (Seq Int)) (|v#$Mutation_71749| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_70309 0)) ((($Mutation_70309 (|l#$Mutation_70309| T@$Location) (|p#$Mutation_70309| (Seq Int)) (|v#$Mutation_70309| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_69563 0)) ((($Mutation_69563 (|l#$Mutation_69563| T@$Location) (|p#$Mutation_69563| (Seq Int)) (|v#$Mutation_69563| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_68123 0)) ((($Mutation_68123 (|l#$Mutation_68123| T@$Location) (|p#$Mutation_68123| (Seq Int)) (|v#$Mutation_68123| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_67377 0)) ((($Mutation_67377 (|l#$Mutation_67377| T@$Location) (|p#$Mutation_67377| (Seq Int)) (|v#$Mutation_67377| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_65899 0)) ((($Mutation_65899 (|l#$Mutation_65899| T@$Location) (|p#$Mutation_65899| (Seq Int)) (|v#$Mutation_65899| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_65153 0)) ((($Mutation_65153 (|l#$Mutation_65153| T@$Location) (|p#$Mutation_65153| (Seq Int)) (|v#$Mutation_65153| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_63181_| (|T@[$1_Event_EventHandle]Multiset_63181| T@$1_Event_EventHandle) T@Multiset_63181)
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
(declare-fun ReverseVec_57063 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_56078 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_56275 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_56472 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_57260 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_56866 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_56669 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_55881 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_63181| |T@[$1_Event_EventHandle]Multiset_63181|) |T@[$1_Event_EventHandle]Multiset_63181|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemVMConfigandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemVMConfigandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemVMConfigandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemVMConfigandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemVMConfigandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemVMConfigandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemVMConfigandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemVMConfigandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemVMConfigandybpl.590:13|
 :skolemid |15|
))))
 :qid |DiemVMConfigandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemVMConfigandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemVMConfigandybpl.603:17|
 :skolemid |18|
)))))
 :qid |DiemVMConfigandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemVMConfigandybpl.770:13|
 :skolemid |20|
))))
 :qid |DiemVMConfigandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemVMConfigandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemVMConfigandybpl.783:17|
 :skolemid |23|
)))))
 :qid |DiemVMConfigandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemVMConfigandybpl.950:13|
 :skolemid |25|
))))
 :qid |DiemVMConfigandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemVMConfigandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemVMConfigandybpl.963:17|
 :skolemid |28|
)))))
 :qid |DiemVMConfigandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemVMConfigandybpl.1130:13|
 :skolemid |30|
))))
 :qid |DiemVMConfigandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemVMConfigandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemVMConfigandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |DiemVMConfigandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |DiemVMConfigandybpl.1310:13|
 :skolemid |35|
))))
 :qid |DiemVMConfigandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemVMConfigandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemVMConfigandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |DiemVMConfigandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |DiemVMConfigandybpl.1490:13|
 :skolemid |40|
))))
 :qid |DiemVMConfigandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemVMConfigandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemVMConfigandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |DiemVMConfigandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |DiemVMConfigandybpl.1670:13|
 :skolemid |45|
))))
 :qid |DiemVMConfigandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemVMConfigandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemVMConfigandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |DiemVMConfigandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |DiemVMConfigandybpl.1850:13|
 :skolemid |50|
))))
 :qid |DiemVMConfigandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemVMConfigandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemVMConfigandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |DiemVMConfigandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |DiemVMConfigandybpl.2030:13|
 :skolemid |55|
))))
 :qid |DiemVMConfigandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemVMConfigandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemVMConfigandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |DiemVMConfigandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |DiemVMConfigandybpl.2210:13|
 :skolemid |60|
))))
 :qid |DiemVMConfigandybpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemVMConfigandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemVMConfigandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |DiemVMConfigandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemVMConfigandybpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemVMConfigandybpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemVMConfigandybpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemVMConfigandybpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_63181_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_63181| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63181| stream) v@@24) 0)
 :qid |DiemVMConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemVMConfigandybpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemVMConfigandybpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemVMConfigandybpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemVMConfigandybpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemVMConfigandybpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemVMConfigandybpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemVMConfigandybpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemVMConfigandybpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemVMConfigandybpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemVMConfigandybpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemVMConfigandybpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemVMConfigandybpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemVMConfigandybpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemVMConfigandybpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemVMConfigandybpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemVMConfigandybpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemVMConfigandybpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemVMConfigandybpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemVMConfigandybpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemVMConfigandybpl.3083:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |DiemVMConfigandybpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemVMConfigandybpl.3139:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |DiemVMConfigandybpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemVMConfigandybpl.3195:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |DiemVMConfigandybpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemVMConfigandybpl.3251:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |DiemVMConfigandybpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemVMConfigandybpl.3307:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |DiemVMConfigandybpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemVMConfigandybpl.3363:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |DiemVMConfigandybpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemVMConfigandybpl.3419:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |DiemVMConfigandybpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemVMConfigandybpl.3475:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |DiemVMConfigandybpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemVMConfigandybpl.3560:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemVMConfigandybpl.4105:36|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemVMConfigandybpl.4124:71|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemVMConfigandybpl.4188:46|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemVMConfigandybpl.4201:64|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemVMConfigandybpl.4214:75|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemVMConfigandybpl.4227:72|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemVMConfigandybpl.4256:55|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemVMConfigandybpl.4278:46|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemVMConfigandybpl.4296:49|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemVMConfigandybpl.4376:71|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |DiemVMConfigandybpl.4390:91|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |DiemVMConfigandybpl.4404:113|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |DiemVMConfigandybpl.4418:75|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |DiemVMConfigandybpl.4432:73|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |DiemVMConfigandybpl.4452:48|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |DiemVMConfigandybpl.4468:57|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |DiemVMConfigandybpl.4482:83|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |DiemVMConfigandybpl.4496:103|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |DiemVMConfigandybpl.4510:125|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |DiemVMConfigandybpl.4524:87|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |DiemVMConfigandybpl.4538:85|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |DiemVMConfigandybpl.4552:48|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |DiemVMConfigandybpl.4573:45|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |DiemVMConfigandybpl.4587:51|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |DiemVMConfigandybpl.4610:48|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |DiemVMConfigandybpl.4916:49|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |DiemVMConfigandybpl.4929:65|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |DiemVMConfigandybpl.5433:45|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |DiemVMConfigandybpl.5446:45|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29) true)
 :qid |DiemVMConfigandybpl.5459:55|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30) true)
 :qid |DiemVMConfigandybpl.5473:55|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@31))))
 :qid |DiemVMConfigandybpl.5493:38|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@32))))
 :qid |DiemVMConfigandybpl.5514:44|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))))
 :qid |DiemVMConfigandybpl.5565:53|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))))
 :qid |DiemVMConfigandybpl.5627:53|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35) true)
 :qid |DiemVMConfigandybpl.5653:55|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36) true)
 :qid |DiemVMConfigandybpl.5667:55|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@37)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@37))))
 :qid |DiemVMConfigandybpl.5684:38|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@38)))
 :qid |DiemVMConfigandybpl.5698:48|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@39)))
 :qid |DiemVMConfigandybpl.5712:48|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@40)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@40))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@40))))
 :qid |DiemVMConfigandybpl.5732:41|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@41)))
 :qid |DiemVMConfigandybpl.5747:53|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@42)))
 :qid |DiemVMConfigandybpl.5761:53|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43))))
 :qid |DiemVMConfigandybpl.5778:60|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44))))
 :qid |DiemVMConfigandybpl.5795:60|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45))))
 :qid |DiemVMConfigandybpl.5812:57|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46) true)
 :qid |DiemVMConfigandybpl.8013:68|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))))
 :qid |DiemVMConfigandybpl.8035:66|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))))
 :qid |DiemVMConfigandybpl.8061:66|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@49) true)
 :qid |DiemVMConfigandybpl.8394:31|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@50) true)
 :qid |DiemVMConfigandybpl.8738:31|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@51)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@51)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@51))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@51))))
 :qid |DiemVMConfigandybpl.8757:35|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@51))
)))
(assert (forall ((s@@52 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@52)))
 :qid |DiemVMConfigandybpl.9178:45|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@53))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@53))))
 :qid |DiemVMConfigandybpl.9197:50|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@54)))
 :qid |DiemVMConfigandybpl.9212:52|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55))))
 :qid |DiemVMConfigandybpl.9239:65|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@56)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@56))))
 :qid |DiemVMConfigandybpl.9624:60|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57))))
 :qid |DiemVMConfigandybpl.9641:66|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@58)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@58)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@58))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@58))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@58))))
 :qid |DiemVMConfigandybpl.9670:50|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@59) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@59)))
 :qid |DiemVMConfigandybpl.9689:45|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@60)) true))
 :qid |DiemVMConfigandybpl.10008:87|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@61)))
 :qid |DiemVMConfigandybpl.10220:47|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@62)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@62))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@62))))
 :qid |DiemVMConfigandybpl.10240:58|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@63) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@63)))
 :qid |DiemVMConfigandybpl.10255:39|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@64))))
 :qid |DiemVMConfigandybpl.10277:58|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65))))
 :qid |DiemVMConfigandybpl.10294:58|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66) true)
 :qid |DiemVMConfigandybpl.10309:51|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67))))
 :qid |DiemVMConfigandybpl.10326:60|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@68)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@68))))
 :qid |DiemVMConfigandybpl.10624:47|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@69)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@69))))
 :qid |DiemVMConfigandybpl.10646:63|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@70)))
 :qid |DiemVMConfigandybpl.10661:57|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@71)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@71))))
 :qid |DiemVMConfigandybpl.10677:54|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@72)))
 :qid |DiemVMConfigandybpl.10691:55|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@73)))
 :qid |DiemVMConfigandybpl.10705:57|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@74)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@74))))
 :qid |DiemVMConfigandybpl.10727:56|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@75)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@75))))
 :qid |DiemVMConfigandybpl.10752:52|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@76)))
 :qid |DiemVMConfigandybpl.10768:54|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |DiemVMConfigandybpl.11639:47|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |DiemVMConfigandybpl.11663:47|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |DiemVMConfigandybpl.11904:49|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |DiemVMConfigandybpl.11947:49|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |DiemVMConfigandybpl.11976:48|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |DiemVMConfigandybpl.13433:47|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |DiemVMConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |DiemVMConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_57063 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |DiemVMConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |DiemVMConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57063 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_56078 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |DiemVMConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |DiemVMConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56078 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_56275 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |DiemVMConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |DiemVMConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56275 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_56472 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |DiemVMConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |DiemVMConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56472 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_57260 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |DiemVMConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |DiemVMConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57260 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_56866 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |DiemVMConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |DiemVMConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56866 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_56669 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |DiemVMConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |DiemVMConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56669 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_55881 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |DiemVMConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |DiemVMConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_55881 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |DiemVMConfigandybpl.245:54|
 :skolemid |254|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_63181|) (|l#1| |T@[$1_Event_EventHandle]Multiset_63181|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_63181_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_63181| (|Select__T@[$1_Event_EventHandle]Multiset_63181_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_63181| (|Select__T@[$1_Event_EventHandle]Multiset_63181_| |l#1| handle@@0))))
(Multiset_63181 (|lambda#3| (|v#Multiset_63181| (|Select__T@[$1_Event_EventHandle]Multiset_63181_| |l#0@@0| handle@@0)) (|v#Multiset_63181| (|Select__T@[$1_Event_EventHandle]Multiset_63181_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemVMConfigandybpl.2548:13|
 :skolemid |255|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_63181_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |DiemVMConfigandybpl.124:29|
 :skolemid |256|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_92464)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_92464)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_91995)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_93402)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_91995)
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
(declare-fun $t14 () T@$Mutation_92464)
(declare-fun $t14@0 () T@$Mutation_92464)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_92464)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 195537) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12329 (|l#$Mutation_92464| $t14@1) (seq.++ (|p#$Mutation_92464| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_92464| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2)) (= $t14@2 ($Mutation_92464 (|l#$Mutation_92464| $t14@1) (|p#$Mutation_92464| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_91995 (|Store__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_92464| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_92464| $t14@2)) (|v#$Mutation_92464| $t14@2)))))) (and (=> (= (ControlFlow 0 144893) (- 0 196159)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 144893) (- 0 196184)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 144893) (- 0 196194)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 144893) (- 0 196208)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 144893) (- 0 196232)) (= $t25 _$t2)))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 144951) 144893)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 144751) 144893)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 144747) (- 0 196276)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 144747) (- 0 196313)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 144947) 144747))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 144931) 144951) anon25_Then_correct) (=> (= (ControlFlow 0 144931) 144947) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 144631) 144747))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 144615) 144751) anon26_Then_correct) (=> (= (ControlFlow 0 144615) 144631) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 144579) 144615)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 144585) 144579)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_92464| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_92464| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 144533) 144931) anon24_Then_correct) (=> (= (ControlFlow 0 144533) 144585) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 144965) 144747))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 145017) 144965) anon23_Then_correct) (=> (= (ControlFlow 0 145017) 144533) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 145015) 145017)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_92464 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 144487) 144965) anon23_Then_correct) (=> (= (ControlFlow 0 144487) 144533) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 144465) (- 0 195835)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 144465) 145015) anon22_Then_correct) (=> (= (ControlFlow 0 144465) 144487) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 145047) 144747))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 144445) 145047) anon21_Then_correct) (=> (= (ControlFlow 0 144445) 144465) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 145073) 144747))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemVMConfigandybpl.3748:20|
 :skolemid |106|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 144423) 145073) anon20_Then_correct) (=> (= (ControlFlow 0 144423) 144445) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_63181_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_63181| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63181| stream@@0) v@@35) 0)
 :qid |DiemVMConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemVMConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 144311) 144423)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_92464| $t3)) 0) (= (seq.len (|p#$Mutation_92464| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 144321) 144311))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 195537) 144321) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_93778)
(declare-fun $t5 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0@@0 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_96648)
(declare-fun $t6 () Int)
(declare-fun $t8 () Int)
(declare-fun $t26 () Bool)
(declare-fun $t25@@0 () Int)
(declare-fun $t10@@0 () Bool)
(declare-fun $t9@@0 () Int)
(declare-fun $t7 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@2| () T@$Memory_96648)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2| () T@$Memory_93402)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t24@0@@0 () T@$1_DiemVMConfig_DiemVMConfig)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_95591)
(declare-fun _$t1@@0 () (Seq Int))
(declare-fun _$t2@@0 () (Seq Int))
(declare-fun $t4 () T@$1_DiemVMConfig_GasConstants)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1| () T@$Memory_96648)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@0| () T@$Memory_96648)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''@0| () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1| () T@$Memory_93402)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0| () T@$Memory_93402)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t22@0 () T@$1_DiemVMConfig_GasConstants)
(declare-fun $t23@0 () T@$1_DiemVMConfig_GasSchedule)
(push 1)
(set-info :boogie-vc-id $1_DiemVMConfig_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 196554) (let ((L2_correct  (and (=> (= (ControlFlow 0 146324) (- 0 197668)) (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t5)) 0))) (not (= _$t0@@0 173345816))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= _$t0@@0 173345816)))) (=> (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t5)) 0))) (not (= _$t0@@0 173345816))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= _$t0@@0 173345816))) (=> (= (ControlFlow 0 146324) (- 0 197756)) (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t5)) (= 5 $t8)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t5)) 0)) (= 3 $t8))) (and (not (= _$t0@@0 173345816)) (= 2 $t8))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t8))) (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t6)) (= 5 $t8))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t6)) 0)) (= 3 $t8))) (and (not (= _$t0@@0 173345816)) (= 2 $t8))))))))
(let ((anon16_Then_correct  (=> (and (and $t26 (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t25@@0)) (= 5 $t8))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t25@@0)) 0)) (= 3 $t8))) (and (not (= _$t0@@0 173345816)) (= 2 $t8)))) (and (= $t8 $t8) (= (ControlFlow 0 146064) 146324))) L2_correct)))
(let ((anon15_Then_correct  (=> (and (and $t10@@0 (or (or (or (and (not (= _$t0@@0 173345816)) (= 2 $t8)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t9@@0)) (= 5 $t8))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t9@@0)) 0)) (= 3 $t8))) (and (not (= _$t0@@0 173345816)) (= 2 $t8)))) (and (= $t8 $t8) (= (ControlFlow 0 146416) 146324))) L2_correct)))
(let ((anon14_Then_correct  (=> $t7 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t8)) (and (= $t8 $t8) (= (ControlFlow 0 146442) 146324))) L2_correct))))
(let ((anon12_correct  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) _$t0@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) 173345816)) (and (= (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) addr))) $t24@0@@0) (= (|Select__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (=> (= (ControlFlow 0 145952) (- 0 197488)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t5))) (and (=> (= (ControlFlow 0 145952) (- 0 197500)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t5)) 0))) (and (=> (= (ControlFlow 0 145952) (- 0 197518)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 145952) (- 0 197532)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 145952) (- 0 197542)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 145952) (- 0 197550)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@0)) (and (=> (= (ControlFlow 0 145952) (- 0 197561)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 145952) (- 0 197573)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t6)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t6)) 0))) (and (=> (= (ControlFlow 0 145952) (- 0 197591)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 145952) (- 0 197605)) (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) _$t0@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) _$t0@@0) (and (=> (= (ControlFlow 0 145952) (- 0 197614)) (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 145952) (- 0 197620)) (= (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) addr@@0))) ($1_DiemVMConfig_DiemVMConfig ($1_DiemVMConfig_GasSchedule _$t1@@0 _$t2@@0 $t4)))) (=> (= (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) addr@@1))) ($1_DiemVMConfig_DiemVMConfig ($1_DiemVMConfig_GasSchedule _$t1@@0 _$t2@@0 $t4))) (and (=> (= (ControlFlow 0 145952) (- 0 197636)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (= (|Select__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (= (ControlFlow 0 145952) (- 0 197648)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) 173345816) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)))))))))))))))))))))))))))))))))
(let ((anon18_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1| ($Memory_96648 (|Store__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 false) (|contents#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|)))) (and (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@2| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1|) (= (ControlFlow 0 145732) 145952))) anon12_correct)))
(let ((anon18_Then_correct  (=> (and (and |$temp_0'bool'@1| (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@0| ($Memory_96648 (|Store__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 |$temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''@0|)))) (and (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@2| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@0|) (= (ControlFlow 0 145964) 145952))) anon12_correct)))
(let ((anon17_Else_correct  (=> (not |$temp_0'bool'@0|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1| ($Memory_93402 (|Store__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 false) (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1|)) (and (=> (= (ControlFlow 0 145718) 145964) anon18_Then_correct) (=> (= (ControlFlow 0 145718) 145732) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> |$temp_0'bool'@0| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0| ($Memory_93402 (|Store__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''@0|))) (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0|)) (and (=> (= (ControlFlow 0 145976) 145964) anon18_Then_correct) (=> (= (ControlFlow 0 145976) 145732) anon18_Else_correct))))))
(let ((anon16_Else_correct  (=> (not $t26) (and (=> (= (ControlFlow 0 145706) 145976) anon17_Then_correct) (=> (= (ControlFlow 0 145706) 145718) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> (not $t10@@0) (=> (and (and (and (and (|$IsValid'u64'| 4) (|$IsValid'u64'| 9)) (and (|$IsValid'u64'| 600) (|$IsValid'u64'| 600))) (and (and (|$IsValid'u64'| 8) (|$IsValid'u64'| 4000000)) (and (|$IsValid'u64'| 0) (|$IsValid'u64'| 10000)))) (and (and (and (|$IsValid'u64'| 4096) (|$IsValid'u64'| 1000)) (and (|$IsValid'u64'| 800) (= $t22@0 ($1_DiemVMConfig_GasConstants 4 9 600 600 8 4000000 0 10000 4096 1000 800)))) (and (and (= $t23@0 ($1_DiemVMConfig_GasSchedule _$t1@@0 _$t2@@0 $t22@0)) (= $t24@0@@0 ($1_DiemVMConfig_DiemVMConfig $t23@0))) (and (= $t25@@0 _$t0@@0) (= $t26  (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t25@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t25@@0)) 0))) (not (= _$t0@@0 173345816)))))))) (and (=> (= (ControlFlow 0 145698) 146064) anon16_Then_correct) (=> (= (ControlFlow 0 145698) 145706) anon16_Else_correct))))))
(let ((anon14_Else_correct  (=> (not $t7) (=> (and (= $t9@@0 _$t0@@0) (= $t10@@0  (or (or (or (not (= _$t0@@0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t9@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t9@@0)) 0))) (not (= _$t0@@0 173345816))))) (and (=> (= (ControlFlow 0 145492) 146416) anon15_Then_correct) (=> (= (ControlFlow 0 145492) 145698) anon15_Else_correct))))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (and (|$IsValid'address'| _$t0@@0) (|$IsValid'vec'u8''| _$t1@@0))) (and (and (|$IsValid'vec'u8''| _$t2@@0) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |DiemVMConfigandybpl.12338:20|
 :skolemid |189|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |DiemVMConfigandybpl.12342:20|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@2)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| $rsc@@2))
 :qid |DiemVMConfigandybpl.12346:20|
 :skolemid |191|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@2))
))))) (and (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@3)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| $rsc@@3))
 :qid |DiemVMConfigandybpl.12350:20|
 :skolemid |192|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@3))
)) (= $t4 ($1_DiemVMConfig_GasConstants 4 9 600 600 8 4000000 0 10000 4096 1000 800))) (and (= $t5 _$t0@@0) (= $t6 _$t0@@0))) (and (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0)) (and (= _$t2@@0 _$t2@@0) (= $t7  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 145420) 146442) anon14_Then_correct) (=> (= (ControlFlow 0 145420) 145492) anon14_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_63181_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_63181| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63181| stream@@1) v@@36) 0)
 :qid |DiemVMConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemVMConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 145184) 145420)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 196554) 145184) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2@@0| () T@$Memory_93402)
(declare-fun $t12@0 () T@$1_DiemVMConfig_DiemVMConfig)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_95591)
(declare-fun $t19 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_95525)
(declare-fun $t20@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t21 () Int)
(declare-fun _$t7 () Int)
(declare-fun _$t8 () Int)
(declare-fun _$t3 () Int)
(declare-fun _$t6 () Int)
(declare-fun $t18 () T@$1_DiemVMConfig_DiemVMConfig)
(declare-fun _$t1@@1 () Int)
(declare-fun _$t2@@1 () Int)
(declare-fun _$t4 () Int)
(declare-fun _$t5 () Int)
(declare-fun _$t9 () Int)
(declare-fun _$t10 () Int)
(declare-fun _$t11 () Int)
(declare-fun |$temp_0'bool'@1@@0| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1@@0| () T@$Memory_93402)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0@@0| () T@$Memory_93402)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''@0@@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_95591)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_95591)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t50 () Bool)
(declare-fun $t23@0@@0 () Int)
(declare-fun $t23@@0 () Int)
(declare-fun $t48 () T@$1_DiemConfig_Configuration)
(declare-fun $t49 () Int)
(declare-fun $t32 () Bool)
(declare-fun $t12@@0 () T@$1_DiemVMConfig_DiemVMConfig)
(declare-fun $t33@0 () T@$Mutation_129239)
(declare-fun $t34@0 () T@$Mutation_129279)
(declare-fun $t35@0 () T@$Mutation_129197)
(declare-fun |$temp_0'$1_DiemVMConfig_GasConstants'@0| () T@$1_DiemVMConfig_GasConstants)
(declare-fun $t36@0 () T@$Mutation_12329)
(declare-fun $t36@1 () T@$Mutation_12329)
(declare-fun $t35@1 () T@$Mutation_129197)
(declare-fun $t37@0 () T@$Mutation_12329)
(declare-fun $t37@1 () T@$Mutation_12329)
(declare-fun $t35@2 () T@$Mutation_129197)
(declare-fun $t38@0 () T@$Mutation_12329)
(declare-fun $t38@1 () T@$Mutation_12329)
(declare-fun $t35@3 () T@$Mutation_129197)
(declare-fun $t39@0 () T@$Mutation_12329)
(declare-fun $t39@1 () T@$Mutation_12329)
(declare-fun $t35@4 () T@$Mutation_129197)
(declare-fun $t40@0 () T@$Mutation_12329)
(declare-fun $t40@1 () T@$Mutation_12329)
(declare-fun $t35@5 () T@$Mutation_129197)
(declare-fun $t41@0 () T@$Mutation_12329)
(declare-fun $t41@1 () T@$Mutation_12329)
(declare-fun $t35@6 () T@$Mutation_129197)
(declare-fun $t42@0 () T@$Mutation_12329)
(declare-fun $t42@1 () T@$Mutation_12329)
(declare-fun $t35@7 () T@$Mutation_129197)
(declare-fun $t43@0 () T@$Mutation_12329)
(declare-fun $t43@1 () T@$Mutation_12329)
(declare-fun $t35@8 () T@$Mutation_129197)
(declare-fun $t44@0 () T@$Mutation_12329)
(declare-fun $t44@1 () T@$Mutation_12329)
(declare-fun $t35@9 () T@$Mutation_129197)
(declare-fun $t45@0 () T@$Mutation_12329)
(declare-fun $t45@1 () T@$Mutation_12329)
(declare-fun $t35@10 () T@$Mutation_129197)
(declare-fun $t46@0 () T@$Mutation_12329)
(declare-fun $t46@1 () T@$Mutation_12329)
(declare-fun $t35@11 () T@$Mutation_129197)
(declare-fun $t34@1 () T@$Mutation_129279)
(declare-fun $t33@1 () T@$Mutation_129239)
(declare-fun inline$$Le$1$dst@1 () Bool)
(declare-fun $t31 () Int)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $t28 () Int)
(declare-fun $t25@@1 () Bool)
(declare-fun $t24@@0 () Int)
(declare-fun $t22 () Bool)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun $t13 () T@$Mutation_129197)
(declare-fun $t33 () T@$Mutation_129239)
(declare-fun $t34 () T@$Mutation_129279)
(declare-fun $t35 () T@$Mutation_129197)
(declare-fun $t36 () T@$Mutation_12329)
(declare-fun $t37 () T@$Mutation_12329)
(declare-fun $t38 () T@$Mutation_12329)
(declare-fun $t39 () T@$Mutation_12329)
(declare-fun $t40 () T@$Mutation_12329)
(declare-fun $t41 () T@$Mutation_12329)
(declare-fun $t42 () T@$Mutation_12329)
(declare-fun $t43 () T@$Mutation_12329)
(declare-fun $t44 () T@$Mutation_12329)
(declare-fun $t45 () T@$Mutation_12329)
(declare-fun $t46 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemVMConfig_set_gas_constants$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 197925) (let ((anon20_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2@@0|) 173345816) (=> (and (= (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2@@0|) addr@@2))) $t12@0) (= (|Select__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory@2) 173345816))) (and (=> (= (ControlFlow 0 148568) (- 0 200210)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 148568) (- 0 200220)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t19)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t19))) (and (=> (= (ControlFlow 0 148568) (- 0 200232)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t19)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t19)) 0))) (and (=> (= (ControlFlow 0 148568) (- 0 200250)) (not (not (= _$t0@@1 173345816)))) (=> (not (not (= _$t0@@1 173345816))) (and (=> (= (ControlFlow 0 148568) (- 0 200264)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@1))) (and (=> (= (ControlFlow 0 148568) (- 0 200277)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 148568) (- 0 200289)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95525| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t20@@0) 18446744073709551615)) (< $t21 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t20@@0))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95525| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t20@@0) 18446744073709551615)) (< $t21 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t20@@0)))) (and (=> (= (ControlFlow 0 148568) (- 0 200331)) (not (> _$t7 _$t8))) (=> (not (> _$t7 _$t8)) (and (=> (= (ControlFlow 0 148568) (- 0 200340)) (not (> _$t3 _$t6))) (=> (not (> _$t3 _$t6)) (and (=> (= (ControlFlow 0 148568) (- 0 200349)) (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2@@0|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2@@0|) 173345816) (and (=> (= (ControlFlow 0 148568) (- 0 200355)) (= (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2@@0|) addr@@3))) ($1_DiemVMConfig_DiemVMConfig ($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| $t18)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| $t18)) ($1_DiemVMConfig_GasConstants _$t1@@1 _$t2@@1 _$t3 _$t4 _$t5 _$t6 _$t7 _$t8 _$t9 _$t10 _$t11))))) (=> (= (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2@@0|) addr@@4))) ($1_DiemVMConfig_DiemVMConfig ($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| $t18)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| $t18)) ($1_DiemVMConfig_GasConstants _$t1@@1 _$t2@@1 _$t3 _$t4 _$t5 _$t6 _$t7 _$t8 _$t9 _$t10 _$t11)))) (=> (= (ControlFlow 0 148568) (- 0 200392)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory@2) 173345816)))))))))))))))))))))))))))))
(let ((anon29_Else_correct  (=> (and (and (not |$temp_0'bool'@1@@0|) (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1@@0| ($Memory_93402 (|Store__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 false) (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1@@0|) (= (ControlFlow 0 148332) 148568))) anon20_correct)))
(let ((anon29_Then_correct  (=> (and (and |$temp_0'bool'@1@@0| (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0@@0| ($Memory_93402 (|Store__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''@0@@0|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0@@0|) (= (ControlFlow 0 148580) 148568))) anon20_correct)))
(let ((anon28_Else_correct  (=> (not |$temp_0'bool'@0@@0|) (=> (and (= $1_DiemConfig_Configuration_$memory@1 ($Memory_95591 (|Store__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_95591| $1_DiemConfig_Configuration_$memory))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1)) (and (=> (= (ControlFlow 0 148318) 148580) anon29_Then_correct) (=> (= (ControlFlow 0 148318) 148332) anon29_Else_correct))))))
(let ((anon28_Then_correct  (=> |$temp_0'bool'@0@@0| (=> (and (= $1_DiemConfig_Configuration_$memory@0 ($Memory_95591 (|Store__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0|))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0)) (and (=> (= (ControlFlow 0 148592) 148580) anon29_Then_correct) (=> (= (ControlFlow 0 148592) 148332) anon29_Else_correct))))))
(let ((anon27_Else_correct  (=> (not $t50) (and (=> (= (ControlFlow 0 148306) 148592) anon28_Then_correct) (=> (= (ControlFlow 0 148306) 148318) anon28_Else_correct)))))
(let ((L5_correct@@0  (and (=> (= (ControlFlow 0 147612) (- 0 199804)) (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t19))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t19)) 0))) (not (= _$t0@@1 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95525| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t20@@0) 18446744073709551615)) (< $t21 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t20@@0)))) (> _$t7 _$t8)) (> _$t3 _$t6))) (=> (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t19))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t19)) 0))) (not (= _$t0@@1 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95525| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t20@@0) 18446744073709551615)) (< $t21 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t20@@0)))) (> _$t7 _$t8)) (> _$t3 _$t6)) (=> (= (ControlFlow 0 147612) (- 0 199914)) (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t19)) (= 5 $t23@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t19)) 0)) (= 3 $t23@0@@0))) (and (not (= _$t0@@1 173345816)) (= 2 $t23@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@1)) (= 4 $t23@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (= 5 $t23@0@@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95525| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t20@@0) 18446744073709551615)) (< $t21 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t20@@0))) (= 1 $t23@0@@0))) (and (> _$t7 _$t8) (= 7 $t23@0@@0))) (and (> _$t3 _$t6) (= 7 $t23@0@@0))))))))
(let ((anon27_Then_correct  (=> $t50 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@1)) (= 4 $t23@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (= 5 $t23@@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95525| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t48) 18446744073709551615)) (< $t49 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t48))) (= 1 $t23@@0))) (= $t23@@0 $t23@@0)) (and (= $t23@0@@0 $t23@@0) (= (ControlFlow 0 148690) 147612))) L5_correct@@0))))
(let ((anon26_Else_correct@@0  (=> (and (and (and (and (not $t32) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| $t12@@0)) (and (= $t12@@0 (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) addr@@5)))) (= $t12@@0 $t12@@0))) (and (and (= $t33@0 ($Mutation_129239 ($Local 12) (as seq.empty (Seq Int)) $t12@@0)) (= $t34@0 ($Mutation_129279 (|l#$Mutation_129239| $t33@0) (seq.++ (|p#$Mutation_129239| $t33@0) (seq.unit 0)) (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| (|v#$Mutation_129239| $t33@0))))) (and (= $t35@0 ($Mutation_129197 (|l#$Mutation_129279| $t34@0) (seq.++ (|p#$Mutation_129279| $t34@0) (seq.unit 2)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| (|v#$Mutation_129279| $t34@0)))) (= |$temp_0'$1_DiemVMConfig_GasConstants'@0| (|v#$Mutation_129197| $t35@0))))) (and (and (and (= |$temp_0'$1_DiemVMConfig_GasConstants'@0| |$temp_0'$1_DiemVMConfig_GasConstants'@0|) (= $t36@0 ($Mutation_12329 (|l#$Mutation_129197| $t35@0) (seq.++ (|p#$Mutation_129197| $t35@0) (seq.unit 0)) (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@0))))) (and (= $t36@1 ($Mutation_12329 (|l#$Mutation_12329| $t36@0) (|p#$Mutation_12329| $t36@0) _$t1@@1)) (= $t35@1 ($Mutation_129197 (|l#$Mutation_129197| $t35@0) (|p#$Mutation_129197| $t35@0) ($1_DiemVMConfig_GasConstants (|v#$Mutation_12329| $t36@1) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@0)) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@0)) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@0)) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@0)) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@0)) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@0)) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@0)) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@0)) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@0)) (|$default_account_size#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@0))))))) (and (and (= $t37@0 ($Mutation_12329 (|l#$Mutation_129197| $t35@1) (seq.++ (|p#$Mutation_129197| $t35@1) (seq.unit 1)) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@1)))) (= $t37@1 ($Mutation_12329 (|l#$Mutation_12329| $t37@0) (|p#$Mutation_12329| $t37@0) _$t2@@1))) (and (= $t35@2 ($Mutation_129197 (|l#$Mutation_129197| $t35@1) (|p#$Mutation_129197| $t35@1) ($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@1)) (|v#$Mutation_12329| $t37@1) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@1)) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@1)) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@1)) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@1)) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@1)) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@1)) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@1)) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@1)) (|$default_account_size#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@1))))) (= $t38@0 ($Mutation_12329 (|l#$Mutation_129197| $t35@2) (seq.++ (|p#$Mutation_129197| $t35@2) (seq.unit 2)) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@2)))))))) (=> (and (and (and (and (and (= $t38@1 ($Mutation_12329 (|l#$Mutation_12329| $t38@0) (|p#$Mutation_12329| $t38@0) _$t3)) (= $t35@3 ($Mutation_129197 (|l#$Mutation_129197| $t35@2) (|p#$Mutation_129197| $t35@2) ($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@2)) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@2)) (|v#$Mutation_12329| $t38@1) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@2)) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@2)) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@2)) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@2)) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@2)) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@2)) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@2)) (|$default_account_size#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@2)))))) (and (= $t39@0 ($Mutation_12329 (|l#$Mutation_129197| $t35@3) (seq.++ (|p#$Mutation_129197| $t35@3) (seq.unit 3)) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@3)))) (= $t39@1 ($Mutation_12329 (|l#$Mutation_12329| $t39@0) (|p#$Mutation_12329| $t39@0) _$t4)))) (and (and (= $t35@4 ($Mutation_129197 (|l#$Mutation_129197| $t35@3) (|p#$Mutation_129197| $t35@3) ($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@3)) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@3)) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@3)) (|v#$Mutation_12329| $t39@1) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@3)) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@3)) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@3)) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@3)) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@3)) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@3)) (|$default_account_size#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@3))))) (= $t40@0 ($Mutation_12329 (|l#$Mutation_129197| $t35@4) (seq.++ (|p#$Mutation_129197| $t35@4) (seq.unit 4)) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@4))))) (and (= $t40@1 ($Mutation_12329 (|l#$Mutation_12329| $t40@0) (|p#$Mutation_12329| $t40@0) _$t5)) (= $t35@5 ($Mutation_129197 (|l#$Mutation_129197| $t35@4) (|p#$Mutation_129197| $t35@4) ($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@4)) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@4)) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@4)) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@4)) (|v#$Mutation_12329| $t40@1) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@4)) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@4)) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@4)) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@4)) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@4)) (|$default_account_size#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@4)))))))) (and (and (and (= $t41@0 ($Mutation_12329 (|l#$Mutation_129197| $t35@5) (seq.++ (|p#$Mutation_129197| $t35@5) (seq.unit 5)) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@5)))) (= $t41@1 ($Mutation_12329 (|l#$Mutation_12329| $t41@0) (|p#$Mutation_12329| $t41@0) _$t6))) (and (= $t35@6 ($Mutation_129197 (|l#$Mutation_129197| $t35@5) (|p#$Mutation_129197| $t35@5) ($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@5)) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@5)) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@5)) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@5)) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@5)) (|v#$Mutation_12329| $t41@1) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@5)) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@5)) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@5)) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@5)) (|$default_account_size#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@5))))) (= $t42@0 ($Mutation_12329 (|l#$Mutation_129197| $t35@6) (seq.++ (|p#$Mutation_129197| $t35@6) (seq.unit 6)) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@6)))))) (and (and (= $t42@1 ($Mutation_12329 (|l#$Mutation_12329| $t42@0) (|p#$Mutation_12329| $t42@0) _$t7)) (= $t35@7 ($Mutation_129197 (|l#$Mutation_129197| $t35@6) (|p#$Mutation_129197| $t35@6) ($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@6)) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@6)) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@6)) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@6)) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@6)) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@6)) (|v#$Mutation_12329| $t42@1) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@6)) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@6)) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@6)) (|$default_account_size#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@6)))))) (and (= $t43@0 ($Mutation_12329 (|l#$Mutation_129197| $t35@7) (seq.++ (|p#$Mutation_129197| $t35@7) (seq.unit 7)) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@7)))) (= $t43@1 ($Mutation_12329 (|l#$Mutation_12329| $t43@0) (|p#$Mutation_12329| $t43@0) _$t8)))))) (and (and (and (and (= $t35@8 ($Mutation_129197 (|l#$Mutation_129197| $t35@7) (|p#$Mutation_129197| $t35@7) ($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@7)) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@7)) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@7)) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@7)) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@7)) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@7)) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@7)) (|v#$Mutation_12329| $t43@1) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@7)) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@7)) (|$default_account_size#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@7))))) (= $t44@0 ($Mutation_12329 (|l#$Mutation_129197| $t35@8) (seq.++ (|p#$Mutation_129197| $t35@8) (seq.unit 8)) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@8))))) (and (= $t44@1 ($Mutation_12329 (|l#$Mutation_12329| $t44@0) (|p#$Mutation_12329| $t44@0) _$t9)) (= $t35@9 ($Mutation_129197 (|l#$Mutation_129197| $t35@8) (|p#$Mutation_129197| $t35@8) ($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@8)) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@8)) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@8)) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@8)) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@8)) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@8)) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@8)) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@8)) (|v#$Mutation_12329| $t44@1) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@8)) (|$default_account_size#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@8))))))) (and (and (= $t45@0 ($Mutation_12329 (|l#$Mutation_129197| $t35@9) (seq.++ (|p#$Mutation_129197| $t35@9) (seq.unit 9)) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@9)))) (= $t45@1 ($Mutation_12329 (|l#$Mutation_12329| $t45@0) (|p#$Mutation_12329| $t45@0) _$t10))) (and (= $t35@10 ($Mutation_129197 (|l#$Mutation_129197| $t35@9) (|p#$Mutation_129197| $t35@9) ($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@9)) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@9)) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@9)) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@9)) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@9)) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@9)) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@9)) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@9)) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@9)) (|v#$Mutation_12329| $t45@1) (|$default_account_size#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@9))))) (= $t46@0 ($Mutation_12329 (|l#$Mutation_129197| $t35@10) (seq.++ (|p#$Mutation_129197| $t35@10) (seq.unit 10)) (|$default_account_size#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@10))))))) (and (and (and (= $t46@1 ($Mutation_12329 (|l#$Mutation_12329| $t46@0) (|p#$Mutation_12329| $t46@0) _$t11)) (= $t35@11 ($Mutation_129197 (|l#$Mutation_129197| $t35@10) (|p#$Mutation_129197| $t35@10) ($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@10)) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@10)) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@10)) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@10)) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@10)) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@10)) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@10)) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@10)) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@10)) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| (|v#$Mutation_129197| $t35@10)) (|v#$Mutation_12329| $t46@1))))) (and (= $t34@1 ($Mutation_129279 (|l#$Mutation_129279| $t34@0) (|p#$Mutation_129279| $t34@0) ($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (|v#$Mutation_129279| $t34@0)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (|v#$Mutation_129279| $t34@0)) (|v#$Mutation_129197| $t35@11)))) (= $t33@1 ($Mutation_129239 (|l#$Mutation_129239| $t33@0) (|p#$Mutation_129239| $t33@0) ($1_DiemVMConfig_DiemVMConfig (|v#$Mutation_129279| $t34@1)))))) (and (and (= $t12@0 (|v#$Mutation_129239| $t33@1)) (= $t48 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t49 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t50  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) _$t0@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95525| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t48) 18446744073709551615)) (< $t49 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t48)))))))))) (and (=> (= (ControlFlow 0 148298) 148690) anon27_Then_correct) (=> (= (ControlFlow 0 148298) 148306) anon27_Else_correct))))))
(let ((anon26_Then_correct@@0  (=> $t32 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (= 5 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0@@0 $t23@@0) (= (ControlFlow 0 148718) 147612))) L5_correct@@0))))
(let ((anon25_Then_correct@@0  (=> (and inline$$Le$1$dst@1 (= $t32  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 147728) 148718) anon26_Then_correct@@0) (=> (= (ControlFlow 0 147728) 148298) anon26_Else_correct@@0)))))
(let ((anon25_Else_correct@@0  (=> (and (and (not inline$$Le$1$dst@1) (= $t31 $t31)) (and (= $t23@0@@0 $t31) (= (ControlFlow 0 147712) 147612))) L5_correct@@0)))
(let ((anon24_Then$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t31) (= $t31 7)) (and (= $t31 $t31) (= inline$$Le$1$dst@1 inline$$Le$1$dst@1))) (and (=> (= (ControlFlow 0 147696) 147728) anon25_Then_correct@@0) (=> (= (ControlFlow 0 147696) 147712) anon25_Else_correct@@0))))))
(let ((inline$$Le$1$anon0_correct  (=> (and (= inline$$Le$1$dst@1 (<= _$t3 _$t6)) (= (ControlFlow 0 147656) 147696)) anon24_Then$1_correct)))
(let ((anon24_Then_correct@@0  (=> (and inline$$Le$0$dst@1 (= (ControlFlow 0 147662) 147656)) inline$$Le$1$anon0_correct)))
(let ((anon24_Else_correct@@0  (=> (and (and (not inline$$Le$0$dst@1) (= $t28 $t28)) (and (= $t23@0@@0 $t28) (= (ControlFlow 0 147284) 147612))) L5_correct@@0)))
(let ((anon23_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t28) (= $t28 7)) (and (= $t28 $t28) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 147268) 147662) anon24_Then_correct@@0) (=> (= (ControlFlow 0 147268) 147284) anon24_Else_correct@@0))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= _$t7 _$t8)) (= (ControlFlow 0 147228) 147268)) anon23_Else$1_correct)))
(let ((anon23_Else_correct@@0  (=> (and (not $t25@@1) (= (ControlFlow 0 147234) 147228)) inline$$Le$0$anon0_correct)))
(let ((anon23_Then_correct@@0  (=> $t25@@1 (=> (and (and (or (or (or (and (not (= _$t0@@1 173345816)) (= 2 $t23@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t24@@0)) (= 5 $t23@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t24@@0)) 0)) (= 3 $t23@@0))) (and (not (= _$t0@@1 173345816)) (= 2 $t23@@0))) (= $t23@@0 $t23@@0)) (and (= $t23@0@@0 $t23@@0) (= (ControlFlow 0 148810) 147612))) L5_correct@@0))))
(let ((anon22_Else_correct@@0  (=> (not $t22) (=> (and (= $t24@@0 _$t0@@1) (= $t25@@1  (or (or (or (not (= _$t0@@1 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93778| $1_Roles_RoleId_$memory) $t24@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $t24@@0)) 0))) (not (= _$t0@@1 173345816))))) (and (=> (= (ControlFlow 0 147180) 148810) anon23_Then_correct@@0) (=> (= (ControlFlow 0 147180) 147234) anon23_Else_correct@@0))))))
(let ((anon22_Then_correct@@0  (=> $t22 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0@@0 $t23@@0) (= (ControlFlow 0 148836) 147612))) L5_correct@@0))))
(let ((anon0$1_correct@@1  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (|$IsValid'address'| _$t0@@1)) (and (|$IsValid'u64'| _$t1@@1) (|$IsValid'u64'| _$t2@@1))) (=> (and (and (and (and (and (|$IsValid'u64'| _$t3) (|$IsValid'u64'| _$t4)) (and (|$IsValid'u64'| _$t5) (|$IsValid'u64'| _$t6))) (and (and (|$IsValid'u64'| _$t7) (|$IsValid'u64'| _$t8)) (and (|$IsValid'u64'| _$t9) (|$IsValid'u64'| _$t10)))) (and (and (and (|$IsValid'u64'| _$t11) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@4)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@4))
 :qid |DiemVMConfigandybpl.12837:20|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@4))
))) (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |DiemVMConfigandybpl.12841:20|
 :skolemid |194|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93778| $1_Roles_RoleId_$memory) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95591| $1_DiemConfig_Configuration_$memory) $a_0@@6)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@6))
 :qid |DiemVMConfigandybpl.12845:20|
 :skolemid |195|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95591| $1_DiemConfig_Configuration_$memory) $a_0@@6))
)))) (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_95525| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@7)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@7))
 :qid |DiemVMConfigandybpl.12849:20|
 :skolemid |196|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_95525| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@8)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| $rsc@@8))
 :qid |DiemVMConfigandybpl.12853:20|
 :skolemid |197|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@8))
))) (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@9)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| $rsc@@9))
 :qid |DiemVMConfigandybpl.12857:20|
 :skolemid |198|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_96648| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@9))
)) (= $t18 (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_93402| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))))))) (and (and (and (and (= $t19 _$t0@@1) (= $t20@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95591| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t21 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= _$t0@@1 _$t0@@1))) (and (and (= _$t1@@1 _$t1@@1) (= _$t2@@1 _$t2@@1)) (and (= _$t3 _$t3) (= _$t4 _$t4)))) (and (and (and (= _$t5 _$t5) (= _$t6 _$t6)) (and (= _$t7 _$t7) (= _$t8 _$t8))) (and (and (= _$t9 _$t9) (= _$t10 _$t10)) (and (= _$t11 _$t11) (= $t22  (not (|Select__T@[Int]Bool_| (|domain#$Memory_91995| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 147108) 148836) anon22_Then_correct@@0) (=> (= (ControlFlow 0 147108) 147180) anon22_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_63181_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_63181| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63181| stream@@2) v@@37) 0)
 :qid |DiemVMConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemVMConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 146742) 147108)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (and (and (and (and (= (seq.len (|p#$Mutation_129197| $t13)) 0) (= (seq.len (|p#$Mutation_129239| $t33)) 0)) (and (= (seq.len (|p#$Mutation_129279| $t34)) 0) (= (seq.len (|p#$Mutation_129197| $t35)) 0))) (and (and (= (seq.len (|p#$Mutation_12329| $t36)) 0) (= (seq.len (|p#$Mutation_12329| $t37)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t38)) 0) (= (seq.len (|p#$Mutation_12329| $t39)) 0)))) (and (and (and (= (seq.len (|p#$Mutation_12329| $t40)) 0) (= (seq.len (|p#$Mutation_12329| $t41)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t42)) 0) (= (seq.len (|p#$Mutation_12329| $t43)) 0))) (and (and (= (seq.len (|p#$Mutation_12329| $t44)) 0) (= (seq.len (|p#$Mutation_12329| $t45)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t46)) 0) (= (ControlFlow 0 146752) 146742))))) inline$$InitEventStore$0$anon0_correct@@1)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 197925) 146752) anon0_correct@@1)))
PreconditionGeneratedEntry_correct@@0)))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 200417) true)
))
(check-sat)
(pop 1)
; Valid
