(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :strings-seq-update true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_98825 0)) ((($Memory_98825 (|domain#$Memory_98825| |T@[Int]Bool|) (|contents#$Memory_98825| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_160964 0)) ((($Memory_160964 (|domain#$Memory_160964| |T@[Int]Bool|) (|contents#$Memory_160964| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_157866 0)) ((($Memory_157866 (|domain#$Memory_157866| |T@[Int]Bool|) (|contents#$Memory_157866| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_155871 0)) ((($Memory_155871 (|domain#$Memory_155871| |T@[Int]Bool|) (|contents#$Memory_155871| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_156151 0)) ((($Memory_156151 (|domain#$Memory_156151| |T@[Int]Bool|) (|contents#$Memory_156151| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_155838 0)) ((($Memory_155838 (|domain#$Memory_155838| |T@[Int]Bool|) (|contents#$Memory_155838| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_155623 0)) ((($Memory_155623 (|domain#$Memory_155623| |T@[Int]Bool|) (|contents#$Memory_155623| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_153133 0)) ((($Memory_153133 (|domain#$Memory_153133| |T@[Int]Bool|) (|contents#$Memory_153133| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_153069 0)) ((($Memory_153069 (|domain#$Memory_153069| |T@[Int]Bool|) (|contents#$Memory_153069| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_151691 0)) ((($Memory_151691 (|domain#$Memory_151691| |T@[Int]Bool|) (|contents#$Memory_151691| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_148570 0)) ((($Memory_148570 (|domain#$Memory_148570| |T@[Int]Bool|) (|contents#$Memory_148570| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_148351 0)) ((($Memory_148351 (|domain#$Memory_148351| |T@[Int]Bool|) (|contents#$Memory_148351| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_157655 0)) ((($Memory_157655 (|domain#$Memory_157655| |T@[Int]Bool|) (|contents#$Memory_157655| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_141306 0)) ((($Memory_141306 (|domain#$Memory_141306| |T@[Int]Bool|) (|contents#$Memory_141306| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_141219 0)) ((($Memory_141219 (|domain#$Memory_141219| |T@[Int]Bool|) (|contents#$Memory_141219| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_138016 0)) ((($Memory_138016 (|domain#$Memory_138016| |T@[Int]Bool|) (|contents#$Memory_138016| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_137929 0)) ((($Memory_137929 (|domain#$Memory_137929| |T@[Int]Bool|) (|contents#$Memory_137929| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_141570 0)) ((($Memory_141570 (|domain#$Memory_141570| |T@[Int]Bool|) (|contents#$Memory_141570| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_150403 0)) ((($Memory_150403 (|domain#$Memory_150403| |T@[Int]Bool|) (|contents#$Memory_150403| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_141896 0)) ((($Memory_141896 (|domain#$Memory_141896| |T@[Int]Bool|) (|contents#$Memory_141896| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_141479 0)) ((($Memory_141479 (|domain#$Memory_141479| |T@[Int]Bool|) (|contents#$Memory_141479| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_152003 0)) ((($Memory_152003 (|domain#$Memory_152003| |T@[Int]Bool|) (|contents#$Memory_152003| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_141797 0)) ((($Memory_141797 (|domain#$Memory_141797| |T@[Int]Bool|) (|contents#$Memory_141797| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_137631 0)) ((($Memory_137631 (|domain#$Memory_137631| |T@[Int]Bool|) (|contents#$Memory_137631| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_137567 0)) ((($Memory_137567 (|domain#$Memory_137567| |T@[Int]Bool|) (|contents#$Memory_137567| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_111487 0)) ((($Memory_111487 (|domain#$Memory_111487| |T@[Int]Bool|) (|contents#$Memory_111487| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_111400 0)) ((($Memory_111400 (|domain#$Memory_111400| |T@[Int]Bool|) (|contents#$Memory_111400| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_111313 0)) ((($Memory_111313 (|domain#$Memory_111313| |T@[Int]Bool|) (|contents#$Memory_111313| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_111226 0)) ((($Memory_111226 (|domain#$Memory_111226| |T@[Int]Bool|) (|contents#$Memory_111226| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_111139 0)) ((($Memory_111139 (|domain#$Memory_111139| |T@[Int]Bool|) (|contents#$Memory_111139| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_107059 0)) ((($Memory_107059 (|domain#$Memory_107059| |T@[Int]Bool|) (|contents#$Memory_107059| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_110254 0)) ((($Memory_110254 (|domain#$Memory_110254| |T@[Int]Bool|) (|contents#$Memory_110254| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_110366 0)) ((($Memory_110366 (|domain#$Memory_110366| |T@[Int]Bool|) (|contents#$Memory_110366| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_110173 0)) ((($Memory_110173 (|domain#$Memory_110173| |T@[Int]Bool|) (|contents#$Memory_110173| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_110092 0)) ((($Memory_110092 (|domain#$Memory_110092| |T@[Int]Bool|) (|contents#$Memory_110092| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_110011 0)) ((($Memory_110011 (|domain#$Memory_110011| |T@[Int]Bool|) (|contents#$Memory_110011| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_109930 0)) ((($Memory_109930 (|domain#$Memory_109930| |T@[Int]Bool|) (|contents#$Memory_109930| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_109897 0)) ((($Memory_109897 (|domain#$Memory_109897| |T@[Int]Bool|) (|contents#$Memory_109897| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_156792 0)) ((($Memory_156792 (|domain#$Memory_156792| |T@[Int]Bool|) (|contents#$Memory_156792| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_106986 0)) ((($Memory_106986 (|domain#$Memory_106986| |T@[Int]Bool|) (|contents#$Memory_106986| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_109358 0)) ((($Memory_109358 (|domain#$Memory_109358| |T@[Int]Bool|) (|contents#$Memory_109358| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_108472 0)) ((($Memory_108472 (|domain#$Memory_108472| |T@[Int]Bool|) (|contents#$Memory_108472| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_107435 0)) ((($Memory_107435 (|domain#$Memory_107435| |T@[Int]Bool|) (|contents#$Memory_107435| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_105577 0)) ((($Memory_105577 (|domain#$Memory_105577| |T@[Int]Bool|) (|contents#$Memory_105577| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_75623 0)) (((Multiset_75623 (|v#Multiset_75623| |T@[$EventRep]Int|) (|l#Multiset_75623| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_75623| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_75623|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_158693 0)) ((($Mutation_158693 (|l#$Mutation_158693| T@$Location) (|p#$Mutation_158693| (Seq Int)) (|v#$Mutation_158693| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_158649 0)) ((($Mutation_158649 (|l#$Mutation_158649| T@$Location) (|p#$Mutation_158649| (Seq Int)) (|v#$Mutation_158649| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_47102 0)) ((($Mutation_47102 (|l#$Mutation_47102| T@$Location) (|p#$Mutation_47102| (Seq Int)) (|v#$Mutation_47102| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_147085 0)) ((($Mutation_147085 (|l#$Mutation_147085| T@$Location) (|p#$Mutation_147085| (Seq Int)) (|v#$Mutation_147085| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_136437 0)) ((($Mutation_136437 (|l#$Mutation_136437| T@$Location) (|p#$Mutation_136437| (Seq Int)) (|v#$Mutation_136437| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_112049 0)) ((($Mutation_112049 (|l#$Mutation_112049| T@$Location) (|p#$Mutation_112049| (Seq Int)) (|v#$Mutation_112049| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_106046 0)) ((($Mutation_106046 (|l#$Mutation_106046| T@$Location) (|p#$Mutation_106046| (Seq Int)) (|v#$Mutation_106046| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_99453 0)) ((($Mutation_99453 (|l#$Mutation_99453| T@$Location) (|p#$Mutation_99453| (Seq Int)) (|v#$Mutation_99453| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_93686 0)) ((($Mutation_93686 (|l#$Mutation_93686| T@$Location) (|p#$Mutation_93686| (Seq Int)) (|v#$Mutation_93686| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_92940 0)) ((($Mutation_92940 (|l#$Mutation_92940| T@$Location) (|p#$Mutation_92940| (Seq Int)) (|v#$Mutation_92940| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_91500 0)) ((($Mutation_91500 (|l#$Mutation_91500| T@$Location) (|p#$Mutation_91500| (Seq Int)) (|v#$Mutation_91500| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_90754 0)) ((($Mutation_90754 (|l#$Mutation_90754| T@$Location) (|p#$Mutation_90754| (Seq Int)) (|v#$Mutation_90754| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_89314 0)) ((($Mutation_89314 (|l#$Mutation_89314| T@$Location) (|p#$Mutation_89314| (Seq Int)) (|v#$Mutation_89314| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_88568 0)) ((($Mutation_88568 (|l#$Mutation_88568| T@$Location) (|p#$Mutation_88568| (Seq Int)) (|v#$Mutation_88568| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_87128 0)) ((($Mutation_87128 (|l#$Mutation_87128| T@$Location) (|p#$Mutation_87128| (Seq Int)) (|v#$Mutation_87128| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_86382 0)) ((($Mutation_86382 (|l#$Mutation_86382| T@$Location) (|p#$Mutation_86382| (Seq Int)) (|v#$Mutation_86382| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_84942 0)) ((($Mutation_84942 (|l#$Mutation_84942| T@$Location) (|p#$Mutation_84942| (Seq Int)) (|v#$Mutation_84942| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_84196 0)) ((($Mutation_84196 (|l#$Mutation_84196| T@$Location) (|p#$Mutation_84196| (Seq Int)) (|v#$Mutation_84196| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_82756 0)) ((($Mutation_82756 (|l#$Mutation_82756| T@$Location) (|p#$Mutation_82756| (Seq Int)) (|v#$Mutation_82756| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_82010 0)) ((($Mutation_82010 (|l#$Mutation_82010| T@$Location) (|p#$Mutation_82010| (Seq Int)) (|v#$Mutation_82010| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_80570 0)) ((($Mutation_80570 (|l#$Mutation_80570| T@$Location) (|p#$Mutation_80570| (Seq Int)) (|v#$Mutation_80570| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_79824 0)) ((($Mutation_79824 (|l#$Mutation_79824| T@$Location) (|p#$Mutation_79824| (Seq Int)) (|v#$Mutation_79824| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_78346 0)) ((($Mutation_78346 (|l#$Mutation_78346| T@$Location) (|p#$Mutation_78346| (Seq Int)) (|v#$Mutation_78346| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_77600 0)) ((($Mutation_77600 (|l#$Mutation_77600| T@$Location) (|p#$Mutation_77600| (Seq Int)) (|v#$Mutation_77600| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_75623_| (|T@[$1_Event_EventHandle]Multiset_75623| T@$1_Event_EventHandle) T@Multiset_75623)
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
(declare-fun ReverseVec_68465 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_67480 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_67677 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_67874 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_68662 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_68268 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_68071 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_67283 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_75623| |T@[$1_Event_EventHandle]Multiset_75623|) |T@[$1_Event_EventHandle]Multiset_75623|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemSystemseqArraybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemSystemseqArraybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemSystemseqArraybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemSystemseqArraybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemSystemseqArraybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemSystemseqArraybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemSystemseqArraybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemSystemseqArraybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemSystemseqArraybpl.590:13|
 :skolemid |15|
))))
 :qid |DiemSystemseqArraybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemSystemseqArraybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemSystemseqArraybpl.603:17|
 :skolemid |18|
)))))
 :qid |DiemSystemseqArraybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemSystemseqArraybpl.770:13|
 :skolemid |20|
))))
 :qid |DiemSystemseqArraybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemSystemseqArraybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemSystemseqArraybpl.783:17|
 :skolemid |23|
)))))
 :qid |DiemSystemseqArraybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemSystemseqArraybpl.950:13|
 :skolemid |25|
))))
 :qid |DiemSystemseqArraybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemSystemseqArraybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemSystemseqArraybpl.963:17|
 :skolemid |28|
)))))
 :qid |DiemSystemseqArraybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemSystemseqArraybpl.1130:13|
 :skolemid |30|
))))
 :qid |DiemSystemseqArraybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemSystemseqArraybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemSystemseqArraybpl.1143:17|
 :skolemid |33|
)))))
 :qid |DiemSystemseqArraybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |DiemSystemseqArraybpl.1310:13|
 :skolemid |35|
))))
 :qid |DiemSystemseqArraybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemSystemseqArraybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemSystemseqArraybpl.1323:17|
 :skolemid |38|
)))))
 :qid |DiemSystemseqArraybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |DiemSystemseqArraybpl.1490:13|
 :skolemid |40|
))))
 :qid |DiemSystemseqArraybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemSystemseqArraybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemSystemseqArraybpl.1503:17|
 :skolemid |43|
)))))
 :qid |DiemSystemseqArraybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |DiemSystemseqArraybpl.1670:13|
 :skolemid |45|
))))
 :qid |DiemSystemseqArraybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemSystemseqArraybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemSystemseqArraybpl.1683:17|
 :skolemid |48|
)))))
 :qid |DiemSystemseqArraybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |DiemSystemseqArraybpl.1850:13|
 :skolemid |50|
))))
 :qid |DiemSystemseqArraybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemSystemseqArraybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemSystemseqArraybpl.1863:17|
 :skolemid |53|
)))))
 :qid |DiemSystemseqArraybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |DiemSystemseqArraybpl.2030:13|
 :skolemid |55|
))))
 :qid |DiemSystemseqArraybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemSystemseqArraybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemSystemseqArraybpl.2043:17|
 :skolemid |58|
)))))
 :qid |DiemSystemseqArraybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u64'| (seq.nth v@@22 i@@27)))
 :qid |DiemSystemseqArraybpl.2210:13|
 :skolemid |60|
))))
 :qid |DiemSystemseqArraybpl.2208:29|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u64''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u64'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemSystemseqArraybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemSystemseqArraybpl.2223:17|
 :skolemid |63|
)))))
 :qid |DiemSystemseqArraybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u64'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |DiemSystemseqArraybpl.2390:13|
 :skolemid |65|
))))
 :qid |DiemSystemseqArraybpl.2388:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DiemSystemseqArraybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DiemSystemseqArraybpl.2403:17|
 :skolemid |68|
)))))
 :qid |DiemSystemseqArraybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemSystemseqArraybpl.2576:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemSystemseqArraybpl.2592:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemSystemseqArraybpl.2639:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemSystemseqArraybpl.2642:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_75623| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream) v@@26) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemSystemseqArraybpl.2759:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemSystemseqArraybpl.2765:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemSystemseqArraybpl.2815:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemSystemseqArraybpl.2821:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemSystemseqArraybpl.2871:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemSystemseqArraybpl.2877:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemSystemseqArraybpl.2927:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemSystemseqArraybpl.2933:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemSystemseqArraybpl.2983:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemSystemseqArraybpl.2989:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemSystemseqArraybpl.3039:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemSystemseqArraybpl.3045:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemSystemseqArraybpl.3095:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemSystemseqArraybpl.3101:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemSystemseqArraybpl.3151:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemSystemseqArraybpl.3157:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemSystemseqArraybpl.3207:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemSystemseqArraybpl.3213:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemSystemseqArraybpl.3263:60|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |DiemSystemseqArraybpl.3269:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemSystemseqArraybpl.3319:66|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |DiemSystemseqArraybpl.3325:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemSystemseqArraybpl.3375:60|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |DiemSystemseqArraybpl.3381:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemSystemseqArraybpl.3431:63|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |DiemSystemseqArraybpl.3437:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemSystemseqArraybpl.3487:79|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |DiemSystemseqArraybpl.3493:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemSystemseqArraybpl.3543:82|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |DiemSystemseqArraybpl.3549:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemSystemseqArraybpl.3599:88|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |DiemSystemseqArraybpl.3605:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemSystemseqArraybpl.3655:72|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |DiemSystemseqArraybpl.3661:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemSystemseqArraybpl.3740:61|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemSystemseqArraybpl.4285:36|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemSystemseqArraybpl.4510:71|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@2) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@2)))
 :qid |DiemSystemseqArraybpl.4619:42|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |DiemSystemseqArraybpl.4632:46|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |DiemSystemseqArraybpl.4645:64|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |DiemSystemseqArraybpl.4658:75|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |DiemSystemseqArraybpl.4671:72|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |DiemSystemseqArraybpl.4705:55|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |DiemSystemseqArraybpl.4727:46|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |DiemSystemseqArraybpl.4745:49|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |DiemSystemseqArraybpl.4825:71|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |DiemSystemseqArraybpl.4839:91|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |DiemSystemseqArraybpl.4853:113|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemSystemseqArraybpl.4867:75|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemSystemseqArraybpl.4881:73|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |DiemSystemseqArraybpl.4901:48|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |DiemSystemseqArraybpl.4917:57|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |DiemSystemseqArraybpl.4931:83|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |DiemSystemseqArraybpl.4945:103|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |DiemSystemseqArraybpl.4959:125|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |DiemSystemseqArraybpl.4973:87|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |DiemSystemseqArraybpl.4987:85|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |DiemSystemseqArraybpl.5001:48|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |DiemSystemseqArraybpl.5038:45|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |DiemSystemseqArraybpl.5052:51|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |DiemSystemseqArraybpl.5075:48|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |DiemSystemseqArraybpl.9658:49|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |DiemSystemseqArraybpl.9671:65|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |DiemSystemseqArraybpl.10175:45|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |DiemSystemseqArraybpl.10188:45|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30) true)
 :qid |DiemSystemseqArraybpl.10201:55|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31) true)
 :qid |DiemSystemseqArraybpl.10215:55|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@32))))
 :qid |DiemSystemseqArraybpl.10235:38|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@33))))
 :qid |DiemSystemseqArraybpl.10256:44|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))))
 :qid |DiemSystemseqArraybpl.10307:53|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))))
 :qid |DiemSystemseqArraybpl.10369:53|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36) true)
 :qid |DiemSystemseqArraybpl.10395:55|
 :skolemid |253|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37) true)
 :qid |DiemSystemseqArraybpl.10409:55|
 :skolemid |254|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@38)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@38))))
 :qid |DiemSystemseqArraybpl.10426:38|
 :skolemid |255|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@39)))
 :qid |DiemSystemseqArraybpl.10440:48|
 :skolemid |256|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@40)))
 :qid |DiemSystemseqArraybpl.10454:48|
 :skolemid |257|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@41)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@41))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@41))))
 :qid |DiemSystemseqArraybpl.10474:41|
 :skolemid |258|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@42)))
 :qid |DiemSystemseqArraybpl.10489:53|
 :skolemid |259|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@43)))
 :qid |DiemSystemseqArraybpl.10503:53|
 :skolemid |260|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44))))
 :qid |DiemSystemseqArraybpl.10520:60|
 :skolemid |261|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45))))
 :qid |DiemSystemseqArraybpl.10537:60|
 :skolemid |262|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46))))
 :qid |DiemSystemseqArraybpl.10554:57|
 :skolemid |263|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47) true)
 :qid |DiemSystemseqArraybpl.12755:68|
 :skolemid |264|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))))
 :qid |DiemSystemseqArraybpl.12777:66|
 :skolemid |265|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))))
 :qid |DiemSystemseqArraybpl.12803:66|
 :skolemid |266|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@50) true)
 :qid |DiemSystemseqArraybpl.13136:31|
 :skolemid |267|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@51) true)
 :qid |DiemSystemseqArraybpl.13480:31|
 :skolemid |268|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@51))
)))
(assert (forall ((s@@52 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@52)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@52)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@52))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@52))))
 :qid |DiemSystemseqArraybpl.13499:35|
 :skolemid |269|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@53) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@53)))
 :qid |DiemSystemseqArraybpl.13920:45|
 :skolemid |270|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@54)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@54))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@54))))
 :qid |DiemSystemseqArraybpl.13939:50|
 :skolemid |271|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@55) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@55)))
 :qid |DiemSystemseqArraybpl.13954:52|
 :skolemid |272|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@55))
)))
(assert (forall ((s@@56 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@56)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@56)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@56))))
 :qid |DiemSystemseqArraybpl.13981:65|
 :skolemid |273|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@57)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@57)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@57))))
 :qid |DiemSystemseqArraybpl.14366:60|
 :skolemid |274|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@58)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@58)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@58))))
 :qid |DiemSystemseqArraybpl.14383:66|
 :skolemid |275|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@59)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@59)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@59))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@59))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@59))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@59))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@59))))
 :qid |DiemSystemseqArraybpl.14412:50|
 :skolemid |276|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@60) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@60)))
 :qid |DiemSystemseqArraybpl.14431:45|
 :skolemid |277|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@61)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@61)) true))
 :qid |DiemSystemseqArraybpl.14750:87|
 :skolemid |278|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@62) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@62)))
 :qid |DiemSystemseqArraybpl.14962:47|
 :skolemid |279|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@63)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@63)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@63))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@63))))
 :qid |DiemSystemseqArraybpl.14982:58|
 :skolemid |280|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@64) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@64)))
 :qid |DiemSystemseqArraybpl.14997:39|
 :skolemid |281|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@65)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@65)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@65))))
 :qid |DiemSystemseqArraybpl.15019:58|
 :skolemid |282|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@66)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@66)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@66))))
 :qid |DiemSystemseqArraybpl.15036:58|
 :skolemid |283|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@67) true)
 :qid |DiemSystemseqArraybpl.15051:51|
 :skolemid |284|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@67))
)))
(assert (forall ((s@@68 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@68)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@68))))
 :qid |DiemSystemseqArraybpl.15068:60|
 :skolemid |285|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@69)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@69)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@69))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@69))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@69))))
 :qid |DiemSystemseqArraybpl.15366:47|
 :skolemid |286|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@70)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@70)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@70))))
 :qid |DiemSystemseqArraybpl.15388:63|
 :skolemid |287|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@71) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@71)))
 :qid |DiemSystemseqArraybpl.15403:57|
 :skolemid |288|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@72)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@72)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@72))))
 :qid |DiemSystemseqArraybpl.15419:54|
 :skolemid |289|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@73) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@73)))
 :qid |DiemSystemseqArraybpl.15433:55|
 :skolemid |290|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@74) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@74)))
 :qid |DiemSystemseqArraybpl.15447:57|
 :skolemid |291|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@75)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@75)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@75))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@75))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@75))))
 :qid |DiemSystemseqArraybpl.15469:56|
 :skolemid |292|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@76)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@76)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@76))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@76))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@76))))
 :qid |DiemSystemseqArraybpl.15494:52|
 :skolemid |293|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@77) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@77)))
 :qid |DiemSystemseqArraybpl.15510:54|
 :skolemid |294|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@78)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@78))))
 :qid |DiemSystemseqArraybpl.16381:47|
 :skolemid |295|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@79)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@79))))
 :qid |DiemSystemseqArraybpl.16405:47|
 :skolemid |296|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@80)))
 :qid |DiemSystemseqArraybpl.16646:49|
 :skolemid |297|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@81)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@81))))
 :qid |DiemSystemseqArraybpl.16689:49|
 :skolemid |298|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@82)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@82))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@82))))
 :qid |DiemSystemseqArraybpl.16718:48|
 :skolemid |299|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@83)))
 :qid |DiemSystemseqArraybpl.17013:47|
 :skolemid |300|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_68465 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68465 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_67480 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_67480 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_67677 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_67677 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_67874 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_67874 v@@31))
)))
(assert (forall ((v@@32 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_68662 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68662 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_68268 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68268 v@@33))
)))
(assert (forall ((v@@34 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_68071 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68071 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_67283 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_67283 v@@35))
)))
(assert (forall ((|l#0| Bool) (i@@42 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@42) |l#0|)
 :qid |DiemSystemseqArraybpl.245:54|
 :skolemid |355|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@42))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_75623|) (|l#1| |T@[$1_Event_EventHandle]Multiset_75623|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| |l#1| handle@@0))))
(Multiset_75623 (|lambda#3| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| |l#0@@0| handle@@0)) (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemSystemseqArraybpl.2728:13|
 :skolemid |356|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@36) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@36) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@36)))
 :qid |DiemSystemseqArraybpl.124:29|
 :skolemid |357|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@36))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_106046)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_106046)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_105577)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_106986)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_107059)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_105577)
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
(declare-fun $t14 () T@$Mutation_106046)
(declare-fun $t14@0 () T@$Mutation_106046)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_106046)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 239370) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12329 (|l#$Mutation_106046| $t14@1) (seq.++ (|p#$Mutation_106046| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_106046| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2)) (= $t14@2 ($Mutation_106046 (|l#$Mutation_106046| $t14@1) (|p#$Mutation_106046| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_105577 (|Store__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_106046| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_106046| $t14@2)) (|v#$Mutation_106046| $t14@2)))))) (and (=> (= (ControlFlow 0 175476) (- 0 240000)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 175476) (- 0 240033)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 175476) (- 0 240043)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 175476) (- 0 240057)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 175476) (- 0 240081)) (= $t25 _$t2)))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 175534) 175476)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 175318) 175476)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 175314) (- 0 240125)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 175314) (- 0 240162)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 175530) 175314))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 175514) 175534) anon25_Then_correct) (=> (= (ControlFlow 0 175514) 175530) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 175198) 175314))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 175182) 175318) anon26_Then_correct) (=> (= (ControlFlow 0 175182) 175198) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 175146) 175182)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 175152) 175146)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_106046| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_106046| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 175100) 175514) anon24_Then_correct) (=> (= (ControlFlow 0 175100) 175152) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 175548) 175314))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 175600) 175548) anon23_Then_correct) (=> (= (ControlFlow 0 175600) 175100) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 175598) 175600)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_106046 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 175054) 175548) anon23_Then_correct) (=> (= (ControlFlow 0 175054) 175100) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 175032) (- 0 239668)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 175032) 175598) anon22_Then_correct) (=> (= (ControlFlow 0 175032) 175054) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 175630) 175314))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 175012) 175630) anon21_Then_correct) (=> (= (ControlFlow 0 175012) 175032) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 175656) 175314))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemSystemseqArraybpl.3928:20|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 174990) 175656) anon20_Then_correct) (=> (= (ControlFlow 0 174990) 175012) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_75623| stream@@0) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@0) v@@37) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 174878) 174990)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_106046| $t3)) 0) (= (seq.len (|p#$Mutation_106046| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 174888) 174878))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 239370) 174888) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_107435)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_107435)
(declare-fun _$t0@@0 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_107435)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun $t11@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(declare-fun $t9@@0 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 240401) (let ((anon12_Else_correct  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 176181) (- 0 240828)) (let (($range_0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory@1) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@0)))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory@1) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@0)))) i1)))) 3))))
 :qid |DiemSystemseqArraybpl.4454:146|
 :skolemid |115|
)))) (=> (let (($range_0@@0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@1))))))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((i1@@0 $i_1@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory@1) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@2)))) i1@@0))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory@1) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@2)))) i1@@0)))) 3))))
 :qid |DiemSystemseqArraybpl.4454:146|
 :skolemid |115|
))) (and (=> (= (ControlFlow 0 176181) (- 0 240874)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) _$t0@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) _$t0@@0)) (and (=> (= (ControlFlow 0 176181) (- 0 240885)) (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory@1) _$t0@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory@1) _$t0@@0) (=> (= (ControlFlow 0 176181) (- 0 240894)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory@1) _$t0@@0)) _$t1@@0)))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 176013) (- 0 240798)) (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) _$t0@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) _$t0@@0) (=> (= (ControlFlow 0 176013) (- 0 240804)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) _$t0@@0) (= 6 $t10@0)))))))
(let ((anon12_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t10@0 $abort_code@1@@0) (= (ControlFlow 0 176195) 176013))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 176245) 176195) anon12_Then_correct) (=> (= (ControlFlow 0 176245) 176181) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) _$t0@@0) (= (ControlFlow 0 176243) 176245)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) _$t0@@0)) (=> (and (and (= $1_Roles_RoleId_$memory@0 ($Memory_107435 (|Store__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) _$t0@@0 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) _$t0@@0 $t11@0@@0))) (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 176090) 176195) anon12_Then_correct) (=> (= (ControlFlow 0 176090) 176181) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0@@0 ($1_Roles_RoleId _$t1@@0))) (and (=> (= (ControlFlow 0 176072) (- 0 240645)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@0)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@0) (=> (let (($range_0@@1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@3))))))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i1@@1 $i_1@@1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@4)))) i1@@1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@4)))) i1@@1)))) 3))))
 :qid |DiemSystemseqArraybpl.4433:151|
 :skolemid |114|
))) (and (=> (= (ControlFlow 0 176072) 176243) anon11_Then_correct) (=> (= (ControlFlow 0 176072) 176090) anon11_Else_correct))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9@@0 $t9@@0)) (and (= $t10@0 $t9@@0) (= (ControlFlow 0 175981) 176013))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9@@0) (= $t9@@0 6)) (and (= $t9@@0 $t9@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 175965) 176072) anon10_Then_correct) (=> (= (ControlFlow 0 175965) 175981) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 175929) 175965)) anon0$2_correct)))
(let ((anon0$1_correct@@0  (=> (|$IsValid'address'| _$t0@@0) (=> (and (and (|$IsValid'u64'| _$t1@@0) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |DiemSystemseqArraybpl.4329:20|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $a_0@@0))
))) (and (= $t4 _$t0@@0) (=> (= _$t1@@0 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1@@0 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@0)) (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t5) (= $t5 _$t0@@0)) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t5)) (= (ControlFlow 0 175935) 175929)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_75623| stream@@1) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@1) v@@38) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 175767) 175935)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 240401) 175767) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t56 () T@$1_DiemConfig_Configuration)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_110366)
(declare-fun $t57 () Int)
(declare-fun $t58 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| () T@$Memory_106986)
(declare-fun $t3@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t59 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t60 () T@$1_Event_EventHandle)
(declare-fun $t54 () T@$1_Event_EventHandle)
(declare-fun $t61 () Bool)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_110254)
(declare-fun $t53 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_75623_| (|T@[$1_Event_EventHandle]Multiset_75623| T@$1_Event_EventHandle T@Multiset_75623) |T@[$1_Event_EventHandle]Multiset_75623|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_75623|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_75623)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|Store__T@[$1_Event_EventHandle]Multiset_75623_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_75623|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_75623)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|Store__T@[$1_Event_EventHandle]Multiset_75623_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_75623_| ?x0 ?y1))) :weight 0)))
(declare-fun $t62 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t63 () T@$1_DiemConfig_Configuration)
(declare-fun $t64 () Int)
(declare-fun $t65 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_109358)
(declare-fun _$t1@@1 () Int)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t15 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun $t16 () T@$1_DiemConfig_Configuration)
(declare-fun $t17 () Int)
(declare-fun $t21 () Int)
(declare-fun $t18 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t19 () T@$1_DiemConfig_Configuration)
(declare-fun $t20@@0 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_110366)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_110366)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_110366)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_106986)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_106986)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t55 () Bool)
(declare-fun $t23@0 () Int)
(declare-fun $t23@@0 () Int)
(declare-fun $t51 () T@$1_DiemConfig_Configuration)
(declare-fun $t52 () Int)
(declare-fun $t44@1 () T@$Mutation_112049)
(declare-fun $t44@0 () T@$Mutation_112049)
(declare-fun |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_84196)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| () |T@[Int]Bool|)
(declare-fun $t45@0 () T@$Mutation_84196)
(declare-fun $t49@0 () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t47 () Bool)
(declare-fun $t46 () Int)
(declare-fun $t42 () T@$1_ValidatorConfig_Config)
(declare-fun $t43 () Bool)
(declare-fun $t3@@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t41 () Int)
(declare-fun $t38 () Bool)
(declare-fun $t35 () Bool)
(declare-fun $t37@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$Lt$0$dst@1@@0 () Bool)
(declare-fun $t34 () Int)
(declare-fun $t29 () Int)
(declare-fun $t30 () Bool)
(declare-fun $t26 () Bool)
(declare-fun $t28 () Int)
(declare-fun $t25@@0 () Bool)
(declare-fun $t24@@0 () Int)
(declare-fun $t22 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_108472)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|T@[Int]$1_DiemSystem_CapabilityHolder| Int) T@$1_DiemSystem_CapabilityHolder)
(declare-fun $t14@@0 () T@$Mutation_84196)
(declare-fun $t44 () T@$Mutation_112049)
(declare-fun $t45 () T@$Mutation_84196)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_add_validator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 240914) (let ((anon31_correct  (=> (and (and (= $t56 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory@2) 173345816)) (= $t57 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t58 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t56))) (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816)) $t3@0))) (=> (and (and (and (= $t59 $t58) (= $t60 $t54)) (and (= $t61  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t57 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t53))))) (= $es@0 (ite $t61 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) $t60)))
(let ((stream_new (let ((len (|l#Multiset_75623| stream@@2)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t59))))
(Multiset_75623 (|Store__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t59) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) $t60 stream_new)))) $es)))) (and (and (= $t62 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@5))))) (= $t63 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory@2) 173345816))) (and (= $t64 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t65 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t63)))))) (and (=> (= (ControlFlow 0 178851) (- 0 243570)) (not (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@6 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@6))))) 256))) (=> (not (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@7 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@7))))) 256)) (and (=> (= (ControlFlow 0 178851) (- 0 243582)) (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0)))))) (=> (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0))))) (and (=> (= (ControlFlow 0 178851) (- 0 243593)) (not (let (($range_0@@2 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@8 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@8))))))
(exists (($i_1@@2 Int) ) (!  (and (and (>= $i_1@@2 0) (< $i_1@@2 (seq.len $range_0@@2))) (let ((v@@39 (seq.nth $range_0@@2 $i_1@@2)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@39) _$t1@@1)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
))))) (=> (not (let (($range_0@@3 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@9 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@9))))))
(exists (($i_1@@3 Int) ) (!  (and (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@3))) (let ((v@@40 (seq.nth $range_0@@3 $i_1@@3)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@40) _$t1@@1)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
)))) (and (=> (= (ControlFlow 0 178851) (- 0 243602)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 178851) (- 0 243612)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t15)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t15))) (and (=> (= (ControlFlow 0 178851) (- 0 243624)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t15)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t15)) 0))) (and (=> (= (ControlFlow 0 178851) (- 0 243642)) (not (not (= _$t0@@1 173345816)))) (=> (not (not (= _$t0@@1 173345816))) (and (=> (= (ControlFlow 0 178851) (- 0 243656)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16)))) (and (=> (= (ControlFlow 0 178851) (- 0 243698)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t21)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t21))) (and (=> (= (ControlFlow 0 178851) (- 0 243710)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t21)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t21)) 0))) (and (=> (= (ControlFlow 0 178851) (- 0 243728)) (not (not (= _$t0@@1 173345816)))) (=> (not (not (= _$t0@@1 173345816))) (and (=> (= (ControlFlow 0 178851) (- 0 243742)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) _$t1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) _$t1@@1)) 3))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) _$t1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) _$t1@@1)) 3)) (and (=> (= (ControlFlow 0 178851) (- 0 243750)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0))) (and (=> (= (ControlFlow 0 178851) (- 0 243758)) (let (($range_0@@4 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@10 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@10))))))
(exists (($i_1@@4 Int) ) (!  (and (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@4))) (let ((v@@41 (seq.nth $range_0@@4 $i_1@@4)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@41) _$t1@@1)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
)))) (=> (let (($range_0@@5 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@11))))))
(exists (($i_1@@5 Int) ) (!  (and (and (>= $i_1@@5 0) (< $i_1@@5 (seq.len $range_0@@5))) (let ((v@@42 (seq.nth $range_0@@5 $i_1@@5)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@42) _$t1@@1)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
))) (and (=> (= (ControlFlow 0 178851) (- 0 243765)) (and (and (= (seq.len $t62) (+ (seq.len $t18) 1)) (= (seq.nth $t62 (- (seq.len $t62) 1)) ($1_DiemSystem_ValidatorInfo _$t1@@1 1 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (seq.extract $t62 (|lb#$Range| ($Range 0 (- (seq.len $t62) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t62) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t62) 1))))) (seq.extract $t18 (|lb#$Range| ($Range 0 (seq.len $t18))) (- (|ub#$Range| ($Range 0 (seq.len $t18))) (|lb#$Range| ($Range 0 (seq.len $t18)))))))) (=> (and (and (= (seq.len $t62) (+ (seq.len $t18) 1)) (= (seq.nth $t62 (- (seq.len $t62) 1)) ($1_DiemSystem_ValidatorInfo _$t1@@1 1 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (seq.extract $t62 (|lb#$Range| ($Range 0 (- (seq.len $t62) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t62) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t62) 1))))) (seq.extract $t18 (|lb#$Range| ($Range 0 (seq.len $t18))) (- (|ub#$Range| ($Range 0 (seq.len $t18))) (|lb#$Range| ($Range 0 (seq.len $t18))))))) (and (=> (= (ControlFlow 0 178851) (- 0 243788)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t64 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t19)))) (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t20@@0)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_75623| stream@@3)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65))))
(Multiset_75623 (|Store__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t20@@0 stream_new@@0)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected) handle@@3)) (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual) handle@@3))) (forall ((v@@43 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected) handle@@3)) v@@43) (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual) handle@@3)) v@@43))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2734:13|
 :skolemid |75|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t64 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t19)))) (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t20@@0)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_75623| stream@@4)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@4) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65))))
(Multiset_75623 (|Store__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@4) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t20@@0 stream_new@@1)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@0) handle@@4)) (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@0) handle@@4))) (forall ((v@@44 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@0) handle@@4)) v@@44) (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@0) handle@@4)) v@@44))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2734:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 178851) (- 0 243833)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t64 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t19)))) (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t20@@0)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_75623| stream@@5)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@5) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65))))
(Multiset_75623 (|Store__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@5) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t20@@0 stream_new@@2)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@5 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@1) handle@@5)) (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@1) handle@@5))) (forall ((v@@45 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@1) handle@@5)) v@@45) (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@1) handle@@5)) v@@45))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2734:13|
 :skolemid |75|
))))))))))))))))))))))))))))))))))))))))))
(let ((anon46_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= $1_DiemConfig_Configuration_$memory@1 ($Memory_110366 (|Store__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1) (= (ControlFlow 0 178387) 178851))) anon31_correct)))
(let ((anon46_Then_correct  (=> (and (and |$temp_0'bool'@1| (= $1_DiemConfig_Configuration_$memory@0 ($Memory_110366 (|Store__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0|)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0) (= (ControlFlow 0 178863) 178851))) anon31_correct)))
(let ((anon45_Else_correct  (=> (not |$temp_0'bool'@0|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| ($Memory_106986 (|Store__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1|)) (and (=> (= (ControlFlow 0 178373) 178863) anon46_Then_correct) (=> (= (ControlFlow 0 178373) 178387) anon46_Else_correct))))))
(let ((anon45_Then_correct  (=> |$temp_0'bool'@0| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| ($Memory_106986 (|Store__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0|)) (and (=> (= (ControlFlow 0 178875) 178863) anon46_Then_correct) (=> (= (ControlFlow 0 178875) 178387) anon46_Else_correct))))))
(let ((anon44_Else_correct  (=> (not $t55) (and (=> (= (ControlFlow 0 178361) 178875) anon45_Then_correct) (=> (= (ControlFlow 0 178361) 178373) anon45_Else_correct)))))
(let ((anon43_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 177517) (- 0 242966)) (or (or (or (or (or (or (or (or (or (or (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))) 256) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0))))) (let (($range_0@@6 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))))
(exists (($i_1@@6 Int) ) (!  (and (and (>= $i_1@@6 0) (< $i_1@@6 (seq.len $range_0@@6))) (let ((v@@46 (seq.nth $range_0@@6 $i_1@@6)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@46) _$t1@@1)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t15))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t15)) 0))) (not (= _$t0@@1 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t21))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t21)) 0))) (not (= _$t0@@1 173345816)))) (=> (or (or (or (or (or (or (or (or (or (or (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14))))) 256) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0))))) (let (($range_0@@7 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@15))))))
(exists (($i_1@@7 Int) ) (!  (and (and (>= $i_1@@7 0) (< $i_1@@7 (seq.len $range_0@@7))) (let ((v@@47 (seq.nth $range_0@@7 $i_1@@7)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@47) _$t1@@1)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t15))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t15)) 0))) (not (= _$t0@@1 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t21))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t21)) 0))) (not (= _$t0@@1 173345816))) (=> (= (ControlFlow 0 177517) (- 0 243103)) (or (or (or (or (or (or (or (or (or (or (and (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16))))) 256) (= 8 $t23@0)) (and (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0)))) (= 7 $t23@0))) (and (let (($range_0@@8 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@17))))))
(exists (($i_1@@8 Int) ) (!  (and (and (>= $i_1@@8 0) (< $i_1@@8 (seq.len $range_0@@8))) (let ((v@@48 (seq.nth $range_0@@8 $i_1@@8)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@48) _$t1@@1)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
))) (= 7 $t23@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t15)) (= 5 $t23@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t15)) 0)) (= 3 $t23@0))) (and (not (= _$t0@@1 173345816)) (= 2 $t23@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16))) (= 1 $t23@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t21)) (= 5 $t23@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t21)) 0)) (= 3 $t23@0))) (and (not (= _$t0@@1 173345816)) (= 2 $t23@0))))))))
(let ((anon44_Then_correct  (=> $t55 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@@0)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t51) 18446744073709551615)) (< $t52 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t51))) (= 1 $t23@@0))) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 178951) 177517))) L7_correct))))
(let ((anon43_Else_correct  (=> (and (not false) (= $t44@1 ($Mutation_112049 (|l#$Mutation_112049| $t44@0) (|p#$Mutation_112049| $t44@0) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t44@0)) (|v#$Mutation_84196| |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1|))))) (and (=> (= (ControlFlow 0 178355) (- 0 242633)) (let (($range_0@@9 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t44@1))))))
(let (($range_1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t44@1))))))
(forall (($i_2 Int) ($i_3 Int) ) (!  (=> ($InRange $range_0@@9 $i_2) (=> ($InRange $range_1 $i_3) (let ((i@@43 $i_2))
(let ((j@@10 $i_3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t44@1)) i@@43)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t44@1)) j@@10))) (= i@@43 j@@10))))))
 :qid |DiemSystemseqArraybpl.5747:203|
 :skolemid |158|
))))) (=> (let (($range_0@@10 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t44@1))))))
(let (($range_1@@0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t44@1))))))
(forall (($i_2@@0 Int) ($i_3@@0 Int) ) (!  (=> ($InRange $range_0@@10 $i_2@@0) (=> ($InRange $range_1@@0 $i_3@@0) (let ((i@@44 $i_2@@0))
(let ((j@@11 $i_3@@0))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t44@1)) i@@44)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t44@1)) j@@11))) (= i@@44 j@@11))))))
 :qid |DiemSystemseqArraybpl.5747:203|
 :skolemid |158|
)))) (=> (= $t3@0 (|v#$Mutation_112049| $t44@1)) (=> (and (and (= $t51 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t52 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t53 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t54 (|$events#$1_DiemConfig_Configuration| $t53)))) (and (=> (= (ControlFlow 0 178355) (- 0 242786)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816) (=> (= $t55  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t51) 18446744073709551615)) (< $t52 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t51))))) (and (=> (= (ControlFlow 0 178355) 178951) anon44_Then_correct) (=> (= (ControlFlow 0 178355) 178361) anon44_Else_correct))))))))))))
(let ((|inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| ($Mutation_84196 (|l#$Mutation_84196| $t45@0) (|p#$Mutation_84196| $t45@0) (seq.++ (|v#$Mutation_84196| $t45@0) (seq.unit $t49@0)))) (and (=> (= (ControlFlow 0 178122) 178965) anon43_Then_correct) (=> (= (ControlFlow 0 178122) 178355) anon43_Else_correct)))))
(let ((anon42_Else_correct  (=> (not $t47) (=> (and (|$IsValid'u64'| $t46) (= $t46 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (= $t46 $t46) (|$IsValid'u64'| 1)) (and (= $t49@0 ($1_DiemSystem_ValidatorInfo _$t1@@1 1 $t42 $t46)) (= (ControlFlow 0 178128) 178122))) |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))))
(let ((anon42_Then_correct  (=> $t47 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 178991) 177517))) L7_correct))))
(let ((anon41_Else_correct  (=> (not $t43) (=> (and (|$IsValid'$1_ValidatorConfig_Config'| $t42) (= $t42 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1))) 0))) (=> (and (and (and (= $t42 $t42) (= $t44@0 ($Mutation_112049 ($Local 3) (as seq.empty (Seq Int)) $t3@@0))) (and (= $t45@0 ($Mutation_84196 (|l#$Mutation_112049| $t44@0) (seq.++ (|p#$Mutation_112049| $t44@0) (seq.unit 1)) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t44@0)))) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0| (|v#$Mutation_84196| $t45@0)))) (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0|) (= _$t1@@1 _$t1@@1)) (and (= $t42 $t42) (= $t47  (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 178027) 178991) anon42_Then_correct) (=> (= (ControlFlow 0 178027) 178128) anon42_Else_correct)))))))
(let ((anon41_Then_correct  (=> $t43 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)) (= 5 $t23@@0)) (and (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0) (= 7 $t23@@0))) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 179039) 177517))) L7_correct))))
(let ((anon40_Then_correct  (=> (and inline$$Not$0$dst@1@@0 (= $t43  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)) (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0)))) (and (=> (= (ControlFlow 0 177939) 179039) anon41_Then_correct) (=> (= (ControlFlow 0 177939) 178027) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t41 $t41)) (and (= $t23@0 $t41) (= (ControlFlow 0 177911) 177517))) L7_correct)))
(let ((anon39_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t41) (= $t41 7)) (and (= $t41 $t41) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 177895) 177939) anon40_Then_correct) (=> (= (ControlFlow 0 177895) 177911) anon40_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t38)) (= (ControlFlow 0 177855) 177895)) anon39_Else$1_correct)))
(let ((anon39_Else_correct  (=> (not $t35) (=> (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t3@@0) (let (($range_0@@11 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t3@@0)))))
(let (($range_1@@1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t3@@0)))))
(forall (($i_2@@1 Int) ($i_3@@1 Int) ) (!  (=> ($InRange $range_0@@11 $i_2@@1) (=> ($InRange $range_1@@1 $i_3@@1) (let ((i@@45 $i_2@@1))
(let ((j@@12 $i_3@@1))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t3@@0) i@@45)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t3@@0) j@@12))) (= i@@45 j@@12))))))
 :qid |DiemSystemseqArraybpl.5545:222|
 :skolemid |156|
))))) (= $t3@@0 (let ((addr@@18 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@18))))) (and (and (= $t3@@0 $t3@@0) (= $t37@0 (|$validators#$1_DiemSystem_DiemSystem| $t3@@0))) (and (= $t38 (let (($range_0@@12 $t37@0))
(exists (($i_1@@9 Int) ) (!  (and (and (>= $i_1@@9 0) (< $i_1@@9 (seq.len $range_0@@12))) (let ((v@@49 (seq.nth $range_0@@12 $i_1@@9)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@49) _$t1@@1)))
 :qid |DiemSystemseqArraybpl.5573:64|
 :skolemid |157|
)))) (= (ControlFlow 0 177861) 177855)))) inline$$Not$0$anon0_correct@@0))))
(let ((anon39_Then_correct  (=> $t35 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 179067) 177517))) L7_correct))))
(let ((anon38_Then_correct  (=> (and inline$$Lt$0$dst@1@@0 (= $t35  (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 177671) 179067) anon39_Then_correct) (=> (= (ControlFlow 0 177671) 177861) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1@@0) (= $t34 $t34)) (and (= $t23@0 $t34) (= (ControlFlow 0 177655) 177517))) L7_correct)))
(let ((anon37_Else$1_correct  (=> (|$IsValid'u64'| 7) (=> (and (and (|$IsValid'u64'| $t34) (= $t34 8)) (and (= $t34 $t34) (= inline$$Lt$0$dst@1@@0 inline$$Lt$0$dst@1@@0))) (and (=> (= (ControlFlow 0 177639) 177671) anon38_Then_correct) (=> (= (ControlFlow 0 177639) 177655) anon38_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct@@0  (=> (and (= inline$$Lt$0$dst@1@@0 (< $t29 256)) (= (ControlFlow 0 177599) 177639)) anon37_Else$1_correct)))
(let ((anon37_Else_correct  (=> (not $t30) (=> (and (and (|$IsValid'u64'| $t29) (= $t29 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@19 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@19))))))) (and (|$IsValid'u64'| 256) (= (ControlFlow 0 177605) 177599))) inline$$Lt$0$anon0_correct@@0))))
(let ((anon37_Then_correct  (=> $t30 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 179095) 177517))) L7_correct))))
(let ((anon36_Then_correct  (=> (and $t26 (= $t30  (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 177533) 179095) anon37_Then_correct) (=> (= (ControlFlow 0 177533) 177605) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (and (not $t26) (= $t28 $t28)) (and (= $t23@0 $t28) (= (ControlFlow 0 177117) 177517))) L7_correct)))
(let ((anon35_Else_correct  (=> (not $t25@@0) (=> (and (= $t26  (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@1)))) 0)))) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t28) (= $t28 7)) (and (= $t28 $t28) (= $t26 $t26))) (and (=> (= (ControlFlow 0 177101) 177533) anon36_Then_correct) (=> (= (ControlFlow 0 177101) 177117) anon36_Else_correct)))))))
(let ((anon35_Then_correct  (=> $t25@@0 (=> (and (and (or (or (or (and (not (= _$t0@@1 173345816)) (= 2 $t23@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t24@@0)) (= 5 $t23@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t24@@0)) 0)) (= 3 $t23@@0))) (and (not (= _$t0@@1 173345816)) (= 2 $t23@@0))) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 179187) 177517))) L7_correct))))
(let ((anon34_Else_correct  (=> (not $t22) (=> (and (= $t24@@0 _$t0@@1) (= $t25@@0  (or (or (or (not (= _$t0@@1 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t24@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t24@@0)) 0))) (not (= _$t0@@1 173345816))))) (and (=> (= (ControlFlow 0 177051) 179187) anon35_Then_correct) (=> (= (ControlFlow 0 177051) 177101) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> $t22 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 179213) 177517))) L7_correct))))
(let ((anon0$1_correct@@1  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108472| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@20) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@20)) 4))))
 :qid |DiemSystemseqArraybpl.5186:20|
 :skolemid |142|
)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@21) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@21)) 3))))
 :qid |DiemSystemseqArraybpl.5190:20|
 :skolemid |143|
))) (and (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@22) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@22)) 3))))
 :qid |DiemSystemseqArraybpl.5194:20|
 :skolemid |144|
)) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@23) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@23)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@23)) 3))))
 :qid |DiemSystemseqArraybpl.5198:20|
 :skolemid |145|
)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (let (($range_0@@13 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@24 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@24))))))))
(forall (($i_1@@10 Int) ) (!  (=> ($InRange $range_0@@13 $i_1@@10) (let ((i1@@2 $i_1@@10))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@25 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@25)))) i1@@2))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@25 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@25)))) i1@@2)))) 3))))
 :qid |DiemSystemseqArraybpl.5210:151|
 :skolemid |146|
))) (let (($range_0@@14 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@26 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@26))))))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@14 $i_1@@11) (let ((i1@@3 $i_1@@11))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@27 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@27)))) i1@@3)) 1)))
 :qid |DiemSystemseqArraybpl.5215:151|
 :skolemid |147|
))))) (and (and (|$IsValid'address'| _$t0@@1) (|$IsValid'address'| _$t1@@1)) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@1)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@1))
 :qid |DiemSystemseqArraybpl.5225:20|
 :skolemid |148|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $a_0@@2)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@2))
 :qid |DiemSystemseqArraybpl.5229:20|
 :skolemid |149|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $a_0@@2))
))))) (=> (and (and (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@3)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@3) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@3))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@3))) 1))))
 :qid |DiemSystemseqArraybpl.5233:20|
 :skolemid |150|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) $a_0@@4)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@4))
 :qid |DiemSystemseqArraybpl.5237:20|
 :skolemid |151|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) $a_0@@4))
))) (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@5)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@5))
 :qid |DiemSystemseqArraybpl.5241:20|
 :skolemid |152|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@6)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@6) (let (($range_1@@2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@6))))))
(let (($range_2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@6))))))
(forall (($i_3@@2 Int) ($i_4 Int) ) (!  (=> ($InRange $range_1@@2 $i_3@@2) (=> ($InRange $range_2 $i_4) (let ((i@@46 $i_3@@2))
(let ((j@@13 $i_4))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@6)) i@@46)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@6)) j@@13))) (= i@@46 j@@13))))))
 :qid |DiemSystemseqArraybpl.5246:367|
 :skolemid |153|
))))))
 :qid |DiemSystemseqArraybpl.5245:20|
 :skolemid |154|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@6))
)))) (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@7)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@7))
 :qid |DiemSystemseqArraybpl.5251:20|
 :skolemid |155|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@7))
)) (= $t15 _$t0@@1)) (and (= $t16 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t17 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (and (and (= $t18 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@28 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@28))))) (= $t19 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t20@@0 (|$events#$1_DiemConfig_Configuration| $t19)) (= $t21 _$t0@@1))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816) (= _$t0@@1 _$t0@@1)) (and (= _$t1@@1 _$t1@@1) (= $t22  (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 176979) 179213) anon34_Then_correct) (=> (= (ControlFlow 0 176979) 177051) anon34_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_75623| stream@@6) 0) (forall ((v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@6) v@@50) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 176352) 176979)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (and (and (= (seq.len (|p#$Mutation_84196| $t14@@0)) 0) (= (seq.len (|p#$Mutation_112049| $t44)) 0)) (and (= (seq.len (|p#$Mutation_84196| $t45)) 0) (= (ControlFlow 0 176362) 176352))) inline$$InitEventStore$0$anon0_correct@@1)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 240914) 176362) anon0_correct@@1)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 240914)))
(get-value ((ControlFlow 0 176362)))
(get-value ((ControlFlow 0 176352)))
(get-value ((ControlFlow 0 176979)))
(get-value ((ControlFlow 0 177051)))
(get-value ((ControlFlow 0 177101)))
(get-value ((ControlFlow 0 177533)))
(get-value ((ControlFlow 0 177605)))
(get-value ((ControlFlow 0 177599)))
(get-value ((ControlFlow 0 177639)))
(get-value ((ControlFlow 0 177671)))
(get-value ((ControlFlow 0 177861)))
(get-value ((ControlFlow 0 177855)))
(get-value ((ControlFlow 0 177895)))
(get-value ((ControlFlow 0 177939)))
(get-value ((ControlFlow 0 178027)))
(get-value ((ControlFlow 0 178128)))
(get-value ((ControlFlow 0 178122)))
(get-value ((ControlFlow 0 178355)))
(assert (not (= (ControlFlow 0 178355) (- 242633))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 240914)))
(get-value ((ControlFlow 0 176362)))
(get-value ((ControlFlow 0 176352)))
(get-value ((ControlFlow 0 176979)))
(get-value ((ControlFlow 0 177051)))
(get-value ((ControlFlow 0 177101)))
(get-value ((ControlFlow 0 177533)))
(get-value ((ControlFlow 0 177605)))
(get-value ((ControlFlow 0 177599)))
(get-value ((ControlFlow 0 177639)))
(get-value ((ControlFlow 0 177671)))
(get-value ((ControlFlow 0 177861)))
(get-value ((ControlFlow 0 177855)))
(get-value ((ControlFlow 0 177895)))
(get-value ((ControlFlow 0 177939)))
(get-value ((ControlFlow 0 178027)))
(get-value ((ControlFlow 0 178128)))
(get-value ((ControlFlow 0 178122)))
(get-value ((ControlFlow 0 178355)))
(get-value ((ControlFlow 0 178361)))
(get-value ((ControlFlow 0 178875)))
(get-value ((ControlFlow 0 178863)))
(get-value ((ControlFlow 0 178851)))
(assert (not (= (ControlFlow 0 178851) (- 243758))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 240914)))
(get-value ((ControlFlow 0 176362)))
(get-value ((ControlFlow 0 176352)))
(get-value ((ControlFlow 0 176979)))
(get-value ((ControlFlow 0 177051)))
(get-value ((ControlFlow 0 177101)))
(get-value ((ControlFlow 0 177533)))
(get-value ((ControlFlow 0 177605)))
(get-value ((ControlFlow 0 177599)))
(get-value ((ControlFlow 0 177639)))
(get-value ((ControlFlow 0 177671)))
(get-value ((ControlFlow 0 177861)))
(get-value ((ControlFlow 0 177855)))
(get-value ((ControlFlow 0 177895)))
(get-value ((ControlFlow 0 177939)))
(get-value ((ControlFlow 0 178027)))
(get-value ((ControlFlow 0 178128)))
(get-value ((ControlFlow 0 178122)))
(get-value ((ControlFlow 0 178355)))
(get-value ((ControlFlow 0 178361)))
(get-value ((ControlFlow 0 178875)))
(get-value ((ControlFlow 0 178863)))
(get-value ((ControlFlow 0 178851)))
(assert (not (= (ControlFlow 0 178851) (- 243765))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $t1 () Bool)
(declare-fun $t0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t2 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_get_diem_system_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 243884) (let ((anon4_Else_correct  (=> (not $t1) (=> (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t0) (let (($range_0@@15 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t0)))))
(let (($range_1@@3 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t0)))))
(forall (($i_2@@2 Int) ($i_3@@3 Int) ) (!  (=> ($InRange $range_0@@15 $i_2@@2) (=> ($InRange $range_1@@3 $i_3@@3) (let ((i@@47 $i_2@@2))
(let ((j@@14 $i_3@@3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t0) i@@47)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t0) j@@14))) (= i@@47 j@@14))))))
 :qid |DiemSystemseqArraybpl.6064:222|
 :skolemid |163|
))))) (and (= $t0 (let ((addr@@29 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@29)))) (= $t0 $t0))) (and (=> (= (ControlFlow 0 180012) (- 0 244326)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 180012) (- 0 244338)) (= $t0 (let ((addr@@30 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@30))))) (=> (= $t0 (let ((addr@@31 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@31)))) (=> (= (ControlFlow 0 180012) (- 0 244349)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@32 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@32)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@33 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@33))))))))))))))
(let ((anon4_Then_correct  (=> $t1 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t2)) (= $t2 $t2)) (and (=> (= (ControlFlow 0 180070) (- 0 244186)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (= (ControlFlow 0 180070) (- 0 244193)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t2)))))))))
(let ((anon0$1_correct@@2  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (=> (and (and (let (($range_0@@16 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@34 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@34))))))))
(forall (($i_1@@12 Int) ) (!  (=> ($InRange $range_0@@16 $i_1@@12) (let ((i1@@4 $i_1@@12))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@35 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@35)))) i1@@4))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@35 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@35)))) i1@@4)))) 3))))
 :qid |DiemSystemseqArraybpl.6016:151|
 :skolemid |159|
))) (let (($range_0@@17 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@36 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@36))))))))
(forall (($i_1@@13 Int) ) (!  (=> ($InRange $range_0@@17 $i_1@@13) (let ((i1@@5 $i_1@@13))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@37 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@37)))) i1@@5)) 1)))
 :qid |DiemSystemseqArraybpl.6021:151|
 :skolemid |160|
)))) (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@8)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@8) (let (($range_1@@4 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@8))))))
(let (($range_2@@0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@8))))))
(forall (($i_3@@4 Int) ($i_4@@0 Int) ) (!  (=> ($InRange $range_1@@4 $i_3@@4) (=> ($InRange $range_2@@0 $i_4@@0) (let ((i@@48 $i_3@@4))
(let ((j@@15 $i_4@@0))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@8)) i@@48)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@8)) j@@15))) (= i@@48 j@@15))))))
 :qid |DiemSystemseqArraybpl.6027:367|
 :skolemid |161|
))))))
 :qid |DiemSystemseqArraybpl.6026:20|
 :skolemid |162|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@8))
)) (= $t1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 179867) 180070) anon4_Then_correct) (=> (= (ControlFlow 0 179867) 180012) anon4_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_75623| stream@@7) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@7) v@@51) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 179620) 179867)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 243884) 179620) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t14@0@@0 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun _$t0@@2 () Int)
(declare-fun $t6@0@@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t12@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t11@@0 () Bool)
(declare-fun $t10@@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t6 () Int)
(declare-fun inline$$Lt$0$dst@1@@1 () Bool)
(declare-fun $t9@@1 () Int)
(declare-fun $t4@@0 () Int)
(declare-fun $t5@@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_get_ith_validator_address$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 244370) (let ((anon14_Else_correct  (=> (not $abort_flag@0@@1) (=> (and (= $t14@0@@0 (|$addr#$1_DiemSystem_ValidatorInfo| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2|)) (= $t14@0@@0 $t14@0@@0)) (and (=> (= (ControlFlow 0 180955) (- 0 245136)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 180955) (- 0 245148)) (not (>= _$t0@@2 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@38 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@38)))))))) (=> (not (>= _$t0@@2 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@39 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@39))))))) (and (=> (= (ControlFlow 0 180955) (- 0 245161)) (= $t14@0@@0 (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@40 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@40)))) _$t0@@2)))) (=> (= $t14@0@@0 (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@41 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@41)))) _$t0@@2))) (=> (= (ControlFlow 0 180955) (- 0 245176)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@42 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@42)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@43 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@43))))))))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 180611) (- 0 245060)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (>= _$t0@@2 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@44 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@44)))))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (>= _$t0@@2 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@45 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@45))))))) (=> (= (ControlFlow 0 180611) (- 0 245077)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t6@0@@0)) (and (>= _$t0@@2 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@46 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@46)))))) (= 7 $t6@0@@0))))))))
(let ((anon14_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t6@0@@0 $abort_code@1@@1) (= (ControlFlow 0 180969) 180611))) L3_correct@@0)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0|)) (and (=> (= (ControlFlow 0 180873) 180969) anon14_Then_correct) (=> (= (ControlFlow 0 180873) 180955) anon14_Else_correct))))))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|  (=> (and (not (and (>= _$t0@@2 0) (< _$t0@@2 (seq.len $t12@0)))) (= (ControlFlow 0 180871) 180873)) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|  (=> (and (>= _$t0@@2 0) (< _$t0@@2 (seq.len $t12@0))) (=> (and (and (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1| (seq.nth $t12@0 _$t0@@2)) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1|))) (and (=> (= (ControlFlow 0 180821) 180969) anon14_Then_correct) (=> (= (ControlFlow 0 180821) 180955) anon14_Else_correct))))))
(let ((anon13_Else_correct  (=> (not $t11@@0) (=> (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t10@@0) (let (($range_0@@18 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t10@@0)))))
(let (($range_1@@5 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t10@@0)))))
(forall (($i_2@@3 Int) ($i_3@@5 Int) ) (!  (=> ($InRange $range_0@@18 $i_2@@3) (=> ($InRange $range_1@@5 $i_3@@5) (let ((i@@49 $i_2@@3))
(let ((j@@16 $i_3@@5))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t10@@0) i@@49)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t10@@0) j@@16))) (= i@@49 j@@16))))))
 :qid |DiemSystemseqArraybpl.6291:225|
 :skolemid |168|
))))) (= $t10@@0 (let ((addr@@47 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@47))))) (and (= $t10@@0 $t10@@0) (= $t12@0 (|$validators#$1_DiemSystem_DiemSystem| $t10@@0)))) (and (=> (= (ControlFlow 0 180879) 180871) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 180879) 180821) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|))))))
(let ((anon13_Then_correct  (=> $t11@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t6)) (= $t6 $t6)) (and (= $t6@0@@0 $t6) (= (ControlFlow 0 180997) 180611))) L3_correct@@0))))
(let ((anon12_Then_correct@@0  (=> (and inline$$Lt$0$dst@1@@1 (= $t11@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 180627) 180997) anon13_Then_correct) (=> (= (ControlFlow 0 180627) 180879) anon13_Else_correct)))))
(let ((anon12_Else_correct@@0  (=> (and (and (not inline$$Lt$0$dst@1@@1) (= $t9@@1 $t9@@1)) (and (= $t6@0@@0 $t9@@1) (= (ControlFlow 0 180547) 180611))) L3_correct@@0)))
(let ((anon11_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| $t9@@1) (= $t9@@1 7)) (and (= $t9@@1 $t9@@1) (= inline$$Lt$0$dst@1@@1 inline$$Lt$0$dst@1@@1))) (and (=> (= (ControlFlow 0 180531) 180627) anon12_Then_correct@@0) (=> (= (ControlFlow 0 180531) 180547) anon12_Else_correct@@0))))))
(let ((inline$$Lt$0$anon0_correct@@1  (=> (and (= inline$$Lt$0$dst@1@@1 (< _$t0@@2 $t4@@0)) (= (ControlFlow 0 180495) 180531)) anon11_Else$1_correct)))
(let ((anon11_Else_correct@@0  (=> (and (and (not $t5@@0) (|$IsValid'u64'| $t4@@0)) (and (= $t4@@0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@48 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@48)))))) (= (ControlFlow 0 180501) 180495))) inline$$Lt$0$anon0_correct@@1)))
(let ((anon11_Then_correct@@0  (=> $t5@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t6)) (= $t6 $t6)) (and (= $t6@0@@0 $t6) (= (ControlFlow 0 181025) 180611))) L3_correct@@0))))
(let ((anon0$1_correct@@3  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (=> (and (let (($range_0@@19 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@49 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@49))))))))
(forall (($i_1@@14 Int) ) (!  (=> ($InRange $range_0@@19 $i_1@@14) (let ((i1@@6 $i_1@@14))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@50 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@50)))) i1@@6))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@50 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@50)))) i1@@6)))) 3))))
 :qid |DiemSystemseqArraybpl.6156:151|
 :skolemid |164|
))) (let (($range_0@@20 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@51 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@51))))))))
(forall (($i_1@@15 Int) ) (!  (=> ($InRange $range_0@@20 $i_1@@15) (let ((i1@@7 $i_1@@15))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@52 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@52)))) i1@@7)) 1)))
 :qid |DiemSystemseqArraybpl.6161:151|
 :skolemid |165|
)))) (=> (and (and (|$IsValid'u64'| _$t0@@2) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@9)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@9) (let (($range_1@@6 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@9))))))
(let (($range_2@@1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@9))))))
(forall (($i_3@@6 Int) ($i_4@@1 Int) ) (!  (=> ($InRange $range_1@@6 $i_3@@6) (=> ($InRange $range_2@@1 $i_4@@1) (let ((i@@50 $i_3@@6))
(let ((j@@17 $i_4@@1))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@9)) i@@50)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@9)) j@@17))) (= i@@50 j@@17))))))
 :qid |DiemSystemseqArraybpl.6170:367|
 :skolemid |166|
))))))
 :qid |DiemSystemseqArraybpl.6169:20|
 :skolemid |167|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@9))
))) (and (= _$t0@@2 _$t0@@2) (= $t5@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 180435) 181025) anon11_Then_correct@@0) (=> (= (ControlFlow 0 180435) 180501) anon11_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_75623| stream@@8) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@8) v@@52) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 180178) 180435)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 244370) 180178) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t18@0@@0 () T@$1_ValidatorConfig_Config)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun _$t0@@3 () Int)
(declare-fun $t7@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0@@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t15@@0 () Int)
(declare-fun $t14@0@@1 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t16@@0 () Bool)
(declare-fun $t10@@1 () |T@$1_Option_Option'u64'|)
(declare-fun $t7 () Int)
(declare-fun $t11@@1 () Bool)
(declare-fun $t5@@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t13 () Int)
(declare-fun $t6@@0 () Bool)
(declare-fun $t8@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t9@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_get_validator_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 245196) (let ((anon14_Else_correct@@0  (=> (not $abort_flag@0@@2) (=> (and (= $t18@0@@0 (|$config#$1_DiemSystem_ValidatorInfo| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@0|)) (= $t18@0@@0 $t18@0@@0)) (and (=> (= (ControlFlow 0 182081) (- 0 246105)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 182081) (- 0 246117)) (not (not (let (($range_0@@21 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@53 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@53))))))
(exists (($i_1@@16 Int) ) (!  (and (and (>= $i_1@@16 0) (< $i_1@@16 (seq.len $range_0@@21))) (let ((v@@53 (seq.nth $range_0@@21 $i_1@@16)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@53) _$t0@@3)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
)))))) (=> (not (not (let (($range_0@@22 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@54 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@54))))))
(exists (($i_1@@17 Int) ) (!  (and (and (>= $i_1@@17 0) (< $i_1@@17 (seq.len $range_0@@22))) (let ((v@@54 (seq.nth $range_0@@22 $i_1@@17)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@54) _$t0@@3)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
))))) (and (=> (= (ControlFlow 0 182081) (- 0 246128)) (let (($range_0@@23 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@55 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@55))))))
(exists (($i_1@@18 Int) ) (!  (and (and (>= $i_1@@18 0) (< $i_1@@18 (seq.len $range_0@@23))) (let ((info (seq.nth $range_0@@23 $i_1@@18)))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| info) _$t0@@3) (= $t18@0@@0 (|$config#$1_DiemSystem_ValidatorInfo| info)))))
 :qid |DiemSystemseqArraybpl.6635:176|
 :skolemid |176|
)))) (=> (let (($range_0@@24 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@56 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@56))))))
(exists (($i_1@@19 Int) ) (!  (and (and (>= $i_1@@19 0) (< $i_1@@19 (seq.len $range_0@@24))) (let ((info@@0 (seq.nth $range_0@@24 $i_1@@19)))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| info@@0) _$t0@@3) (= $t18@0@@0 (|$config#$1_DiemSystem_ValidatorInfo| info@@0)))))
 :qid |DiemSystemseqArraybpl.6635:176|
 :skolemid |176|
))) (=> (= (ControlFlow 0 182081) (- 0 246174)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@57 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@57)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@58 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@58))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 181801) (- 0 246033)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (not (let (($range_0@@25 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@59 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@59))))))
(exists (($i_1@@20 Int) ) (!  (and (and (>= $i_1@@20 0) (< $i_1@@20 (seq.len $range_0@@25))) (let ((v@@55 (seq.nth $range_0@@25 $i_1@@20)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@55) _$t0@@3)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
)))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (not (let (($range_0@@26 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@60 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@60))))))
(exists (($i_1@@21 Int) ) (!  (and (and (>= $i_1@@21 0) (< $i_1@@21 (seq.len $range_0@@26))) (let ((v@@56 (seq.nth $range_0@@26 $i_1@@21)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@56) _$t0@@3)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
))))) (=> (= (ControlFlow 0 181801) (- 0 246048)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t7@0)) (and (not (let (($range_0@@27 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@61 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@61))))))
(exists (($i_1@@22 Int) ) (!  (and (and (>= $i_1@@22 0) (< $i_1@@22 (seq.len $range_0@@27))) (let ((v@@57 (seq.nth $range_0@@27 $i_1@@22)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@57) _$t0@@3)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
)))) (= 7 $t7@0))))))))
(let ((anon14_Then_correct@@0  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t7@0 $abort_code@1@@2) (= (ControlFlow 0 182095) 181801))) L3_correct@@1)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct@@0|  (=> (= $abort_flag@0@@2 true) (=> (and (= $abort_code@1@@2 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@0| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0@@0|)) (and (=> (= (ControlFlow 0 181970) 182095) anon14_Then_correct@@0) (=> (= (ControlFlow 0 181970) 182081) anon14_Else_correct@@0))))))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct@@0|  (=> (and (not (and (>= $t15@@0 0) (< $t15@@0 (seq.len $t14@0@@1)))) (= (ControlFlow 0 181968) 181970)) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct@@0|)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct@@0|  (=> (and (>= $t15@@0 0) (< $t15@@0 (seq.len $t14@0@@1))) (=> (and (and (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@0| (seq.nth $t14@0@@1 $t15@@0)) (= $abort_flag@0@@2 false)) (and (= $abort_code@1@@2 $abort_code@0@@2) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@0| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@0|))) (and (=> (= (ControlFlow 0 181918) 182095) anon14_Then_correct@@0) (=> (= (ControlFlow 0 181918) 182081) anon14_Else_correct@@0))))))
(let ((anon13_Else_correct@@0  (=> (not $t16@@0) (=> (and (|$IsValid'u64'| $t15@@0) (= $t15@@0 (seq.nth (|$vec#$1_Option_Option'u64'| $t10@@1) 0))) (and (=> (= (ControlFlow 0 181976) 181968) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct@@0|) (=> (= (ControlFlow 0 181976) 181918) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct@@0|))))))
(let ((anon13_Then_correct@@0  (=> $t16@@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'u64'| $t10@@1)) 0) (= 7 $t7)) (= $t7 $t7)) (and (= $t7@0 $t7) (= (ControlFlow 0 182119) 181801))) L3_correct@@1))))
(let ((anon12_Then_correct@@1  (=> $t11@@1 (=> (and (= $t14@0@@1 (|$validators#$1_DiemSystem_DiemSystem| $t5@@1)) (= $t16@@0 (= (seq.len (|$vec#$1_Option_Option'u64'| $t10@@1)) 0))) (and (=> (= (ControlFlow 0 181817) 182119) anon13_Then_correct@@0) (=> (= (ControlFlow 0 181817) 181976) anon13_Else_correct@@0))))))
(let ((anon12_Else_correct@@1  (=> (and (and (not $t11@@1) (= $t13 $t13)) (and (= $t7@0 $t13) (= (ControlFlow 0 181741) 181801))) L3_correct@@1)))
(let ((anon11_Else_correct@@1  (=> (not $t6@@0) (=> (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t5@@1) (let (($range_0@@28 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t5@@1)))))
(let (($range_1@@7 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t5@@1)))))
(forall (($i_2@@4 Int) ($i_3@@7 Int) ) (!  (=> ($InRange $range_0@@28 $i_2@@4) (=> ($InRange $range_1@@7 $i_3@@7) (let ((i@@51 $i_2@@4))
(let ((j@@18 $i_3@@7))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t5@@1) i@@51)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t5@@1) j@@18))) (= i@@51 j@@18))))))
 :qid |DiemSystemseqArraybpl.6466:222|
 :skolemid |173|
))))) (=> (and (and (and (and (= $t5@@1 (let ((addr@@62 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@62)))) (= $t5@@1 $t5@@1)) (and (= $t8@0 (|$validators#$1_DiemSystem_DiemSystem| $t5@@1)) (= $t9@@2 (seq.len $t8@0)))) (and (and (|$IsValid'$1_Option_Option'u64''| $t10@@1) (<= (seq.len (|$vec#$1_Option_Option'u64'| $t10@@1)) 1)) (=> (let (($range_0@@29 ($Range 0 $t9@@2)))
(forall (($i_1@@23 Int) ) (!  (=> ($InRange $range_0@@29 $i_1@@23) (let ((i@@52 $i_1@@23))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t8@0 i@@52)) _$t0@@3))))
 :qid |DiemSystemseqArraybpl.6496:54|
 :skolemid |174|
))) (= (seq.len (|$vec#$1_Option_Option'u64'| $t10@@1)) 0)))) (and (and (and (=> (let (($range_0@@30 ($Range 0 $t9@@2)))
(exists (($i_1@@24 Int) ) (!  (and ($InRange $range_0@@30 $i_1@@24) (let ((i@@53 $i_1@@24))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t8@0 i@@53)) _$t0@@3)))
 :qid |DiemSystemseqArraybpl.6500:54|
 :skolemid |175|
))) (and (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t10@@1)) 0)) (let ((at (seq.nth (|$vec#$1_Option_Option'u64'| $t10@@1) 0)))
 (and (and (<= 0 at) (< at $t9@@2)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t8@0 at)) _$t0@@3))))) (= $t10@@1 $t10@@1)) (and (= $t11@@1  (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t10@@1)) 0))) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t13) (= $t13 7)) (and (= $t13 $t13) (= $t11@@1 $t11@@1))))) (and (=> (= (ControlFlow 0 181725) 181817) anon12_Then_correct@@1) (=> (= (ControlFlow 0 181725) 181741) anon12_Else_correct@@1)))))))
(let ((anon11_Then_correct@@1  (=> $t6@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t7)) (= $t7 $t7)) (and (= $t7@0 $t7) (= (ControlFlow 0 182147) 181801))) L3_correct@@1))))
(let ((anon0$1_correct@@4  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (=> (and (let (($range_0@@31 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@63 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@63))))))))
(forall (($i_1@@25 Int) ) (!  (=> ($InRange $range_0@@31 $i_1@@25) (let ((i1@@8 $i_1@@25))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@64 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@64)))) i1@@8))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@64 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@64)))) i1@@8)))) 3))))
 :qid |DiemSystemseqArraybpl.6412:151|
 :skolemid |169|
))) (let (($range_0@@32 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@65 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@65))))))))
(forall (($i_1@@26 Int) ) (!  (=> ($InRange $range_0@@32 $i_1@@26) (let ((i1@@9 $i_1@@26))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@66 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@66)))) i1@@9)) 1)))
 :qid |DiemSystemseqArraybpl.6417:151|
 :skolemid |170|
)))) (=> (and (and (|$IsValid'address'| _$t0@@3) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@10)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@10) (let (($range_1@@8 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@10))))))
(let (($range_2@@2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@10))))))
(forall (($i_3@@8 Int) ($i_4@@2 Int) ) (!  (=> ($InRange $range_1@@8 $i_3@@8) (=> ($InRange $range_2@@2 $i_4@@2) (let ((i@@54 $i_3@@8))
(let ((j@@19 $i_4@@2))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@10)) i@@54)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@10)) j@@19))) (= i@@54 j@@19))))))
 :qid |DiemSystemseqArraybpl.6426:367|
 :skolemid |171|
))))))
 :qid |DiemSystemseqArraybpl.6425:20|
 :skolemid |172|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@10))
))) (and (= _$t0@@3 _$t0@@3) (= $t6@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 181416) 182147) anon11_Then_correct@@1) (=> (= (ControlFlow 0 181416) 181725) anon11_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_75623| stream@@9) 0) (forall ((v@@58 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@9) v@@58) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 181159) 181416)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 245196) 181159) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4))))))))))))))))
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
(declare-fun _$t0@@4 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun _$t1@@2 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t8@0@@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $t12@1 () Bool)
(declare-fun $t5@@2 () Int)
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
(declare-fun $t14@0@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_get_validator_index_$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 246196) (let ((L9_correct  (=> (= (ControlFlow 0 183276) (- 0 247100)) false)))
(let ((anon22_Then_correct@@0  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 183266) 183276)) L9_correct))))
(let ((anon20_Then_correct@@0  (=> $abort_flag@0@@3 (=> (and (= $abort_code@1@@3 $abort_code@1@@3) (= (ControlFlow 0 183342) 183276)) L9_correct))))
(let ((anon22_Else_correct@@0  (=> (and (not $abort_flag@1) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (=> (= (ControlFlow 0 183252) (- 0 247054)) (<= inline$$AddU64$0$dst@2 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (=> (<= inline$$AddU64$0$dst@2 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|) (=> (= (ControlFlow 0 183252) (- 0 247061)) (let (($range_0@@33 ($Range 0 inline$$AddU64$0$dst@2)))
(forall (($i_1@@27 Int) ) (!  (=> ($InRange $range_0@@33 $i_1@@27) (let ((j@@20 $i_1@@27))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 j@@20)) _$t1@@2))))
 :qid |DiemSystemseqArraybpl.6951:49|
 :skolemid |180|
)))))))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 183183) 183266) anon22_Then_correct@@0) (=> (= (ControlFlow 0 183183) 183252) anon22_Else_correct@@0))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t8@0@@0 1) $MAX_U64) (= (ControlFlow 0 183181) 183183)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t8@0@@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t8@0@@0 1)) (= $abort_code@2 $abort_code@1@@3)) (and (= $abort_flag@1 $abort_flag@0@@3) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 183129) 183266) anon22_Then_correct@@0) (=> (= (ControlFlow 0 183129) 183252) anon22_Else_correct@@0))))))
(let ((anon21_Else_correct@@0  (=> (and (not $t12@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 183189) 183181) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 183189) 183129) inline$$AddU64$0$anon3_Else_correct)))))
(let ((L8_correct@@0  (and (=> (= (ControlFlow 0 182853) (- 0 246812)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 182853) (- 0 246819)) (=> (let (($range_0@@34 ($Range 0 $t5@@2)))
(forall (($i_1@@28 Int) ) (!  (=> ($InRange $range_0@@34 $i_1@@28) (let ((i@@55 $i_1@@28))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 i@@55)) _$t1@@2))))
 :qid |DiemSystemseqArraybpl.6970:49|
 :skolemid |181|
))) (= (seq.len (|$vec#$1_Option_Option'u64'| $t16@0)) 0))) (=> (=> (let (($range_0@@35 ($Range 0 $t5@@2)))
(forall (($i_1@@29 Int) ) (!  (=> ($InRange $range_0@@35 $i_1@@29) (let ((i@@56 $i_1@@29))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 i@@56)) _$t1@@2))))
 :qid |DiemSystemseqArraybpl.6970:49|
 :skolemid |181|
))) (= (seq.len (|$vec#$1_Option_Option'u64'| $t16@0)) 0)) (and (=> (= (ControlFlow 0 182853) (- 0 246862)) (=> (let (($range_0@@36 ($Range 0 $t5@@2)))
(exists (($i_1@@30 Int) ) (!  (and ($InRange $range_0@@36 $i_1@@30) (let ((i@@57 $i_1@@30))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 i@@57)) _$t1@@2)))
 :qid |DiemSystemseqArraybpl.6976:49|
 :skolemid |182|
))) (and (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t16@0)) 0)) (let ((at@@0 (seq.nth (|$vec#$1_Option_Option'u64'| $t16@0) 0)))
 (and (and (<= 0 at@@0) (< at@@0 $t5@@2)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 at@@0)) _$t1@@2)))))) (=> (=> (let (($range_0@@37 ($Range 0 $t5@@2)))
(exists (($i_1@@31 Int) ) (!  (and ($InRange $range_0@@37 $i_1@@31) (let ((i@@58 $i_1@@31))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 i@@58)) _$t1@@2)))
 :qid |DiemSystemseqArraybpl.6976:49|
 :skolemid |182|
))) (and (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t16@0)) 0)) (let ((at@@1 (seq.nth (|$vec#$1_Option_Option'u64'| $t16@0) 0)))
 (and (and (<= 0 at@@1) (< at@@1 $t5@@2)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 at@@1)) _$t1@@2))))) (=> (= (ControlFlow 0 182853) (- 0 246936)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@67 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@67)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@68 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@68))))))))))))))
(let ((anon21_Then_correct@@0  (=> $t12@1 (and (=> (= (ControlFlow 0 183328) (- 0 246755)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 $t8@0@@0)) _$t1@@2)) (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 $t8@0@@0)) _$t1@@2) (=> (and (|$IsValid'$1_Option_Option'u64''| $t15@@1) (<= (seq.len (|$vec#$1_Option_Option'u64'| $t15@@1)) 1)) (=> (and (and (= $t15@@1 (|$1_Option_Option'u64'| (seq.unit $t8@0@@0))) (= $t15@@1 $t15@@1)) (and (= $t16@0 $t15@@1) (= (ControlFlow 0 183328) 182853))) L8_correct@@0)))))))
(let ((anon20_Else_correct@@0  (=> (and (and (not $abort_flag@0@@3) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1|)) (and (= $t11@1 (|$addr#$1_DiemSystem_ValidatorInfo| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1|)) (= $t12@1 (= $t11@1 _$t1@@2)))) (and (=> (= (ControlFlow 0 183024) 183328) anon21_Then_correct@@0) (=> (= (ControlFlow 0 183024) 183189) anon21_Else_correct@@0)))))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct@@1|  (=> (= $abort_flag@0@@3 true) (=> (and (= $abort_code@1@@3 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0@@1|)) (and (=> (= (ControlFlow 0 182992) 183342) anon20_Then_correct@@0) (=> (= (ControlFlow 0 182992) 183024) anon20_Else_correct@@0))))))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct@@1|  (=> (and (not (and (>= $t8@0@@0 0) (< $t8@0@@0 (seq.len _$t0@@4)))) (= (ControlFlow 0 182990) 182992)) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct@@1|)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct@@1|  (=> (and (>= $t8@0@@0 0) (< $t8@0@@0 (seq.len _$t0@@4))) (=> (and (and (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@1| (seq.nth _$t0@@4 $t8@0@@0)) (= $abort_flag@0@@3 false)) (and (= $abort_code@1@@3 $abort_code@0@@3) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@1|))) (and (=> (= (ControlFlow 0 182940) 183342) anon20_Then_correct@@0) (=> (= (ControlFlow 0 182940) 183024) anon20_Else_correct@@0))))))
(let ((anon19_Then_correct  (=> inline$$Lt$0$dst@1@@2 (and (=> (= (ControlFlow 0 182998) 182990) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct@@1|) (=> (= (ControlFlow 0 182998) 182940) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct@@1|)))))
(let ((anon19_Else_correct  (=> (not inline$$Lt$0$dst@1@@2) (and (=> (= (ControlFlow 0 182707) (- 0 246564)) (= $t8@0@@0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (=> (= $t8@0@@0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|) (and (=> (= (ControlFlow 0 182707) (- 0 246571)) (let (($range_0@@38 ($Range 0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)))
(forall (($i_1@@32 Int) ) (!  (=> ($InRange $range_0@@38 $i_1@@32) (let ((j@@21 $i_1@@32))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 j@@21)) _$t1@@2))))
 :qid |DiemSystemseqArraybpl.6912:48|
 :skolemid |179|
)))) (=> (let (($range_0@@39 ($Range 0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)))
(forall (($i_1@@33 Int) ) (!  (=> ($InRange $range_0@@39 $i_1@@33) (let ((j@@22 $i_1@@33))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 j@@22)) _$t1@@2))))
 :qid |DiemSystemseqArraybpl.6912:48|
 :skolemid |179|
))) (=> (and (|$IsValid'$1_Option_Option'u64''| $t17@@0) (<= (seq.len (|$vec#$1_Option_Option'u64'| $t17@@0)) 1)) (=> (and (and (= $t17@@0 (|$1_Option_Option'u64'| (as seq.empty (Seq Int)))) (= $t17@@0 $t17@@0)) (and (= $t16@0 $t17@@0) (= (ControlFlow 0 182707) 182853))) L8_correct@@0)))))))))
(let ((anon18_Else$1_correct  (and (=> (= (ControlFlow 0 182622) 182998) anon19_Then_correct) (=> (= (ControlFlow 0 182622) 182707) anon19_Else_correct))))
(let ((inline$$Lt$0$anon0_correct@@2  (=> (and (= inline$$Lt$0$dst@1@@2 (< $t8@0@@0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (= (ControlFlow 0 182612) 182622)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1| |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (and (|$IsValid'u64'| 0) (= 0 0))) (and (=> (= (ControlFlow 0 182618) (- 0 246402)) (<= 0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (=> (<= 0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|) (and (=> (= (ControlFlow 0 182618) (- 0 246409)) (let (($range_0@@40 ($Range 0 0)))
(forall (($i_1@@34 Int) ) (!  (=> ($InRange $range_0@@40 $i_1@@34) (let ((j@@23 $i_1@@34))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 j@@23)) _$t1@@2))))
 :qid |DiemSystemseqArraybpl.6756:48|
 :skolemid |177|
)))) (=> (let (($range_0@@41 ($Range 0 0)))
(forall (($i_1@@35 Int) ) (!  (=> ($InRange $range_0@@41 $i_1@@35) (let ((j@@24 $i_1@@35))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 j@@24)) _$t1@@2))))
 :qid |DiemSystemseqArraybpl.6756:48|
 :skolemid |177|
))) (=> (|$IsValid'u64'| $t8@0@@0) (=> (and (and (and (|$IsValid'$1_DiemSystem_ValidatorInfo'| $t10@0@@0) (|$IsValid'address'| $t11@0@@1)) (and (|$IsValid'u64'| $t13@0) (|$IsValid'u64'| $t14@0@@2))) (and (and (not false) (<= $t8@0@@0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (and (let (($range_0@@42 ($Range 0 $t8@0@@0)))
(forall (($i_1@@36 Int) ) (!  (=> ($InRange $range_0@@42 $i_1@@36) (let ((j@@25 $i_1@@36))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@4 j@@25)) _$t1@@2))))
 :qid |DiemSystemseqArraybpl.6796:53|
 :skolemid |178|
))) (= (ControlFlow 0 182618) 182612)))) inline$$Lt$0$anon0_correct@@2)))))))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1| (seq.len _$t0@@4)) (and (=> (= (ControlFlow 0 182408) 183356) anon18_Then_correct) (=> (= (ControlFlow 0 182408) 182618) anon18_Else_correct)))))
(let ((anon0$1_correct@@5  (=> (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| _$t0@@4) (|$IsValid'address'| _$t1@@2)) (=> (and (and (= $t5@@2 (seq.len _$t0@@4)) (= _$t0@@4 _$t0@@4)) (and (= _$t1@@2 _$t1@@2) (= (ControlFlow 0 182414) 182408))) |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_75623| stream@@10) 0) (forall ((v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@10) v@@59) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 182328) 182414)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 246196) 182328) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5)))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 246196)))
(get-value ((ControlFlow 0 182328)))
(get-value ((ControlFlow 0 182414)))
(get-value ((ControlFlow 0 182408)))
(get-value ((ControlFlow 0 182618)))
(get-value ((ControlFlow 0 182612)))
(get-value ((ControlFlow 0 182622)))
(get-value ((ControlFlow 0 182998)))
(get-value ((ControlFlow 0 182940)))
(get-value ((ControlFlow 0 183024)))
(get-value ((ControlFlow 0 183328)))
(get-value ((ControlFlow 0 182853)))
(assert (not (= (ControlFlow 0 182853) (- 246862))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| () T@$Memory_106986)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory@1 () T@$Memory_107059)
(declare-fun $t5@@3 () Int)
(declare-fun _$t0@@5 () Int)
(declare-fun $t4@@1 () Int)
(declare-fun $t7@0@@0 () Int)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory@0 () T@$Memory_107059)
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
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0| () T@$Memory_106986)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0| () T@$Memory_106986)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t15@@2 () Bool)
(declare-fun $t13@@0 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun |inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$v@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $t9@@3 () Bool)
(declare-fun $t8 () Int)
(declare-fun $t6@@1 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_initialize_validator_set$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 247119) (let ((anon28_Else_correct  (=> (not $abort_flag@0@@4) (and (=> (= (ControlFlow 0 184746) (- 0 248576)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory@1) 173345816)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory@1) 173345816))) (and (=> (= (ControlFlow 0 184746) (- 0 248598)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 184746) (- 0 248608)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t5@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t5@@3))) (and (=> (= (ControlFlow 0 184746) (- 0 248620)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t5@@3)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t5@@3)) 0))) (and (=> (= (ControlFlow 0 184746) (- 0 248638)) (not (not (= _$t0@@5 173345816)))) (=> (not (not (= _$t0@@5 173345816))) (and (=> (= (ControlFlow 0 184746) (- 0 248652)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 184746) (- 0 248660)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) $t4@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) $t4@@1)) (and (=> (= (ControlFlow 0 184746) (- 0 248670)) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory@1) $t4@@1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory@1) $t4@@1) (and (=> (= (ControlFlow 0 184746) (- 0 248678)) (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816) (=> (= (ControlFlow 0 184746) (- 0 248684)) (= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@69 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@69))))) 0)))))))))))))))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 184592) (- 0 248419)) (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t5@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t5@@3)) 0))) (not (= _$t0@@5 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) $t4@@1))) (=> (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t5@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t5@@3)) 0))) (not (= _$t0@@5 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) $t4@@1)) (=> (= (ControlFlow 0 184592) (- 0 248471)) (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t7@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t5@@3)) (= 5 $t7@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t5@@3)) 0)) (= 3 $t7@0@@0))) (and (not (= _$t0@@5 173345816)) (= 2 $t7@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (= 6 $t7@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) $t4@@1) (= 6 $t7@0@@0))))))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t7@0@@0 $abort_code@1@@4) (= (ControlFlow 0 184760) 184592))) L3_correct@@2)))
(let ((anon27_Then$1_correct  (=> (= $1_DiemSystem_CapabilityHolder_$memory@1 $1_DiemSystem_CapabilityHolder_$memory) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 184810) 184760) anon28_Then_correct) (=> (= (ControlFlow 0 184810) 184746) anon28_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) _$t0@@5) (= (ControlFlow 0 184808) 184810)) anon27_Then$1_correct)))
(let ((anon27_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) _$t0@@5)) (=> (and (and (= $1_DiemSystem_CapabilityHolder_$memory@0 ($Memory_107059 (|Store__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) _$t0@@5 true) (|Store__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) _$t0@@5 $t21@0))) (= $1_DiemSystem_CapabilityHolder_$memory@1 $1_DiemSystem_CapabilityHolder_$memory@0)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 184618) 184760) anon28_Then_correct) (=> (= (ControlFlow 0 184618) 184746) anon28_Else_correct))))))
(let ((anon26_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@1 (= $t21@0 ($1_DiemSystem_CapabilityHolder $t14@@1))) (and (=> (= (ControlFlow 0 184600) 184808) anon27_Then_correct) (=> (= (ControlFlow 0 184600) 184618) anon27_Else_correct)))))
(let ((anon26_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@1) (= $t20@@1 $t20@@1)) (and (= $t7@0@@0 $t20@@1) (= (ControlFlow 0 184420) 184592))) L3_correct@@2)))
(let ((anon11$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t20@@1) (= $t20@@1 6)) (and (= $t20@@1 $t20@@1) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 184404) 184600) anon26_Then_correct@@0) (=> (= (ControlFlow 0 184404) 184420) anon26_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not $t17@0@@0)) (= (ControlFlow 0 184364) 184404)) anon11$1_correct)))
(let ((anon11_correct  (=> (and (and (and (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| $t14@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) (and (= (let ((addr@@70 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@70))) $t12@0@@0) (= (|Select__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (= $t14@@1 $t14@@1) (|$IsValid'address'| 173345816)) (and (= $t17@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816)) (= (ControlFlow 0 184370) 184364)))) inline$$Not$0$anon0_correct@@1)))
(let ((anon25_Else_correct@@0  (=> (and (and (not |$temp_0'bool'@0@@0|) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0| ($Memory_106986 (|Store__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0|) (= (ControlFlow 0 184286) 184370))) anon11_correct)))
(let ((anon25_Then_correct@@0  (=> (and (and |$temp_0'bool'@0@@0| (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0| ($Memory_106986 (|Store__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@0|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0|) (= (ControlFlow 0 184822) 184370))) anon11_correct)))
(let ((anon24_Else_correct@@0  (=> (not $t15@@2) (and (=> (= (ControlFlow 0 184274) 184822) anon25_Then_correct@@0) (=> (= (ControlFlow 0 184274) 184286) anon25_Else_correct@@0)))))
(let ((anon24_Then_correct@@0  (=> $t15@@2 (=> (and (and (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@0)) (= 5 $t7@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@0)) 0)) (= 3 $t7@@0))) (and (not (= _$t0@@5 173345816)) (= 2 $t7@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (= 6 $t7@@0))) (= $t7@@0 $t7@@0)) (and (= $t7@0@@0 $t7@@0) (= (ControlFlow 0 184910) 184592))) L3_correct@@2))))
(let ((anon23_Else_correct@@0  (=> (and (not false) (= $t12@0@@0 ($1_DiemSystem_DiemSystem 0 |inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (and (=> (= (ControlFlow 0 184266) (- 0 247909)) (let (($range_0@@43 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)))))
(let (($range_1@@9 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)))))
(forall (($i_2@@5 Int) ($i_3@@9 Int) ) (!  (=> ($InRange $range_0@@43 $i_2@@5) (=> ($InRange $range_1@@9 $i_3@@9) (let ((i@@59 $i_2@@5))
(let ((j@@26 $i_3@@9))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0) i@@59)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0) j@@26))) (= i@@59 j@@26))))))
 :qid |DiemSystemseqArraybpl.7508:175|
 :skolemid |194|
))))) (=> (let (($range_0@@44 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)))))
(let (($range_1@@10 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)))))
(forall (($i_2@@6 Int) ($i_3@@10 Int) ) (!  (=> ($InRange $range_0@@44 $i_2@@6) (=> ($InRange $range_1@@10 $i_3@@10) (let ((i@@60 $i_2@@6))
(let ((j@@27 $i_3@@10))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0) i@@60)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0) j@@27))) (= i@@60 j@@27))))))
 :qid |DiemSystemseqArraybpl.7508:175|
 :skolemid |194|
)))) (=> (= $t13@@0 _$t0@@5) (and (=> (= (ControlFlow 0 184266) (- 0 248002)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| 173345816) (=> (= $t15@@2  (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@0)) 0))) (not (= _$t0@@5 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 184266) 184910) anon24_Then_correct@@0) (=> (= (ControlFlow 0 184266) 184274) anon24_Else_correct@@0)))))))))))
(let ((anon22_Then_correct@@1  (=> $t9@@3 (=> (and (and (or (or (or (and (not (= _$t0@@5 173345816)) (= 2 $t7@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t8)) (= 5 $t7@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t8)) 0)) (= 3 $t7@@0))) (and (not (= _$t0@@5 173345816)) (= 2 $t7@@0))) (= $t7@@0 $t7@@0)) (and (= $t7@0@@0 $t7@@0) (= (ControlFlow 0 185016) 184592))) L3_correct@@2))))
(let ((anon21_Then_correct@@1  (=> $t6@@1 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t7@@0)) (= $t7@@0 $t7@@0)) (and (= $t7@0@@0 $t7@@0) (= (ControlFlow 0 185042) 184592))) L3_correct@@2))))
(let ((anon23_Then_correct@@0 true))
(let ((|inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$v@1| (as seq.empty (Seq T@$1_DiemSystem_ValidatorInfo))) (and (=> (= (ControlFlow 0 184093) 184924) anon23_Then_correct@@0) (=> (= (ControlFlow 0 184093) 184266) anon23_Else_correct@@0)))))
(let ((anon22_Else_correct@@1  (=> (not $t9@@3) (=> (and (|$IsValid'u8'| 0) (= (ControlFlow 0 184099) 184093)) |inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|))))
(let ((anon21_Else_correct@@1  (=> (not $t6@@1) (=> (and (= $t8 _$t0@@5) (= $t9@@3  (or (or (or (not (= _$t0@@5 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t8)) 0))) (not (= _$t0@@5 173345816))))) (and (=> (= (ControlFlow 0 184057) 185016) anon22_Then_correct@@1) (=> (= (ControlFlow 0 184057) 184099) anon22_Else_correct@@1))))))
(let ((anon0$1_correct@@6  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108472| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@71) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@71)) 4))))
 :qid |DiemSystemseqArraybpl.7339:20|
 :skolemid |183|
)) (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@72) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@72)) 3))))
 :qid |DiemSystemseqArraybpl.7343:20|
 :skolemid |184|
))) (=> (and (and (and (and (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@73) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@73)) 3))))
 :qid |DiemSystemseqArraybpl.7347:20|
 :skolemid |185|
)) (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@74) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@74)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@74)) 3))))
 :qid |DiemSystemseqArraybpl.7351:20|
 :skolemid |186|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816))))) (and (and (let (($range_0@@45 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@75 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@75))))))))
(forall (($i_1@@37 Int) ) (!  (=> ($InRange $range_0@@45 $i_1@@37) (let ((i1@@10 $i_1@@37))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@76 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@76)))) i1@@10))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@76 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@76)))) i1@@10)))) 3))))
 :qid |DiemSystemseqArraybpl.7363:151|
 :skolemid |187|
))) (let (($range_0@@46 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@77 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@77))))))))
(forall (($i_1@@38 Int) ) (!  (=> ($InRange $range_0@@46 $i_1@@38) (let ((i1@@11 $i_1@@38))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@78 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@78)))) i1@@11)) 1)))
 :qid |DiemSystemseqArraybpl.7368:151|
 :skolemid |188|
)))) (and (|$IsValid'address'| _$t0@@5) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@11)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@11))
 :qid |DiemSystemseqArraybpl.7375:20|
 :skolemid |189|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@11))
))))) (and (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $a_0@@12)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@12))
 :qid |DiemSystemseqArraybpl.7379:20|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@13)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@13) (let (($range_1@@11 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@13))))))
(let (($range_2@@3 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@13))))))
(forall (($i_3@@11 Int) ($i_4@@3 Int) ) (!  (=> ($InRange $range_1@@11 $i_3@@11) (=> ($InRange $range_2@@3 $i_4@@3) (let ((i@@61 $i_3@@11))
(let ((j@@28 $i_4@@3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@13)) i@@61)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@13)) j@@28))) (= i@@61 j@@28))))))
 :qid |DiemSystemseqArraybpl.7384:367|
 :skolemid |191|
))))))
 :qid |DiemSystemseqArraybpl.7383:20|
 :skolemid |192|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@13))
))) (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@14)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@14))
 :qid |DiemSystemseqArraybpl.7389:20|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@14))
)) (= $t4@@1 _$t0@@5))) (and (and (= $t5@@3 _$t0@@5) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| 173345816)) (and (= _$t0@@5 _$t0@@5) (= $t6@@1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 183985) 185042) anon21_Then_correct@@1) (=> (= (ControlFlow 0 183985) 184057) anon21_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_75623| stream@@11) 0) (forall ((v@@60 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@11) v@@60) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 183518) 183985)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 247119) 183518) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t4@@2 () Bool)
(declare-fun $t3@@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t6@0@@1 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t7@@1 () Bool)
(declare-fun _$t0@@6 () Int)
(declare-fun $t5@@4 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_is_validator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 248703) (let ((anon4_Else_correct@@0  (=> (not $t4@@2) (=> (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t3@@1) (let (($range_0@@47 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t3@@1)))))
(let (($range_1@@12 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t3@@1)))))
(forall (($i_2@@7 Int) ($i_3@@12 Int) ) (!  (=> ($InRange $range_0@@47 $i_2@@7) (=> ($InRange $range_1@@12 $i_3@@12) (let ((i@@62 $i_2@@7))
(let ((j@@29 $i_3@@12))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t3@@1) i@@62)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t3@@1) j@@29))) (= i@@62 j@@29))))))
 :qid |DiemSystemseqArraybpl.7816:222|
 :skolemid |199|
))))) (= $t3@@1 (let ((addr@@79 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@79))))) (and (and (= $t3@@1 $t3@@1) (= $t6@0@@1 (|$validators#$1_DiemSystem_DiemSystem| $t3@@1))) (and (= $t7@@1 (let (($range_0@@48 $t6@0@@1))
(exists (($i_1@@39 Int) ) (!  (and (and (>= $i_1@@39 0) (< $i_1@@39 (seq.len $range_0@@48))) (let ((v@@61 (seq.nth $range_0@@48 $i_1@@39)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@61) _$t0@@6)))
 :qid |DiemSystemseqArraybpl.7840:62|
 :skolemid |200|
)))) (= $t7@@1 $t7@@1)))) (and (=> (= (ControlFlow 0 185704) (- 0 249219)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 185704) (- 0 249231)) (= $t7@@1 (let (($range_0@@49 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@80 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@80))))))
(exists (($i_1@@40 Int) ) (!  (and (and (>= $i_1@@40 0) (< $i_1@@40 (seq.len $range_0@@49))) (let ((v@@62 (seq.nth $range_0@@49 $i_1@@40)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@62) _$t0@@6)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
))))) (=> (= $t7@@1 (let (($range_0@@50 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@81 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@81))))))
(exists (($i_1@@41 Int) ) (!  (and (and (>= $i_1@@41 0) (< $i_1@@41 (seq.len $range_0@@50))) (let ((v@@63 (seq.nth $range_0@@50 $i_1@@41)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@63) _$t0@@6)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
)))) (=> (= (ControlFlow 0 185704) (- 0 249243)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@82 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@82)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@83 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@83))))))))))))))
(let ((anon4_Then_correct@@0  (=> $t4@@2 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t5@@4)) (= $t5@@4 $t5@@4)) (and (=> (= (ControlFlow 0 185762) (- 0 249025)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (= (ControlFlow 0 185762) (- 0 249032)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t5@@4)))))))))
(let ((anon0$1_correct@@7  (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (let (($range_0@@51 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@84 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@84))))))))
(forall (($i_1@@42 Int) ) (!  (=> ($InRange $range_0@@51 $i_1@@42) (let ((i1@@12 $i_1@@42))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@85 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@85)))) i1@@12))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@85 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@85)))) i1@@12)))) 3))))
 :qid |DiemSystemseqArraybpl.7759:151|
 :skolemid |195|
)))) (and (let (($range_0@@52 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@86 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@86))))))))
(forall (($i_1@@43 Int) ) (!  (=> ($InRange $range_0@@52 $i_1@@43) (let ((i1@@13 $i_1@@43))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@87 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@87)))) i1@@13)) 1)))
 :qid |DiemSystemseqArraybpl.7764:151|
 :skolemid |196|
))) (|$IsValid'address'| _$t0@@6))) (and (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@15)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@15) (let (($range_1@@13 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@15))))))
(let (($range_2@@4 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@15))))))
(forall (($i_3@@13 Int) ($i_4@@4 Int) ) (!  (=> ($InRange $range_1@@13 $i_3@@13) (=> ($InRange $range_2@@4 $i_4@@4) (let ((i@@63 $i_3@@13))
(let ((j@@30 $i_4@@4))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@15)) i@@63)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@15)) j@@30))) (= i@@63 j@@30))))))
 :qid |DiemSystemseqArraybpl.7773:367|
 :skolemid |197|
))))))
 :qid |DiemSystemseqArraybpl.7772:20|
 :skolemid |198|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@15))
)) (= _$t0@@6 _$t0@@6)) (and (= _$t0@@6 _$t0@@6) (= $t4@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 185508) 185762) anon4_Then_correct@@0) (=> (= (ControlFlow 0 185508) 185704) anon4_Else_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_75623| stream@@12) 0) (forall ((v@@64 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@12) v@@64) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 185245) 185508)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 248703) 185245) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@7 () Int)
(declare-fun _$t1@@3 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t3@@2 () Int)
(declare-fun $t4@@3 () |T@$1_Option_Option'u64'|)
(declare-fun $t5@@5 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_is_validator_$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 249261) (let ((anon0$1_correct@@8  (=> (|$IsValid'address'| _$t0@@7) (=> (and (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| _$t1@@3) (= _$t0@@7 _$t0@@7)) (and (= _$t1@@3 _$t1@@3) (= $t3@@2 (seq.len _$t1@@3)))) (=> (and (and (and (|$IsValid'$1_Option_Option'u64''| $t4@@3) (<= (seq.len (|$vec#$1_Option_Option'u64'| $t4@@3)) 1)) (=> (let (($range_0@@53 ($Range 0 $t3@@2)))
(forall (($i_1@@44 Int) ) (!  (=> ($InRange $range_0@@53 $i_1@@44) (let ((i@@64 $i_1@@44))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t1@@3 i@@64)) _$t0@@7))))
 :qid |DiemSystemseqArraybpl.7945:54|
 :skolemid |201|
))) (= (seq.len (|$vec#$1_Option_Option'u64'| $t4@@3)) 0))) (and (and (=> (let (($range_0@@54 ($Range 0 $t3@@2)))
(exists (($i_1@@45 Int) ) (!  (and ($InRange $range_0@@54 $i_1@@45) (let ((i@@65 $i_1@@45))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t1@@3 i@@65)) _$t0@@7)))
 :qid |DiemSystemseqArraybpl.7949:54|
 :skolemid |202|
))) (and (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t4@@3)) 0)) (let ((at@@2 (seq.nth (|$vec#$1_Option_Option'u64'| $t4@@3) 0)))
 (and (and (<= 0 at@@2) (< at@@2 $t3@@2)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t1@@3 at@@2)) _$t0@@7))))) (= $t4@@3 $t4@@3)) (and (= $t5@@5  (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t4@@3)) 0))) (= $t5@@5 $t5@@5)))) (and (=> (= (ControlFlow 0 186154) (- 0 249501)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 186154) (- 0 249508)) (= $t5@@5 (let (($range_0@@55 _$t1@@3))
(exists (($i_1@@46 Int) ) (!  (and (and (>= $i_1@@46 0) (< $i_1@@46 (seq.len $range_0@@55))) (let ((v@@65 (seq.nth $range_0@@55 $i_1@@46)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@65) _$t0@@7)))
 :qid |DiemSystemseqArraybpl.7985:57|
 :skolemid |203|
))))) (=> (= $t5@@5 (let (($range_0@@56 _$t1@@3))
(exists (($i_1@@47 Int) ) (!  (and (and (>= $i_1@@47 0) (< $i_1@@47 (seq.len $range_0@@56))) (let ((v@@66 (seq.nth $range_0@@56 $i_1@@47)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@66) _$t0@@7)))
 :qid |DiemSystemseqArraybpl.7985:57|
 :skolemid |203|
)))) (=> (= (ControlFlow 0 186154) (- 0 249544)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@88 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@88)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@89 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@89)))))))))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_75623| stream@@13) 0) (forall ((v@@67 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@13) v@@67) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 185883) 186154)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (ControlFlow 0 249261) 185883) inline$$InitEventStore$0$anon0_correct@@8)))
anon0_correct@@8))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t37 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@0 () T@$Memory_110366)
(declare-fun $t38@@0 () Int)
(declare-fun $t39 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1| () T@$Memory_106986)
(declare-fun $t2@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t40 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t41@@0 () T@$1_Event_EventHandle)
(declare-fun $t35@@0 () T@$1_Event_EventHandle)
(declare-fun $t42@@0 () Bool)
(declare-fun $t34@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t43@@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t44@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t45@@0 () Int)
(declare-fun $t46@@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun _$t1@@4 () Int)
(declare-fun $t7@@2 () Int)
(declare-fun _$t0@@8 () Int)
(declare-fun $t8@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t9@@4 () Int)
(declare-fun $t13@@1 () Int)
(declare-fun $t10@@2 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t11@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t12@@0 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@1@@0| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@0 () T@$Memory_110366)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@0 () T@$Memory_110366)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@0| () T@$1_DiemConfig_Configuration)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1| () T@$Memory_106986)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1| () T@$Memory_106986)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t36 () Bool)
(declare-fun $t15@0@@0 () Int)
(declare-fun $t15@@3 () Int)
(declare-fun $t32 () T@$1_DiemConfig_Configuration)
(declare-fun $t33 () Int)
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $t28@1 () T@$Mutation_112049)
(declare-fun $t28@0 () T@$Mutation_112049)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| () T@$Mutation_84196)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@1| () |T@[Int]Bool|)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@0| () T@$Mutation_84196)
(declare-fun $t26@@0 () Int)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$e@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_84196)
(declare-fun $t29@0 () T@$Mutation_84196)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| () Int)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t27 () Bool)
(declare-fun $t22@@0 () |T@$1_Option_Option'u64'|)
(declare-fun $t2@@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t23@@1 () Bool)
(declare-fun $t25@@1 () Int)
(declare-fun $t18@@0 () Bool)
(declare-fun $t20@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t21@@0 () Int)
(declare-fun $t17@@1 () Bool)
(declare-fun $t16@@1 () Int)
(declare-fun $t14@@2 () Bool)
(declare-fun $t28@@0 () T@$Mutation_112049)
(declare-fun $t29@@0 () T@$Mutation_84196)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_remove_validator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 249565) (let ((anon21_correct  (=> (and (and (= $t37 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory@2@@0) 173345816)) (= $t38@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t39 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t37))) (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) 173345816)) $t2@0))) (=> (and (and (and (= $t40 $t39) (= $t41@@0 $t35@@0)) (and (= $t42@@0  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t38@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t34@@0))))) (= $es@0@@0 (ite $t42@@0 (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) $t41@@0)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_75623| stream@@14)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@14) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t40))))
(Multiset_75623 (|Store__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@14) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t40) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) $t41@@0 stream_new@@3)))) $es)))) (and (and (= $t43@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@90 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) addr@@90))))) (= $t44@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory@2@@0) 173345816))) (and (= $t45@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t46@@0 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t44@@0)))))) (and (=> (= (ControlFlow 0 188612) (- 0 251944)) (not (not (let (($range_0@@57 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@91 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@91))))))
(exists (($i_1@@48 Int) ) (!  (and (and (>= $i_1@@48 0) (< $i_1@@48 (seq.len $range_0@@57))) (let ((v@@68 (seq.nth $range_0@@57 $i_1@@48)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@68) _$t1@@4)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
)))))) (=> (not (not (let (($range_0@@58 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@92 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@92))))))
(exists (($i_1@@49 Int) ) (!  (and (and (>= $i_1@@49 0) (< $i_1@@49 (seq.len $range_0@@58))) (let ((v@@69 (seq.nth $range_0@@58 $i_1@@49)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@69) _$t1@@4)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
))))) (and (=> (= (ControlFlow 0 188612) (- 0 251955)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t7@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t7@@2))) (and (=> (= (ControlFlow 0 188612) (- 0 251967)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t7@@2)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t7@@2)) 0))) (and (=> (= (ControlFlow 0 188612) (- 0 251985)) (not (not (= _$t0@@8 173345816)))) (=> (not (not (= _$t0@@8 173345816))) (and (=> (= (ControlFlow 0 188612) (- 0 251999)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 188612) (- 0 252009)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@0) 18446744073709551615)) (< $t9@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@0))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@0) 18446744073709551615)) (< $t9@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@0)))) (and (=> (= (ControlFlow 0 188612) (- 0 252051)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@1))) (and (=> (= (ControlFlow 0 188612) (- 0 252063)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@1)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@1)) 0))) (and (=> (= (ControlFlow 0 188612) (- 0 252081)) (not (not (= _$t0@@8 173345816)))) (=> (not (not (= _$t0@@8 173345816))) (and (=> (= (ControlFlow 0 188612) (- 0 252095)) (let (($range_0@@59 $t43@@0))
(forall (($i_1@@50 Int) ) (!  (=> (and (>= $i_1@@50 0) (< $i_1@@50 (seq.len $range_0@@59))) (let ((vi (seq.nth $range_0@@59 $i_1@@50)))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| vi) _$t1@@4)) (let (($range_2@@5 $t10@@2))
(exists (($i_3@@14 Int) ) (!  (and (and (>= $i_3@@14 0) (< $i_3@@14 (seq.len $range_2@@5))) (let ((ovi (seq.nth $range_2@@5 $i_3@@14)))
(= vi ovi)))
 :qid |DiemSystemseqArraybpl.8630:107|
 :skolemid |221|
))))))
 :qid |DiemSystemseqArraybpl.8629:38|
 :skolemid |222|
)))) (=> (let (($range_0@@60 $t43@@0))
(forall (($i_1@@51 Int) ) (!  (=> (and (>= $i_1@@51 0) (< $i_1@@51 (seq.len $range_0@@60))) (let ((vi@@0 (seq.nth $range_0@@60 $i_1@@51)))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| vi@@0) _$t1@@4)) (let (($range_2@@6 $t10@@2))
(exists (($i_3@@15 Int) ) (!  (and (and (>= $i_3@@15 0) (< $i_3@@15 (seq.len $range_2@@6))) (let ((ovi@@0 (seq.nth $range_2@@6 $i_3@@15)))
(= vi@@0 ovi@@0)))
 :qid |DiemSystemseqArraybpl.8630:107|
 :skolemid |221|
))))))
 :qid |DiemSystemseqArraybpl.8629:38|
 :skolemid |222|
))) (and (=> (= (ControlFlow 0 188612) (- 0 252161)) (not (let (($range_0@@61 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@93 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) addr@@93))))))
(exists (($i_1@@52 Int) ) (!  (and (and (>= $i_1@@52 0) (< $i_1@@52 (seq.len $range_0@@61))) (let ((v@@70 (seq.nth $range_0@@61 $i_1@@52)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@70) _$t1@@4)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
))))) (=> (not (let (($range_0@@62 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@94 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) addr@@94))))))
(exists (($i_1@@53 Int) ) (!  (and (and (>= $i_1@@53 0) (< $i_1@@53 (seq.len $range_0@@62))) (let ((v@@71 (seq.nth $range_0@@62 $i_1@@53)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@71) _$t1@@4)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
)))) (and (=> (= (ControlFlow 0 188612) (- 0 252170)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11@@2)))) (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t12@@0)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_75623| stream@@15)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@15) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0))))
(Multiset_75623 (|Store__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@15) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t12@@0 stream_new@@4)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@14 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@2) handle@@14)) (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@2) handle@@14))) (forall ((v@@72 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@2) handle@@14)) v@@72) (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@2) handle@@14)) v@@72))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2734:13|
 :skolemid |75|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11@@2)))) (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t12@@0)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_75623| stream@@16)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@16) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0))))
(Multiset_75623 (|Store__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@16) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t12@@0 stream_new@@5)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@15 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@3) handle@@15)) (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@3) handle@@15))) (forall ((v@@73 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@3) handle@@15)) v@@73) (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@3) handle@@15)) v@@73))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2734:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 188612) (- 0 252215)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11@@2)))) (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t12@@0)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_75623| stream@@17)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@17) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0))))
(Multiset_75623 (|Store__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@17) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t12@@0 stream_new@@6)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@16 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@4) handle@@16)) (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@4) handle@@16))) (forall ((v@@74 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@4) handle@@16)) v@@74) (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@4) handle@@16)) v@@74))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2734:13|
 :skolemid |75|
))))))))))))))))))))))))))))))))))
(let ((anon31_Else_correct  (=> (and (and (not |$temp_0'bool'@1@@0|) (= $1_DiemConfig_Configuration_$memory@1@@0 ($Memory_110366 (|Store__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2@@0 $1_DiemConfig_Configuration_$memory@1@@0) (= (ControlFlow 0 188142) 188612))) anon21_correct)))
(let ((anon31_Then_correct  (=> (and (and |$temp_0'bool'@1@@0| (= $1_DiemConfig_Configuration_$memory@0@@0 ($Memory_110366 (|Store__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0@@0|)))) (and (= $1_DiemConfig_Configuration_$memory@2@@0 $1_DiemConfig_Configuration_$memory@0@@0) (= (ControlFlow 0 188624) 188612))) anon21_correct)))
(let ((anon30_Else_correct  (=> (not |$temp_0'bool'@0@@1|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1| ($Memory_106986 (|Store__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1|)) (and (=> (= (ControlFlow 0 188128) 188624) anon31_Then_correct) (=> (= (ControlFlow 0 188128) 188142) anon31_Else_correct))))))
(let ((anon30_Then_correct  (=> |$temp_0'bool'@0@@1| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1| ($Memory_106986 (|Store__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@1|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1|)) (and (=> (= (ControlFlow 0 188636) 188624) anon31_Then_correct) (=> (= (ControlFlow 0 188636) 188142) anon31_Else_correct))))))
(let ((anon29_Else_correct  (=> (not $t36) (and (=> (= (ControlFlow 0 188116) 188636) anon30_Then_correct) (=> (= (ControlFlow 0 188116) 188128) anon30_Else_correct)))))
(let ((L3_correct@@3  (and (=> (= (ControlFlow 0 187617) (- 0 251384)) (or (or (or (or (or (or (or (or (not (let (($range_0@@63 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@95 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@95))))))
(exists (($i_1@@54 Int) ) (!  (and (and (>= $i_1@@54 0) (< $i_1@@54 (seq.len $range_0@@63))) (let ((v@@75 (seq.nth $range_0@@63 $i_1@@54)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@75) _$t1@@4)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t7@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t7@@2)) 0))) (not (= _$t0@@8 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@0) 18446744073709551615)) (< $t9@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@1)) 0))) (not (= _$t0@@8 173345816)))) (=> (or (or (or (or (or (or (or (or (not (let (($range_0@@64 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@96 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@96))))))
(exists (($i_1@@55 Int) ) (!  (and (and (>= $i_1@@55 0) (< $i_1@@55 (seq.len $range_0@@64))) (let ((v@@76 (seq.nth $range_0@@64 $i_1@@55)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@76) _$t1@@4)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t7@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t7@@2)) 0))) (not (= _$t0@@8 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@0) 18446744073709551615)) (< $t9@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@1)) 0))) (not (= _$t0@@8 173345816))) (=> (= (ControlFlow 0 187617) (- 0 251506)) (or (or (or (or (or (or (or (or (and (not (let (($range_0@@65 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@97 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@97))))))
(exists (($i_1@@56 Int) ) (!  (and (and (>= $i_1@@56 0) (< $i_1@@56 (seq.len $range_0@@65))) (let ((v@@77 (seq.nth $range_0@@65 $i_1@@56)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@77) _$t1@@4)))
 :qid |DiemSystemseqArraybpl.5020:125|
 :skolemid |138|
)))) (= 7 $t15@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t7@@2)) (= 5 $t15@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t7@@2)) 0)) (= 3 $t15@0@@0))) (and (not (= _$t0@@8 173345816)) (= 2 $t15@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@0@@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@0) 18446744073709551615)) (< $t9@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@0))) (= 1 $t15@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@1)) (= 5 $t15@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t13@@1)) 0)) (= 3 $t15@0@@0))) (and (not (= _$t0@@8 173345816)) (= 2 $t15@0@@0))))))))
(let ((anon29_Then_correct  (=> $t36 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@3)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t32) 18446744073709551615)) (< $t33 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t32))) (= 1 $t15@@3))) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 188712) 187617))) L3_correct@@3))))
(let ((anon28_Else_correct@@0  (=> (and (not $abort_flag@0@@5) (= $t28@1 ($Mutation_112049 (|l#$Mutation_112049| $t28@0) (|p#$Mutation_112049| $t28@0) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t28@0)) (|v#$Mutation_84196| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2|))))) (and (=> (= (ControlFlow 0 188110) (- 0 251065)) (let (($range_0@@66 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t28@1))))))
(let (($range_1@@14 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t28@1))))))
(forall (($i_2@@8 Int) ($i_3@@16 Int) ) (!  (=> ($InRange $range_0@@66 $i_2@@8) (=> ($InRange $range_1@@14 $i_3@@16) (let ((i@@66 $i_2@@8))
(let ((j@@31 $i_3@@16))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t28@1)) i@@66)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t28@1)) j@@31))) (= i@@66 j@@31))))))
 :qid |DiemSystemseqArraybpl.8450:203|
 :skolemid |220|
))))) (=> (let (($range_0@@67 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t28@1))))))
(let (($range_1@@15 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t28@1))))))
(forall (($i_2@@9 Int) ($i_3@@17 Int) ) (!  (=> ($InRange $range_0@@67 $i_2@@9) (=> ($InRange $range_1@@15 $i_3@@17) (let ((i@@67 $i_2@@9))
(let ((j@@32 $i_3@@17))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t28@1)) i@@67)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t28@1)) j@@32))) (= i@@67 j@@32))))))
 :qid |DiemSystemseqArraybpl.8450:203|
 :skolemid |220|
)))) (=> (= $t2@0 (|v#$Mutation_112049| $t28@1)) (=> (and (and (= $t32 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t33 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t34@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t35@@0 (|$events#$1_DiemConfig_Configuration| $t34@@0)))) (and (=> (= (ControlFlow 0 188110) (- 0 251218)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@1| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@1| 173345816) (=> (= $t36  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t32) 18446744073709551615)) (< $t33 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t32))))) (and (=> (= (ControlFlow 0 188110) 188712) anon29_Then_correct) (=> (= (ControlFlow 0 188110) 188116) anon29_Else_correct))))))))))))
(let ((anon28_Then_correct@@0  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t15@0@@0 $abort_code@1@@5) (= (ControlFlow 0 188726) 187617))) L3_correct@@3)))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0@@5 true) (=> (and (= $abort_code@1@@5 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@0|)) (and (=> (= (ControlFlow 0 187875) 188726) anon28_Then_correct@@0) (=> (= (ControlFlow 0 187875) 188110) anon28_Else_correct@@0))))))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|  (=> (and (not (and (>= $t26@@0 0) (< $t26@@0 (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|)))) (= (ControlFlow 0 187873) 187875)) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|  (=> (and (and (and (>= $t26@@0 0) (< $t26@@0 (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$e@1| (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0))) (and (and (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1| ($Mutation_84196 (|l#$Mutation_84196| $t29@0) (|p#$Mutation_84196| $t29@0) (seq.extract (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) 0 (- $t26@@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1))) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) (+ $t26@@0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1))))) (+ $t26@@0 1)))) 0 (- (- (seq.len (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) 0 (- $t26@@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1))) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) (+ $t26@@0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1))))) (+ $t26@@0 1))))) 1) 0)))) (= $abort_flag@0@@5 false)) (and (= $abort_code@1@@5 $abort_code@0@@5) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1|)))) (and (=> (= (ControlFlow 0 187823) 188726) anon28_Then_correct@@0) (=> (= (ControlFlow 0 187823) 188110) anon28_Else_correct@@0)))))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (|v#$Mutation_84196| $t29@0)) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (and (=> (= (ControlFlow 0 187791) 187873) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 187791) 187823) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|)))))
(let ((anon27_Else_correct@@0  (=> (not $t27) (=> (and (|$IsValid'u64'| $t26@@0) (= $t26@@0 (seq.nth (|$vec#$1_Option_Option'u64'| $t22@@0) 0))) (=> (and (and (= $t26@@0 $t26@@0) (= $t28@0 ($Mutation_112049 ($Local 2) (as seq.empty (Seq Int)) $t2@@0))) (and (= $t29@0 ($Mutation_84196 (|l#$Mutation_112049| $t28@0) (seq.++ (|p#$Mutation_112049| $t28@0) (seq.unit 1)) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112049| $t28@0)))) (= (ControlFlow 0 187883) 187791))) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))))
(let ((anon27_Then_correct@@0  (=> $t27 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'u64'| $t22@@0)) 0) (= 7 $t15@@3)) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 188750) 187617))) L3_correct@@3))))
(let ((anon26_Then_correct@@1  (=> (and $t23@@1 (= $t27 (= (seq.len (|$vec#$1_Option_Option'u64'| $t22@@0)) 0))) (and (=> (= (ControlFlow 0 187629) 188750) anon27_Then_correct@@0) (=> (= (ControlFlow 0 187629) 187883) anon27_Else_correct@@0)))))
(let ((anon26_Else_correct@@1  (=> (and (and (not $t23@@1) (= $t25@@1 $t25@@1)) (and (= $t15@0@@0 $t25@@1) (= (ControlFlow 0 187269) 187617))) L3_correct@@3)))
(let ((anon25_Else_correct@@1  (=> (not $t18@@0) (=> (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t2@@0) (let (($range_0@@68 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t2@@0)))))
(let (($range_1@@16 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t2@@0)))))
(forall (($i_2@@10 Int) ($i_3@@18 Int) ) (!  (=> ($InRange $range_0@@68 $i_2@@10) (=> ($InRange $range_1@@16 $i_3@@18) (let ((i@@68 $i_2@@10))
(let ((j@@33 $i_3@@18))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t2@@0) i@@68)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t2@@0) j@@33))) (= i@@68 j@@33))))))
 :qid |DiemSystemseqArraybpl.8287:222|
 :skolemid |217|
))))) (=> (and (and (and (and (= $t2@@0 (let ((addr@@98 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@98)))) (= $t2@@0 $t2@@0)) (and (= $t20@0 (|$validators#$1_DiemSystem_DiemSystem| $t2@@0)) (= $t21@@0 (seq.len $t20@0)))) (and (and (|$IsValid'$1_Option_Option'u64''| $t22@@0) (<= (seq.len (|$vec#$1_Option_Option'u64'| $t22@@0)) 1)) (=> (let (($range_0@@69 ($Range 0 $t21@@0)))
(forall (($i_1@@57 Int) ) (!  (=> ($InRange $range_0@@69 $i_1@@57) (let ((i@@69 $i_1@@57))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t20@0 i@@69)) _$t1@@4))))
 :qid |DiemSystemseqArraybpl.8320:55|
 :skolemid |218|
))) (= (seq.len (|$vec#$1_Option_Option'u64'| $t22@@0)) 0)))) (and (and (and (=> (let (($range_0@@70 ($Range 0 $t21@@0)))
(exists (($i_1@@58 Int) ) (!  (and ($InRange $range_0@@70 $i_1@@58) (let ((i@@70 $i_1@@58))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t20@0 i@@70)) _$t1@@4)))
 :qid |DiemSystemseqArraybpl.8324:55|
 :skolemid |219|
))) (and (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t22@@0)) 0)) (let ((at@@3 (seq.nth (|$vec#$1_Option_Option'u64'| $t22@@0) 0)))
 (and (and (<= 0 at@@3) (< at@@3 $t21@@0)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t20@0 at@@3)) _$t1@@4))))) (= $t22@@0 $t22@@0)) (and (= $t23@@1  (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t22@@0)) 0))) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t25@@1) (= $t25@@1 7)) (and (= $t25@@1 $t25@@1) (= $t23@@1 $t23@@1))))) (and (=> (= (ControlFlow 0 187253) 187629) anon26_Then_correct@@1) (=> (= (ControlFlow 0 187253) 187269) anon26_Else_correct@@1)))))))
(let ((anon25_Then_correct@@1  (=> $t18@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t15@@3)) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 188778) 187617))) L3_correct@@3))))
(let ((anon24_Else_correct@@1  (=> (and (not $t17@@1) (= $t18@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 186942) 188778) anon25_Then_correct@@1) (=> (= (ControlFlow 0 186942) 187253) anon25_Else_correct@@1)))))
(let ((anon24_Then_correct@@1  (=> $t17@@1 (=> (and (and (or (or (or (and (not (= _$t0@@8 173345816)) (= 2 $t15@@3)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t16@@1)) (= 5 $t15@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t16@@1)) 0)) (= 3 $t15@@3))) (and (not (= _$t0@@8 173345816)) (= 2 $t15@@3))) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 188870) 187617))) L3_correct@@3))))
(let ((anon23_Else_correct@@1  (=> (not $t14@@2) (=> (and (= $t16@@1 _$t0@@8) (= $t17@@1  (or (or (or (not (= _$t0@@8 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) $t16@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $t16@@1)) 0))) (not (= _$t0@@8 173345816))))) (and (=> (= (ControlFlow 0 186922) 188870) anon24_Then_correct@@1) (=> (= (ControlFlow 0 186922) 186942) anon24_Else_correct@@1))))))
(let ((anon23_Then_correct@@1  (=> $t14@@2 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@3)) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 188896) 187617))) L3_correct@@3))))
(let ((anon0$1_correct@@9  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108472| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@99) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@99)) 4))))
 :qid |DiemSystemseqArraybpl.8078:20|
 :skolemid |204|
))) (and (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@100) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@100)) 3))))
 :qid |DiemSystemseqArraybpl.8082:20|
 :skolemid |205|
)) (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@101) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@101) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@101)) 3))))
 :qid |DiemSystemseqArraybpl.8086:20|
 :skolemid |206|
)))) (=> (and (and (and (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@102) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@102)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@102) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@102)) 3))))
 :qid |DiemSystemseqArraybpl.8090:20|
 :skolemid |207|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (let (($range_0@@71 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@103 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@103))))))))
(forall (($i_1@@59 Int) ) (!  (=> ($InRange $range_0@@71 $i_1@@59) (let ((i1@@14 $i_1@@59))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@104 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@104)))) i1@@14))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@104 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@104)))) i1@@14)))) 3))))
 :qid |DiemSystemseqArraybpl.8102:151|
 :skolemid |208|
))))) (and (and (let (($range_0@@72 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@105 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@105))))))))
(forall (($i_1@@60 Int) ) (!  (=> ($InRange $range_0@@72 $i_1@@60) (let ((i1@@15 $i_1@@60))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@106 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@106)))) i1@@15)) 1)))
 :qid |DiemSystemseqArraybpl.8107:151|
 :skolemid |209|
))) (|$IsValid'address'| _$t0@@8)) (and (|$IsValid'address'| _$t1@@4) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@16)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@16))
 :qid |DiemSystemseqArraybpl.8117:20|
 :skolemid |210|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@16))
))))) (=> (and (and (and (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $a_0@@17)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@17))
 :qid |DiemSystemseqArraybpl.8121:20|
 :skolemid |211|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) $a_0@@17))
)) (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) $a_0@@18)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@18))
 :qid |DiemSystemseqArraybpl.8125:20|
 :skolemid |212|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) $a_0@@18))
))) (and (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@19)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@19))
 :qid |DiemSystemseqArraybpl.8129:20|
 :skolemid |213|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@19))
)) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@20)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@20) (let (($range_1@@17 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@20))))))
(let (($range_2@@7 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@20))))))
(forall (($i_3@@19 Int) ($i_4@@5 Int) ) (!  (=> ($InRange $range_1@@17 $i_3@@19) (=> ($InRange $range_2@@7 $i_4@@5) (let ((i@@71 $i_3@@19))
(let ((j@@34 $i_4@@5))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@20)) i@@71)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@20)) j@@34))) (= i@@71 j@@34))))))
 :qid |DiemSystemseqArraybpl.8134:367|
 :skolemid |214|
))))))
 :qid |DiemSystemseqArraybpl.8133:20|
 :skolemid |215|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@20))
)))) (and (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@21)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@21))
 :qid |DiemSystemseqArraybpl.8139:20|
 :skolemid |216|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@21))
)) (= $t7@@2 _$t0@@8)) (and (= $t8@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t9@@4 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (and (and (= $t10@@2 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@107 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@107))))) (= $t11@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t12@@0 (|$events#$1_DiemConfig_Configuration| $t11@@2)) (= $t13@@1 _$t0@@8))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@1| 173345816) (= _$t0@@8 _$t0@@8)) (and (= _$t1@@4 _$t1@@4) (= $t14@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 186850) 188896) anon23_Then_correct@@1) (=> (= (ControlFlow 0 186850) 186922) anon23_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@17 T@$1_Event_EventHandle) ) (! (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@17)))
 (and (= (|l#Multiset_75623| stream@@18) 0) (forall ((v@@78 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@18) v@@78) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 186275) 186850)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (seq.len (|p#$Mutation_112049| $t28@@0)) 0) (=> (and (= (seq.len (|p#$Mutation_84196| $t29@@0)) 0) (= (ControlFlow 0 186285) 186275)) inline$$InitEventStore$0$anon0_correct@@9))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 249565) 186285) anon0_correct@@9)))
PreconditionGeneratedEntry_correct@@1)))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 249565)))
(get-value ((ControlFlow 0 186285)))
(get-value ((ControlFlow 0 186275)))
(get-value ((ControlFlow 0 186850)))
(get-value ((ControlFlow 0 186922)))
(get-value ((ControlFlow 0 186942)))
(get-value ((ControlFlow 0 187253)))
(get-value ((ControlFlow 0 187629)))
(get-value ((ControlFlow 0 187883)))
(get-value ((ControlFlow 0 187791)))
(get-value ((ControlFlow 0 187823)))
(get-value ((ControlFlow 0 188110)))
(assert (not (= (ControlFlow 0 188110) (- 251065))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 249565)))
(get-value ((ControlFlow 0 186285)))
(get-value ((ControlFlow 0 186275)))
(get-value ((ControlFlow 0 186850)))
(get-value ((ControlFlow 0 186922)))
(get-value ((ControlFlow 0 186942)))
(get-value ((ControlFlow 0 187253)))
(get-value ((ControlFlow 0 187629)))
(get-value ((ControlFlow 0 187883)))
(get-value ((ControlFlow 0 187791)))
(get-value ((ControlFlow 0 187823)))
(get-value ((ControlFlow 0 188110)))
(get-value ((ControlFlow 0 188116)))
(get-value ((ControlFlow 0 188636)))
(get-value ((ControlFlow 0 188624)))
(get-value ((ControlFlow 0 188612)))
(assert (not (= (ControlFlow 0 188612) (- 252095))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 249565)))
(get-value ((ControlFlow 0 186285)))
(get-value ((ControlFlow 0 186275)))
(get-value ((ControlFlow 0 186850)))
(get-value ((ControlFlow 0 186922)))
(get-value ((ControlFlow 0 186942)))
(get-value ((ControlFlow 0 187253)))
(get-value ((ControlFlow 0 187629)))
(get-value ((ControlFlow 0 187883)))
(get-value ((ControlFlow 0 187791)))
(get-value ((ControlFlow 0 187823)))
(get-value ((ControlFlow 0 188110)))
(get-value ((ControlFlow 0 188116)))
(get-value ((ControlFlow 0 188636)))
(get-value ((ControlFlow 0 188624)))
(get-value ((ControlFlow 0 188612)))
(assert (not (= (ControlFlow 0 188612) (- 252161))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $t21@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@1 () T@$Memory_110366)
(declare-fun $t22@@1 () Int)
(declare-fun $t23@@2 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2| () T@$Memory_106986)
(declare-fun _$t0@@9 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t24@@1 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t25@@2 () T@$1_Event_EventHandle)
(declare-fun $t19@@0 () T@$1_Event_EventHandle)
(declare-fun $t26@@1 () Bool)
(declare-fun $t18@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@1 () T@$EventStore)
(declare-fun $t27@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t28@@1 () Int)
(declare-fun $t29@@1 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t3@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $t4@@4 () Int)
(declare-fun $t5@@6 () T@$1_DiemConfig_Configuration)
(declare-fun $t6@@2 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@1@@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@2| () T@$Memory_106986)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@2| () T@$Memory_106986)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@2| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@1 () T@$Memory_110366)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@1 () T@$Memory_110366)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@1| () T@$1_DiemConfig_Configuration)
(declare-fun $t20@@2 () Bool)
(declare-fun $t8@0@@1 () Int)
(declare-fun $t8@@1 () Int)
(declare-fun $t16@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t17@@2 () Int)
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $t15@0@@1 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(declare-fun $t14@@3 () T@$1_DiemSystem_CapabilityHolder)
(declare-fun $1_DiemConfig_Configuration_$modifies () |T@[Int]Bool|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@2| () |T@[Int]Bool|)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun $t14@0@@3 () T@$1_DiemSystem_CapabilityHolder)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun $t10@0@@1 () Bool)
(declare-fun $t12@@1 () Int)
(declare-fun $t7@@3 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_set_diem_system_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 252265) (let ((anon18_correct  (=> (= $t21@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory@2@@1) 173345816)) (=> (and (and (= $t22@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t23@@2 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t21@@1)))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2|) 173345816) (= (let ((addr@@108 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2|) addr@@108))) _$t0@@9))) (=> (and (and (and (= (|Select__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory@2@@1) 173345816)) (= $t24@@1 $t23@@2)) (and (= $t25@@2 $t19@@0) (= $t26@@1  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t22@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t18@@1))))))) (and (and (= $es@0@@1 (ite $t26@@1 (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) $t25@@2)))
(let ((stream_new@@7 (let ((len@@7 (|l#Multiset_75623| stream@@19)))
(let ((cnt@@7 (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t24@@1))))
(Multiset_75623 (|Store__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t24@@1) (+ cnt@@7 1)) (+ len@@7 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) $t25@@2 stream_new@@7)))) $es)) (= $t27@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory@2@@1) 173345816))) (and (= $t28@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t29@@1 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t27@@0)))))) (and (=> (= (ControlFlow 0 190487) (- 0 253593)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 190487) (- 0 253603)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@3) 18446744073709551615)) (< $t4@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@3))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@3) 18446744073709551615)) (< $t4@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@3)))) (and (=> (= (ControlFlow 0 190487) (- 0 253645)) (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2|) 173345816)) _$t0@@9)) (=> (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2|) 173345816)) _$t0@@9) (and (=> (= (ControlFlow 0 190487) (- 0 253658)) (let ((actual@@5 ($EventStore (- (|counter#$EventStore| $es@0@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@1) (|streams#$EventStore| $es)))))
(let ((expected@@5 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t28@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t5@@6)))) (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t6@@2)))
(let ((stream_new@@8 (let ((len@@8 (|l#Multiset_75623| stream@@20)))
(let ((cnt@@8 (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@20) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29@@1))))
(Multiset_75623 (|Store__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@20) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29@@1) (+ cnt@@8 1)) (+ len@@8 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t6@@2 stream_new@@8)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@5) (|counter#$EventStore| actual@@5)) (forall ((handle@@18 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@5) handle@@18)) (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@5) handle@@18))) (forall ((v@@79 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@5) handle@@18)) v@@79) (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@5) handle@@18)) v@@79))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2734:13|
 :skolemid |75|
)))))) (=> (let ((actual@@6 ($EventStore (- (|counter#$EventStore| $es@0@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@1) (|streams#$EventStore| $es)))))
(let ((expected@@6 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t28@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t5@@6)))) (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t6@@2)))
(let ((stream_new@@9 (let ((len@@9 (|l#Multiset_75623| stream@@21)))
(let ((cnt@@9 (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29@@1))))
(Multiset_75623 (|Store__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29@@1) (+ cnt@@9 1)) (+ len@@9 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t6@@2 stream_new@@9)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@6) (|counter#$EventStore| actual@@6)) (forall ((handle@@19 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@6) handle@@19)) (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@6) handle@@19))) (forall ((v@@80 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@6) handle@@19)) v@@80) (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@6) handle@@19)) v@@80))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2734:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 190487) (- 0 253703)) (let ((actual@@7 ($EventStore (- (|counter#$EventStore| $es@0@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@1) (|streams#$EventStore| $es)))))
(let ((expected@@7 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t28@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t5@@6)))) (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t6@@2)))
(let ((stream_new@@10 (let ((len@@10 (|l#Multiset_75623| stream@@22)))
(let ((cnt@@10 (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@22) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29@@1))))
(Multiset_75623 (|Store__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@22) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29@@1) (+ cnt@@10 1)) (+ len@@10 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $EmptyEventStore) $t6@@2 stream_new@@10)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@7) (|counter#$EventStore| expected@@7)) (forall ((handle@@20 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@7) handle@@20)) (|l#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@7) handle@@20))) (forall ((v@@81 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| actual@@7) handle@@20)) v@@81) (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| expected@@7) handle@@20)) v@@81))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2734:13|
 :skolemid |75|
)))))))))))))))))))
(let ((anon26_Else_correct@@2  (=> (and (and (not |$temp_0'bool'@1@@1|) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@2| ($Memory_106986 (|Store__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@2|) (= (ControlFlow 0 190179) 190487))) anon18_correct)))
(let ((anon26_Then_correct@@2  (=> (and (and |$temp_0'bool'@1@@1| (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@2| ($Memory_106986 (|Store__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@2|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@2|) (= (ControlFlow 0 190499) 190487))) anon18_correct)))
(let ((anon25_Else_correct@@2  (=> (not |$temp_0'bool'@0@@2|) (=> (and (= $1_DiemConfig_Configuration_$memory@1@@1 ($Memory_110366 (|Store__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory))) (= $1_DiemConfig_Configuration_$memory@2@@1 $1_DiemConfig_Configuration_$memory@1@@1)) (and (=> (= (ControlFlow 0 190165) 190499) anon26_Then_correct@@2) (=> (= (ControlFlow 0 190165) 190179) anon26_Else_correct@@2))))))
(let ((anon25_Then_correct@@2  (=> |$temp_0'bool'@0@@2| (=> (and (= $1_DiemConfig_Configuration_$memory@0@@1 ($Memory_110366 (|Store__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0@@1|))) (= $1_DiemConfig_Configuration_$memory@2@@1 $1_DiemConfig_Configuration_$memory@0@@1)) (and (=> (= (ControlFlow 0 190511) 190499) anon26_Then_correct@@2) (=> (= (ControlFlow 0 190511) 190179) anon26_Else_correct@@2))))))
(let ((anon24_Else_correct@@2  (=> (not $t20@@2) (and (=> (= (ControlFlow 0 190153) 190511) anon25_Then_correct@@2) (=> (= (ControlFlow 0 190153) 190165) anon25_Else_correct@@2)))))
(let ((L3_correct@@4  (and (=> (= (ControlFlow 0 189995) (- 0 253238)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@3) 18446744073709551615)) (< $t4@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@3))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@3) 18446744073709551615)) (< $t4@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@3)))) (=> (= (ControlFlow 0 189995) (- 0 253282)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t8@0@@1)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@3) 18446744073709551615)) (< $t4@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@3))) (= 1 $t8@0@@1))))))))
(let ((anon24_Then_correct@@2  (=> $t20@@2 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t8@@1)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16@@2) 18446744073709551615)) (< $t17@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16@@2))) (= 1 $t8@@1))) (= $t8@@1 $t8@@1)) (and (= $t8@0@@1 $t8@@1) (= (ControlFlow 0 190589) 189995))) L3_correct@@4))))
(let ((anon23_Else_correct@@2  (=> (and (not $abort_flag@0@@6) (= $t15@0@@1 (|$cap#$1_DiemSystem_CapabilityHolder| $t14@@3))) (=> (and (and (= $t16@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t17@@2 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t18@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t19@@0 (|$events#$1_DiemConfig_Configuration| $t18@@1)))) (and (=> (= (ControlFlow 0 190145) (- 0 253074)) (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies 173345816) (and (=> (= (ControlFlow 0 190145) (- 0 253080)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@2| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@2| 173345816) (=> (= $t20@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16@@2) 18446744073709551615)) (< $t17@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16@@2))))) (and (=> (= (ControlFlow 0 190145) 190589) anon24_Then_correct@@2) (=> (= (ControlFlow 0 190145) 190153) anon24_Else_correct@@2)))))))))))
(let ((anon23_Then_correct@@2  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t8@0@@1 $abort_code@1@@6) (= (ControlFlow 0 190603) 189995))) L3_correct@@4)))
(let ((anon22_Then$1_correct@@0  (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 190655) 190603) anon23_Then_correct@@2) (=> (= (ControlFlow 0 190655) 190145) anon23_Else_correct@@2)))))
(let ((anon22_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816)) (= (ControlFlow 0 190653) 190655)) anon22_Then$1_correct@@0)))
(let ((anon22_Else_correct@@2  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816) (= $t14@0@@3 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6))) (and (=> (= (ControlFlow 0 190019) 190603) anon23_Then_correct@@2) (=> (= (ControlFlow 0 190019) 190145) anon23_Else_correct@@2)))))
(let ((anon21_Then_correct@@2  (=> (and $t10@0@@1 (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 190005) 190653) anon22_Then_correct@@2) (=> (= (ControlFlow 0 190005) 190019) anon22_Else_correct@@2)))))
(let ((anon21_Else_correct@@2  (=> (and (and (not $t10@0@@1) (= $t12@@1 $t12@@1)) (and (= $t8@0@@1 $t12@@1) (= (ControlFlow 0 189875) 189995))) L3_correct@@4)))
(let ((anon20_Else_correct@@1  (=> (and (and (and (not $t7@@3) (|$IsValid'address'| 173345816)) (and (= $t10@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t12@@1) (= $t12@@1 5)) (and (= $t12@@1 $t12@@1) (= $t10@0@@1 $t10@0@@1)))) (and (=> (= (ControlFlow 0 189859) 190005) anon21_Then_correct@@2) (=> (= (ControlFlow 0 189859) 189875) anon21_Else_correct@@2)))))
(let ((anon20_Then_correct@@1  (=> $t7@@3 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t8@@1)) (= $t8@@1 $t8@@1)) (and (= $t8@0@@1 $t8@@1) (= (ControlFlow 0 190681) 189995))) L3_correct@@4))))
(let ((anon0$1_correct@@10  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (let (($range_0@@73 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@109 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@109))))))))
(forall (($i_1@@61 Int) ) (!  (=> ($InRange $range_0@@73 $i_1@@61) (let ((i1@@16 $i_1@@61))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@110 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@110)))) i1@@16))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@110 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@110)))) i1@@16)))) 3))))
 :qid |DiemSystemseqArraybpl.8736:151|
 :skolemid |223|
))) (let (($range_0@@74 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@111 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@111))))))))
(forall (($i_1@@62 Int) ) (!  (=> ($InRange $range_0@@74 $i_1@@62) (let ((i1@@17 $i_1@@62))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@112 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@112)))) i1@@17)) 1)))
 :qid |DiemSystemseqArraybpl.8741:151|
 :skolemid |224|
))))) (=> (and (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| _$t0@@9) (let (($range_0@@75 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| _$t0@@9)))))
(let (($range_1@@18 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| _$t0@@9)))))
(forall (($i_2@@11 Int) ($i_3@@20 Int) ) (!  (=> ($InRange $range_0@@75 $i_2@@11) (=> ($InRange $range_1@@18 $i_3@@20) (let ((i@@72 $i_2@@11))
(let ((j@@35 $i_3@@20))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| _$t0@@9) i@@72)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| _$t0@@9) j@@35))) (= i@@72 j@@35))))))
 :qid |DiemSystemseqArraybpl.8745:222|
 :skolemid |225|
))))) (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@22)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@22))
 :qid |DiemSystemseqArraybpl.8750:20|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@22))
))) (and (and (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) $a_0@@23)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@23))
 :qid |DiemSystemseqArraybpl.8754:20|
 :skolemid |227|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) $a_0@@23))
)) (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@24)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@24))
 :qid |DiemSystemseqArraybpl.8758:20|
 :skolemid |228|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110254| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@24))
))) (and (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@25)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@25) (let (($range_1@@19 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@25))))))
(let (($range_2@@8 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@25))))))
(forall (($i_3@@21 Int) ($i_4@@6 Int) ) (!  (=> ($InRange $range_1@@19 $i_3@@21) (=> ($InRange $range_2@@8 $i_4@@6) (let ((i@@73 $i_3@@21))
(let ((j@@36 $i_4@@6))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@25)) i@@73)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@25)) j@@36))) (= i@@73 j@@36))))))
 :qid |DiemSystemseqArraybpl.8763:367|
 :skolemid |229|
))))))
 :qid |DiemSystemseqArraybpl.8762:20|
 :skolemid |230|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@25))
)) (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@26)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@26))
 :qid |DiemSystemseqArraybpl.8768:20|
 :skolemid |231|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@26))
))))) (and (and (and (= $t3@@3 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t4@@4 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t5@@6 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_110366| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t6@@2 (|$events#$1_DiemConfig_Configuration| $t5@@6)))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@2| 173345816) (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies 173345816)) (and (= _$t0@@9 _$t0@@9) (= $t7@@3  (not (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 189807) 190681) anon20_Then_correct@@1) (=> (= (ControlFlow 0 189807) 189859) anon20_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@21 T@$1_Event_EventHandle) ) (! (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@21)))
 (and (= (|l#Multiset_75623| stream@@23) 0) (forall ((v@@82 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@23) v@@82) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 189299) 189807)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (ControlFlow 0 252265) 189299) inline$$InitEventStore$0$anon0_correct@@10)))
anon0_correct@@10)))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t21@@2 () Bool)
(declare-fun $t19@0 () Int)
(declare-fun $t10@@3 () Int)
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $t13@0@@0 () Bool)
(declare-fun $t0@1 () T@$Mutation_84196)
(declare-fun _$t1@@5 () Int)
(declare-fun $t6@@3 () T@$1_ValidatorConfig_Config)
(declare-fun $t7@0@@1 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t24@0@@0 () Bool)
(declare-fun $t22@1 () T@$Mutation_91500)
(declare-fun $t22@0 () T@$Mutation_91500)
(declare-fun $t20@@3 () T@$1_ValidatorConfig_Config)
(declare-fun $t14@0@@4 () T@$Mutation_84942)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2| () T@$Mutation_84942)
(declare-fun $t0@0 () T@$Mutation_84196)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_84196)
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@4| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@3| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |$temp_0'$1_ValidatorConfig_Config'@0| () T@$1_ValidatorConfig_Config)
(declare-fun $t23@0@@0 () T@$1_ValidatorConfig_Config)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@2| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t16@@3 () Bool)
(declare-fun |$temp_0'$1_DiemSystem_ValidatorInfo'@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t15@0@@2 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@0| () T@$Mutation_84942)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@0| () T@$Mutation_84196)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@1| () T@$Mutation_84942)
(declare-fun _$t0@@10 () T@$Mutation_84196)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@0| () Int)
(declare-fun $t8@0@@2 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0@@0| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t2@@1 () T@$Mutation_91500)
(declare-fun $t5@@7 () T@$Mutation_84942)
(declare-fun $t14@@4 () T@$Mutation_84942)
(declare-fun $t22@@2 () T@$Mutation_91500)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_update_ith_validator_info_$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 253756) (let ((L10_correct  (=> (= (ControlFlow 0 192044) (- 0 254957)) false)))
(let ((anon25_Then_correct@@3  (=> (and (and $t21@@2 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) $t19@0)) (= 5 $t10@@3)) (and (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) $t19@0)))) 0) (= 7 $t10@@3)))) (and (= $t10@@3 $t10@@3) (= (ControlFlow 0 192034) 192044))) L10_correct)))
(let ((anon23_Then_correct@@3  (=> $abort_flag@0@@7 (=> (and (= $abort_code@1@@7 $abort_code@1@@7) (= (ControlFlow 0 192086) 192044)) L10_correct))))
(let ((L9_correct@@0  (and (=> (= (ControlFlow 0 191958) (- 0 254803)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 191958) (- 0 254810)) (= $t13@0@@0  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|v#$Mutation_84196| $t0@1) _$t1@@5))) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|v#$Mutation_84196| $t0@1) _$t1@@5)))))) 0))) (not (= $t6@@3 (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@5))))))) (=> (= $t13@0@@0  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|v#$Mutation_84196| $t0@1) _$t1@@5))) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|v#$Mutation_84196| $t0@1) _$t1@@5)))))) 0))) (not (= $t6@@3 (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@5)))))) (and (=> (= (ControlFlow 0 191958) (- 0 254842)) (=> $t13@0@@0 (= (|v#$Mutation_84196| $t0@1) (seq.++ (seq.extract $t7@0@@1 0 (- _$t1@@5 0)) (seq.unit ($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@5)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@5)) $t6@@3 (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@5)))) (seq.extract $t7@0@@1 (+ _$t1@@5 1) (- (seq.len $t7@0@@1) (+ _$t1@@5 1))))))) (=> (=> $t13@0@@0 (= (|v#$Mutation_84196| $t0@1) (seq.++ (seq.extract $t7@0@@1 0 (- _$t1@@5 0)) (seq.unit ($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@5)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@5)) $t6@@3 (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@5)))) (seq.extract $t7@0@@1 (+ _$t1@@5 1) (- (seq.len $t7@0@@1) (+ _$t1@@5 1)))))) (and (=> (= (ControlFlow 0 191958) (- 0 254865)) (=> (not $t13@0@@0) (= (|v#$Mutation_84196| $t0@1) $t7@0@@1))) (=> (=> (not $t13@0@@0) (= (|v#$Mutation_84196| $t0@1) $t7@0@@1)) (and (=> (= (ControlFlow 0 191958) (- 0 254879)) (= (|v#$Mutation_84196| $t0@1) (seq.++ (seq.extract $t7@0@@1 0 (- _$t1@@5 0)) (seq.unit (seq.nth (|v#$Mutation_84196| $t0@1) _$t1@@5)) (seq.extract $t7@0@@1 (+ _$t1@@5 1) (- (seq.len $t7@0@@1) (+ _$t1@@5 1)))))) (=> (= (|v#$Mutation_84196| $t0@1) (seq.++ (seq.extract $t7@0@@1 0 (- _$t1@@5 0)) (seq.unit (seq.nth (|v#$Mutation_84196| $t0@1) _$t1@@5)) (seq.extract $t7@0@@1 (+ _$t1@@5 1) (- (seq.len $t7@0@@1) (+ _$t1@@5 1))))) (and (=> (= (ControlFlow 0 191958) (- 0 254897)) (let (($range_0@@76 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@113 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@113))))))))
(forall (($i_1@@63 Int) ) (!  (=> ($InRange $range_0@@76 $i_1@@63) (let ((i1@@18 $i_1@@63))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@114 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@114)))) i1@@18)) 1)))
 :qid |DiemSystemseqArraybpl.9456:146|
 :skolemid |237|
)))) (=> (let (($range_0@@77 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@115 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@115))))))))
(forall (($i_1@@64 Int) ) (!  (=> ($InRange $range_0@@77 $i_1@@64) (let ((i1@@19 $i_1@@64))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@116 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@116)))) i1@@19)) 1)))
 :qid |DiemSystemseqArraybpl.9456:146|
 :skolemid |237|
))) (=> (= (ControlFlow 0 191958) (- 0 254941)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@117 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@117)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@118 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@118))))))))))))))))))))
(let ((anon26_Else_correct@@3  (=> (and (not $t24@0@@0) (= $t22@1 ($Mutation_91500 (|l#$Mutation_91500| $t22@0) (|p#$Mutation_91500| $t22@0) $t20@@3))) (=> (and (and (and (= $t14@0@@4 ($Mutation_84942 (|l#$Mutation_84942| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|) (|p#$Mutation_84942| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|) ($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_84942| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_84942| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|)) (|v#$Mutation_91500| $t22@1) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_84942| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|))))) (= $t0@0 ($Mutation_84196 (|l#$Mutation_84196| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|) (|p#$Mutation_84196| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|) (seq.++ (seq.extract (|v#$Mutation_84196| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|) 0 (- (seq.nth (|p#$Mutation_84942| $t14@0@@4) (seq.len (|p#$Mutation_84196| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|))) 0)) (seq.unit (|v#$Mutation_84942| $t14@0@@4)) (seq.extract (|v#$Mutation_84196| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|) (+ (seq.nth (|p#$Mutation_84942| $t14@0@@4) (seq.len (|p#$Mutation_84196| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|))) 1) (- (seq.len (|v#$Mutation_84196| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|)) (+ (seq.nth (|p#$Mutation_84942| $t14@0@@4) (seq.len (|p#$Mutation_84196| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|))) 1))))))) (and (= true true) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@4| (|v#$Mutation_84196| $t0@0)))) (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@4| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@4|) (= $t0@1 $t0@0)) (and (= $t13@0@@0 true) (= (ControlFlow 0 191789) 191958)))) L9_correct@@0))))
(let ((anon26_Then_correct@@3  (=> $t24@0@@0 (=> (and (= false false) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@3| (|v#$Mutation_84196| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|))) (=> (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@3| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@3|) (= $t0@1 |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|)) (and (= $t13@0@@0 false) (= (ControlFlow 0 191986) 191958))) L9_correct@@0)))))
(let ((anon25_Else_correct@@3  (=> (not $t21@@2) (=> (and (and (and (|$IsValid'$1_ValidatorConfig_Config'| $t20@@3) (= $t20@@3 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) $t19@0))) 0))) (and (= $t20@@3 $t20@@3) (= $t22@0 ($Mutation_91500 (|l#$Mutation_84942| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|) (seq.++ (|p#$Mutation_84942| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|) (seq.unit 2)) (|$config#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_84942| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|)))))) (and (and (= |$temp_0'$1_ValidatorConfig_Config'@0| (|v#$Mutation_91500| $t22@0)) (= |$temp_0'$1_ValidatorConfig_Config'@0| |$temp_0'$1_ValidatorConfig_Config'@0|)) (and (= $t23@0@@0 (|v#$Mutation_91500| $t22@0)) (= $t24@0@@0 (= $t23@0@@0 $t20@@3))))) (and (=> (= (ControlFlow 0 191709) 191986) anon26_Then_correct@@3) (=> (= (ControlFlow 0 191709) 191789) anon26_Else_correct@@3))))))
(let ((anon24_Else_correct@@3  (=> (not inline$$Not$0$dst@1@@2) (=> (and (= $t19@0 (|$addr#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_84942| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|))) (= $t21@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) $t19@0)) (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) $t19@0)))) 0)))) (and (=> (= (ControlFlow 0 191647) 192034) anon25_Then_correct@@3) (=> (= (ControlFlow 0 191647) 191709) anon25_Else_correct@@3))))))
(let ((anon24_Then_correct@@3  (=> inline$$Not$0$dst@1@@2 (=> (and (= false false) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@2| (|v#$Mutation_84196| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|))) (=> (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@2| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@2|) (= $t0@1 |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|)) (and (= $t13@0@@0 false) (= (ControlFlow 0 192072) 191958))) L9_correct@@0)))))
(let ((inline$$Not$0$anon0_correct@@2  (=> (= inline$$Not$0$dst@1@@2  (not $t16@@3)) (and (=> (= (ControlFlow 0 191603) 192072) anon24_Then_correct@@3) (=> (= (ControlFlow 0 191603) 191647) anon24_Else_correct@@3)))))
(let ((anon23_Else_correct@@3  (=> (and (not $abort_flag@0@@7) (= |$temp_0'$1_DiemSystem_ValidatorInfo'@0| (|v#$Mutation_84942| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|))) (=> (and (and (= |$temp_0'$1_DiemSystem_ValidatorInfo'@0| |$temp_0'$1_DiemSystem_ValidatorInfo'@0|) (= $t15@0@@2 (|$addr#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_84942| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|)))) (and (= $t16@@3  (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) $t15@0@@2) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) $t15@0@@2)))) 0)))) (= (ControlFlow 0 191609) 191603))) inline$$Not$0$anon0_correct@@2))))
(let ((|inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0@@7 true) (= $abort_code@1@@7 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@0|))) (and (=> (= (ControlFlow 0 191525) 192086) anon23_Then_correct@@3) (=> (= (ControlFlow 0 191525) 191609) anon23_Else_correct@@3)))))
(let ((|inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|  (=> (and (not (and (>= _$t1@@5 0) (< _$t1@@5 (seq.len |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1|)))) (= (ControlFlow 0 191523) 191525)) |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|  (=> (and (and (and (>= _$t1@@5 0) (< _$t1@@5 (seq.len |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@1| ($Mutation_84942 (|l#$Mutation_84196| _$t0@@10) (seq.++ (|p#$Mutation_84196| _$t0@@10) (seq.unit _$t1@@5)) (seq.nth |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1| _$t1@@5)))) (and (and (= $abort_flag@0@@7 false) (= $abort_code@1@@7 $abort_code@0@@7)) (and (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1| _$t0@@10)))) (and (=> (= (ControlFlow 0 191473) 192086) anon23_Then_correct@@3) (=> (= (ControlFlow 0 191473) 191609) anon23_Else_correct@@3)))))
(let ((|inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1| (|v#$Mutation_84196| _$t0@@10)) (and (=> (= (ControlFlow 0 191443) 191523) |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 191443) 191473) |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|)))))
(let ((anon22_Else_correct@@3  (=> (and (not inline$$Ge$0$dst@1) (= (ControlFlow 0 191533) 191443)) |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))
(let ((anon22_Then_correct@@3  (=> inline$$Ge$0$dst@1 (=> (and (= false false) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| (|v#$Mutation_84196| _$t0@@10))) (=> (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1|) (= $t0@1 _$t0@@10)) (and (= $t13@0@@0 false) (= (ControlFlow 0 192114) 191958))) L9_correct@@0)))))
(let ((inline$$Ge$0$anon0_correct  (=> (= inline$$Ge$0$dst@1 (>= _$t1@@5 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@0|)) (and (=> (= (ControlFlow 0 191329) 192114) anon22_Then_correct@@3) (=> (= (ControlFlow 0 191329) 191533) anon22_Else_correct@@3)))))
(let ((anon21_Else_correct@@3  (=> (not false) (=> (and (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@0| |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@0|) (= (ControlFlow 0 191335) 191329)) inline$$Ge$0$anon0_correct))))
(let ((anon21_Then_correct@@3 true))
(let ((|inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@0| (seq.len $t8@0@@2)) (and (=> (= (ControlFlow 0 191267) 192128) anon21_Then_correct@@3) (=> (= (ControlFlow 0 191267) 191335) anon21_Else_correct@@3)))))
(let ((anon0$1_correct@@11  (=> (and (and (and (= (|l#$Mutation_84196| _$t0@@10) ($Param 0)) (forall ((addr@@119 Int) ) (!  (=> (|$IsValid'address'| addr@@119) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@119) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@119) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@119)) 3))))
 :qid |DiemSystemseqArraybpl.9135:20|
 :skolemid |232|
))) (and (forall ((addr@@120 Int) ) (!  (=> (|$IsValid'address'| addr@@120) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@120) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@120) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@120)) 3))))
 :qid |DiemSystemseqArraybpl.9139:20|
 :skolemid |233|
)) (forall ((addr@@121 Int) ) (!  (=> (|$IsValid'address'| addr@@121) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@121) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@121)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) addr@@121) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) addr@@121)) 3))))
 :qid |DiemSystemseqArraybpl.9143:20|
 :skolemid |234|
)))) (and (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|v#$Mutation_84196| _$t0@@10)) (|$IsValid'u64'| _$t1@@5)) (and (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@27)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@27) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@27))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@27))) 1))))
 :qid |DiemSystemseqArraybpl.9153:20|
 :skolemid |235|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@27))
)) (= $t6@@3 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_109358| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|v#$Mutation_84196| _$t0@@10) _$t1@@5))))) 0))))) (=> (and (and (and (and (<= 0 _$t1@@5) (< _$t1@@5 (seq.len (|v#$Mutation_84196| _$t0@@10)))) (let (($range_0@@78 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@122 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@122))))))))
(forall (($i_1@@65 Int) ) (!  (=> ($InRange $range_0@@78 $i_1@@65) (let ((i1@@20 $i_1@@65))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@123 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@123)))) i1@@20)) 1)))
 :qid |DiemSystemseqArraybpl.9166:151|
 :skolemid |236|
)))) (and (= $t7@0@@1 (|v#$Mutation_84196| _$t0@@10)) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0@@0| (|v#$Mutation_84196| _$t0@@10)))) (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0@@0| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0@@0|) (= _$t1@@5 _$t1@@5)) (and (= $t8@0@@2 (|v#$Mutation_84196| _$t0@@10)) (= (ControlFlow 0 191273) 191267)))) |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct@@0|))))
(let ((inline$$InitEventStore$0$anon0_correct@@11  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@22 T@$1_Event_EventHandle) ) (! (let ((stream@@24 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@22)))
 (and (= (|l#Multiset_75623| stream@@24) 0) (forall ((v@@83 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@24) v@@83) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 190969) 191273)) anon0$1_correct@@11)))
(let ((anon0_correct@@11  (=> (= (seq.len (|p#$Mutation_91500| $t2@@1)) 0) (=> (and (and (= (seq.len (|p#$Mutation_84942| $t5@@7)) 0) (= (seq.len (|p#$Mutation_84942| $t14@@4)) 0)) (and (= (seq.len (|p#$Mutation_91500| $t22@@2)) 0) (= (ControlFlow 0 190979) 190969))) inline$$InitEventStore$0$anon0_correct@@11))))
(let ((PreconditionGeneratedEntry_correct@@2  (=> (= (ControlFlow 0 253756) 190979) anon0_correct@@11)))
PreconditionGeneratedEntry_correct@@2))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 253756)))
(get-value ((ControlFlow 0 190979)))
(get-value ((ControlFlow 0 190969)))
(get-value ((ControlFlow 0 191273)))
(get-value ((ControlFlow 0 191267)))
(get-value ((ControlFlow 0 191335)))
(get-value ((ControlFlow 0 191329)))
(get-value ((ControlFlow 0 191533)))
(get-value ((ControlFlow 0 191443)))
(get-value ((ControlFlow 0 191473)))
(get-value ((ControlFlow 0 191609)))
(get-value ((ControlFlow 0 191603)))
(get-value ((ControlFlow 0 191647)))
(get-value ((ControlFlow 0 191709)))
(get-value ((ControlFlow 0 191986)))
(get-value ((ControlFlow 0 191958)))
(assert (not (= (ControlFlow 0 191958) (- 254879))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 253756)))
(get-value ((ControlFlow 0 190979)))
(get-value ((ControlFlow 0 190969)))
(get-value ((ControlFlow 0 191273)))
(get-value ((ControlFlow 0 191267)))
(get-value ((ControlFlow 0 191335)))
(get-value ((ControlFlow 0 191329)))
(get-value ((ControlFlow 0 191533)))
(get-value ((ControlFlow 0 191443)))
(get-value ((ControlFlow 0 191473)))
(get-value ((ControlFlow 0 191609)))
(get-value ((ControlFlow 0 191603)))
(get-value ((ControlFlow 0 191647)))
(get-value ((ControlFlow 0 191709)))
(get-value ((ControlFlow 0 191789)))
(get-value ((ControlFlow 0 191958)))
(assert (not (= (ControlFlow 0 191958) (- 254810))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 253756)))
(get-value ((ControlFlow 0 190979)))
(get-value ((ControlFlow 0 190969)))
(get-value ((ControlFlow 0 191273)))
(get-value ((ControlFlow 0 191267)))
(get-value ((ControlFlow 0 191335)))
(get-value ((ControlFlow 0 191329)))
(get-value ((ControlFlow 0 191533)))
(get-value ((ControlFlow 0 191443)))
(get-value ((ControlFlow 0 191473)))
(get-value ((ControlFlow 0 191609)))
(get-value ((ControlFlow 0 191603)))
(get-value ((ControlFlow 0 191647)))
(get-value ((ControlFlow 0 191709)))
(get-value ((ControlFlow 0 191789)))
(get-value ((ControlFlow 0 191958)))
(assert (not (= (ControlFlow 0 191958) (- 254842))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $t3@0@@0 () Int)
(declare-fun $t2@@2 () Bool)
(declare-fun $t3@@4 () Int)
(declare-fun |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@1| () Int)
(declare-fun $t4@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t1@@0 () T@$1_DiemSystem_DiemSystem)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_validator_set_size$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 254975) (let ((L2_correct  (and (=> (= (ControlFlow 0 192880) (- 0 255489)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (= (ControlFlow 0 192880) (- 0 255496)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t3@0@@0)))))))
(let ((anon6_Then_correct  (=> $t2@@2 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t3@@4)) (= $t3@@4 $t3@@4)) (and (= $t3@0@@0 $t3@@4) (= (ControlFlow 0 192908) 192880))) L2_correct))))
(let ((anon7_Else_correct  (=> (and (not false) (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@1| |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@1|)) (and (=> (= (ControlFlow 0 192834) (- 0 255441)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 192834) (- 0 255453)) (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@1| (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@124 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@124))))))) (=> (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@1| (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@125 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@125)))))) (=> (= (ControlFlow 0 192834) (- 0 255465)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@126 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@126)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@127 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@127)))))))))))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct@@1|  (=> (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@1| (seq.len $t4@0)) (and (=> (= (ControlFlow 0 192774) 192848) anon7_Then_correct) (=> (= (ControlFlow 0 192774) 192834) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (not $t2@@2) (=> (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t1@@0) (let (($range_0@@79 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t1@@0)))))
(let (($range_1@@20 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t1@@0)))))
(forall (($i_2@@12 Int) ($i_3@@22 Int) ) (!  (=> ($InRange $range_0@@79 $i_2@@12) (=> ($InRange $range_1@@20 $i_3@@22) (let ((i@@74 $i_2@@12))
(let ((j@@37 $i_3@@22))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t1@@0) i@@74)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t1@@0) j@@37))) (= i@@74 j@@37))))))
 :qid |DiemSystemseqArraybpl.9577:222|
 :skolemid |242|
))))) (=> (and (and (= $t1@@0 (let ((addr@@128 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@128)))) (= $t1@@0 $t1@@0)) (and (= $t4@0 (|$validators#$1_DiemSystem_DiemSystem| $t1@@0)) (= (ControlFlow 0 192780) 192774))) |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct@@1|)))))
(let ((anon0$1_correct@@12  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105577| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107059| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (=> (and (and (let (($range_0@@80 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@129 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@129))))))))
(forall (($i_1@@66 Int) ) (!  (=> ($InRange $range_0@@80 $i_1@@66) (let ((i1@@21 $i_1@@66))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@130 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@130)))) i1@@21))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_107435| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@130 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@130)))) i1@@21)))) 3))))
 :qid |DiemSystemseqArraybpl.9529:151|
 :skolemid |238|
))) (let (($range_0@@81 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@131 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@131))))))))
(forall (($i_1@@67 Int) ) (!  (=> ($InRange $range_0@@81 $i_1@@67) (let ((i1@@22 $i_1@@67))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@132 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@132)))) i1@@22)) 1)))
 :qid |DiemSystemseqArraybpl.9534:151|
 :skolemid |239|
)))) (and (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@28)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@28) (let (($range_1@@21 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@28))))))
(let (($range_2@@9 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@28))))))
(forall (($i_3@@23 Int) ($i_4@@7 Int) ) (!  (=> ($InRange $range_1@@21 $i_3@@23) (=> ($InRange $range_2@@9 $i_4@@7) (let ((i@@75 $i_3@@23))
(let ((j@@38 $i_4@@7))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@28)) i@@75)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@28)) j@@38))) (= i@@75 j@@38))))))
 :qid |DiemSystemseqArraybpl.9540:367|
 :skolemid |240|
))))))
 :qid |DiemSystemseqArraybpl.9539:20|
 :skolemid |241|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@28))
)) (= $t2@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_106986| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 192633) 192908) anon6_Then_correct) (=> (= (ControlFlow 0 192633) 192780) anon6_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@12  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@23 T@$1_Event_EventHandle) ) (! (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_75623_| (|streams#$EventStore| $es) handle@@23)))
 (and (= (|l#Multiset_75623| stream@@25) 0) (forall ((v@@84 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75623| stream@@25) v@@84) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 192386) 192633)) anon0$1_correct@@12)))
(let ((anon0_correct@@12  (=> (= (ControlFlow 0 254975) 192386) inline$$InitEventStore$0$anon0_correct@@12)))
anon0_correct@@12))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 255533) true)
))
(check-sat)
(pop 1)
; Valid
